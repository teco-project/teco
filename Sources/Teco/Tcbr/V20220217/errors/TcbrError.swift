public struct TCTcbrError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
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
    public static var authFailure: TCTcbrError {
        TCTcbrError(.authFailure)
    }
    
    /// 内部错误。
    public static var internalError: TCTcbrError {
        TCTcbrError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTcbrError {
        TCTcbrError(.invalidParameter)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTcbrError {
        TCTcbrError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTcbrError {
        TCTcbrError(.missingParameter)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCTcbrError {
        TCTcbrError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCTcbrError {
        TCTcbrError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTcbrError {
        TCTcbrError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCTcbrError {
        TCTcbrError(.resourceUnavailable)
    }
}

extension TCTcbrError: Equatable {
    public static func == (lhs: TCTcbrError, rhs: TCTcbrError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTcbrError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTcbrError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
