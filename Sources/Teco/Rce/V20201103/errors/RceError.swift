public struct TCRceError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_CapSigError = "AuthFailure.CapSigError"
        case authFailure_Expired = "AuthFailure.Expired"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_BackendLogicError = "InternalError.BackendLogicError"
        case internalError_ConnectDBTimeout = "InternalError.ConnectDBTimeout"
        case internalError_SignBackendError = "InternalError.SignBackendError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_BadBody = "InvalidParameterValue.BadBody"
        case invalidParameterValue_BodyTooLarge = "InvalidParameterValue.BodyTooLarge"
        case invalidParameterValue_CapMisMatch = "InvalidParameterValue.CapMisMatch"
        case invalidParameterValue_HttpMethodError = "InvalidParameterValue.HttpMethodError"
        case invalidParameterValue_InvalidDate = "InvalidParameterValue.InvalidDate"
        case invalidParameterValue_InvalidLimit = "InvalidParameterValue.InvalidLimit"
        case invalidParameterValue_InvalidNum = "InvalidParameterValue.InvalidNum"
        case invalidParameterValue_InvalidSrvId = "InvalidParameterValue.InvalidSrvId"
        case invalidParameterValue_InvalidStride = "InvalidParameterValue.InvalidStride"
        case invalidParameter_CapSigError = "InvalidParameter.CapSigError"
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
    public static var authFailure: TCRceError {
        TCRceError(.authFailure)
    }
    
    /// 验证码签名错误。
    public static var authFailure_CapSigError: TCRceError {
        TCRceError(.authFailure_CapSigError)
    }
    
    /// 请求过期。
    public static var authFailure_Expired: TCRceError {
        TCRceError(.authFailure_Expired)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCRceError {
        TCRceError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCRceError {
        TCRceError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCRceError {
        TCRceError(.internalError)
    }
    
    /// 业务系统逻辑错误。
    public static var internalError_BackendLogicError: TCRceError {
        TCRceError(.internalError_BackendLogicError)
    }
    
    /// 连接数据库超时。
    public static var internalError_ConnectDBTimeout: TCRceError {
        TCRceError(.internalError_ConnectDBTimeout)
    }
    
    /// Sign后端错误。
    public static var internalError_SignBackendError: TCRceError {
        TCRceError(.internalError_SignBackendError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCRceError {
        TCRceError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCRceError {
        TCRceError(.invalidParameterValue)
    }
    
    /// BadBody。
    public static var invalidParameterValue_BadBody: TCRceError {
        TCRceError(.invalidParameterValue_BadBody)
    }
    
    /// 请求包过大。
    public static var invalidParameterValue_BodyTooLarge: TCRceError {
        TCRceError(.invalidParameterValue_BodyTooLarge)
    }
    
    /// 验证码不匹配。
    public static var invalidParameterValue_CapMisMatch: TCRceError {
        TCRceError(.invalidParameterValue_CapMisMatch)
    }
    
    /// HTTP方法错误。
    public static var invalidParameterValue_HttpMethodError: TCRceError {
        TCRceError(.invalidParameterValue_HttpMethodError)
    }
    
    /// 日期取值错误。
    public static var invalidParameterValue_InvalidDate: TCRceError {
        TCRceError(.invalidParameterValue_InvalidDate)
    }
    
    /// PageLimit取值错误。
    public static var invalidParameterValue_InvalidLimit: TCRceError {
        TCRceError(.invalidParameterValue_InvalidLimit)
    }
    
    /// PageNum取值错误。
    public static var invalidParameterValue_InvalidNum: TCRceError {
        TCRceError(.invalidParameterValue_InvalidNum)
    }
    
    /// SrvId取值错误。
    public static var invalidParameterValue_InvalidSrvId: TCRceError {
        TCRceError(.invalidParameterValue_InvalidSrvId)
    }
    
    /// Stride取值错误。
    public static var invalidParameterValue_InvalidStride: TCRceError {
        TCRceError(.invalidParameterValue_InvalidStride)
    }
    
    /// 验证码签名错误。
    public static var invalidParameter_CapSigError: TCRceError {
        TCRceError(.invalidParameter_CapSigError)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParamError: TCRceError {
        TCRceError(.invalidParameter_ParamError)
    }
    
    /// URL错误。
    public static var invalidParameter_UrlError: TCRceError {
        TCRceError(.invalidParameter_UrlError)
    }
    
    /// 版本错误。
    public static var invalidParameter_VersionError: TCRceError {
        TCRceError(.invalidParameter_VersionError)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCRceError {
        TCRceError(.limitExceeded)
    }
    
    /// 超过配额。
    public static var limitExceeded_FreqCnt: TCRceError {
        TCRceError(.limitExceeded_FreqCnt)
    }
    
    /// 超过配额（用户IP）。
    public static var limitExceeded_IpFreqCnt: TCRceError {
        TCRceError(.limitExceeded_IpFreqCnt)
    }
    
    /// 关键词频控限制。
    public static var limitExceeded_KeyFreqCnt: TCRceError {
        TCRceError(.limitExceeded_KeyFreqCnt)
    }
    
    /// 重放攻击。
    public static var limitExceeded_ReplayAttack: TCRceError {
        TCRceError(.limitExceeded_ReplayAttack)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCRceError {
        TCRceError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCRceError {
        TCRceError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCRceError {
        TCRceError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCRceError {
        TCRceError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCRceError {
        TCRceError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCRceError {
        TCRceError(.resourceNotFound)
    }
    
    /// 接口不存在。
    public static var resourceNotFound_InterfaceNotFound: TCRceError {
        TCRceError(.resourceNotFound_InterfaceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCRceError {
        TCRceError(.resourceUnavailable)
    }
    
    /// 未开通服务权限。
    public static var resourceUnavailable_PermissionDenied: TCRceError {
        TCRceError(.resourceUnavailable_PermissionDenied)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCRceError {
        TCRceError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCRceError {
        TCRceError(.unauthorizedOperation)
    }
    
    /// 鉴权失败。
    public static var unauthorizedOperation_AuthFailed: TCRceError {
        TCRceError(.unauthorizedOperation_AuthFailed)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCRceError {
        TCRceError(.unknownParameter)
    }
    
    /// 密钥不存在。
    public static var unknownParameter_SecretIdNotExists: TCRceError {
        TCRceError(.unknownParameter_SecretIdNotExists)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCRceError {
        TCRceError(.unsupportedOperation)
    }
}

extension TCRceError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnknownParameter.self]
    }
}

extension TCRceError: Equatable {
    public static func == (lhs: TCRceError, rhs: TCRceError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCRceError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}