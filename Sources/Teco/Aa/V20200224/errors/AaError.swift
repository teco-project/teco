public struct TCAaError: TCErrorType {
    enum Code: String {
        case authFailure_CapSigError = "AuthFailure.CapSigError"
        case authFailure_Expired = "AuthFailure.Expired"
        case internalError = "InternalError"
        case internalError_BackendLogicError = "InternalError.BackendLogicError"
        case internalError_SignBackendError = "InternalError.SignBackendError"
        case invalidParameterValue_BadBody = "InvalidParameterValue.BadBody"
        case invalidParameterValue_BodyTooLarge = "InvalidParameterValue.BodyTooLarge"
        case invalidParameterValue_CapMisMatch = "InvalidParameterValue.CapMisMatch"
        case invalidParameterValue_HttpMethodError = "InvalidParameterValue.HttpMethodError"
        case invalidParameter_CapSigError = "InvalidParameter.CapSigError"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case invalidParameter_UrlError = "InvalidParameter.UrlError"
        case invalidParameter_VersionError = "InvalidParameter.VersionError"
        case limitExceeded_FreqCnt = "LimitExceeded.FreqCnt"
        case limitExceeded_IpFreqCnt = "LimitExceeded.IpFreqCnt"
        case limitExceeded_KeyFreqCnt = "LimitExceeded.KeyFreqCnt"
        case limitExceeded_ReplayAttack = "LimitExceeded.ReplayAttack"
        case resourceNotFound_InterfaceNotFound = "ResourceNotFound.InterfaceNotFound"
        case resourceUnavailable_PermissionDenied = "ResourceUnavailable.PermissionDenied"
        case unauthorizedOperation_AuthFailed = "UnauthorizedOperation.AuthFailed"
        case unknownParameter_SecretIdNotExists = "UnknownParameter.SecretIdNotExists"
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
    
    /// 验证码签名错误。
    public static var authFailure_CapSigError: TCAaError {
        TCAaError(.authFailure_CapSigError)
    }
    
    /// 请求过期。
    public static var authFailure_Expired: TCAaError {
        TCAaError(.authFailure_Expired)
    }
    
    /// 内部错误。
    public static var internalError: TCAaError {
        TCAaError(.internalError)
    }
    
    /// 业务系统逻辑错误。
    public static var internalError_BackendLogicError: TCAaError {
        TCAaError(.internalError_BackendLogicError)
    }
    
    /// Sign后端错误。
    public static var internalError_SignBackendError: TCAaError {
        TCAaError(.internalError_SignBackendError)
    }
    
    /// BadBody。
    public static var invalidParameterValue_BadBody: TCAaError {
        TCAaError(.invalidParameterValue_BadBody)
    }
    
    /// 请求包过大。
    public static var invalidParameterValue_BodyTooLarge: TCAaError {
        TCAaError(.invalidParameterValue_BodyTooLarge)
    }
    
    /// 验证码不匹配。
    public static var invalidParameterValue_CapMisMatch: TCAaError {
        TCAaError(.invalidParameterValue_CapMisMatch)
    }
    
    /// HTTP方法错误。
    public static var invalidParameterValue_HttpMethodError: TCAaError {
        TCAaError(.invalidParameterValue_HttpMethodError)
    }
    
    /// 验证码签名错误。
    public static var invalidParameter_CapSigError: TCAaError {
        TCAaError(.invalidParameter_CapSigError)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParamError: TCAaError {
        TCAaError(.invalidParameter_ParamError)
    }
    
    /// URL错误。
    public static var invalidParameter_UrlError: TCAaError {
        TCAaError(.invalidParameter_UrlError)
    }
    
    /// 版本错误。
    public static var invalidParameter_VersionError: TCAaError {
        TCAaError(.invalidParameter_VersionError)
    }
    
    /// 超过配额。
    public static var limitExceeded_FreqCnt: TCAaError {
        TCAaError(.limitExceeded_FreqCnt)
    }
    
    /// 超过配额（用户IP）。
    public static var limitExceeded_IpFreqCnt: TCAaError {
        TCAaError(.limitExceeded_IpFreqCnt)
    }
    
    /// 关键词频控限制。
    public static var limitExceeded_KeyFreqCnt: TCAaError {
        TCAaError(.limitExceeded_KeyFreqCnt)
    }
    
    /// 重放攻击。
    public static var limitExceeded_ReplayAttack: TCAaError {
        TCAaError(.limitExceeded_ReplayAttack)
    }
    
    /// 接口不存在。
    public static var resourceNotFound_InterfaceNotFound: TCAaError {
        TCAaError(.resourceNotFound_InterfaceNotFound)
    }
    
    /// 未开通服务权限。
    public static var resourceUnavailable_PermissionDenied: TCAaError {
        TCAaError(.resourceUnavailable_PermissionDenied)
    }
    
    /// 鉴权失败。
    public static var unauthorizedOperation_AuthFailed: TCAaError {
        TCAaError(.unauthorizedOperation_AuthFailed)
    }
    
    /// 密钥不存在。
    public static var unknownParameter_SecretIdNotExists: TCAaError {
        TCAaError(.unknownParameter_SecretIdNotExists)
    }
}

extension TCAaError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnknownParameter.self]
    }
}

extension TCAaError: Equatable {
    public static func == (lhs: TCAaError, rhs: TCAaError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAaError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAaError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
