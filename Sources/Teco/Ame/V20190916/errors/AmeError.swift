public struct TCAmeError: TCErrorType {
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
    public static var authFailure: TCAmeError {
        TCAmeError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCAmeError {
        TCAmeError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCAmeError {
        TCAmeError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCAmeError {
        TCAmeError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCAmeError {
        TCAmeError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCAmeError {
        TCAmeError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCAmeError {
        TCAmeError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCAmeError {
        TCAmeError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCAmeError {
        TCAmeError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCAmeError {
        TCAmeError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCAmeError {
        TCAmeError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCAmeError {
        TCAmeError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCAmeError {
        TCAmeError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCAmeError {
        TCAmeError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCAmeError {
        TCAmeError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCAmeError {
        TCAmeError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCAmeError {
        TCAmeError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCAmeError {
        TCAmeError(.unsupportedOperation)
    }
}

extension TCAmeError: Equatable {
    public static func == (lhs: TCAmeError, rhs: TCAmeError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAmeError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAmeError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
