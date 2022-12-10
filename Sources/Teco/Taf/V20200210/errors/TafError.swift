public struct TCTafError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_CapSigError = "AuthFailure.CapSigError"
        case authFailure_Expired = "AuthFailure.Expired"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_AddTaskFail = "InternalError.AddTaskFail"
        case internalError_BackendLogicError = "InternalError.BackendLogicError"
        case internalError_ConnectDBTimeout = "InternalError.ConnectDBTimeout"
        case internalError_DetectFail = "InternalError.DetectFail"
        case internalError_DownloadFail = "InternalError.DownloadFail"
        case internalError_ParamError = "InternalError.ParamError"
        case internalError_QueryTaskFail = "InternalError.QueryTaskFail"
        case internalError_SignBackendError = "InternalError.SignBackendError"
        case internalError_SignatureFail = "InternalError.SignatureFail"
        case internalError_TaskIdNotFound = "InternalError.TaskIdNotFound"
        case internalError_UpdateTaskFail = "InternalError.UpdateTaskFail"
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
    public static var authFailure: TCTafError {
        TCTafError(.authFailure)
    }
    
    /// 验证码签名错误。
    public static var authFailure_CapSigError: TCTafError {
        TCTafError(.authFailure_CapSigError)
    }
    
    /// 请求过期。
    public static var authFailure_Expired: TCTafError {
        TCTafError(.authFailure_Expired)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCTafError {
        TCTafError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTafError {
        TCTafError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCTafError {
        TCTafError(.internalError)
    }
    
    /// 创建任务失败。
    public static var internalError_AddTaskFail: TCTafError {
        TCTafError(.internalError_AddTaskFail)
    }
    
    /// 业务系统逻辑错误。
    public static var internalError_BackendLogicError: TCTafError {
        TCTafError(.internalError_BackendLogicError)
    }
    
    /// 连接数据库超时。
    public static var internalError_ConnectDBTimeout: TCTafError {
        TCTafError(.internalError_ConnectDBTimeout)
    }
    
    /// 视频检测失败。
    public static var internalError_DetectFail: TCTafError {
        TCTafError(.internalError_DetectFail)
    }
    
    /// 视频链接下载失败。
    public static var internalError_DownloadFail: TCTafError {
        TCTafError(.internalError_DownloadFail)
    }
    
    /// 参数校验失败。
    public static var internalError_ParamError: TCTafError {
        TCTafError(.internalError_ParamError)
    }
    
    /// 查询失败。
    public static var internalError_QueryTaskFail: TCTafError {
        TCTafError(.internalError_QueryTaskFail)
    }
    
    /// Sign后端错误。
    public static var internalError_SignBackendError: TCTafError {
        TCTafError(.internalError_SignBackendError)
    }
    
    /// 签名失败。
    public static var internalError_SignatureFail: TCTafError {
        TCTafError(.internalError_SignatureFail)
    }
    
    /// TaskId不存在。
    public static var internalError_TaskIdNotFound: TCTafError {
        TCTafError(.internalError_TaskIdNotFound)
    }
    
    /// 更新任务失败。
    public static var internalError_UpdateTaskFail: TCTafError {
        TCTafError(.internalError_UpdateTaskFail)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTafError {
        TCTafError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCTafError {
        TCTafError(.invalidParameterValue)
    }
    
    /// BadBody。
    public static var invalidParameterValue_BadBody: TCTafError {
        TCTafError(.invalidParameterValue_BadBody)
    }
    
    /// 请求包过大。
    public static var invalidParameterValue_BodyTooLarge: TCTafError {
        TCTafError(.invalidParameterValue_BodyTooLarge)
    }
    
    /// 验证码不匹配。
    public static var invalidParameterValue_CapMisMatch: TCTafError {
        TCTafError(.invalidParameterValue_CapMisMatch)
    }
    
    /// HTTP方法错误。
    public static var invalidParameterValue_HttpMethodError: TCTafError {
        TCTafError(.invalidParameterValue_HttpMethodError)
    }
    
    /// 日期取值错误。
    public static var invalidParameterValue_InvalidDate: TCTafError {
        TCTafError(.invalidParameterValue_InvalidDate)
    }
    
    /// PageLimit取值错误。
    public static var invalidParameterValue_InvalidLimit: TCTafError {
        TCTafError(.invalidParameterValue_InvalidLimit)
    }
    
    /// PageNum取值错误。
    public static var invalidParameterValue_InvalidNum: TCTafError {
        TCTafError(.invalidParameterValue_InvalidNum)
    }
    
    /// SrvId取值错误。
    public static var invalidParameterValue_InvalidSrvId: TCTafError {
        TCTafError(.invalidParameterValue_InvalidSrvId)
    }
    
    /// Stride取值错误。
    public static var invalidParameterValue_InvalidStride: TCTafError {
        TCTafError(.invalidParameterValue_InvalidStride)
    }
    
    /// 验证码签名错误。
    public static var invalidParameter_CapSigError: TCTafError {
        TCTafError(.invalidParameter_CapSigError)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParamError: TCTafError {
        TCTafError(.invalidParameter_ParamError)
    }
    
    /// URL错误。
    public static var invalidParameter_UrlError: TCTafError {
        TCTafError(.invalidParameter_UrlError)
    }
    
    /// 版本错误。
    public static var invalidParameter_VersionError: TCTafError {
        TCTafError(.invalidParameter_VersionError)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTafError {
        TCTafError(.limitExceeded)
    }
    
    /// 超过配额。
    public static var limitExceeded_FreqCnt: TCTafError {
        TCTafError(.limitExceeded_FreqCnt)
    }
    
    /// 超过配额（用户IP）。
    public static var limitExceeded_IpFreqCnt: TCTafError {
        TCTafError(.limitExceeded_IpFreqCnt)
    }
    
    /// 关键词频控限制。
    public static var limitExceeded_KeyFreqCnt: TCTafError {
        TCTafError(.limitExceeded_KeyFreqCnt)
    }
    
    /// 重放攻击。
    public static var limitExceeded_ReplayAttack: TCTafError {
        TCTafError(.limitExceeded_ReplayAttack)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCTafError {
        TCTafError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCTafError {
        TCTafError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCTafError {
        TCTafError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCTafError {
        TCTafError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCTafError {
        TCTafError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTafError {
        TCTafError(.resourceNotFound)
    }
    
    /// 接口不存在。
    public static var resourceNotFound_InterfaceNotFound: TCTafError {
        TCTafError(.resourceNotFound_InterfaceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCTafError {
        TCTafError(.resourceUnavailable)
    }
    
    /// 未开通服务权限。
    public static var resourceUnavailable_PermissionDenied: TCTafError {
        TCTafError(.resourceUnavailable_PermissionDenied)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCTafError {
        TCTafError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTafError {
        TCTafError(.unauthorizedOperation)
    }
    
    /// 鉴权失败。
    public static var unauthorizedOperation_AuthFailed: TCTafError {
        TCTafError(.unauthorizedOperation_AuthFailed)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCTafError {
        TCTafError(.unknownParameter)
    }
    
    /// 密钥不存在。
    public static var unknownParameter_SecretIdNotExists: TCTafError {
        TCTafError(.unknownParameter_SecretIdNotExists)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTafError {
        TCTafError(.unsupportedOperation)
    }
}

extension TCTafError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnknownParameter.self]
    }
}

extension TCTafError: Equatable {
    public static func == (lhs: TCTafError, rhs: TCTafError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTafError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}