public struct TCEssbasicError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_AccountAlreadyExists = "FailedOperation.AccountAlreadyExists"
        case failedOperation_AccountVerifyFail = "FailedOperation.AccountVerifyFail"
        case failedOperation_AuthFail = "FailedOperation.AuthFail"
        case failedOperation_DLockFailed = "FailedOperation.DLockFailed"
        case failedOperation_ErrBindingRepeated = "FailedOperation.ErrBindingRepeated"
        case failedOperation_GenerateOrgSeal = "FailedOperation.GenerateOrgSeal"
        case failedOperation_GenerateUserSeal = "FailedOperation.GenerateUserSeal"
        case failedOperation_NoRole = "FailedOperation.NoRole"
        case failedOperation_OpenIdAlreadyExists = "FailedOperation.OpenIdAlreadyExists"
        case failedOperation_OrgIdCardNumberAlreadyExists = "FailedOperation.OrgIdCardNumberAlreadyExists"
        case failedOperation_RequestLimitExceeded = "FailedOperation.RequestLimitExceeded"
        case failedOperation_RequestLimitExceeded1D = "FailedOperation.RequestLimitExceeded1D"
        case failedOperation_RequestLimitExceeded1H = "FailedOperation.RequestLimitExceeded1H"
        case failedOperation_RequestLimitExceeded30S = "FailedOperation.RequestLimitExceeded30S"
        case internalError = "InternalError"
        case internalError_Api = "InternalError.Api"
        case internalError_Cache = "InternalError.Cache"
        case internalError_Callback = "InternalError.Callback"
        case internalError_Db = "InternalError.Db"
        case internalError_Decryption = "InternalError.Decryption"
        case internalError_Encryption = "InternalError.Encryption"
        case internalError_GenerateId = "InternalError.GenerateId"
        case internalError_Mq = "InternalError.Mq"
        case internalError_Pdf = "InternalError.Pdf"
        case internalError_Serialize = "InternalError.Serialize"
        case internalError_Storage = "InternalError.Storage"
        case internalError_ThirdParty = "InternalError.ThirdParty"
        case internalError_UnSerialize = "InternalError.UnSerialize"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_BizApproverAlreadyExists = "InvalidParameter.BizApproverAlreadyExists"
        case invalidParameter_InvalidVerifyResult = "InvalidParameter.InvalidVerifyResult"
        case invalidParameter_Status = "InvalidParameter.Status"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case operationDenied_BannedApplication = "OperationDenied.BannedApplication"
        case operationDenied_NoApiAuth = "OperationDenied.NoApiAuth"
        case operationDenied_NoExtraVerify = "OperationDenied.NoExtraVerify"
        case operationDenied_NoIdentityVerify = "OperationDenied.NoIdentityVerify"
        case operationDenied_NoPaymentVerify = "OperationDenied.NoPaymentVerify"
        case operationDenied_NoSession = "OperationDenied.NoSession"
        case operationDenied_NoVerify = "OperationDenied.NoVerify"
        case operationDenied_NotOwnerUin = "OperationDenied.NotOwnerUin"
        case operationDenied_UserNotInOrganization = "OperationDenied.UserNotInOrganization"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_Flow = "ResourceNotFound.Flow"
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
    public static var authFailure: TCEssbasicError {
        TCEssbasicError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCEssbasicError {
        TCEssbasicError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCEssbasicError {
        TCEssbasicError(.failedOperation)
    }
    
    /// 帐号已存在并实名。
    public static var failedOperation_AccountAlreadyExists: TCEssbasicError {
        TCEssbasicError(.failedOperation_AccountAlreadyExists)
    }
    
    /// 实名认证错误。
    public static var failedOperation_AccountVerifyFail: TCEssbasicError {
        TCEssbasicError(.failedOperation_AccountVerifyFail)
    }
    
    /// 鉴权失败。
    public static var failedOperation_AuthFail: TCEssbasicError {
        TCEssbasicError(.failedOperation_AuthFail)
    }
    
    /// 加锁失败。
    public static var failedOperation_DLockFailed: TCEssbasicError {
        TCEssbasicError(.failedOperation_DLockFailed)
    }
    
    /// 已绑定其它手机号码或手机号码已被其它终端(微信)绑定。
    public static var failedOperation_ErrBindingRepeated: TCEssbasicError {
        TCEssbasicError(.failedOperation_ErrBindingRepeated)
    }
    
    /// 生成企业印章失败。
    public static var failedOperation_GenerateOrgSeal: TCEssbasicError {
        TCEssbasicError(.failedOperation_GenerateOrgSeal)
    }
    
    /// 生成个人印章失败。
    public static var failedOperation_GenerateUserSeal: TCEssbasicError {
        TCEssbasicError(.failedOperation_GenerateUserSeal)
    }
    
    /// 无角色。
    public static var failedOperation_NoRole: TCEssbasicError {
        TCEssbasicError(.failedOperation_NoRole)
    }
    
    /// 注册的OpenId已存在。
    public static var failedOperation_OpenIdAlreadyExists: TCEssbasicError {
        TCEssbasicError(.failedOperation_OpenIdAlreadyExists)
    }
    
    /// 注册的企业证件号码已存在。
    public static var failedOperation_OrgIdCardNumberAlreadyExists: TCEssbasicError {
        TCEssbasicError(.failedOperation_OrgIdCardNumberAlreadyExists)
    }
    
    /// 请求的次数超过了频率限制。
    public static var failedOperation_RequestLimitExceeded: TCEssbasicError {
        TCEssbasicError(.failedOperation_RequestLimitExceeded)
    }
    
    /// 今日验证码发送量已超出限制，请联系工作人员处理。
    public static var failedOperation_RequestLimitExceeded1D: TCEssbasicError {
        TCEssbasicError(.failedOperation_RequestLimitExceeded1D)
    }
    
    /// 本小时验证码发送数量超出限制，请稍后重试。
    public static var failedOperation_RequestLimitExceeded1H: TCEssbasicError {
        TCEssbasicError(.failedOperation_RequestLimitExceeded1H)
    }
    
    /// 短信发送频率超出限制，请等待一分钟后重试。
    public static var failedOperation_RequestLimitExceeded30S: TCEssbasicError {
        TCEssbasicError(.failedOperation_RequestLimitExceeded30S)
    }
    
    /// 内部错误。
    public static var internalError: TCEssbasicError {
        TCEssbasicError(.internalError)
    }
    
    /// 其他API错误。
    public static var internalError_Api: TCEssbasicError {
        TCEssbasicError(.internalError_Api)
    }
    
    /// 缓存错误。
    public static var internalError_Cache: TCEssbasicError {
        TCEssbasicError(.internalError_Cache)
    }
    
    /// 回调错误。
    public static var internalError_Callback: TCEssbasicError {
        TCEssbasicError(.internalError_Callback)
    }
    
    /// 数据库错误。
    public static var internalError_Db: TCEssbasicError {
        TCEssbasicError(.internalError_Db)
    }
    
    /// 解密错误。
    public static var internalError_Decryption: TCEssbasicError {
        TCEssbasicError(.internalError_Decryption)
    }
    
    /// 加密错误。
    public static var internalError_Encryption: TCEssbasicError {
        TCEssbasicError(.internalError_Encryption)
    }
    
    /// 生成唯一ID错误。
    public static var internalError_GenerateId: TCEssbasicError {
        TCEssbasicError(.internalError_GenerateId)
    }
    
    /// MQ错误。
    public static var internalError_Mq: TCEssbasicError {
        TCEssbasicError(.internalError_Mq)
    }
    
    /// Pdf错误。
    public static var internalError_Pdf: TCEssbasicError {
        TCEssbasicError(.internalError_Pdf)
    }
    
    /// 序列化错误。
    public static var internalError_Serialize: TCEssbasicError {
        TCEssbasicError(.internalError_Serialize)
    }
    
    /// 存储错误。
    public static var internalError_Storage: TCEssbasicError {
        TCEssbasicError(.internalError_Storage)
    }
    
    /// 第三方错误。
    public static var internalError_ThirdParty: TCEssbasicError {
        TCEssbasicError(.internalError_ThirdParty)
    }
    
    /// 反序列化错误。
    public static var internalError_UnSerialize: TCEssbasicError {
        TCEssbasicError(.internalError_UnSerialize)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCEssbasicError {
        TCEssbasicError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCEssbasicError {
        TCEssbasicError(.invalidParameterValue)
    }
    
    /// 重复添加签署人。
    public static var invalidParameter_BizApproverAlreadyExists: TCEssbasicError {
        TCEssbasicError(.invalidParameter_BizApproverAlreadyExists)
    }
    
    /// 无效的意愿确认票据。
    public static var invalidParameter_InvalidVerifyResult: TCEssbasicError {
        TCEssbasicError(.invalidParameter_InvalidVerifyResult)
    }
    
    /// 状态异常。
    public static var invalidParameter_Status: TCEssbasicError {
        TCEssbasicError(.invalidParameter_Status)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCEssbasicError {
        TCEssbasicError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCEssbasicError {
        TCEssbasicError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCEssbasicError {
        TCEssbasicError(.operationDenied)
    }
    
    /// 应用号已被禁止。
    public static var operationDenied_BannedApplication: TCEssbasicError {
        TCEssbasicError(.operationDenied_BannedApplication)
    }
    
    /// 没有API权限。
    public static var operationDenied_NoApiAuth: TCEssbasicError {
        TCEssbasicError(.operationDenied_NoApiAuth)
    }
    
    /// 未通过补充实名。
    public static var operationDenied_NoExtraVerify: TCEssbasicError {
        TCEssbasicError(.operationDenied_NoExtraVerify)
    }
    
    /// 未通过个人实名。
    public static var operationDenied_NoIdentityVerify: TCEssbasicError {
        TCEssbasicError(.operationDenied_NoIdentityVerify)
    }
    
    /// 未在腾讯云实名打款。
    public static var operationDenied_NoPaymentVerify: TCEssbasicError {
        TCEssbasicError(.operationDenied_NoPaymentVerify)
    }
    
    /// 没有登录态需要登录。
    public static var operationDenied_NoSession: TCEssbasicError {
        TCEssbasicError(.operationDenied_NoSession)
    }
    
    /// 未在腾讯云实名。
    public static var operationDenied_NoVerify: TCEssbasicError {
        TCEssbasicError(.operationDenied_NoVerify)
    }
    
    /// 非企业主账号。
    public static var operationDenied_NotOwnerUin: TCEssbasicError {
        TCEssbasicError(.operationDenied_NotOwnerUin)
    }
    
    /// 用户与企业不对应。
    public static var operationDenied_UserNotInOrganization: TCEssbasicError {
        TCEssbasicError(.operationDenied_UserNotInOrganization)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCEssbasicError {
        TCEssbasicError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCEssbasicError {
        TCEssbasicError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCEssbasicError {
        TCEssbasicError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCEssbasicError {
        TCEssbasicError(.resourceNotFound)
    }
    
    /// 未找到对应流程。
    public static var resourceNotFound_Flow: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_Flow)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCEssbasicError {
        TCEssbasicError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCEssbasicError {
        TCEssbasicError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCEssbasicError {
        TCEssbasicError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCEssbasicError {
        TCEssbasicError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCEssbasicError {
        TCEssbasicError(.unsupportedOperation)
    }
}

extension TCEssbasicError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, OperationDenied.self, ResourceNotFound.self]
    }
}

extension TCEssbasicError: Equatable {
    public static func == (lhs: TCEssbasicError, rhs: TCEssbasicError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEssbasicError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}