public struct TCDbbrainError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case operationDenied_UserHasNoStrategy = "OperationDenied.UserHasNoStrategy"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
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
    public static var authFailure: TCDbbrainError {
        TCDbbrainError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCDbbrainError {
        TCDbbrainError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCDbbrainError {
        TCDbbrainError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCDbbrainError {
        TCDbbrainError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCDbbrainError {
        TCDbbrainError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCDbbrainError {
        TCDbbrainError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCDbbrainError {
        TCDbbrainError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCDbbrainError {
        TCDbbrainError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCDbbrainError {
        TCDbbrainError(.operationDenied)
    }
    
    /// CAM鉴权错误。
    ///
    /// 请对该账号进行CAM授权。
    public static var operationDenied_UserHasNoStrategy: TCDbbrainError {
        TCDbbrainError(.operationDenied_UserHasNoStrategy)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCDbbrainError {
        TCDbbrainError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCDbbrainError {
        TCDbbrainError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCDbbrainError {
        TCDbbrainError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCDbbrainError {
        TCDbbrainError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCDbbrainError {
        TCDbbrainError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCDbbrainError {
        TCDbbrainError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCDbbrainError {
        TCDbbrainError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCDbbrainError {
        TCDbbrainError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCDbbrainError {
        TCDbbrainError(.unsupportedOperation)
    }
}

extension TCDbbrainError {
    public static var domains: [TCErrorType.Type] {
        return [OperationDenied.self]
    }
}

extension TCDbbrainError: Equatable {
    public static func == (lhs: TCDbbrainError, rhs: TCDbbrainError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDbbrainError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCDbbrainError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
