public struct TCAfcError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_CapSigError = "AuthFailure.CapSigError"
        case authFailure_Expired = "AuthFailure.Expired"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_BackendLogicError = "InternalError.BackendLogicError"
        case internalError_SignBackendError = "InternalError.SignBackendError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_BadBody = "InvalidParameterValue.BadBody"
        case invalidParameterValue_BodyTooLarge = "InvalidParameterValue.BodyTooLarge"
        case invalidParameterValue_CapMisMatch = "InvalidParameterValue.CapMisMatch"
        case invalidParameterValue_HttpMethodError = "InvalidParameterValue.HttpMethodError"
        case invalidParameterValue_InvalidDate = "InvalidParameterValue.InvalidDate"
        case invalidParameterValue_InvalidLimit = "InvalidParameterValue.InvalidLimit"
        case invalidParameterValue_InvalidSrvName = "InvalidParameterValue.InvalidSrvName"
        case invalidParameterValue_InvalidStride = "InvalidParameterValue.InvalidStride"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case invalidParameter_UrlError = "InvalidParameter.UrlError"
        case invalidParameter_VersionError = "InvalidParameter.VersionError"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_FreqCnt = "LimitExceeded.FreqCnt"
        case limitExceeded_IpFreqCnt = "LimitExceeded.IpFreqCnt"
        case limitExceeded_KeyFreqCnt = "LimitExceeded.KeyFreqCnt"
        case limitExceeded_ReplayAttack = "LimitExceeded.ReplayAttack"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_InterfaceNotFound = "ResourceNotFound.InterfaceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_PermissionDenied = "ResourceUnavailable.PermissionDenied"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_AuthFailed = "UnauthorizedOperation.AuthFailed"
        case unknownParameter = "UnknownParameter"
        case unknownParameter_SecretIdNotExists = "UnknownParameter.SecretIdNotExists"
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
    public static var authFailure: TCAfcError {
        TCAfcError(.authFailure)
    }
    
    /// 验证码签名错误。
    public static var authFailure_CapSigError: TCAfcError {
        TCAfcError(.authFailure_CapSigError)
    }
    
    /// 请求过期。
    public static var authFailure_Expired: TCAfcError {
        TCAfcError(.authFailure_Expired)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCAfcError {
        TCAfcError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCAfcError {
        TCAfcError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCAfcError {
        TCAfcError(.internalError)
    }
    
    /// 业务系统逻辑错误。
    public static var internalError_BackendLogicError: TCAfcError {
        TCAfcError(.internalError_BackendLogicError)
    }
    
    /// Sign后端错误。
    public static var internalError_SignBackendError: TCAfcError {
        TCAfcError(.internalError_SignBackendError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCAfcError {
        TCAfcError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCAfcError {
        TCAfcError(.invalidParameterValue)
    }
    
    /// BadBody。
    public static var invalidParameterValue_BadBody: TCAfcError {
        TCAfcError(.invalidParameterValue_BadBody)
    }
    
    /// 请求包过大。
    public static var invalidParameterValue_BodyTooLarge: TCAfcError {
        TCAfcError(.invalidParameterValue_BodyTooLarge)
    }
    
    /// 验证码不匹配。
    public static var invalidParameterValue_CapMisMatch: TCAfcError {
        TCAfcError(.invalidParameterValue_CapMisMatch)
    }
    
    /// HTTP方法错误。
    public static var invalidParameterValue_HttpMethodError: TCAfcError {
        TCAfcError(.invalidParameterValue_HttpMethodError)
    }
    
    /// 日期取值错误。
    public static var invalidParameterValue_InvalidDate: TCAfcError {
        TCAfcError(.invalidParameterValue_InvalidDate)
    }
    
    /// PageLimit取值错误。
    public static var invalidParameterValue_InvalidLimit: TCAfcError {
        TCAfcError(.invalidParameterValue_InvalidLimit)
    }
    
    /// SrvName取值错误。
    public static var invalidParameterValue_InvalidSrvName: TCAfcError {
        TCAfcError(.invalidParameterValue_InvalidSrvName)
    }
    
    /// Stride取值错误。
    public static var invalidParameterValue_InvalidStride: TCAfcError {
        TCAfcError(.invalidParameterValue_InvalidStride)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParamError: TCAfcError {
        TCAfcError(.invalidParameter_ParamError)
    }
    
    /// URL错误。
    public static var invalidParameter_UrlError: TCAfcError {
        TCAfcError(.invalidParameter_UrlError)
    }
    
    /// 版本错误。
    public static var invalidParameter_VersionError: TCAfcError {
        TCAfcError(.invalidParameter_VersionError)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCAfcError {
        TCAfcError(.limitExceeded)
    }
    
    /// 超过配额。
    public static var limitExceeded_FreqCnt: TCAfcError {
        TCAfcError(.limitExceeded_FreqCnt)
    }
    
    /// 超过配额。
    public static var limitExceeded_IpFreqCnt: TCAfcError {
        TCAfcError(.limitExceeded_IpFreqCnt)
    }
    
    /// 关键词频控限制。
    public static var limitExceeded_KeyFreqCnt: TCAfcError {
        TCAfcError(.limitExceeded_KeyFreqCnt)
    }
    
    /// 重放攻击。
    public static var limitExceeded_ReplayAttack: TCAfcError {
        TCAfcError(.limitExceeded_ReplayAttack)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCAfcError {
        TCAfcError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCAfcError {
        TCAfcError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCAfcError {
        TCAfcError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCAfcError {
        TCAfcError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCAfcError {
        TCAfcError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCAfcError {
        TCAfcError(.resourceNotFound)
    }
    
    /// 接口不存在。
    public static var resourceNotFound_InterfaceNotFound: TCAfcError {
        TCAfcError(.resourceNotFound_InterfaceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCAfcError {
        TCAfcError(.resourceUnavailable)
    }
    
    /// 未开通服务权限。
    public static var resourceUnavailable_PermissionDenied: TCAfcError {
        TCAfcError(.resourceUnavailable_PermissionDenied)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCAfcError {
        TCAfcError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCAfcError {
        TCAfcError(.unauthorizedOperation)
    }
    
    /// 鉴权失败。
    public static var unauthorizedOperation_AuthFailed: TCAfcError {
        TCAfcError(.unauthorizedOperation_AuthFailed)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCAfcError {
        TCAfcError(.unknownParameter)
    }
    
    /// 密钥不存在。
    public static var unknownParameter_SecretIdNotExists: TCAfcError {
        TCAfcError(.unknownParameter_SecretIdNotExists)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCAfcError {
        TCAfcError(.unsupportedOperation)
    }
}

extension TCAfcError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnknownParameter.self]
    }
}

extension TCAfcError: Equatable {
    public static func == (lhs: TCAfcError, rhs: TCAfcError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAfcError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}