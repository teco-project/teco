public struct TCDnspodError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_AccountIsLocked = "FailedOperation.AccountIsLocked"
        case failedOperation_ContainsPersonalVip = "FailedOperation.ContainsPersonalVip"
        case failedOperation_CouponForFreeDomain = "FailedOperation.CouponForFreeDomain"
        case failedOperation_CouponNotSupported = "FailedOperation.CouponNotSupported"
        case failedOperation_CouponTypeAlreadyUsed = "FailedOperation.CouponTypeAlreadyUsed"
        case failedOperation_DomainExists = "FailedOperation.DomainExists"
        case failedOperation_DomainIsKeyDomain = "FailedOperation.DomainIsKeyDomain"
        case failedOperation_DomainIsLocked = "FailedOperation.DomainIsLocked"
        case failedOperation_DomainIsPersonalType = "FailedOperation.DomainIsPersonalType"
        case failedOperation_DomainIsSpam = "FailedOperation.DomainIsSpam"
        case failedOperation_DomainIsVip = "FailedOperation.DomainIsVip"
        case failedOperation_DomainNotInService = "FailedOperation.DomainNotInService"
        case failedOperation_DomainOwnedByOtherUser = "FailedOperation.DomainOwnedByOtherUser"
        case failedOperation_EipCheckFailed = "FailedOperation.EipCheckFailed"
        case failedOperation_FunctionNotAllowedApply = "FailedOperation.FunctionNotAllowedApply"
        case failedOperation_GetWhoisFailed = "FailedOperation.GetWhoisFailed"
        case failedOperation_InsufficientBalance = "FailedOperation.InsufficientBalance"
        case failedOperation_LoginAreaNotAllowed = "FailedOperation.LoginAreaNotAllowed"
        case failedOperation_LoginFailed = "FailedOperation.LoginFailed"
        case failedOperation_LoginTimeout = "FailedOperation.LoginTimeout"
        case failedOperation_MobileNotVerified = "FailedOperation.MobileNotVerified"
        case failedOperation_NotBatchTaskOwner = "FailedOperation.NotBatchTaskOwner"
        case failedOperation_NotDomainOwner = "FailedOperation.NotDomainOwner"
        case failedOperation_NotRealNamedUser = "FailedOperation.NotRealNamedUser"
        case failedOperation_NotResourceOwner = "FailedOperation.NotResourceOwner"
        case failedOperation_OrderCanNotPay = "FailedOperation.OrderCanNotPay"
        case failedOperation_OrderHasPaid = "FailedOperation.OrderHasPaid"
        case failedOperation_ResourceNotBind = "FailedOperation.ResourceNotBind"
        case failedOperation_TemporaryError = "FailedOperation.TemporaryError"
        case failedOperation_TransferToEnterpriseDenied = "FailedOperation.TransferToEnterpriseDenied"
        case failedOperation_TransferToPersonDenied = "FailedOperation.TransferToPersonDenied"
        case failedOperation_UnknowError = "FailedOperation.UnknowError"
        case failedOperation_VerifyingBillExists = "FailedOperation.VerifyingBillExists"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_DomainGradeInvalid = "InvalidParameterValue.DomainGradeInvalid"
        case invalidParameterValue_DomainNotExists = "InvalidParameterValue.DomainNotExists"
        case invalidParameterValue_LimitInvalid = "InvalidParameterValue.LimitInvalid"
        case invalidParameterValue_UpgradeTermInvalid = "InvalidParameterValue.UpgradeTermInvalid"
        case invalidParameterValue_UserIdInvalid = "InvalidParameterValue.UserIdInvalid"
        case invalidParameter_AccountIsBanned = "InvalidParameter.AccountIsBanned"
        case invalidParameter_ActionInvalid = "InvalidParameter.ActionInvalid"
        case invalidParameter_ActionSuccess = "InvalidParameter.ActionSuccess"
        case invalidParameter_Activity = "InvalidParameter.Activity"
        case invalidParameter_BatchDomainCreateActionError = "InvalidParameter.BatchDomainCreateActionError"
        case invalidParameter_BatchRecordCreateActionError = "InvalidParameter.BatchRecordCreateActionError"
        case invalidParameter_BatchRecordModifyActionError = "InvalidParameter.BatchRecordModifyActionError"
        case invalidParameter_BatchRecordModifyActionInvalidValue = "InvalidParameter.BatchRecordModifyActionInvalidValue"
        case invalidParameter_BatchRecordReplaceActionError = "InvalidParameter.BatchRecordReplaceActionError"
        case invalidParameter_BatchTaskCountLimit = "InvalidParameter.BatchTaskCountLimit"
        case invalidParameter_BatchTaskNotExist = "InvalidParameter.BatchTaskNotExist"
        case invalidParameter_BillNumberInvalid = "InvalidParameter.BillNumberInvalid"
        case invalidParameter_BrowserNull = "InvalidParameter.BrowserNull"
        case invalidParameter_Common = "InvalidParameter.Common"
        case invalidParameter_CustomMessage = "InvalidParameter.CustomMessage"
        case invalidParameter_DataExpired = "InvalidParameter.DataExpired"
        case invalidParameter_DataInvalid = "InvalidParameter.DataInvalid"
        case invalidParameter_DealTypeInvalid = "InvalidParameter.DealTypeInvalid"
        case invalidParameter_DnsDealDomainUpgraded = "InvalidParameter.DnsDealDomainUpgraded"
        case invalidParameter_DnsDealLocked = "InvalidParameter.DnsDealLocked"
        case invalidParameter_DnsInvalidDeal = "InvalidParameter.DnsInvalidDeal"
        case invalidParameter_DnssecAddCnameError = "InvalidParameter.DnssecAddCnameError"
        case invalidParameter_DomainAliasExists = "InvalidParameter.DomainAliasExists"
        case invalidParameter_DomainAliasIdInvalid = "InvalidParameter.DomainAliasIdInvalid"
        case invalidParameter_DomainIdInvalid = "InvalidParameter.DomainIdInvalid"
        case invalidParameter_DomainInEffectOrInvalidated = "InvalidParameter.DomainInEffectOrInvalidated"
        case invalidParameter_DomainInvalid = "InvalidParameter.DomainInvalid"
        case invalidParameter_DomainIsAliaser = "InvalidParameter.DomainIsAliaser"
        case invalidParameter_DomainIsModifyingDns = "InvalidParameter.DomainIsModifyingDns"
        case invalidParameter_DomainIsNotlocked = "InvalidParameter.DomainIsNotlocked"
        case invalidParameter_DomainNotAllowedLock = "InvalidParameter.DomainNotAllowedLock"
        case invalidParameter_DomainNotAllowedModifyRecords = "InvalidParameter.DomainNotAllowedModifyRecords"
        case invalidParameter_DomainNotBeian = "InvalidParameter.DomainNotBeian"
        case invalidParameter_DomainNotReged = "InvalidParameter.DomainNotReged"
        case invalidParameter_DomainNotVip = "InvalidParameter.DomainNotVip"
        case invalidParameter_DomainRecordExist = "InvalidParameter.DomainRecordExist"
        case invalidParameter_DomainSelfNoCopy = "InvalidParameter.DomainSelfNoCopy"
        case invalidParameter_DomainTooLong = "InvalidParameter.DomainTooLong"
        case invalidParameter_DomainTypeInvalid = "InvalidParameter.DomainTypeInvalid"
        case invalidParameter_DomainsEmpty = "InvalidParameter.DomainsEmpty"
        case invalidParameter_EmailInvalid = "InvalidParameter.EmailInvalid"
        case invalidParameter_EmailNotVerified = "InvalidParameter.EmailNotVerified"
        case invalidParameter_EmailOrQqInvalid = "InvalidParameter.EmailOrQqInvalid"
        case invalidParameter_EmailSame = "InvalidParameter.EmailSame"
        case invalidParameter_GoodsChildTypeInvalid = "InvalidParameter.GoodsChildTypeInvalid"
        case invalidParameter_GoodsNumInvalid = "InvalidParameter.GoodsNumInvalid"
        case invalidParameter_GoodsTypeInvalid = "InvalidParameter.GoodsTypeInvalid"
        case invalidParameter_GradeNotCopy = "InvalidParameter.GradeNotCopy"
        case invalidParameter_GroupIdInvalid = "InvalidParameter.GroupIdInvalid"
        case invalidParameter_GroupNameExists = "InvalidParameter.GroupNameExists"
        case invalidParameter_GroupNameInvalid = "InvalidParameter.GroupNameInvalid"
        case invalidParameter_HasPendingApply = "InvalidParameter.HasPendingApply"
        case invalidParameter_IllegalNewDeal = "InvalidParameter.IllegalNewDeal"
        case invalidParameter_InvalidCoupon = "InvalidParameter.InvalidCoupon"
        case invalidParameter_InvalidDealName = "InvalidParameter.InvalidDealName"
        case invalidParameter_InvalidSecretId = "InvalidParameter.InvalidSecretId"
        case invalidParameter_InvalidSignature = "InvalidParameter.InvalidSignature"
        case invalidParameter_InvalidTime = "InvalidParameter.InvalidTime"
        case invalidParameter_InvalidWeight = "InvalidParameter.InvalidWeight"
        case invalidParameter_IpsExceedLimit = "InvalidParameter.IpsExceedLimit"
        case invalidParameter_JobGreaterThanLimit = "InvalidParameter.JobGreaterThanLimit"
        case invalidParameter_LockDaysInvalid = "InvalidParameter.LockDaysInvalid"
        case invalidParameter_LoginTokenIdError = "InvalidParameter.LoginTokenIdError"
        case invalidParameter_LoginTokenNotExists = "InvalidParameter.LoginTokenNotExists"
        case invalidParameter_LoginTokenValidateFailed = "InvalidParameter.LoginTokenValidateFailed"
        case invalidParameter_MobileNotVerified = "InvalidParameter.MobileNotVerified"
        case invalidParameter_MxInvalid = "InvalidParameter.MxInvalid"
        case invalidParameter_NewPackageTypeInvalid = "InvalidParameter.NewPackageTypeInvalid"
        case invalidParameter_OffsetInvalid = "InvalidParameter.OffsetInvalid"
        case invalidParameter_OpenidInvalid = "InvalidParameter.OpenidInvalid"
        case invalidParameter_OperateFailed = "InvalidParameter.OperateFailed"
        case invalidParameter_OperationIsTooFrequent = "InvalidParameter.OperationIsTooFrequent"
        case invalidParameter_OptypeNotSupported = "InvalidParameter.OptypeNotSupported"
        case invalidParameter_OtherAccountUnrealName = "InvalidParameter.OtherAccountUnrealName"
        case invalidParameter_ParamInvalid = "InvalidParameter.ParamInvalid"
        case invalidParameter_ParamsIllegal = "InvalidParameter.ParamsIllegal"
        case invalidParameter_ParamsMissing = "InvalidParameter.ParamsMissing"
        case invalidParameter_PermissionDenied = "InvalidParameter.PermissionDenied"
        case invalidParameter_QcloudUinInvalid = "InvalidParameter.QcloudUinInvalid"
        case invalidParameter_RealNameUser = "InvalidParameter.RealNameUser"
        case invalidParameter_RecordIdInvalid = "InvalidParameter.RecordIdInvalid"
        case invalidParameter_RecordLineInvalid = "InvalidParameter.RecordLineInvalid"
        case invalidParameter_RecordTypeInvalid = "InvalidParameter.RecordTypeInvalid"
        case invalidParameter_RecordValueInvalid = "InvalidParameter.RecordValueInvalid"
        case invalidParameter_RecordValueLengthInvalid = "InvalidParameter.RecordValueLengthInvalid"
        case invalidParameter_RecordsEmpty = "InvalidParameter.RecordsEmpty"
        case invalidParameter_RemarkLengthExceeded = "InvalidParameter.RemarkLengthExceeded"
        case invalidParameter_RemarkTooLong = "InvalidParameter.RemarkTooLong"
        case invalidParameter_RequestIpLimited = "InvalidParameter.RequestIpLimited"
        case invalidParameter_ResultMoreThan500 = "InvalidParameter.ResultMoreThan500"
        case invalidParameter_SharedUsersUnrealName = "InvalidParameter.SharedUsersUnrealName"
        case invalidParameter_StatusCodeInvalid = "InvalidParameter.StatusCodeInvalid"
        case invalidParameter_SubdomainInvalid = "InvalidParameter.SubdomainInvalid"
        case invalidParameter_TaskNotCompleted = "InvalidParameter.TaskNotCompleted"
        case invalidParameter_TimeSpanInvalid = "InvalidParameter.TimeSpanInvalid"
        case invalidParameter_TimestampExpired = "InvalidParameter.TimestampExpired"
        case invalidParameter_TooManyInvalidDomains = "InvalidParameter.TooManyInvalidDomains"
        case invalidParameter_ToolsDomainInvalid = "InvalidParameter.ToolsDomainInvalid"
        case invalidParameter_UnLockCodeExpired = "InvalidParameter.UnLockCodeExpired"
        case invalidParameter_UnLockCodeInvalid = "InvalidParameter.UnLockCodeInvalid"
        case invalidParameter_UnrealNameUser = "InvalidParameter.UnrealNameUser"
        case invalidParameter_UrlValueIllegal = "InvalidParameter.UrlValueIllegal"
        case invalidParameter_UserAlreadyLocked = "InvalidParameter.UserAlreadyLocked"
        case invalidParameter_UserAreaInvalid = "InvalidParameter.UserAreaInvalid"
        case invalidParameter_UserNotExists = "InvalidParameter.UserNotExists"
        case invalidParameter_UuidInvalid = "InvalidParameter.UuidInvalid"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_AAAACountLimit = "LimitExceeded.AAAACountLimit"
        case limitExceeded_AtNsRecordLimit = "LimitExceeded.AtNsRecordLimit"
        case limitExceeded_DomainAliasCountExceeded = "LimitExceeded.DomainAliasCountExceeded"
        case limitExceeded_DomainAliasNumberLimit = "LimitExceeded.DomainAliasNumberLimit"
        case limitExceeded_FailedLoginLimitExceeded = "LimitExceeded.FailedLoginLimitExceeded"
        case limitExceeded_GroupNumberLimit = "LimitExceeded.GroupNumberLimit"
        case limitExceeded_HiddenUrlExceeded = "LimitExceeded.HiddenUrlExceeded"
        case limitExceeded_NsCountLimit = "LimitExceeded.NsCountLimit"
        case limitExceeded_RecordTtlLimit = "LimitExceeded.RecordTtlLimit"
        case limitExceeded_SrvCountLimit = "LimitExceeded.SrvCountLimit"
        case limitExceeded_SubdomainLevelLimit = "LimitExceeded.SubdomainLevelLimit"
        case limitExceeded_SubdomainRollLimit = "LimitExceeded.SubdomainRollLimit"
        case limitExceeded_SubdomainWcardLimit = "LimitExceeded.SubdomainWcardLimit"
        case limitExceeded_UrlCountLimit = "LimitExceeded.UrlCountLimit"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case operationDenied_AccessDenied = "OperationDenied.AccessDenied"
        case operationDenied_AgentDenied = "OperationDenied.AgentDenied"
        case operationDenied_AgentSubordinateDenied = "OperationDenied.AgentSubordinateDenied"
        case operationDenied_CancelBillNotAllowed = "OperationDenied.CancelBillNotAllowed"
        case operationDenied_DeleteUsingRecordLineNotAllowed = "OperationDenied.DeleteUsingRecordLineNotAllowed"
        case operationDenied_DomainOwnerAllowedOnly = "OperationDenied.DomainOwnerAllowedOnly"
        case operationDenied_IPInBlacklistNotAllowed = "OperationDenied.IPInBlacklistNotAllowed"
        case operationDenied_MonitorCallbackNotEnabled = "OperationDenied.MonitorCallbackNotEnabled"
        case operationDenied_NoPermissionToOperateDomain = "OperationDenied.NoPermissionToOperateDomain"
        case operationDenied_NotAdmin = "OperationDenied.NotAdmin"
        case operationDenied_NotAgent = "OperationDenied.NotAgent"
        case operationDenied_NotGrantedByOwner = "OperationDenied.NotGrantedByOwner"
        case operationDenied_NotManagedUser = "OperationDenied.NotManagedUser"
        case operationDenied_NotOrderOwner = "OperationDenied.NotOrderOwner"
        case operationDenied_NotResourceOwner = "OperationDenied.NotResourceOwner"
        case operationDenied_PersonalCouponNotAllowed = "OperationDenied.PersonalCouponNotAllowed"
        case operationDenied_PostRequestAcceptOnly = "OperationDenied.PostRequestAcceptOnly"
        case operationDenied_ResourceNotAllowRenew = "OperationDenied.ResourceNotAllowRenew"
        case operationDenied_VipDomainAllowed = "OperationDenied.VipDomainAllowed"
        case requestLimitExceeded = "RequestLimitExceeded"
        case requestLimitExceeded_BatchTaskLimit = "RequestLimitExceeded.BatchTaskLimit"
        case requestLimitExceeded_CreateDomainLimit = "RequestLimitExceeded.CreateDomainLimit"
        case requestLimitExceeded_RequestLimitExceeded = "RequestLimitExceeded.RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_NoDataOfDomain = "ResourceNotFound.NoDataOfDomain"
        case resourceNotFound_NoDataOfDomainAlias = "ResourceNotFound.NoDataOfDomainAlias"
        case resourceNotFound_NoDataOfGift = "ResourceNotFound.NoDataOfGift"
        case resourceNotFound_NoDataOfRecord = "ResourceNotFound.NoDataOfRecord"
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
    public static var authFailure: TCDnspodError {
        TCDnspodError(.authFailure)
    }
    
    /// 操作未授权。
    public static var authFailure_UnauthorizedOperation: TCDnspodError {
        TCDnspodError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCDnspodError {
        TCDnspodError(.failedOperation)
    }
    
    /// 抱歉，该帐户已经被锁定。
    public static var failedOperation_AccountIsLocked: TCDnspodError {
        TCDnspodError(.failedOperation_AccountIsLocked)
    }
    
    /// 您的帐号下包含个人豪华域名，不能直接升级，请联系销售。
    public static var failedOperation_ContainsPersonalVip: TCDnspodError {
        TCDnspodError(.failedOperation_ContainsPersonalVip)
    }
    
    /// 此优惠券只能被免费域名使用。
    public static var failedOperation_CouponForFreeDomain: TCDnspodError {
        TCDnspodError(.failedOperation_CouponForFreeDomain)
    }
    
    /// 您的帐户不满足使用此优惠券的条件。
    public static var failedOperation_CouponNotSupported: TCDnspodError {
        TCDnspodError(.failedOperation_CouponNotSupported)
    }
    
    /// 域名已经使用过该类型的礼券了，不能重复使用。
    public static var failedOperation_CouponTypeAlreadyUsed: TCDnspodError {
        TCDnspodError(.failedOperation_CouponTypeAlreadyUsed)
    }
    
    /// 该域名已在您的列表中，无需重复添加。
    public static var failedOperation_DomainExists: TCDnspodError {
        TCDnspodError(.failedOperation_DomainExists)
    }
    
    /// 该域名为腾讯云 DNSPod 重点保护资源，为了避免误操作造成的业务影响，域名禁止自行操作删除。如果您确认需要删除域名，请先联系您的客户经理，我们将竭诚为您提供技术支持。
    public static var failedOperation_DomainIsKeyDomain: TCDnspodError {
        TCDnspodError(.failedOperation_DomainIsKeyDomain)
    }
    
    /// 锁定域名不能进行此操作。
    public static var failedOperation_DomainIsLocked: TCDnspodError {
        TCDnspodError(.failedOperation_DomainIsLocked)
    }
    
    /// 域名已升级为个人套餐，但目前位于企业账号，请与销售联系。
    public static var failedOperation_DomainIsPersonalType: TCDnspodError {
        TCDnspodError(.failedOperation_DomainIsPersonalType)
    }
    
    /// 封禁域名不能进行此操作。
    public static var failedOperation_DomainIsSpam: TCDnspodError {
        TCDnspodError(.failedOperation_DomainIsSpam)
    }
    
    /// VIP域名不能进行此操作。
    public static var failedOperation_DomainIsVip: TCDnspodError {
        TCDnspodError(.failedOperation_DomainIsVip)
    }
    
    public static var failedOperation_DomainNotInService: TCDnspodError {
        TCDnspodError(.failedOperation_DomainNotInService)
    }
    
    /// 该域名已被其他账号添加，可在域名列表中添加取回。
    public static var failedOperation_DomainOwnedByOtherUser: TCDnspodError {
        TCDnspodError(.failedOperation_DomainOwnedByOtherUser)
    }
    
    /// 校验公网 IP 发生异常。
    public static var failedOperation_EipCheckFailed: TCDnspodError {
        TCDnspodError(.failedOperation_EipCheckFailed)
    }
    
    /// 此功能暂停申请，请稍候重试。
    public static var failedOperation_FunctionNotAllowedApply: TCDnspodError {
        TCDnspodError(.failedOperation_FunctionNotAllowedApply)
    }
    
    /// 获取不到域名信息，可能域名非法或网络故障，请稍后再试。
    public static var failedOperation_GetWhoisFailed: TCDnspodError {
        TCDnspodError(.failedOperation_GetWhoisFailed)
    }
    
    /// 账户余额不足。
    public static var failedOperation_InsufficientBalance: TCDnspodError {
        TCDnspodError(.failedOperation_InsufficientBalance)
    }
    
    /// 帐号异地登录，请求被拒绝。
    public static var failedOperation_LoginAreaNotAllowed: TCDnspodError {
        TCDnspodError(.failedOperation_LoginAreaNotAllowed)
    }
    
    /// 登录失败，请检查账号和密码是否正确。
    public static var failedOperation_LoginFailed: TCDnspodError {
        TCDnspodError(.failedOperation_LoginFailed)
    }
    
    /// 登录已经超时，请重新登录。
    public static var failedOperation_LoginTimeout: TCDnspodError {
        TCDnspodError(.failedOperation_LoginTimeout)
    }
    
    /// 用户手机没有通过验证。
    public static var failedOperation_MobileNotVerified: TCDnspodError {
        TCDnspodError(.failedOperation_MobileNotVerified)
    }
    
    /// 权限错误，您无法查看该任务的详情。
    public static var failedOperation_NotBatchTaskOwner: TCDnspodError {
        TCDnspodError(.failedOperation_NotBatchTaskOwner)
    }
    
    /// 域名不在您的名下。
    public static var failedOperation_NotDomainOwner: TCDnspodError {
        TCDnspodError(.failedOperation_NotDomainOwner)
    }
    
    /// 未实名认证用户，请先完成实名认证再操作。
    public static var failedOperation_NotRealNamedUser: TCDnspodError {
        TCDnspodError(.failedOperation_NotRealNamedUser)
    }
    
    /// 您没有权限操作此资源。
    public static var failedOperation_NotResourceOwner: TCDnspodError {
        TCDnspodError(.failedOperation_NotResourceOwner)
    }
    
    /// 您不能付款此订单。
    public static var failedOperation_OrderCanNotPay: TCDnspodError {
        TCDnspodError(.failedOperation_OrderCanNotPay)
    }
    
    /// 此订单已经付过款。
    public static var failedOperation_OrderHasPaid: TCDnspodError {
        TCDnspodError(.failedOperation_OrderHasPaid)
    }
    
    /// 资源未绑定域名。
    public static var failedOperation_ResourceNotBind: TCDnspodError {
        TCDnspodError(.failedOperation_ResourceNotBind)
    }
    
    public static var failedOperation_TemporaryError: TCDnspodError {
        TCDnspodError(.failedOperation_TemporaryError)
    }
    
    /// 不能转移到企业账号。
    public static var failedOperation_TransferToEnterpriseDenied: TCDnspodError {
        TCDnspodError(.failedOperation_TransferToEnterpriseDenied)
    }
    
    /// 不能转移到个人账号。
    public static var failedOperation_TransferToPersonDenied: TCDnspodError {
        TCDnspodError(.failedOperation_TransferToPersonDenied)
    }
    
    /// 操作未响应，请稍后重试。
    public static var failedOperation_UnknowError: TCDnspodError {
        TCDnspodError(.failedOperation_UnknowError)
    }
    
    /// 域名已经提交过订单并且正在审核中，请稍候。
    public static var failedOperation_VerifyingBillExists: TCDnspodError {
        TCDnspodError(.failedOperation_VerifyingBillExists)
    }
    
    /// 内部错误。
    public static var internalError: TCDnspodError {
        TCDnspodError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCDnspodError {
        TCDnspodError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCDnspodError {
        TCDnspodError(.invalidParameterValue)
    }
    
    /// 域名等级不正确。
    public static var invalidParameterValue_DomainGradeInvalid: TCDnspodError {
        TCDnspodError(.invalidParameterValue_DomainGradeInvalid)
    }
    
    /// 当前域名有误，请返回重新操作。
    public static var invalidParameterValue_DomainNotExists: TCDnspodError {
        TCDnspodError(.invalidParameterValue_DomainNotExists)
    }
    
    /// 分页长度数量错误。
    public static var invalidParameterValue_LimitInvalid: TCDnspodError {
        TCDnspodError(.invalidParameterValue_LimitInvalid)
    }
    
    /// 升级年限不正确。
    public static var invalidParameterValue_UpgradeTermInvalid: TCDnspodError {
        TCDnspodError(.invalidParameterValue_UpgradeTermInvalid)
    }
    
    /// 用户编号不正确。
    public static var invalidParameterValue_UserIdInvalid: TCDnspodError {
        TCDnspodError(.invalidParameterValue_UserIdInvalid)
    }
    
    /// 您的账号已被系统封禁，如果您有任何疑问请与我们联系。
    public static var invalidParameter_AccountIsBanned: TCDnspodError {
        TCDnspodError(.invalidParameter_AccountIsBanned)
    }
    
    /// 无效的操作。
    public static var invalidParameter_ActionInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_ActionInvalid)
    }
    
    /// 操作已经成功完成。
    public static var invalidParameter_ActionSuccess: TCDnspodError {
        TCDnspodError(.invalidParameter_ActionSuccess)
    }
    
    /// 用户未实名。
    public static var invalidParameter_Activity: TCDnspodError {
        TCDnspodError(.invalidParameter_Activity)
    }
    
    /// 创建批量域名任务失败，原因：内部错误。
    public static var invalidParameter_BatchDomainCreateActionError: TCDnspodError {
        TCDnspodError(.invalidParameter_BatchDomainCreateActionError)
    }
    
    /// 创建批量记录任务失败，原因：内部错误。
    public static var invalidParameter_BatchRecordCreateActionError: TCDnspodError {
        TCDnspodError(.invalidParameter_BatchRecordCreateActionError)
    }
    
    /// 批量修改记录任务失败，原因：内部错误。
    public static var invalidParameter_BatchRecordModifyActionError: TCDnspodError {
        TCDnspodError(.invalidParameter_BatchRecordModifyActionError)
    }
    
    /// 记录值无效。
    public static var invalidParameter_BatchRecordModifyActionInvalidValue: TCDnspodError {
        TCDnspodError(.invalidParameter_BatchRecordModifyActionInvalidValue)
    }
    
    /// 批量替换记录任务失败，原因：内部错误。
    public static var invalidParameter_BatchRecordReplaceActionError: TCDnspodError {
        TCDnspodError(.invalidParameter_BatchRecordReplaceActionError)
    }
    
    /// 超过批量任务数上限。
    public static var invalidParameter_BatchTaskCountLimit: TCDnspodError {
        TCDnspodError(.invalidParameter_BatchTaskCountLimit)
    }
    
    /// 任务不存在，无法获取任务详情。
    public static var invalidParameter_BatchTaskNotExist: TCDnspodError {
        TCDnspodError(.invalidParameter_BatchTaskNotExist)
    }
    
    /// 订单号码不正确。
    public static var invalidParameter_BillNumberInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_BillNumberInvalid)
    }
    
    /// 浏览器字段为空。
    public static var invalidParameter_BrowserNull: TCDnspodError {
        TCDnspodError(.invalidParameter_BrowserNull)
    }
    
    /// 您操作过于频繁，请稍后重试。
    public static var invalidParameter_Common: TCDnspodError {
        TCDnspodError(.invalidParameter_Common)
    }
    
    /// 自定义错误信息。
    public static var invalidParameter_CustomMessage: TCDnspodError {
        TCDnspodError(.invalidParameter_CustomMessage)
    }
    
    /// 数据过期,请重新提交。
    public static var invalidParameter_DataExpired: TCDnspodError {
        TCDnspodError(.invalidParameter_DataExpired)
    }
    
    /// data 无效。
    public static var invalidParameter_DataInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_DataInvalid)
    }
    
    /// 订单类型无效。
    public static var invalidParameter_DealTypeInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_DealTypeInvalid)
    }
    
    /// 域名已升级至付费套餐，无法完成下单。
    public static var invalidParameter_DnsDealDomainUpgraded: TCDnspodError {
        TCDnspodError(.invalidParameter_DnsDealDomainUpgraded)
    }
    
    /// 相关服务已有其他未完成的订单，请先将原订单支付或取消后，才可提交新的订单。
    public static var invalidParameter_DnsDealLocked: TCDnspodError {
        TCDnspodError(.invalidParameter_DnsDealLocked)
    }
    
    /// 订单数据非法。
    public static var invalidParameter_DnsInvalidDeal: TCDnspodError {
        TCDnspodError(.invalidParameter_DnsInvalidDeal)
    }
    
    /// 该域名开启了 DNSSEC，不允许添加 @ 子域名 CNAME、显性 URL 或者隐性 URL 记录。
    public static var invalidParameter_DnssecAddCnameError: TCDnspodError {
        TCDnspodError(.invalidParameter_DnssecAddCnameError)
    }
    
    /// 别名已经存在。
    public static var invalidParameter_DomainAliasExists: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainAliasExists)
    }
    
    /// 别名编号错误。
    public static var invalidParameter_DomainAliasIdInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainAliasIdInvalid)
    }
    
    /// 域名编号不正确。
    public static var invalidParameter_DomainIdInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainIdInvalid)
    }
    
    /// 不允许操作生效中或失效中的域名。
    public static var invalidParameter_DomainInEffectOrInvalidated: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainInEffectOrInvalidated)
    }
    
    /// 域名不正确，请输入主域名，如 dnspod.cn。
    public static var invalidParameter_DomainInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainInvalid)
    }
    
    /// 此域名是其它域名的别名。
    public static var invalidParameter_DomainIsAliaser: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainIsAliaser)
    }
    
    /// 该域名已有同类型操作未完成，无法执行该操作。
    public static var invalidParameter_DomainIsModifyingDns: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainIsModifyingDns)
    }
    
    /// 域名没有锁定。
    public static var invalidParameter_DomainIsNotlocked: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainIsNotlocked)
    }
    
    /// 暂停域名不支持锁定。
    public static var invalidParameter_DomainNotAllowedLock: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainNotAllowedLock)
    }
    
    /// 处于生效中/失效中的域名，不允许变更解析记录。
    public static var invalidParameter_DomainNotAllowedModifyRecords: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainNotAllowedModifyRecords)
    }
    
    /// 该域名未备案，无法添加 URL 记录。
    public static var invalidParameter_DomainNotBeian: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainNotBeian)
    }
    
    /// 域名还没有注册，无法添加。
    public static var invalidParameter_DomainNotReged: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainNotReged)
    }
    
    /// 原域名不是VIP域名，无法替换。
    public static var invalidParameter_DomainNotVip: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainNotVip)
    }
    
    /// 记录已经存在，无需再次添加。
    public static var invalidParameter_DomainRecordExist: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainRecordExist)
    }
    
    /// 域名自己无需进行复制。
    public static var invalidParameter_DomainSelfNoCopy: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainSelfNoCopy)
    }
    
    /// 域名过长。
    public static var invalidParameter_DomainTooLong: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainTooLong)
    }
    
    /// 域名类型错误。
    public static var invalidParameter_DomainTypeInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainTypeInvalid)
    }
    
    /// 没有提交任何域名。
    public static var invalidParameter_DomainsEmpty: TCDnspodError {
        TCDnspodError(.invalidParameter_DomainsEmpty)
    }
    
    /// 邮箱地址不正确。
    public static var invalidParameter_EmailInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_EmailInvalid)
    }
    
    /// 抱歉，您的账户还没有通过邮箱验证。
    public static var invalidParameter_EmailNotVerified: TCDnspodError {
        TCDnspodError(.invalidParameter_EmailNotVerified)
    }
    
    /// 请输入合法的邮箱或者uin。
    public static var invalidParameter_EmailOrQqInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_EmailOrQqInvalid)
    }
    
    /// 域名已经在该账号下。
    public static var invalidParameter_EmailSame: TCDnspodError {
        TCDnspodError(.invalidParameter_EmailSame)
    }
    
    /// 商品子类型无效。
    public static var invalidParameter_GoodsChildTypeInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_GoodsChildTypeInvalid)
    }
    
    /// 商品数量无效。
    public static var invalidParameter_GoodsNumInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_GoodsNumInvalid)
    }
    
    /// 商品类型无效。
    public static var invalidParameter_GoodsTypeInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_GoodsTypeInvalid)
    }
    
    /// 当前域名等级低于源域名的等级，无法进行复制。
    public static var invalidParameter_GradeNotCopy: TCDnspodError {
        TCDnspodError(.invalidParameter_GradeNotCopy)
    }
    
    /// 分组编号不正确。
    public static var invalidParameter_GroupIdInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_GroupIdInvalid)
    }
    
    /// 同名分组已经存在。
    public static var invalidParameter_GroupNameExists: TCDnspodError {
        TCDnspodError(.invalidParameter_GroupNameExists)
    }
    
    /// 分组名为1-17个字符。
    public static var invalidParameter_GroupNameInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_GroupNameInvalid)
    }
    
    /// 您已经提交过申请并且正在审核中，请耐心等候。
    public static var invalidParameter_HasPendingApply: TCDnspodError {
        TCDnspodError(.invalidParameter_HasPendingApply)
    }
    
    /// 该订单存在冲突或参数有误，无法完成支付，请重新购买。
    public static var invalidParameter_IllegalNewDeal: TCDnspodError {
        TCDnspodError(.invalidParameter_IllegalNewDeal)
    }
    
    /// 礼券代码无效。
    public static var invalidParameter_InvalidCoupon: TCDnspodError {
        TCDnspodError(.invalidParameter_InvalidCoupon)
    }
    
    /// 请输入正确的订单号。
    public static var invalidParameter_InvalidDealName: TCDnspodError {
        TCDnspodError(.invalidParameter_InvalidDealName)
    }
    
    /// 无效密钥 ID。
    public static var invalidParameter_InvalidSecretId: TCDnspodError {
        TCDnspodError(.invalidParameter_InvalidSecretId)
    }
    
    /// 无效签名。
    public static var invalidParameter_InvalidSignature: TCDnspodError {
        TCDnspodError(.invalidParameter_InvalidSignature)
    }
    
    /// 无效的时间。
    public static var invalidParameter_InvalidTime: TCDnspodError {
        TCDnspodError(.invalidParameter_InvalidTime)
    }
    
    /// 权重不合法。请输入0~100的整数。
    public static var invalidParameter_InvalidWeight: TCDnspodError {
        TCDnspodError(.invalidParameter_InvalidWeight)
    }
    
    /// ips 过长。
    public static var invalidParameter_IpsExceedLimit: TCDnspodError {
        TCDnspodError(.invalidParameter_IpsExceedLimit)
    }
    
    /// 单次任务数量超过上限。
    public static var invalidParameter_JobGreaterThanLimit: TCDnspodError {
        TCDnspodError(.invalidParameter_JobGreaterThanLimit)
    }
    
    /// 锁定天数不正确。
    public static var invalidParameter_LockDaysInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_LockDaysInvalid)
    }
    
    /// Token 的 ID 不正确。
    public static var invalidParameter_LoginTokenIdError: TCDnspodError {
        TCDnspodError(.invalidParameter_LoginTokenIdError)
    }
    
    /// 传入的 Token 不存在。
    public static var invalidParameter_LoginTokenNotExists: TCDnspodError {
        TCDnspodError(.invalidParameter_LoginTokenNotExists)
    }
    
    /// Token 验证失败。
    public static var invalidParameter_LoginTokenValidateFailed: TCDnspodError {
        TCDnspodError(.invalidParameter_LoginTokenValidateFailed)
    }
    
    /// 抱歉，您的账户还没有通过手机验证。
    public static var invalidParameter_MobileNotVerified: TCDnspodError {
        TCDnspodError(.invalidParameter_MobileNotVerified)
    }
    
    /// MX优先级不正确。
    public static var invalidParameter_MxInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_MxInvalid)
    }
    
    /// 新套餐类型无效。
    public static var invalidParameter_NewPackageTypeInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_NewPackageTypeInvalid)
    }
    
    /// 分页起始数量错误。
    public static var invalidParameter_OffsetInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_OffsetInvalid)
    }
    
    /// 无效的openid。
    public static var invalidParameter_OpenidInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_OpenidInvalid)
    }
    
    /// 操作失败，请稍候再试。
    public static var invalidParameter_OperateFailed: TCDnspodError {
        TCDnspodError(.invalidParameter_OperateFailed)
    }
    
    /// 当前操作过于频繁，请 1 分钟后重试。
    public static var invalidParameter_OperationIsTooFrequent: TCDnspodError {
        TCDnspodError(.invalidParameter_OperationIsTooFrequent)
    }
    
    /// 不支持的操作类型。
    public static var invalidParameter_OptypeNotSupported: TCDnspodError {
        TCDnspodError(.invalidParameter_OptypeNotSupported)
    }
    
    /// 对方账号未实名认证，请先完成实名认证再操作。
    public static var invalidParameter_OtherAccountUnrealName: TCDnspodError {
        TCDnspodError(.invalidParameter_OtherAccountUnrealName)
    }
    
    /// param 格式错误。
    public static var invalidParameter_ParamInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_ParamInvalid)
    }
    
    /// 参数不合法，请求被拒绝。
    public static var invalidParameter_ParamsIllegal: TCDnspodError {
        TCDnspodError(.invalidParameter_ParamsIllegal)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParamsMissing: TCDnspodError {
        TCDnspodError(.invalidParameter_ParamsMissing)
    }
    
    /// 鉴权失败。
    public static var invalidParameter_PermissionDenied: TCDnspodError {
        TCDnspodError(.invalidParameter_PermissionDenied)
    }
    
    /// 用户UIN无效。
    public static var invalidParameter_QcloudUinInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_QcloudUinInvalid)
    }
    
    /// 已实名用户。
    public static var invalidParameter_RealNameUser: TCDnspodError {
        TCDnspodError(.invalidParameter_RealNameUser)
    }
    
    /// 记录编号错误。
    public static var invalidParameter_RecordIdInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_RecordIdInvalid)
    }
    
    /// 记录线路不正确。
    public static var invalidParameter_RecordLineInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_RecordLineInvalid)
    }
    
    /// 记录类型不正确。
    public static var invalidParameter_RecordTypeInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_RecordTypeInvalid)
    }
    
    /// 记录的值不正确。
    public static var invalidParameter_RecordValueInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_RecordValueInvalid)
    }
    
    /// 解析记录值过长。
    public static var invalidParameter_RecordValueLengthInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_RecordValueLengthInvalid)
    }
    
    /// 没有提交任何记录。
    public static var invalidParameter_RecordsEmpty: TCDnspodError {
        TCDnspodError(.invalidParameter_RecordsEmpty)
    }
    
    /// 备注信息超出字符限制。
    public static var invalidParameter_RemarkLengthExceeded: TCDnspodError {
        TCDnspodError(.invalidParameter_RemarkLengthExceeded)
    }
    
    /// 备注过长（不能超过200个字）。
    public static var invalidParameter_RemarkTooLong: TCDnspodError {
        TCDnspodError(.invalidParameter_RemarkTooLong)
    }
    
    /// 您的IP非法，请求被拒绝。
    public static var invalidParameter_RequestIpLimited: TCDnspodError {
        TCDnspodError(.invalidParameter_RequestIpLimited)
    }
    
    /// 搜索结果大于500条，请增加关键字。
    public static var invalidParameter_ResultMoreThan500: TCDnspodError {
        TCDnspodError(.invalidParameter_ResultMoreThan500)
    }
    
    /// 共享用户中包含未实名认证用户。
    public static var invalidParameter_SharedUsersUnrealName: TCDnspodError {
        TCDnspodError(.invalidParameter_SharedUsersUnrealName)
    }
    
    /// 状态代码不正确。
    public static var invalidParameter_StatusCodeInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_StatusCodeInvalid)
    }
    
    /// 子域名不正确。
    public static var invalidParameter_SubdomainInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_SubdomainInvalid)
    }
    
    /// 任务未完成。
    public static var invalidParameter_TaskNotCompleted: TCDnspodError {
        TCDnspodError(.invalidParameter_TaskNotCompleted)
    }
    
    /// 时长无效。
    public static var invalidParameter_TimeSpanInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_TimeSpanInvalid)
    }
    
    /// 时间戳已过期。
    public static var invalidParameter_TimestampExpired: TCDnspodError {
        TCDnspodError(.invalidParameter_TimestampExpired)
    }
    
    /// 当前帐号下的无效域名过多，暂时无法使用该功能。请将已有域名的 DNS 服务器正确指向 DNSPod 之后，再尝试添加。
    public static var invalidParameter_TooManyInvalidDomains: TCDnspodError {
        TCDnspodError(.invalidParameter_TooManyInvalidDomains)
    }
    
    /// 域名无效。
    public static var invalidParameter_ToolsDomainInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_ToolsDomainInvalid)
    }
    
    /// 解锁代码已失效。
    public static var invalidParameter_UnLockCodeExpired: TCDnspodError {
        TCDnspodError(.invalidParameter_UnLockCodeExpired)
    }
    
    /// 解锁代码不正确。
    public static var invalidParameter_UnLockCodeInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_UnLockCodeInvalid)
    }
    
    /// 未实名认证用户，请先完成实名认证再操作。
    public static var invalidParameter_UnrealNameUser: TCDnspodError {
        TCDnspodError(.invalidParameter_UnrealNameUser)
    }
    
    /// 很抱歉，您要添加的URL的内容不符合DNSPod解析服务条款，URL添加/启用失败，如需帮助请联系技术支持。
    public static var invalidParameter_UrlValueIllegal: TCDnspodError {
        TCDnspodError(.invalidParameter_UrlValueIllegal)
    }
    
    /// 账号已经被锁定。
    public static var invalidParameter_UserAlreadyLocked: TCDnspodError {
        TCDnspodError(.invalidParameter_UserAlreadyLocked)
    }
    
    public static var invalidParameter_UserAreaInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_UserAreaInvalid)
    }
    
    /// 用户不存在。
    public static var invalidParameter_UserNotExists: TCDnspodError {
        TCDnspodError(.invalidParameter_UserNotExists)
    }
    
    /// 无效的uuid。
    public static var invalidParameter_UuidInvalid: TCDnspodError {
        TCDnspodError(.invalidParameter_UuidInvalid)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCDnspodError {
        TCDnspodError(.limitExceeded)
    }
    
    /// AAAA记录数量超出限制。
    public static var limitExceeded_AAAACountLimit: TCDnspodError {
        TCDnspodError(.limitExceeded_AAAACountLimit)
    }
    
    /// @的NS记录只能设置为默认线路。
    public static var limitExceeded_AtNsRecordLimit: TCDnspodError {
        TCDnspodError(.limitExceeded_AtNsRecordLimit)
    }
    
    /// 别名数量已经达到限制。
    public static var limitExceeded_DomainAliasCountExceeded: TCDnspodError {
        TCDnspodError(.limitExceeded_DomainAliasCountExceeded)
    }
    
    /// 当前绑定别名数量已达到限制。
    public static var limitExceeded_DomainAliasNumberLimit: TCDnspodError {
        TCDnspodError(.limitExceeded_DomainAliasNumberLimit)
    }
    
    /// 登录失败次数过多已被系统封禁。
    public static var limitExceeded_FailedLoginLimitExceeded: TCDnspodError {
        TCDnspodError(.limitExceeded_FailedLoginLimitExceeded)
    }
    
    /// 已经达到最大分组数量限制。
    public static var limitExceeded_GroupNumberLimit: TCDnspodError {
        TCDnspodError(.limitExceeded_GroupNumberLimit)
    }
    
    /// 该域名使用的套餐不支持隐性URL转发或数量已达上限，如需要使用，请去商城购买。
    public static var limitExceeded_HiddenUrlExceeded: TCDnspodError {
        TCDnspodError(.limitExceeded_HiddenUrlExceeded)
    }
    
    /// NS记录数量超出限制。
    public static var limitExceeded_NsCountLimit: TCDnspodError {
        TCDnspodError(.limitExceeded_NsCountLimit)
    }
    
    /// 记录的TTL值超出了限制。
    public static var limitExceeded_RecordTtlLimit: TCDnspodError {
        TCDnspodError(.limitExceeded_RecordTtlLimit)
    }
    
    /// SRV记录数量超出限制。
    public static var limitExceeded_SrvCountLimit: TCDnspodError {
        TCDnspodError(.limitExceeded_SrvCountLimit)
    }
    
    /// 子域名级数超出限制。
    public static var limitExceeded_SubdomainLevelLimit: TCDnspodError {
        TCDnspodError(.limitExceeded_SubdomainLevelLimit)
    }
    
    /// 子域名负载均衡数量超出限制。
    public static var limitExceeded_SubdomainRollLimit: TCDnspodError {
        TCDnspodError(.limitExceeded_SubdomainRollLimit)
    }
    
    /// 泛解析级数超出限制。
    public static var limitExceeded_SubdomainWcardLimit: TCDnspodError {
        TCDnspodError(.limitExceeded_SubdomainWcardLimit)
    }
    
    /// 该域名的显性URL转发数量已达上限，如需继续使用，请去商城购买。
    public static var limitExceeded_UrlCountLimit: TCDnspodError {
        TCDnspodError(.limitExceeded_UrlCountLimit)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCDnspodError {
        TCDnspodError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCDnspodError {
        TCDnspodError(.operationDenied)
    }
    
    /// 您没有权限执行此操作。
    public static var operationDenied_AccessDenied: TCDnspodError {
        TCDnspodError(.operationDenied_AccessDenied)
    }
    
    /// 代理不能使用此功能。
    public static var operationDenied_AgentDenied: TCDnspodError {
        TCDnspodError(.operationDenied_AgentDenied)
    }
    
    /// 代理名下的用户不能使用此功能。
    public static var operationDenied_AgentSubordinateDenied: TCDnspodError {
        TCDnspodError(.operationDenied_AgentSubordinateDenied)
    }
    
    /// 此订单不能取消。
    public static var operationDenied_CancelBillNotAllowed: TCDnspodError {
        TCDnspodError(.operationDenied_CancelBillNotAllowed)
    }
    
    /// 该线路正在使用当中，不能删除。
    public static var operationDenied_DeleteUsingRecordLineNotAllowed: TCDnspodError {
        TCDnspodError(.operationDenied_DeleteUsingRecordLineNotAllowed)
    }
    
    /// 仅域名所有者可进行此操作。
    public static var operationDenied_DomainOwnerAllowedOnly: TCDnspodError {
        TCDnspodError(.operationDenied_DomainOwnerAllowedOnly)
    }
    
    /// 抱歉，不允许添加黑名单中的IP。
    public static var operationDenied_IPInBlacklistNotAllowed: TCDnspodError {
        TCDnspodError(.operationDenied_IPInBlacklistNotAllowed)
    }
    
    /// 抱歉，您的域名等级不支持D监控通知回调功能。
    public static var operationDenied_MonitorCallbackNotEnabled: TCDnspodError {
        TCDnspodError(.operationDenied_MonitorCallbackNotEnabled)
    }
    
    /// 当前域名无权限，请返回域名列表。
    public static var operationDenied_NoPermissionToOperateDomain: TCDnspodError {
        TCDnspodError(.operationDenied_NoPermissionToOperateDomain)
    }
    
    /// 您不是管理用户。
    public static var operationDenied_NotAdmin: TCDnspodError {
        TCDnspodError(.operationDenied_NotAdmin)
    }
    
    /// 您不是代理用户。
    public static var operationDenied_NotAgent: TCDnspodError {
        TCDnspodError(.operationDenied_NotAgent)
    }
    
    /// 您还没有获取到授权，无法执行此操作。
    public static var operationDenied_NotGrantedByOwner: TCDnspodError {
        TCDnspodError(.operationDenied_NotGrantedByOwner)
    }
    
    /// 不是您名下用户。
    public static var operationDenied_NotManagedUser: TCDnspodError {
        TCDnspodError(.operationDenied_NotManagedUser)
    }
    
    /// 您没有权限操作此订单。
    public static var operationDenied_NotOrderOwner: TCDnspodError {
        TCDnspodError(.operationDenied_NotOrderOwner)
    }
    
    public static var operationDenied_NotResourceOwner: TCDnspodError {
        TCDnspodError(.operationDenied_NotResourceOwner)
    }
    
    /// 此礼券为个人礼券，请使用企业礼券。
    public static var operationDenied_PersonalCouponNotAllowed: TCDnspodError {
        TCDnspodError(.operationDenied_PersonalCouponNotAllowed)
    }
    
    /// 只支持 POST 方法提交数据。
    public static var operationDenied_PostRequestAcceptOnly: TCDnspodError {
        TCDnspodError(.operationDenied_PostRequestAcceptOnly)
    }
    
    public static var operationDenied_ResourceNotAllowRenew: TCDnspodError {
        TCDnspodError(.operationDenied_ResourceNotAllowRenew)
    }
    
    /// 企业用户的域名需要升级到VIP才能解析。
    public static var operationDenied_VipDomainAllowed: TCDnspodError {
        TCDnspodError(.operationDenied_VipDomainAllowed)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCDnspodError {
        TCDnspodError(.requestLimitExceeded)
    }
    
    /// 您的IP添加了过多任务，请稍后重试。
    public static var requestLimitExceeded_BatchTaskLimit: TCDnspodError {
        TCDnspodError(.requestLimitExceeded_BatchTaskLimit)
    }
    
    /// 您的帐号在短时间内添加了大量的域名，请控制添加频率。
    public static var requestLimitExceeded_CreateDomainLimit: TCDnspodError {
        TCDnspodError(.requestLimitExceeded_CreateDomainLimit)
    }
    
    /// API请求次数超出限制。
    public static var requestLimitExceeded_RequestLimitExceeded: TCDnspodError {
        TCDnspodError(.requestLimitExceeded_RequestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCDnspodError {
        TCDnspodError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCDnspodError {
        TCDnspodError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCDnspodError {
        TCDnspodError(.resourceNotFound)
    }
    
    /// 域名列表为空。
    public static var resourceNotFound_NoDataOfDomain: TCDnspodError {
        TCDnspodError(.resourceNotFound_NoDataOfDomain)
    }
    
    /// 没有域名别名。
    public static var resourceNotFound_NoDataOfDomainAlias: TCDnspodError {
        TCDnspodError(.resourceNotFound_NoDataOfDomainAlias)
    }
    
    /// 还没有任何礼券。
    public static var resourceNotFound_NoDataOfGift: TCDnspodError {
        TCDnspodError(.resourceNotFound_NoDataOfGift)
    }
    
    /// 记录列表为空。
    public static var resourceNotFound_NoDataOfRecord: TCDnspodError {
        TCDnspodError(.resourceNotFound_NoDataOfRecord)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCDnspodError {
        TCDnspodError(.resourceUnavailable)
    }
    
    /// 资源售罄。
    public static var resourcesSoldOut: TCDnspodError {
        TCDnspodError(.resourcesSoldOut)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCDnspodError {
        TCDnspodError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCDnspodError {
        TCDnspodError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCDnspodError {
        TCDnspodError(.unsupportedOperation)
    }
}

extension TCDnspodError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, OperationDenied.self, RequestLimitExceeded.self, ResourceNotFound.self]
    }
}

extension TCDnspodError: Equatable {
    public static func == (lhs: TCDnspodError, rhs: TCDnspodError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDnspodError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}