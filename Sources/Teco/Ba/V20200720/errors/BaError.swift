public struct TCBaError: TCErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case internalError_ResourceNotFound = "InternalError.ResourceNotFound"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
    /// Initializer used by ``TCClient`` to match an error of this type.
    ///
    /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
    public init ?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }
    
    internal init (_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
    }
    
    /// 内部错误。
    public static var internalError: TCBaError {
        TCBaError(.internalError)
    }
    
    /// 资源未找到。
    public static var internalError_ResourceNotFound: TCBaError {
        TCBaError(.internalError_ResourceNotFound)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCBaError {
        TCBaError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCBaError {
        TCBaError(.invalidParameterValue)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCBaError {
        TCBaError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCBaError {
        TCBaError(.resourceUnavailable)
    }
}

extension TCBaError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self]
    }
}

extension TCBaError: Equatable {
    public static func == (lhs: TCBaError, rhs: TCBaError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBaError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCBaError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
