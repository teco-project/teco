public struct TCWavError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_InvalidAuthorizationCode = "AuthFailure.InvalidAuthorizationCode"
        case authFailure_MissingAccessToken = "AuthFailure.MissingAccessToken"
        case failedOperation = "FailedOperation"
        case failedOperation_OpenPlatformError = "FailedOperation.OpenPlatformError"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_TimeSpanLimitExceeded = "InvalidParameterValue.TimeSpanLimitExceeded"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case unauthorizedOperation = "UnauthorizedOperation"
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
    public static var authFailure: TCWavError {
        TCWavError(.authFailure)
    }
    
    /// 授权码无效。
    public static var authFailure_InvalidAuthorizationCode: TCWavError {
        TCWavError(.authFailure_InvalidAuthorizationCode)
    }
    
    /// 令牌无效。
    public static var authFailure_MissingAccessToken: TCWavError {
        TCWavError(.authFailure_MissingAccessToken)
    }
    
    /// 操作失败。
    public static var failedOperation: TCWavError {
        TCWavError(.failedOperation)
    }
    
    /// 开放平台访问错误。
    public static var failedOperation_OpenPlatformError: TCWavError {
        TCWavError(.failedOperation_OpenPlatformError)
    }
    
    /// 内部错误。
    public static var internalError: TCWavError {
        TCWavError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCWavError {
        TCWavError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCWavError {
        TCWavError(.invalidParameterValue)
    }
    
    /// 参数值时间跨度超出接口限制。
    public static var invalidParameterValue_TimeSpanLimitExceeded: TCWavError {
        TCWavError(.invalidParameterValue_TimeSpanLimitExceeded)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCWavError {
        TCWavError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCWavError {
        TCWavError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCWavError {
        TCWavError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCWavError {
        TCWavError(.requestLimitExceeded)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCWavError {
        TCWavError(.unauthorizedOperation)
    }
}

extension TCWavError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InvalidParameterValue.self]
    }
}

extension TCWavError: Equatable {
    public static func == (lhs: TCWavError, rhs: TCWavError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCWavError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}