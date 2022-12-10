public struct TCCasbError: TCErrorType {
    enum Code: String {
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case resourceInUse = "ResourceInUse"
        case resourceNotFound = "ResourceNotFound"
        case unauthorizedOperation = "UnauthorizedOperation"
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
    public static var internalError: TCCasbError {
        TCCasbError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCasbError {
        TCCasbError(.invalidParameter)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCCasbError {
        TCCasbError(.resourceInUse)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCCasbError {
        TCCasbError(.resourceNotFound)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCCasbError {
        TCCasbError(.unauthorizedOperation)
    }
}

extension TCCasbError: Equatable {
    public static func == (lhs: TCCasbError, rhs: TCCasbError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCasbError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCasbError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
