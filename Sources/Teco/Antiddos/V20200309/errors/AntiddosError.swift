public struct TCAntiddosError: TCErrorType {
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
    public static var authFailure: TCAntiddosError {
        TCAntiddosError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCAntiddosError {
        TCAntiddosError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCAntiddosError {
        TCAntiddosError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCAntiddosError {
        TCAntiddosError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCAntiddosError {
        TCAntiddosError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCAntiddosError {
        TCAntiddosError(.invalidParameterValue)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCAntiddosError {
        TCAntiddosError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCAntiddosError {
        TCAntiddosError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCAntiddosError {
        TCAntiddosError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCAntiddosError {
        TCAntiddosError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCAntiddosError {
        TCAntiddosError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCAntiddosError {
        TCAntiddosError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCAntiddosError {
        TCAntiddosError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCAntiddosError {
        TCAntiddosError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCAntiddosError {
        TCAntiddosError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCAntiddosError {
        TCAntiddosError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCAntiddosError {
        TCAntiddosError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCAntiddosError {
        TCAntiddosError(.unsupportedOperation)
    }
}

extension TCAntiddosError: Equatable {
    public static func == (lhs: TCAntiddosError, rhs: TCAntiddosError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAntiddosError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}