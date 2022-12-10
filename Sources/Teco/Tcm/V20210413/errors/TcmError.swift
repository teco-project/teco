public struct TCTcmError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_ClusterNoEnoughResource = "FailedOperation.ClusterNoEnoughResource"
        case failedOperation_RBACForbidden = "FailedOperation.RBACForbidden"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case resourceNotFound = "ResourceNotFound"
        case unsupportedOperation = "UnsupportedOperation"
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
    public static var authFailure: TCTcmError {
        TCTcmError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTcmError {
        TCTcmError(.failedOperation)
    }
    
    /// 集群资源不足。
    public static var failedOperation_ClusterNoEnoughResource: TCTcmError {
        TCTcmError(.failedOperation_ClusterNoEnoughResource)
    }
    
    /// Cluster RBAC权限限制。
    public static var failedOperation_RBACForbidden: TCTcmError {
        TCTcmError(.failedOperation_RBACForbidden)
    }
    
    /// 内部错误。
    public static var internalError: TCTcmError {
        TCTcmError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTcmError {
        TCTcmError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCTcmError {
        TCTcmError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTcmError {
        TCTcmError(.limitExceeded)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTcmError {
        TCTcmError(.resourceNotFound)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTcmError {
        TCTcmError(.unsupportedOperation)
    }
}

extension TCTcmError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self]
    }
}

extension TCTcmError: Equatable {
    public static func == (lhs: TCTcmError, rhs: TCTcmError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTcmError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTcmError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
