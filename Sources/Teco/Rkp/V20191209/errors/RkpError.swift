public struct TCRkpError: TCErrorType {
    enum Code: String {
        case authFailure_CapSigError = "AuthFailure.CapSigError"
        case authFailure_Expired = "AuthFailure.Expired"
        case internalError = "InternalError"
        case internalError_BackendLogicError = "InternalError.BackendLogicError"
        case internalError_ServerError = "InternalError.ServerError"
        case internalError_SignBackendError = "InternalError.SignBackendError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_BadBody = "InvalidParameterValue.BadBody"
        case invalidParameterValue_BodyTooLarge = "InvalidParameterValue.BodyTooLarge"
        case invalidParameterValue_CapMisMatch = "InvalidParameterValue.CapMisMatch"
        case invalidParameterValue_HttpMethodError = "InvalidParameterValue.HttpMethodError"
        case invalidParameter_DevTokenInvalid = "InvalidParameter.DevTokenInvalid"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case invalidParameter_ParameterError = "InvalidParameter.ParameterError"
        case invalidParameter_TokenInvalid = "InvalidParameter.TokenInvalid"
        case invalidParameter_UrlError = "InvalidParameter.UrlError"
        case invalidParameter_VersionError = "InvalidParameter.VersionError"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_FreqCnt = "LimitExceeded.FreqCnt"
        case limitExceeded_IpFreqCnt = "LimitExceeded.IpFreqCnt"
        case limitExceeded_KeyFreqCnt = "LimitExceeded.KeyFreqCnt"
        case limitExceeded_ReplayAttack = "LimitExceeded.ReplayAttack"
        case resourceNotFound_InterfaceNotFound = "ResourceNotFound.InterfaceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_NotAllready = "ResourceUnavailable.NotAllready"
        case resourceUnavailable_PermissionDenied = "ResourceUnavailable.PermissionDenied"
        case unauthorizedOperation_AuthFailed = "UnauthorizedOperation.AuthFailed"
        case unknownParameter_SecretIdNotExists = "UnknownParameter.SecretIdNotExists"
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
    
    /// 验证码签名错误。
    public static var authFailure_CapSigError: TCRkpError {
        TCRkpError(.authFailure_CapSigError)
    }
    
    /// 请求过期。
    public static var authFailure_Expired: TCRkpError {
        TCRkpError(.authFailure_Expired)
    }
    
    /// 内部错误。
    public static var internalError: TCRkpError {
        TCRkpError(.internalError)
    }
    
    /// 业务后端逻辑错误。
    public static var internalError_BackendLogicError: TCRkpError {
        TCRkpError(.internalError_BackendLogicError)
    }
    
    /// 后端错误。
    public static var internalError_ServerError: TCRkpError {
        TCRkpError(.internalError_ServerError)
    }
    
    /// 关键词后端错误。
    public static var internalError_SignBackendError: TCRkpError {
        TCRkpError(.internalError_SignBackendError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCRkpError {
        TCRkpError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCRkpError {
        TCRkpError(.invalidParameterValue)
    }
    
    /// 请求body错误。
    public static var invalidParameterValue_BadBody: TCRkpError {
        TCRkpError(.invalidParameterValue_BadBody)
    }
    
    /// 请求包过大。
    public static var invalidParameterValue_BodyTooLarge: TCRkpError {
        TCRkpError(.invalidParameterValue_BodyTooLarge)
    }
    
    /// 验证码不匹配。
    public static var invalidParameterValue_CapMisMatch: TCRkpError {
        TCRkpError(.invalidParameterValue_CapMisMatch)
    }
    
    /// Http方法错误。
    public static var invalidParameterValue_HttpMethodError: TCRkpError {
        TCRkpError(.invalidParameterValue_HttpMethodError)
    }
    
    /// DevToken不可用、过期或与当前场景不匹配。
    public static var invalidParameter_DevTokenInvalid: TCRkpError {
        TCRkpError(.invalidParameter_DevTokenInvalid)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParamError: TCRkpError {
        TCRkpError(.invalidParameter_ParamError)
    }
    
    /// 参数校验错误。
    public static var invalidParameter_ParameterError: TCRkpError {
        TCRkpError(.invalidParameter_ParameterError)
    }
    
    /// token不可用或过期。
    public static var invalidParameter_TokenInvalid: TCRkpError {
        TCRkpError(.invalidParameter_TokenInvalid)
    }
    
    /// URL错误。
    public static var invalidParameter_UrlError: TCRkpError {
        TCRkpError(.invalidParameter_UrlError)
    }
    
    /// 版本错误。
    public static var invalidParameter_VersionError: TCRkpError {
        TCRkpError(.invalidParameter_VersionError)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCRkpError {
        TCRkpError(.limitExceeded)
    }
    
    /// 超过配额。
    public static var limitExceeded_FreqCnt: TCRkpError {
        TCRkpError(.limitExceeded_FreqCnt)
    }
    
    /// 超过配额（IP）。
    public static var limitExceeded_IpFreqCnt: TCRkpError {
        TCRkpError(.limitExceeded_IpFreqCnt)
    }
    
    /// 关键词频控。
    public static var limitExceeded_KeyFreqCnt: TCRkpError {
        TCRkpError(.limitExceeded_KeyFreqCnt)
    }
    
    /// 重放攻击。
    public static var limitExceeded_ReplayAttack: TCRkpError {
        TCRkpError(.limitExceeded_ReplayAttack)
    }
    
    /// 接口不存在。
    public static var resourceNotFound_InterfaceNotFound: TCRkpError {
        TCRkpError(.resourceNotFound_InterfaceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCRkpError {
        TCRkpError(.resourceUnavailable)
    }
    
    /// devid 暂未生成。
    public static var resourceUnavailable_NotAllready: TCRkpError {
        TCRkpError(.resourceUnavailable_NotAllready)
    }
    
    /// 未开通服务权限。
    public static var resourceUnavailable_PermissionDenied: TCRkpError {
        TCRkpError(.resourceUnavailable_PermissionDenied)
    }
    
    /// 鉴权失败。
    public static var unauthorizedOperation_AuthFailed: TCRkpError {
        TCRkpError(.unauthorizedOperation_AuthFailed)
    }
    
    /// 密钥不存在。
    public static var unknownParameter_SecretIdNotExists: TCRkpError {
        TCRkpError(.unknownParameter_SecretIdNotExists)
    }
}

extension TCRkpError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnknownParameter.self]
    }
}

extension TCRkpError: Equatable {
    public static func == (lhs: TCRkpError, rhs: TCRkpError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCRkpError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}