public struct TCEssError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_AccountVerifyFail = "FailedOperation.AccountVerifyFail"
        case failedOperation_AgeNotAchieveNormalLegal = "FailedOperation.AgeNotAchieveNormalLegal"
        case failedOperation_FlowHasDocument = "FailedOperation.FlowHasDocument"
        case failedOperation_FlowHasNoDocument = "FailedOperation.FlowHasNoDocument"
        case failedOperation_NoSignReviewPass = "FailedOperation.NoSignReviewPass"
        case failedOperation_OrganizationExperienceChange = "FailedOperation.OrganizationExperienceChange"
        case failedOperation_OrganizationNameChanged = "FailedOperation.OrganizationNameChanged"
        case failedOperation_OrganizationNameNeedChange = "FailedOperation.OrganizationNameNeedChange"
        case failedOperation_PreViewUrlFail = "FailedOperation.PreViewUrlFail"
        case failedOperation_QrCodeCreatorSignComponents = "FailedOperation.QrCodeCreatorSignComponents"
        case failedOperation_QrCodeSignUsers = "FailedOperation.QrCodeSignUsers"
        case failedOperation_QrCodeTemplateId = "FailedOperation.QrCodeTemplateId"
        case failedOperation_RequestLimitExceeded = "FailedOperation.RequestLimitExceeded"
        case failedOperation_TemplateHasNoResource = "FailedOperation.TemplateHasNoResource"
        case failedOperation_UserInfoNoMatch = "FailedOperation.UserInfoNoMatch"
        case internalError = "InternalError"
        case internalError_Cache = "InternalError.Cache"
        case internalError_Db = "InternalError.Db"
        case internalError_DbConnection = "InternalError.DbConnection"
        case internalError_DbInsert = "InternalError.DbInsert"
        case internalError_DbRead = "InternalError.DbRead"
        case internalError_Decryption = "InternalError.Decryption"
        case internalError_DependsApi = "InternalError.DependsApi"
        case internalError_DependsDb = "InternalError.DependsDb"
        case internalError_Encryption = "InternalError.Encryption"
        case internalError_JsonMarshal = "InternalError.JsonMarshal"
        case internalError_Pdf = "InternalError.Pdf"
        case internalError_Serialize = "InternalError.Serialize"
        case internalError_System = "InternalError.System"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_Mask = "InvalidParameterValue.Mask"
        case invalidParameter_ApproverType = "InvalidParameter.ApproverType"
        case invalidParameter_BusinessId = "InvalidParameter.BusinessId"
        case invalidParameter_BusinessType = "InvalidParameter.BusinessType"
        case invalidParameter_CancelReason = "InvalidParameter.CancelReason"
        case invalidParameter_CardNumber = "InvalidParameter.CardNumber"
        case invalidParameter_CardType = "InvalidParameter.CardType"
        case invalidParameter_CcNum = "InvalidParameter.CcNum"
        case invalidParameter_ClientToken = "InvalidParameter.ClientToken"
        case invalidParameter_ComponentFileIndex = "InvalidParameter.ComponentFileIndex"
        case invalidParameter_ComponentPage = "InvalidParameter.ComponentPage"
        case invalidParameter_ComponentPosition = "InvalidParameter.ComponentPosition"
        case invalidParameter_ComponentTypeNoMatchValue = "InvalidParameter.ComponentTypeNoMatchValue"
        case invalidParameter_ComponentValue = "InvalidParameter.ComponentValue"
        case invalidParameter_ContentType = "InvalidParameter.ContentType"
        case invalidParameter_CustomShowMap = "InvalidParameter.CustomShowMap"
        case invalidParameter_DataExists = "InvalidParameter.DataExists"
        case invalidParameter_DataNotFound = "InvalidParameter.DataNotFound"
        case invalidParameter_EmptyParams = "InvalidParameter.EmptyParams"
        case invalidParameter_EndPoint = "InvalidParameter.EndPoint"
        case invalidParameter_FlowCallbackUrl = "InvalidParameter.FlowCallbackUrl"
        case invalidParameter_FlowDeadLine = "InvalidParameter.FlowDeadLine"
        case invalidParameter_FlowDescription = "InvalidParameter.FlowDescription"
        case invalidParameter_FlowName = "InvalidParameter.FlowName"
        case invalidParameter_FlowType = "InvalidParameter.FlowType"
        case invalidParameter_FlowUserData = "InvalidParameter.FlowUserData"
        case invalidParameter_FromSource = "InvalidParameter.FromSource"
        case invalidParameter_IdCardValidityOverLimit = "InvalidParameter.IdCardValidityOverLimit"
        case invalidParameter_InvalidChannel = "InvalidParameter.InvalidChannel"
        case invalidParameter_InvalidId = "InvalidParameter.InvalidId"
        case invalidParameter_InvalidLimit = "InvalidParameter.InvalidLimit"
        case invalidParameter_InvalidMobile = "InvalidParameter.InvalidMobile"
        case invalidParameter_InvalidName = "InvalidParameter.InvalidName"
        case invalidParameter_InvalidOffset = "InvalidParameter.InvalidOffset"
        case invalidParameter_InvalidOpenId = "InvalidParameter.InvalidOpenId"
        case invalidParameter_InvalidOperatorId = "InvalidParameter.InvalidOperatorId"
        case invalidParameter_InvalidOrganizationId = "InvalidParameter.InvalidOrganizationId"
        case invalidParameter_InvalidOrganizationName = "InvalidParameter.InvalidOrganizationName"
        case invalidParameter_InvalidRoleId = "InvalidParameter.InvalidRoleId"
        case invalidParameter_InvalidRoleName = "InvalidParameter.InvalidRoleName"
        case invalidParameter_InvalidVerifyChannel = "InvalidParameter.InvalidVerifyChannel"
        case invalidParameter_InvalidVerifyCode = "InvalidParameter.InvalidVerifyCode"
        case invalidParameter_MissingRequiredComponentValue = "InvalidParameter.MissingRequiredComponentValue"
        case invalidParameter_Mobile = "InvalidParameter.Mobile"
        case invalidParameter_Name = "InvalidParameter.Name"
        case invalidParameter_NotifyType = "InvalidParameter.NotifyType"
        case invalidParameter_OrganizationName = "InvalidParameter.OrganizationName"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case invalidParameter_PersonAutoSignTag = "InvalidParameter.PersonAutoSignTag"
        case invalidParameter_PreReadTime = "InvalidParameter.PreReadTime"
        case invalidParameter_QrEffectDay = "InvalidParameter.QrEffectDay"
        case invalidParameter_QrFlowEffectDay = "InvalidParameter.QrFlowEffectDay"
        case invalidParameter_ResourceType = "InvalidParameter.ResourceType"
        case invalidParameter_SealId = "InvalidParameter.SealId"
        case invalidParameter_SignComponents = "InvalidParameter.SignComponents"
        case invalidParameter_Status = "InvalidParameter.Status"
        case invalidParameter_TemplateId = "InvalidParameter.TemplateId"
        case invalidParameter_VerifyChannel = "InvalidParameter.VerifyChannel"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case missingParameter_ApproverMobile = "MissingParameter.ApproverMobile"
        case missingParameter_ApproverName = "MissingParameter.ApproverName"
        case missingParameter_ApproverOrganizationInfo = "MissingParameter.ApproverOrganizationInfo"
        case missingParameter_ApproverRole = "MissingParameter.ApproverRole"
        case missingParameter_ApproverSignComponent = "MissingParameter.ApproverSignComponent"
        case missingParameter_AuthCode = "MissingParameter.AuthCode"
        case missingParameter_CancelReason = "MissingParameter.CancelReason"
        case missingParameter_Field = "MissingParameter.Field"
        case missingParameter_FileNames = "MissingParameter.FileNames"
        case missingParameter_FlowApprover = "MissingParameter.FlowApprover"
        case missingParameter_FlowId = "MissingParameter.FlowId"
        case missingParameter_KeyWord = "MissingParameter.KeyWord"
        case missingParameter_QrCodeId = "MissingParameter.QrCodeId"
        case missingParameter_Recipient = "MissingParameter.Recipient"
        case missingParameter_ResourceId = "MissingParameter.ResourceId"
        case missingParameter_ResourceName = "MissingParameter.ResourceName"
        case missingParameter_ServerSignSealId = "MissingParameter.ServerSignSealId"
        case missingParameter_SignComponents = "MissingParameter.SignComponents"
        case missingParameter_UserId = "MissingParameter.UserId"
        case operationDenied = "OperationDenied"
        case operationDenied_ApproverNoMatchTemplate = "OperationDenied.ApproverNoMatchTemplate"
        case operationDenied_ApproverRepeat = "OperationDenied.ApproverRepeat"
        case operationDenied_AuthCodeInvalid = "OperationDenied.AuthCodeInvalid"
        case operationDenied_BatchCancelForbid = "OperationDenied.BatchCancelForbid"
        case operationDenied_BranchSendFlowToParentNotAllow = "OperationDenied.BranchSendFlowToParentNotAllow"
        case operationDenied_CcForbid = "OperationDenied.CcForbid"
        case operationDenied_CcUserRepeat = "OperationDenied.CcUserRepeat"
        case operationDenied_DocumentNoAvailable = "OperationDenied.DocumentNoAvailable"
        case operationDenied_ErrNoResourceAccess = "OperationDenied.ErrNoResourceAccess"
        case operationDenied_ErrNoSupportIndividualHasOrganizationName = "OperationDenied.ErrNoSupportIndividualHasOrganizationName"
        case operationDenied_FileDeleted = "OperationDenied.FileDeleted"
        case operationDenied_FileNoMatchResource = "OperationDenied.FileNoMatchResource"
        case operationDenied_FlowCancelForbid = "OperationDenied.FlowCancelForbid"
        case operationDenied_FlowHasStarted = "OperationDenied.FlowHasStarted"
        case operationDenied_FlowHasTerminated = "OperationDenied.FlowHasTerminated"
        case operationDenied_FlowNoNeedReview = "OperationDenied.FlowNoNeedReview"
        case operationDenied_FlowStatusForbid = "OperationDenied.FlowStatusForbid"
        case operationDenied_Forbid = "OperationDenied.Forbid"
        case operationDenied_InvalidApproverAge = "OperationDenied.InvalidApproverAge"
        case operationDenied_ManyResourceId = "OperationDenied.ManyResourceId"
        case operationDenied_NoFlowPermission = "OperationDenied.NoFlowPermission"
        case operationDenied_NoIdentityVerify = "OperationDenied.NoIdentityVerify"
        case operationDenied_NoLogin = "OperationDenied.NoLogin"
        case operationDenied_NoOpenServerSign = "OperationDenied.NoOpenServerSign"
        case operationDenied_NoPermissionUseResource = "OperationDenied.NoPermissionUseResource"
        case operationDenied_NoPermissionUseServerSignSeal = "OperationDenied.NoPermissionUseServerSignSeal"
        case operationDenied_NoQuota = "OperationDenied.NoQuota"
        case operationDenied_NoSupportComponentType = "OperationDenied.NoSupportComponentType"
        case operationDenied_NoSupportJumpPage = "OperationDenied.NoSupportJumpPage"
        case operationDenied_NoVerify = "OperationDenied.NoVerify"
        case operationDenied_NotBelongSuperAdminOrLegalPerson = "OperationDenied.NotBelongSuperAdminOrLegalPerson"
        case operationDenied_OperatorHasNoPermission = "OperationDenied.OperatorHasNoPermission"
        case operationDenied_OrgUniformSocialCreditCodeErr = "OperationDenied.OrgUniformSocialCreditCodeErr"
        case operationDenied_OrganizationNotActivated = "OperationDenied.OrganizationNotActivated"
        case operationDenied_OutQueryLimit = "OperationDenied.OutQueryLimit"
        case operationDenied_OverSeaForbid = "OperationDenied.OverSeaForbid"
        case operationDenied_PersonHasNoSignature = "OperationDenied.PersonHasNoSignature"
        case operationDenied_PersonNoOpenServerSign = "OperationDenied.PersonNoOpenServerSign"
        case operationDenied_PersonServerSignForbid = "OperationDenied.PersonServerSignForbid"
        case operationDenied_QrHasExpire = "OperationDenied.QrHasExpire"
        case operationDenied_QrInvalid = "OperationDenied.QrInvalid"
        case operationDenied_RequiredComponentNotFill = "OperationDenied.RequiredComponentNotFill"
        case operationDenied_ServerSignNoAllowComponent = "OperationDenied.ServerSignNoAllowComponent"
        case operationDenied_ServerSignNoSupportSignature = "OperationDenied.ServerSignNoSupportSignature"
        case operationDenied_UserNotInOrganization = "OperationDenied.UserNotInOrganization"
        case operationDenied_WhiteListForbid = "OperationDenied.WhiteListForbid"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_Application = "ResourceNotFound.Application"
        case resourceNotFound_AuthActiveOrganization = "ResourceNotFound.AuthActiveOrganization"
        case resourceNotFound_Document = "ResourceNotFound.Document"
        case resourceNotFound_ErrNotExistRole = "ResourceNotFound.ErrNotExistRole"
        case resourceNotFound_Flow = "ResourceNotFound.Flow"
        case resourceNotFound_FlowApprover = "ResourceNotFound.FlowApprover"
        case resourceNotFound_NotExistDocument = "ResourceNotFound.NotExistDocument"
        case resourceNotFound_NotExistFlow = "ResourceNotFound.NotExistFlow"
        case resourceNotFound_NotExistResource = "ResourceNotFound.NotExistResource"
        case resourceNotFound_NotExistTemplate = "ResourceNotFound.NotExistTemplate"
        case resourceNotFound_Organization = "ResourceNotFound.Organization"
        case resourceNotFound_QrInfo = "ResourceNotFound.QrInfo"
        case resourceNotFound_Resource = "ResourceNotFound.Resource"
        case resourceNotFound_SuperAdmin = "ResourceNotFound.SuperAdmin"
        case resourceNotFound_Template = "ResourceNotFound.Template"
        case resourceNotFound_Url = "ResourceNotFound.Url"
        case resourceNotFound_User = "ResourceNotFound.User"
        case resourceNotFound_VerifyUser = "ResourceNotFound.VerifyUser"
        case resourceUnavailable = "ResourceUnavailable"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
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
    public static var authFailure: TCEssError {
        TCEssError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCEssError {
        TCEssError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCEssError {
        TCEssError(.failedOperation)
    }
    
    /// 实名认证失败。
    public static var failedOperation_AccountVerifyFail: TCEssError {
        TCEssError(.failedOperation_AccountVerifyFail)
    }
    
    /// 16岁以下不提供电子签服务。
    public static var failedOperation_AgeNotAchieveNormalLegal: TCEssError {
        TCEssError(.failedOperation_AgeNotAchieveNormalLegal)
    }
    
    /// 流程已关联文档。
    public static var failedOperation_FlowHasDocument: TCEssError {
        TCEssError(.failedOperation_FlowHasDocument)
    }
    
    public static var failedOperation_FlowHasNoDocument: TCEssError {
        TCEssError(.failedOperation_FlowHasNoDocument)
    }
    
    public static var failedOperation_NoSignReviewPass: TCEssError {
        TCEssError(.failedOperation_NoSignReviewPass)
    }
    
    public static var failedOperation_OrganizationExperienceChange: TCEssError {
        TCEssError(.failedOperation_OrganizationExperienceChange)
    }
    
    public static var failedOperation_OrganizationNameChanged: TCEssError {
        TCEssError(.failedOperation_OrganizationNameChanged)
    }
    
    public static var failedOperation_OrganizationNameNeedChange: TCEssError {
        TCEssError(.failedOperation_OrganizationNameNeedChange)
    }
    
    public static var failedOperation_PreViewUrlFail: TCEssError {
        TCEssError(.failedOperation_PreViewUrlFail)
    }
    
    /// 请确认是否模板配置存在填写控件。若仍未解决，请联系工作人员 ，并提供有报错的requestid。
    public static var failedOperation_QrCodeCreatorSignComponents: TCEssError {
        TCEssError(.failedOperation_QrCodeCreatorSignComponents)
    }
    
    /// 请确认模板是否缺少签署人。若仍未解决，请联系工作人员 ，并提供有报错的requestid。
    public static var failedOperation_QrCodeSignUsers: TCEssError {
        TCEssError(.failedOperation_QrCodeSignUsers)
    }
    
    /// 适用的模版仅限于B2C（无序签署，顺序签署时B静默签署，顺序签署时B非首位签署）、单C的模版，且模版中发起方没有填写控件。若仍未解决，请联系工作人员 ，并提供有报错的requestid。
    public static var failedOperation_QrCodeTemplateId: TCEssError {
        TCEssError(.failedOperation_QrCodeTemplateId)
    }
    
    /// 短信发送频率超出限制。
    public static var failedOperation_RequestLimitExceeded: TCEssError {
        TCEssError(.failedOperation_RequestLimitExceeded)
    }
    
    /// 模板无资源信息。
    public static var failedOperation_TemplateHasNoResource: TCEssError {
        TCEssError(.failedOperation_TemplateHasNoResource)
    }
    
    public static var failedOperation_UserInfoNoMatch: TCEssError {
        TCEssError(.failedOperation_UserInfoNoMatch)
    }
    
    /// 内部错误。
    public static var internalError: TCEssError {
        TCEssError(.internalError)
    }
    
    /// 缓存错误。
    public static var internalError_Cache: TCEssError {
        TCEssError(.internalError_Cache)
    }
    
    /// 数据库异常。
    public static var internalError_Db: TCEssError {
        TCEssError(.internalError_Db)
    }
    
    public static var internalError_DbConnection: TCEssError {
        TCEssError(.internalError_DbConnection)
    }
    
    /// 数据库新增记录出错。
    public static var internalError_DbInsert: TCEssError {
        TCEssError(.internalError_DbInsert)
    }
    
    /// 内部错误,数据库查询失败,请稍后重试。
    public static var internalError_DbRead: TCEssError {
        TCEssError(.internalError_DbRead)
    }
    
    /// 解密失败。
    public static var internalError_Decryption: TCEssError {
        TCEssError(.internalError_Decryption)
    }
    
    /// 依赖的第三方API返回错误。
    public static var internalError_DependsApi: TCEssError {
        TCEssError(.internalError_DependsApi)
    }
    
    /// 数据库执行错误。
    public static var internalError_DependsDb: TCEssError {
        TCEssError(.internalError_DependsDb)
    }
    
    /// 加密失败。
    public static var internalError_Encryption: TCEssError {
        TCEssError(.internalError_Encryption)
    }
    
    public static var internalError_JsonMarshal: TCEssError {
        TCEssError(.internalError_JsonMarshal)
    }
    
    /// Pdf错误。
    public static var internalError_Pdf: TCEssError {
        TCEssError(.internalError_Pdf)
    }
    
    public static var internalError_Serialize: TCEssError {
        TCEssError(.internalError_Serialize)
    }
    
    /// 系统错误。
    public static var internalError_System: TCEssError {
        TCEssError(.internalError_System)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCEssError {
        TCEssError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCEssError {
        TCEssError(.invalidParameterValue)
    }
    
    /// 需要屏蔽的告警。
    public static var invalidParameterValue_Mask: TCEssError {
        TCEssError(.invalidParameterValue_Mask)
    }
    
    public static var invalidParameter_ApproverType: TCEssError {
        TCEssError(.invalidParameter_ApproverType)
    }
    
    public static var invalidParameter_BusinessId: TCEssError {
        TCEssError(.invalidParameter_BusinessId)
    }
    
    public static var invalidParameter_BusinessType: TCEssError {
        TCEssError(.invalidParameter_BusinessType)
    }
    
    public static var invalidParameter_CancelReason: TCEssError {
        TCEssError(.invalidParameter_CancelReason)
    }
    
    public static var invalidParameter_CardNumber: TCEssError {
        TCEssError(.invalidParameter_CardNumber)
    }
    
    public static var invalidParameter_CardType: TCEssError {
        TCEssError(.invalidParameter_CardType)
    }
    
    public static var invalidParameter_CcNum: TCEssError {
        TCEssError(.invalidParameter_CcNum)
    }
    
    public static var invalidParameter_ClientToken: TCEssError {
        TCEssError(.invalidParameter_ClientToken)
    }
    
    public static var invalidParameter_ComponentFileIndex: TCEssError {
        TCEssError(.invalidParameter_ComponentFileIndex)
    }
    
    public static var invalidParameter_ComponentPage: TCEssError {
        TCEssError(.invalidParameter_ComponentPage)
    }
    
    public static var invalidParameter_ComponentPosition: TCEssError {
        TCEssError(.invalidParameter_ComponentPosition)
    }
    
    public static var invalidParameter_ComponentTypeNoMatchValue: TCEssError {
        TCEssError(.invalidParameter_ComponentTypeNoMatchValue)
    }
    
    public static var invalidParameter_ComponentValue: TCEssError {
        TCEssError(.invalidParameter_ComponentValue)
    }
    
    public static var invalidParameter_ContentType: TCEssError {
        TCEssError(.invalidParameter_ContentType)
    }
    
    public static var invalidParameter_CustomShowMap: TCEssError {
        TCEssError(.invalidParameter_CustomShowMap)
    }
    
    /// 数据已存在。
    public static var invalidParameter_DataExists: TCEssError {
        TCEssError(.invalidParameter_DataExists)
    }
    
    /// 数据不存在。
    public static var invalidParameter_DataNotFound: TCEssError {
        TCEssError(.invalidParameter_DataNotFound)
    }
    
    /// 参数为空。
    public static var invalidParameter_EmptyParams: TCEssError {
        TCEssError(.invalidParameter_EmptyParams)
    }
    
    public static var invalidParameter_EndPoint: TCEssError {
        TCEssError(.invalidParameter_EndPoint)
    }
    
    public static var invalidParameter_FlowCallbackUrl: TCEssError {
        TCEssError(.invalidParameter_FlowCallbackUrl)
    }
    
    public static var invalidParameter_FlowDeadLine: TCEssError {
        TCEssError(.invalidParameter_FlowDeadLine)
    }
    
    public static var invalidParameter_FlowDescription: TCEssError {
        TCEssError(.invalidParameter_FlowDescription)
    }
    
    public static var invalidParameter_FlowName: TCEssError {
        TCEssError(.invalidParameter_FlowName)
    }
    
    public static var invalidParameter_FlowType: TCEssError {
        TCEssError(.invalidParameter_FlowType)
    }
    
    public static var invalidParameter_FlowUserData: TCEssError {
        TCEssError(.invalidParameter_FlowUserData)
    }
    
    public static var invalidParameter_FromSource: TCEssError {
        TCEssError(.invalidParameter_FromSource)
    }
    
    public static var invalidParameter_IdCardValidityOverLimit: TCEssError {
        TCEssError(.invalidParameter_IdCardValidityOverLimit)
    }
    
    /// Channel不正确。
    public static var invalidParameter_InvalidChannel: TCEssError {
        TCEssError(.invalidParameter_InvalidChannel)
    }
    
    public static var invalidParameter_InvalidId: TCEssError {
        TCEssError(.invalidParameter_InvalidId)
    }
    
    /// 参数Limit不正确。
    public static var invalidParameter_InvalidLimit: TCEssError {
        TCEssError(.invalidParameter_InvalidLimit)
    }
    
    /// 手机号码不正确。
    public static var invalidParameter_InvalidMobile: TCEssError {
        TCEssError(.invalidParameter_InvalidMobile)
    }
    
    /// 姓名不正确。
    public static var invalidParameter_InvalidName: TCEssError {
        TCEssError(.invalidParameter_InvalidName)
    }
    
    /// 参数Offset不正确。
    public static var invalidParameter_InvalidOffset: TCEssError {
        TCEssError(.invalidParameter_InvalidOffset)
    }
    
    /// OpenId不正确。
    public static var invalidParameter_InvalidOpenId: TCEssError {
        TCEssError(.invalidParameter_InvalidOpenId)
    }
    
    /// 操作人ID不正确。
    public static var invalidParameter_InvalidOperatorId: TCEssError {
        TCEssError(.invalidParameter_InvalidOperatorId)
    }
    
    /// 机构ID不正确。
    public static var invalidParameter_InvalidOrganizationId: TCEssError {
        TCEssError(.invalidParameter_InvalidOrganizationId)
    }
    
    /// 组织机构名称不正确。
    public static var invalidParameter_InvalidOrganizationName: TCEssError {
        TCEssError(.invalidParameter_InvalidOrganizationName)
    }
    
    /// 角色ID不正确。
    public static var invalidParameter_InvalidRoleId: TCEssError {
        TCEssError(.invalidParameter_InvalidRoleId)
    }
    
    /// 角色名称不正确。
    public static var invalidParameter_InvalidRoleName: TCEssError {
        TCEssError(.invalidParameter_InvalidRoleName)
    }
    
    /// 实名认证渠道不正确。
    public static var invalidParameter_InvalidVerifyChannel: TCEssError {
        TCEssError(.invalidParameter_InvalidVerifyChannel)
    }
    
    /// 验证码不正确。
    public static var invalidParameter_InvalidVerifyCode: TCEssError {
        TCEssError(.invalidParameter_InvalidVerifyCode)
    }
    
    /// 请检查必填控件是否都已填充非空值。
    public static var invalidParameter_MissingRequiredComponentValue: TCEssError {
        TCEssError(.invalidParameter_MissingRequiredComponentValue)
    }
    
    /// 请确认手机号是正确的。
    public static var invalidParameter_Mobile: TCEssError {
        TCEssError(.invalidParameter_Mobile)
    }
    
    /// 确认名字是否正确。
    public static var invalidParameter_Name: TCEssError {
        TCEssError(.invalidParameter_Name)
    }
    
    public static var invalidParameter_NotifyType: TCEssError {
        TCEssError(.invalidParameter_NotifyType)
    }
    
    public static var invalidParameter_OrganizationName: TCEssError {
        TCEssError(.invalidParameter_OrganizationName)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParamError: TCEssError {
        TCEssError(.invalidParameter_ParamError)
    }
    
    public static var invalidParameter_PersonAutoSignTag: TCEssError {
        TCEssError(.invalidParameter_PersonAutoSignTag)
    }
    
    public static var invalidParameter_PreReadTime: TCEssError {
        TCEssError(.invalidParameter_PreReadTime)
    }
    
    public static var invalidParameter_QrEffectDay: TCEssError {
        TCEssError(.invalidParameter_QrEffectDay)
    }
    
    public static var invalidParameter_QrFlowEffectDay: TCEssError {
        TCEssError(.invalidParameter_QrFlowEffectDay)
    }
    
    public static var invalidParameter_ResourceType: TCEssError {
        TCEssError(.invalidParameter_ResourceType)
    }
    
    public static var invalidParameter_SealId: TCEssError {
        TCEssError(.invalidParameter_SealId)
    }
    
    public static var invalidParameter_SignComponents: TCEssError {
        TCEssError(.invalidParameter_SignComponents)
    }
    
    /// 参数Status不正确。
    public static var invalidParameter_Status: TCEssError {
        TCEssError(.invalidParameter_Status)
    }
    
    public static var invalidParameter_TemplateId: TCEssError {
        TCEssError(.invalidParameter_TemplateId)
    }
    
    public static var invalidParameter_VerifyChannel: TCEssError {
        TCEssError(.invalidParameter_VerifyChannel)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCEssError {
        TCEssError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCEssError {
        TCEssError(.missingParameter)
    }
    
    public static var missingParameter_ApproverMobile: TCEssError {
        TCEssError(.missingParameter_ApproverMobile)
    }
    
    public static var missingParameter_ApproverName: TCEssError {
        TCEssError(.missingParameter_ApproverName)
    }
    
    public static var missingParameter_ApproverOrganizationInfo: TCEssError {
        TCEssError(.missingParameter_ApproverOrganizationInfo)
    }
    
    public static var missingParameter_ApproverRole: TCEssError {
        TCEssError(.missingParameter_ApproverRole)
    }
    
    public static var missingParameter_ApproverSignComponent: TCEssError {
        TCEssError(.missingParameter_ApproverSignComponent)
    }
    
    public static var missingParameter_AuthCode: TCEssError {
        TCEssError(.missingParameter_AuthCode)
    }
    
    public static var missingParameter_CancelReason: TCEssError {
        TCEssError(.missingParameter_CancelReason)
    }
    
    public static var missingParameter_Field: TCEssError {
        TCEssError(.missingParameter_Field)
    }
    
    public static var missingParameter_FileNames: TCEssError {
        TCEssError(.missingParameter_FileNames)
    }
    
    public static var missingParameter_FlowApprover: TCEssError {
        TCEssError(.missingParameter_FlowApprover)
    }
    
    public static var missingParameter_FlowId: TCEssError {
        TCEssError(.missingParameter_FlowId)
    }
    
    public static var missingParameter_KeyWord: TCEssError {
        TCEssError(.missingParameter_KeyWord)
    }
    
    public static var missingParameter_QrCodeId: TCEssError {
        TCEssError(.missingParameter_QrCodeId)
    }
    
    public static var missingParameter_Recipient: TCEssError {
        TCEssError(.missingParameter_Recipient)
    }
    
    public static var missingParameter_ResourceId: TCEssError {
        TCEssError(.missingParameter_ResourceId)
    }
    
    public static var missingParameter_ResourceName: TCEssError {
        TCEssError(.missingParameter_ResourceName)
    }
    
    public static var missingParameter_ServerSignSealId: TCEssError {
        TCEssError(.missingParameter_ServerSignSealId)
    }
    
    public static var missingParameter_SignComponents: TCEssError {
        TCEssError(.missingParameter_SignComponents)
    }
    
    public static var missingParameter_UserId: TCEssError {
        TCEssError(.missingParameter_UserId)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCEssError {
        TCEssError(.operationDenied)
    }
    
    public static var operationDenied_ApproverNoMatchTemplate: TCEssError {
        TCEssError(.operationDenied_ApproverNoMatchTemplate)
    }
    
    public static var operationDenied_ApproverRepeat: TCEssError {
        TCEssError(.operationDenied_ApproverRepeat)
    }
    
    public static var operationDenied_AuthCodeInvalid: TCEssError {
        TCEssError(.operationDenied_AuthCodeInvalid)
    }
    
    public static var operationDenied_BatchCancelForbid: TCEssError {
        TCEssError(.operationDenied_BatchCancelForbid)
    }
    
    public static var operationDenied_BranchSendFlowToParentNotAllow: TCEssError {
        TCEssError(.operationDenied_BranchSendFlowToParentNotAllow)
    }
    
    public static var operationDenied_CcForbid: TCEssError {
        TCEssError(.operationDenied_CcForbid)
    }
    
    public static var operationDenied_CcUserRepeat: TCEssError {
        TCEssError(.operationDenied_CcUserRepeat)
    }
    
    public static var operationDenied_DocumentNoAvailable: TCEssError {
        TCEssError(.operationDenied_DocumentNoAvailable)
    }
    
    public static var operationDenied_ErrNoResourceAccess: TCEssError {
        TCEssError(.operationDenied_ErrNoResourceAccess)
    }
    
    public static var operationDenied_ErrNoSupportIndividualHasOrganizationName: TCEssError {
        TCEssError(.operationDenied_ErrNoSupportIndividualHasOrganizationName)
    }
    
    public static var operationDenied_FileDeleted: TCEssError {
        TCEssError(.operationDenied_FileDeleted)
    }
    
    public static var operationDenied_FileNoMatchResource: TCEssError {
        TCEssError(.operationDenied_FileNoMatchResource)
    }
    
    public static var operationDenied_FlowCancelForbid: TCEssError {
        TCEssError(.operationDenied_FlowCancelForbid)
    }
    
    public static var operationDenied_FlowHasStarted: TCEssError {
        TCEssError(.operationDenied_FlowHasStarted)
    }
    
    public static var operationDenied_FlowHasTerminated: TCEssError {
        TCEssError(.operationDenied_FlowHasTerminated)
    }
    
    public static var operationDenied_FlowNoNeedReview: TCEssError {
        TCEssError(.operationDenied_FlowNoNeedReview)
    }
    
    public static var operationDenied_FlowStatusForbid: TCEssError {
        TCEssError(.operationDenied_FlowStatusForbid)
    }
    
    /// 禁止此项操作。
    public static var operationDenied_Forbid: TCEssError {
        TCEssError(.operationDenied_Forbid)
    }
    
    public static var operationDenied_InvalidApproverAge: TCEssError {
        TCEssError(.operationDenied_InvalidApproverAge)
    }
    
    public static var operationDenied_ManyResourceId: TCEssError {
        TCEssError(.operationDenied_ManyResourceId)
    }
    
    public static var operationDenied_NoFlowPermission: TCEssError {
        TCEssError(.operationDenied_NoFlowPermission)
    }
    
    /// 未通过个人实名认证。
    public static var operationDenied_NoIdentityVerify: TCEssError {
        TCEssError(.operationDenied_NoIdentityVerify)
    }
    
    /// 用户未登录,请先登录后再操作。
    public static var operationDenied_NoLogin: TCEssError {
        TCEssError(.operationDenied_NoLogin)
    }
    
    public static var operationDenied_NoOpenServerSign: TCEssError {
        TCEssError(.operationDenied_NoOpenServerSign)
    }
    
    public static var operationDenied_NoPermissionUseResource: TCEssError {
        TCEssError(.operationDenied_NoPermissionUseResource)
    }
    
    public static var operationDenied_NoPermissionUseServerSignSeal: TCEssError {
        TCEssError(.operationDenied_NoPermissionUseServerSignSeal)
    }
    
    /// 流程配额不足。
    public static var operationDenied_NoQuota: TCEssError {
        TCEssError(.operationDenied_NoQuota)
    }
    
    public static var operationDenied_NoSupportComponentType: TCEssError {
        TCEssError(.operationDenied_NoSupportComponentType)
    }
    
    public static var operationDenied_NoSupportJumpPage: TCEssError {
        TCEssError(.operationDenied_NoSupportJumpPage)
    }
    
    /// 未在腾讯云实名。
    public static var operationDenied_NoVerify: TCEssError {
        TCEssError(.operationDenied_NoVerify)
    }
    
    /// 使用超管/法人进行接口调用。
    public static var operationDenied_NotBelongSuperAdminOrLegalPerson: TCEssError {
        TCEssError(.operationDenied_NotBelongSuperAdminOrLegalPerson)
    }
    
    /// 联系管理员获取权限。
    public static var operationDenied_OperatorHasNoPermission: TCEssError {
        TCEssError(.operationDenied_OperatorHasNoPermission)
    }
    
    public static var operationDenied_OrgUniformSocialCreditCodeErr: TCEssError {
        TCEssError(.operationDenied_OrgUniformSocialCreditCodeErr)
    }
    
    /// 企业未激活。
    public static var operationDenied_OrganizationNotActivated: TCEssError {
        TCEssError(.operationDenied_OrganizationNotActivated)
    }
    
    public static var operationDenied_OutQueryLimit: TCEssError {
        TCEssError(.operationDenied_OutQueryLimit)
    }
    
    public static var operationDenied_OverSeaForbid: TCEssError {
        TCEssError(.operationDenied_OverSeaForbid)
    }
    
    public static var operationDenied_PersonHasNoSignature: TCEssError {
        TCEssError(.operationDenied_PersonHasNoSignature)
    }
    
    public static var operationDenied_PersonNoOpenServerSign: TCEssError {
        TCEssError(.operationDenied_PersonNoOpenServerSign)
    }
    
    public static var operationDenied_PersonServerSignForbid: TCEssError {
        TCEssError(.operationDenied_PersonServerSignForbid)
    }
    
    public static var operationDenied_QrHasExpire: TCEssError {
        TCEssError(.operationDenied_QrHasExpire)
    }
    
    public static var operationDenied_QrInvalid: TCEssError {
        TCEssError(.operationDenied_QrInvalid)
    }
    
    public static var operationDenied_RequiredComponentNotFill: TCEssError {
        TCEssError(.operationDenied_RequiredComponentNotFill)
    }
    
    public static var operationDenied_ServerSignNoAllowComponent: TCEssError {
        TCEssError(.operationDenied_ServerSignNoAllowComponent)
    }
    
    public static var operationDenied_ServerSignNoSupportSignature: TCEssError {
        TCEssError(.operationDenied_ServerSignNoSupportSignature)
    }
    
    public static var operationDenied_UserNotInOrganization: TCEssError {
        TCEssError(.operationDenied_UserNotInOrganization)
    }
    
    public static var operationDenied_WhiteListForbid: TCEssError {
        TCEssError(.operationDenied_WhiteListForbid)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCEssError {
        TCEssError(.requestLimitExceeded)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCEssError {
        TCEssError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCEssError {
        TCEssError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCEssError {
        TCEssError(.resourceNotFound)
    }
    
    /// 应用号不存在或已删除。
    public static var resourceNotFound_Application: TCEssError {
        TCEssError(.resourceNotFound_Application)
    }
    
    public static var resourceNotFound_AuthActiveOrganization: TCEssError {
        TCEssError(.resourceNotFound_AuthActiveOrganization)
    }
    
    public static var resourceNotFound_Document: TCEssError {
        TCEssError(.resourceNotFound_Document)
    }
    
    public static var resourceNotFound_ErrNotExistRole: TCEssError {
        TCEssError(.resourceNotFound_ErrNotExistRole)
    }
    
    /// 流程不存在。
    public static var resourceNotFound_Flow: TCEssError {
        TCEssError(.resourceNotFound_Flow)
    }
    
    public static var resourceNotFound_FlowApprover: TCEssError {
        TCEssError(.resourceNotFound_FlowApprover)
    }
    
    /// 电子文档不存在。
    public static var resourceNotFound_NotExistDocument: TCEssError {
        TCEssError(.resourceNotFound_NotExistDocument)
    }
    
    /// 流程不存在。
    public static var resourceNotFound_NotExistFlow: TCEssError {
        TCEssError(.resourceNotFound_NotExistFlow)
    }
    
    /// 指定的资源不存在。
    public static var resourceNotFound_NotExistResource: TCEssError {
        TCEssError(.resourceNotFound_NotExistResource)
    }
    
    /// 模板不存在。
    public static var resourceNotFound_NotExistTemplate: TCEssError {
        TCEssError(.resourceNotFound_NotExistTemplate)
    }
    
    public static var resourceNotFound_Organization: TCEssError {
        TCEssError(.resourceNotFound_Organization)
    }
    
    public static var resourceNotFound_QrInfo: TCEssError {
        TCEssError(.resourceNotFound_QrInfo)
    }
    
    /// 资源不存在。
    public static var resourceNotFound_Resource: TCEssError {
        TCEssError(.resourceNotFound_Resource)
    }
    
    public static var resourceNotFound_SuperAdmin: TCEssError {
        TCEssError(.resourceNotFound_SuperAdmin)
    }
    
    /// 模板不存在。
    public static var resourceNotFound_Template: TCEssError {
        TCEssError(.resourceNotFound_Template)
    }
    
    /// 确认查询条件是否可以匹配到 Url
    public static var resourceNotFound_Url: TCEssError {
        TCEssError(.resourceNotFound_Url)
    }
    
    public static var resourceNotFound_User: TCEssError {
        TCEssError(.resourceNotFound_User)
    }
    
    public static var resourceNotFound_VerifyUser: TCEssError {
        TCEssError(.resourceNotFound_VerifyUser)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCEssError {
        TCEssError(.resourceUnavailable)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCEssError {
        TCEssError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCEssError {
        TCEssError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCEssError {
        TCEssError(.unsupportedOperation)
    }
}

extension TCEssError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, MissingParameter.self, OperationDenied.self, ResourceNotFound.self]
    }
}

extension TCEssError: Equatable {
    public static func == (lhs: TCEssError, rhs: TCEssError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEssError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEssError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
