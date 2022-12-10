public struct TCAfError: TCErrorType {
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
        case invalidParameterValue_InvalidBusinessId = "InvalidParameterValue.InvalidBusinessId"
        case invalidParameterValue_InvalidDate = "InvalidParameterValue.InvalidDate"
        case invalidParameterValue_InvalidLimit = "InvalidParameterValue.InvalidLimit"
        case invalidParameterValue_InvalidNum = "InvalidParameterValue.InvalidNum"
        case invalidParameterValue_InvalidSrvId = "InvalidParameterValue.InvalidSrvId"
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
    public static var authFailure: TCAfError {
        TCAfError(.authFailure)
    }
    
    /// 验证码签名错误。
    public static var authFailure_CapSigError: TCAfError {
        TCAfError(.authFailure_CapSigError)
    }
    
    /// 请求过期。
    public static var authFailure_Expired: TCAfError {
        TCAfError(.authFailure_Expired)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCAfError {
        TCAfError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCAfError {
        TCAfError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCAfError {
        TCAfError(.internalError)
    }
    
    /// 业务系统逻辑错误。
    public static var internalError_BackendLogicError: TCAfError {
        TCAfError(.internalError_BackendLogicError)
    }
    
    /// Sign后端错误。
    public static var internalError_SignBackendError: TCAfError {
        TCAfError(.internalError_SignBackendError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCAfError {
        TCAfError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCAfError {
        TCAfError(.invalidParameterValue)
    }
    
    /// BadBody。
    public static var invalidParameterValue_BadBody: TCAfError {
        TCAfError(.invalidParameterValue_BadBody)
    }
    
    /// 请求包过大。
    public static var invalidParameterValue_BodyTooLarge: TCAfError {
        TCAfError(.invalidParameterValue_BodyTooLarge)
    }
    
    /// 验证码不匹配。
    public static var invalidParameterValue_CapMisMatch: TCAfError {
        TCAfError(.invalidParameterValue_CapMisMatch)
    }
    
    /// HTTP方法错误。
    public static var invalidParameterValue_HttpMethodError: TCAfError {
        TCAfError(.invalidParameterValue_HttpMethodError)
    }
    
    /// BusinessId取值错误。
    public static var invalidParameterValue_InvalidBusinessId: TCAfError {
        TCAfError(.invalidParameterValue_InvalidBusinessId)
    }
    
    /// 日期取值错误。
    public static var invalidParameterValue_InvalidDate: TCAfError {
        TCAfError(.invalidParameterValue_InvalidDate)
    }
    
    /// PageLimit取值错误。
    public static var invalidParameterValue_InvalidLimit: TCAfError {
        TCAfError(.invalidParameterValue_InvalidLimit)
    }
    
    /// PageNum取值错误。
    public static var invalidParameterValue_InvalidNum: TCAfError {
        TCAfError(.invalidParameterValue_InvalidNum)
    }
    
    /// SrvId取值。
    public static var invalidParameterValue_InvalidSrvId: TCAfError {
        TCAfError(.invalidParameterValue_InvalidSrvId)
    }
    
    /// SrvName取值错误。
    public static var invalidParameterValue_InvalidSrvName: TCAfError {
        TCAfError(.invalidParameterValue_InvalidSrvName)
    }
    
    /// Stride取值错误。
    public static var invalidParameterValue_InvalidStride: TCAfError {
        TCAfError(.invalidParameterValue_InvalidStride)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParamError: TCAfError {
        TCAfError(.invalidParameter_ParamError)
    }
    
    /// URL错误。
    public static var invalidParameter_UrlError: TCAfError {
        TCAfError(.invalidParameter_UrlError)
    }
    
    /// 版本错误。
    public static var invalidParameter_VersionError: TCAfError {
        TCAfError(.invalidParameter_VersionError)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCAfError {
        TCAfError(.limitExceeded)
    }
    
    /// 超过配额。
    public static var limitExceeded_FreqCnt: TCAfError {
        TCAfError(.limitExceeded_FreqCnt)
    }
    
    /// 超过配额。
    public static var limitExceeded_IpFreqCnt: TCAfError {
        TCAfError(.limitExceeded_IpFreqCnt)
    }
    
    /// 关键词频控限制。
    public static var limitExceeded_KeyFreqCnt: TCAfError {
        TCAfError(.limitExceeded_KeyFreqCnt)
    }
    
    /// 重放攻击。
    public static var limitExceeded_ReplayAttack: TCAfError {
        TCAfError(.limitExceeded_ReplayAttack)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCAfError {
        TCAfError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCAfError {
        TCAfError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCAfError {
        TCAfError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCAfError {
        TCAfError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCAfError {
        TCAfError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCAfError {
        TCAfError(.resourceNotFound)
    }
    
    /// 接口不存在。
    public static var resourceNotFound_InterfaceNotFound: TCAfError {
        TCAfError(.resourceNotFound_InterfaceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCAfError {
        TCAfError(.resourceUnavailable)
    }
    
    /// 未开通服务权限。
    public static var resourceUnavailable_PermissionDenied: TCAfError {
        TCAfError(.resourceUnavailable_PermissionDenied)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCAfError {
        TCAfError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCAfError {
        TCAfError(.unauthorizedOperation)
    }
    
    /// 鉴权失败。
    public static var unauthorizedOperation_AuthFailed: TCAfError {
        TCAfError(.unauthorizedOperation_AuthFailed)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCAfError {
        TCAfError(.unknownParameter)
    }
    
    /// 密钥不存在。
    public static var unknownParameter_SecretIdNotExists: TCAfError {
        TCAfError(.unknownParameter_SecretIdNotExists)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCAfError {
        TCAfError(.unsupportedOperation)
    }
}

extension TCAfError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnknownParameter.self]
    }
}

extension TCAfError: Equatable {
    public static func == (lhs: TCAfError, rhs: TCAfError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAfError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAfError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
