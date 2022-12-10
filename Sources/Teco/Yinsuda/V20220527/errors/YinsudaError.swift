public struct TCYinsudaError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
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
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCYinsudaError {
        TCYinsudaError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCYinsudaError {
        TCYinsudaError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCYinsudaError {
        TCYinsudaError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCYinsudaError {
        TCYinsudaError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCYinsudaError {
        TCYinsudaError(.invalidParameterValue)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCYinsudaError {
        TCYinsudaError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCYinsudaError {
        TCYinsudaError(.resourceUnavailable)
    }
}

extension TCYinsudaError: Equatable {
    public static func == (lhs: TCYinsudaError, rhs: TCYinsudaError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCYinsudaError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCYinsudaError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
