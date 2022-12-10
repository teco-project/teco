public struct TCEssbasicError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_AgeNotAchieveNormalLegal = "FailedOperation.AgeNotAchieveNormalLegal"
        case failedOperation_AuthFail = "FailedOperation.AuthFail"
        case failedOperation_ExistSameSealName = "FailedOperation.ExistSameSealName"
        case failedOperation_FlowNumExceed = "FailedOperation.FlowNumExceed"
        case failedOperation_HasAuthorized = "FailedOperation.HasAuthorized"
        case failedOperation_NotAvailableSignReview = "FailedOperation.NotAvailableSignReview"
        case failedOperation_QrCodeCreatorSignComponents = "FailedOperation.QrCodeCreatorSignComponents"
        case failedOperation_QrCodeSignUsers = "FailedOperation.QrCodeSignUsers"
        case failedOperation_QrCodeTemplateId = "FailedOperation.QrCodeTemplateId"
        case failedOperation_StaffAlreadyVerify = "FailedOperation.StaffAlreadyVerify"
        case internalError = "InternalError"
        case internalError_Api = "InternalError.Api"
        case internalError_Db = "InternalError.Db"
        case internalError_DbConnection = "InternalError.DbConnection"
        case internalError_DbInsert = "InternalError.DbInsert"
        case internalError_DbRead = "InternalError.DbRead"
        case internalError_DbUpdate = "InternalError.DbUpdate"
        case internalError_Decryption = "InternalError.Decryption"
        case internalError_DependsApi = "InternalError.DependsApi"
        case internalError_Encryption = "InternalError.Encryption"
        case internalError_GenerateId = "InternalError.GenerateId"
        case internalError_SealUpload = "InternalError.SealUpload"
        case internalError_Serialize = "InternalError.Serialize"
        case internalError_System = "InternalError.System"
        case internalError_ThirdParty = "InternalError.ThirdParty"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_Application = "InvalidParameter.Application"
        case invalidParameter_ApproverType = "InvalidParameter.ApproverType"
        case invalidParameter_BizApproverAlreadyExists = "InvalidParameter.BizApproverAlreadyExists"
        case invalidParameter_BusinessLicense = "InvalidParameter.BusinessLicense"
        case invalidParameter_CardType = "InvalidParameter.CardType"
        case invalidParameter_ComponentValue = "InvalidParameter.ComponentValue"
        case invalidParameter_ContentType = "InvalidParameter.ContentType"
        case invalidParameter_CustomShowMap = "InvalidParameter.CustomShowMap"
        case invalidParameter_CustomerData = "InvalidParameter.CustomerData"
        case invalidParameter_DataNotFound = "InvalidParameter.DataNotFound"
        case invalidParameter_Date = "InvalidParameter.Date"
        case invalidParameter_DepartUserId = "InvalidParameter.DepartUserId"
        case invalidParameter_DupTask = "InvalidParameter.DupTask"
        case invalidParameter_EmptyParams = "InvalidParameter.EmptyParams"
        case invalidParameter_EndPoint = "InvalidParameter.EndPoint"
        case invalidParameter_FileType = "InvalidParameter.FileType"
        case invalidParameter_FlowApproverInfos = "InvalidParameter.FlowApproverInfos"
        case invalidParameter_FlowApprovers = "InvalidParameter.FlowApprovers"
        case invalidParameter_FlowCallbackUrl = "InvalidParameter.FlowCallbackUrl"
        case invalidParameter_FlowDeadLine = "InvalidParameter.FlowDeadLine"
        case invalidParameter_FlowDescription = "InvalidParameter.FlowDescription"
        case invalidParameter_FlowFileIds = "InvalidParameter.FlowFileIds"
        case invalidParameter_FlowIds = "InvalidParameter.FlowIds"
        case invalidParameter_FlowInfos = "InvalidParameter.FlowInfos"
        case invalidParameter_FlowName = "InvalidParameter.FlowName"
        case invalidParameter_FlowType = "InvalidParameter.FlowType"
        case invalidParameter_GenerateType = "InvalidParameter.GenerateType"
        case invalidParameter_Image = "InvalidParameter.Image"
        case invalidParameter_LimitSealName = "InvalidParameter.LimitSealName"
        case invalidParameter_MenuStatus = "InvalidParameter.MenuStatus"
        case invalidParameter_MissingRequiredParameterValue = "InvalidParameter.MissingRequiredParameterValue"
        case invalidParameter_Name = "InvalidParameter.Name"
        case invalidParameter_NonsupportMobile = "InvalidParameter.NonsupportMobile"
        case invalidParameter_OpenId = "InvalidParameter.OpenId"
        case invalidParameter_OrganizationId = "InvalidParameter.OrganizationId"
        case invalidParameter_OrganizationName = "InvalidParameter.OrganizationName"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case invalidParameter_SensitiveFileContent = "InvalidParameter.SensitiveFileContent"
        case invalidParameter_SignComponentType = "InvalidParameter.SignComponentType"
        case invalidParameter_Status = "InvalidParameter.Status"
        case invalidParameter_Unordered = "InvalidParameter.Unordered"
        case invalidParameter_UnsupportedComponentType = "InvalidParameter.UnsupportedComponentType"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_CallTimes = "LimitExceeded.CallTimes"
        case limitExceeded_CreateFlowNum = "LimitExceeded.CreateFlowNum"
        case limitExceeded_FileSize = "LimitExceeded.FileSize"
        case limitExceeded_FlowIds = "LimitExceeded.FlowIds"
        case limitExceeded_FlowInfos = "LimitExceeded.FlowInfos"
        case limitExceeded_ProxyOrganizationOperator = "LimitExceeded.ProxyOrganizationOperator"
        case missingParameter = "MissingParameter"
        case missingParameter_CompanyActiveInfo = "MissingParameter.CompanyActiveInfo"
        case missingParameter_Date = "MissingParameter.Date"
        case missingParameter_FlowId = "MissingParameter.FlowId"
        case missingParameter_FlowIds = "MissingParameter.FlowIds"
        case missingParameter_FlowIdsOrFlowGroupId = "MissingParameter.FlowIdsOrFlowGroupId"
        case missingParameter_FlowInfo = "MissingParameter.FlowInfo"
        case missingParameter_MissComponentName = "MissingParameter.MissComponentName"
        case missingParameter_OrgOpenId = "MissingParameter.OrgOpenId"
        case missingParameter_OrganizationId = "MissingParameter.OrganizationId"
        case missingParameter_ProxyOperatorOpenId = "MissingParameter.ProxyOperatorOpenId"
        case missingParameter_SealId = "MissingParameter.SealId"
        case missingParameter_SealImage = "MissingParameter.SealImage"
        case missingParameter_SealName = "MissingParameter.SealName"
        case missingParameter_SignComponents = "MissingParameter.SignComponents"
        case missingParameter_Templates = "MissingParameter.Templates"
        case missingParameter_UserOpenId = "MissingParameter.UserOpenId"
        case operationDenied = "OperationDenied"
        case operationDenied_AuthTag = "OperationDenied.AuthTag"
        case operationDenied_BannedApplication = "OperationDenied.BannedApplication"
        case operationDenied_ByFilesServerSignForbid = "OperationDenied.ByFilesServerSignForbid"
        case operationDenied_DownLoadMoreThanOne = "OperationDenied.DownLoadMoreThanOne"
        case operationDenied_ErrNoResourceAccess = "OperationDenied.ErrNoResourceAccess"
        case operationDenied_FileDeleted = "OperationDenied.FileDeleted"
        case operationDenied_FlowHasTerminated = "OperationDenied.FlowHasTerminated"
        case operationDenied_Forbid = "OperationDenied.Forbid"
        case operationDenied_InvalidApproverAge = "OperationDenied.InvalidApproverAge"
        case operationDenied_NoApiAuth = "OperationDenied.NoApiAuth"
        case operationDenied_NoFlowPermission = "OperationDenied.NoFlowPermission"
        case operationDenied_NoIdentityVerify = "OperationDenied.NoIdentityVerify"
        case operationDenied_NoQuota = "OperationDenied.NoQuota"
        case operationDenied_OperateType = "OperationDenied.OperateType"
        case operationDenied_OperatorHasNoPermission = "OperationDenied.OperatorHasNoPermission"
        case operationDenied_OutQueryLimit = "OperationDenied.OutQueryLimit"
        case operationDenied_UserNotInOrganization = "OperationDenied.UserNotInOrganization"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_Application = "ResourceNotFound.Application"
        case resourceNotFound_ApplicationAuth = "ResourceNotFound.ApplicationAuth"
        case resourceNotFound_ApplicationId = "ResourceNotFound.ApplicationId"
        case resourceNotFound_File = "ResourceNotFound.File"
        case resourceNotFound_Flow = "ResourceNotFound.Flow"
        case resourceNotFound_FlowApprovers = "ResourceNotFound.FlowApprovers"
        case resourceNotFound_Organization = "ResourceNotFound.Organization"
        case resourceNotFound_Resource = "ResourceNotFound.Resource"
        case resourceNotFound_Seal = "ResourceNotFound.Seal"
        case resourceNotFound_TeamWorkOrganization = "ResourceNotFound.TeamWorkOrganization"
        case resourceNotFound_Template = "ResourceNotFound.Template"
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
    
    /// 操作失败。
    public static var failedOperation: TCEssbasicError {
        TCEssbasicError(.failedOperation)
    }
    
    public static var failedOperation_AgeNotAchieveNormalLegal: TCEssbasicError {
        TCEssbasicError(.failedOperation_AgeNotAchieveNormalLegal)
    }
    
    /// 鉴权失败。
    public static var failedOperation_AuthFail: TCEssbasicError {
        TCEssbasicError(.failedOperation_AuthFail)
    }
    
    public static var failedOperation_ExistSameSealName: TCEssbasicError {
        TCEssbasicError(.failedOperation_ExistSameSealName)
    }
    
    public static var failedOperation_FlowNumExceed: TCEssbasicError {
        TCEssbasicError(.failedOperation_FlowNumExceed)
    }
    
    public static var failedOperation_HasAuthorized: TCEssbasicError {
        TCEssbasicError(.failedOperation_HasAuthorized)
    }
    
    public static var failedOperation_NotAvailableSignReview: TCEssbasicError {
        TCEssbasicError(.failedOperation_NotAvailableSignReview)
    }
    
    public static var failedOperation_QrCodeCreatorSignComponents: TCEssbasicError {
        TCEssbasicError(.failedOperation_QrCodeCreatorSignComponents)
    }
    
    public static var failedOperation_QrCodeSignUsers: TCEssbasicError {
        TCEssbasicError(.failedOperation_QrCodeSignUsers)
    }
    
    public static var failedOperation_QrCodeTemplateId: TCEssbasicError {
        TCEssbasicError(.failedOperation_QrCodeTemplateId)
    }
    
    /// 员工已实名。
    public static var failedOperation_StaffAlreadyVerify: TCEssbasicError {
        TCEssbasicError(.failedOperation_StaffAlreadyVerify)
    }
    
    /// 内部错误。
    public static var internalError: TCEssbasicError {
        TCEssbasicError(.internalError)
    }
    
    /// 其他API错误。
    public static var internalError_Api: TCEssbasicError {
        TCEssbasicError(.internalError_Api)
    }
    
    /// 数据库错误。
    public static var internalError_Db: TCEssbasicError {
        TCEssbasicError(.internalError_Db)
    }
    
    /// 数据库连接出错。
    public static var internalError_DbConnection: TCEssbasicError {
        TCEssbasicError(.internalError_DbConnection)
    }
    
    /// 数据库新增记录出错。
    public static var internalError_DbInsert: TCEssbasicError {
        TCEssbasicError(.internalError_DbInsert)
    }
    
    /// 数据库读取失败。
    public static var internalError_DbRead: TCEssbasicError {
        TCEssbasicError(.internalError_DbRead)
    }
    
    /// 数据库更新记录出错。
    public static var internalError_DbUpdate: TCEssbasicError {
        TCEssbasicError(.internalError_DbUpdate)
    }
    
    /// 解密错误。
    public static var internalError_Decryption: TCEssbasicError {
        TCEssbasicError(.internalError_Decryption)
    }
    
    /// 依赖的其他api出错。
    public static var internalError_DependsApi: TCEssbasicError {
        TCEssbasicError(.internalError_DependsApi)
    }
    
    /// 加密错误。
    public static var internalError_Encryption: TCEssbasicError {
        TCEssbasicError(.internalError_Encryption)
    }
    
    /// 生成唯一ID错误。
    public static var internalError_GenerateId: TCEssbasicError {
        TCEssbasicError(.internalError_GenerateId)
    }
    
    public static var internalError_SealUpload: TCEssbasicError {
        TCEssbasicError(.internalError_SealUpload)
    }
    
    /// 序列化错误。
    public static var internalError_Serialize: TCEssbasicError {
        TCEssbasicError(.internalError_Serialize)
    }
    
    /// 系统错误。
    public static var internalError_System: TCEssbasicError {
        TCEssbasicError(.internalError_System)
    }
    
    /// 第三方错误。
    public static var internalError_ThirdParty: TCEssbasicError {
        TCEssbasicError(.internalError_ThirdParty)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCEssbasicError {
        TCEssbasicError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCEssbasicError {
        TCEssbasicError(.invalidParameterValue)
    }
    
    /// 应用号不存在。
    public static var invalidParameter_Application: TCEssbasicError {
        TCEssbasicError(.invalidParameter_Application)
    }
    
    public static var invalidParameter_ApproverType: TCEssbasicError {
        TCEssbasicError(.invalidParameter_ApproverType)
    }
    
    /// 重复添加签署人。
    public static var invalidParameter_BizApproverAlreadyExists: TCEssbasicError {
        TCEssbasicError(.invalidParameter_BizApproverAlreadyExists)
    }
    
    public static var invalidParameter_BusinessLicense: TCEssbasicError {
        TCEssbasicError(.invalidParameter_BusinessLicense)
    }
    
    public static var invalidParameter_CardType: TCEssbasicError {
        TCEssbasicError(.invalidParameter_CardType)
    }
    
    public static var invalidParameter_ComponentValue: TCEssbasicError {
        TCEssbasicError(.invalidParameter_ComponentValue)
    }
    
    public static var invalidParameter_ContentType: TCEssbasicError {
        TCEssbasicError(.invalidParameter_ContentType)
    }
    
    public static var invalidParameter_CustomShowMap: TCEssbasicError {
        TCEssbasicError(.invalidParameter_CustomShowMap)
    }
    
    public static var invalidParameter_CustomerData: TCEssbasicError {
        TCEssbasicError(.invalidParameter_CustomerData)
    }
    
    /// 数据不存在。
    public static var invalidParameter_DataNotFound: TCEssbasicError {
        TCEssbasicError(.invalidParameter_DataNotFound)
    }
    
    public static var invalidParameter_Date: TCEssbasicError {
        TCEssbasicError(.invalidParameter_Date)
    }
    
    public static var invalidParameter_DepartUserId: TCEssbasicError {
        TCEssbasicError(.invalidParameter_DepartUserId)
    }
    
    public static var invalidParameter_DupTask: TCEssbasicError {
        TCEssbasicError(.invalidParameter_DupTask)
    }
    
    /// 参数为空。
    public static var invalidParameter_EmptyParams: TCEssbasicError {
        TCEssbasicError(.invalidParameter_EmptyParams)
    }
    
    public static var invalidParameter_EndPoint: TCEssbasicError {
        TCEssbasicError(.invalidParameter_EndPoint)
    }
    
    public static var invalidParameter_FileType: TCEssbasicError {
        TCEssbasicError(.invalidParameter_FileType)
    }
    
    public static var invalidParameter_FlowApproverInfos: TCEssbasicError {
        TCEssbasicError(.invalidParameter_FlowApproverInfos)
    }
    
    public static var invalidParameter_FlowApprovers: TCEssbasicError {
        TCEssbasicError(.invalidParameter_FlowApprovers)
    }
    
    public static var invalidParameter_FlowCallbackUrl: TCEssbasicError {
        TCEssbasicError(.invalidParameter_FlowCallbackUrl)
    }
    
    public static var invalidParameter_FlowDeadLine: TCEssbasicError {
        TCEssbasicError(.invalidParameter_FlowDeadLine)
    }
    
    public static var invalidParameter_FlowDescription: TCEssbasicError {
        TCEssbasicError(.invalidParameter_FlowDescription)
    }
    
    public static var invalidParameter_FlowFileIds: TCEssbasicError {
        TCEssbasicError(.invalidParameter_FlowFileIds)
    }
    
    public static var invalidParameter_FlowIds: TCEssbasicError {
        TCEssbasicError(.invalidParameter_FlowIds)
    }
    
    public static var invalidParameter_FlowInfos: TCEssbasicError {
        TCEssbasicError(.invalidParameter_FlowInfos)
    }
    
    public static var invalidParameter_FlowName: TCEssbasicError {
        TCEssbasicError(.invalidParameter_FlowName)
    }
    
    public static var invalidParameter_FlowType: TCEssbasicError {
        TCEssbasicError(.invalidParameter_FlowType)
    }
    
    public static var invalidParameter_GenerateType: TCEssbasicError {
        TCEssbasicError(.invalidParameter_GenerateType)
    }
    
    public static var invalidParameter_Image: TCEssbasicError {
        TCEssbasicError(.invalidParameter_Image)
    }
    
    public static var invalidParameter_LimitSealName: TCEssbasicError {
        TCEssbasicError(.invalidParameter_LimitSealName)
    }
    
    public static var invalidParameter_MenuStatus: TCEssbasicError {
        TCEssbasicError(.invalidParameter_MenuStatus)
    }
    
    public static var invalidParameter_MissingRequiredParameterValue: TCEssbasicError {
        TCEssbasicError(.invalidParameter_MissingRequiredParameterValue)
    }
    
    public static var invalidParameter_Name: TCEssbasicError {
        TCEssbasicError(.invalidParameter_Name)
    }
    
    public static var invalidParameter_NonsupportMobile: TCEssbasicError {
        TCEssbasicError(.invalidParameter_NonsupportMobile)
    }
    
    public static var invalidParameter_OpenId: TCEssbasicError {
        TCEssbasicError(.invalidParameter_OpenId)
    }
    
    public static var invalidParameter_OrganizationId: TCEssbasicError {
        TCEssbasicError(.invalidParameter_OrganizationId)
    }
    
    public static var invalidParameter_OrganizationName: TCEssbasicError {
        TCEssbasicError(.invalidParameter_OrganizationName)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParamError: TCEssbasicError {
        TCEssbasicError(.invalidParameter_ParamError)
    }
    
    public static var invalidParameter_SensitiveFileContent: TCEssbasicError {
        TCEssbasicError(.invalidParameter_SensitiveFileContent)
    }
    
    public static var invalidParameter_SignComponentType: TCEssbasicError {
        TCEssbasicError(.invalidParameter_SignComponentType)
    }
    
    /// 状态异常。
    public static var invalidParameter_Status: TCEssbasicError {
        TCEssbasicError(.invalidParameter_Status)
    }
    
    public static var invalidParameter_Unordered: TCEssbasicError {
        TCEssbasicError(.invalidParameter_Unordered)
    }
    
    public static var invalidParameter_UnsupportedComponentType: TCEssbasicError {
        TCEssbasicError(.invalidParameter_UnsupportedComponentType)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCEssbasicError {
        TCEssbasicError(.limitExceeded)
    }
    
    public static var limitExceeded_CallTimes: TCEssbasicError {
        TCEssbasicError(.limitExceeded_CallTimes)
    }
    
    public static var limitExceeded_CreateFlowNum: TCEssbasicError {
        TCEssbasicError(.limitExceeded_CreateFlowNum)
    }
    
    public static var limitExceeded_FileSize: TCEssbasicError {
        TCEssbasicError(.limitExceeded_FileSize)
    }
    
    public static var limitExceeded_FlowIds: TCEssbasicError {
        TCEssbasicError(.limitExceeded_FlowIds)
    }
    
    public static var limitExceeded_FlowInfos: TCEssbasicError {
        TCEssbasicError(.limitExceeded_FlowInfos)
    }
    
    public static var limitExceeded_ProxyOrganizationOperator: TCEssbasicError {
        TCEssbasicError(.limitExceeded_ProxyOrganizationOperator)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCEssbasicError {
        TCEssbasicError(.missingParameter)
    }
    
    public static var missingParameter_CompanyActiveInfo: TCEssbasicError {
        TCEssbasicError(.missingParameter_CompanyActiveInfo)
    }
    
    public static var missingParameter_Date: TCEssbasicError {
        TCEssbasicError(.missingParameter_Date)
    }
    
    public static var missingParameter_FlowId: TCEssbasicError {
        TCEssbasicError(.missingParameter_FlowId)
    }
    
    public static var missingParameter_FlowIds: TCEssbasicError {
        TCEssbasicError(.missingParameter_FlowIds)
    }
    
    public static var missingParameter_FlowIdsOrFlowGroupId: TCEssbasicError {
        TCEssbasicError(.missingParameter_FlowIdsOrFlowGroupId)
    }
    
    public static var missingParameter_FlowInfo: TCEssbasicError {
        TCEssbasicError(.missingParameter_FlowInfo)
    }
    
    public static var missingParameter_MissComponentName: TCEssbasicError {
        TCEssbasicError(.missingParameter_MissComponentName)
    }
    
    public static var missingParameter_OrgOpenId: TCEssbasicError {
        TCEssbasicError(.missingParameter_OrgOpenId)
    }
    
    public static var missingParameter_OrganizationId: TCEssbasicError {
        TCEssbasicError(.missingParameter_OrganizationId)
    }
    
    public static var missingParameter_ProxyOperatorOpenId: TCEssbasicError {
        TCEssbasicError(.missingParameter_ProxyOperatorOpenId)
    }
    
    public static var missingParameter_SealId: TCEssbasicError {
        TCEssbasicError(.missingParameter_SealId)
    }
    
    public static var missingParameter_SealImage: TCEssbasicError {
        TCEssbasicError(.missingParameter_SealImage)
    }
    
    public static var missingParameter_SealName: TCEssbasicError {
        TCEssbasicError(.missingParameter_SealName)
    }
    
    public static var missingParameter_SignComponents: TCEssbasicError {
        TCEssbasicError(.missingParameter_SignComponents)
    }
    
    public static var missingParameter_Templates: TCEssbasicError {
        TCEssbasicError(.missingParameter_Templates)
    }
    
    public static var missingParameter_UserOpenId: TCEssbasicError {
        TCEssbasicError(.missingParameter_UserOpenId)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCEssbasicError {
        TCEssbasicError(.operationDenied)
    }
    
    public static var operationDenied_AuthTag: TCEssbasicError {
        TCEssbasicError(.operationDenied_AuthTag)
    }
    
    /// 应用号已被禁止。
    public static var operationDenied_BannedApplication: TCEssbasicError {
        TCEssbasicError(.operationDenied_BannedApplication)
    }
    
    public static var operationDenied_ByFilesServerSignForbid: TCEssbasicError {
        TCEssbasicError(.operationDenied_ByFilesServerSignForbid)
    }
    
    public static var operationDenied_DownLoadMoreThanOne: TCEssbasicError {
        TCEssbasicError(.operationDenied_DownLoadMoreThanOne)
    }
    
    public static var operationDenied_ErrNoResourceAccess: TCEssbasicError {
        TCEssbasicError(.operationDenied_ErrNoResourceAccess)
    }
    
    public static var operationDenied_FileDeleted: TCEssbasicError {
        TCEssbasicError(.operationDenied_FileDeleted)
    }
    
    public static var operationDenied_FlowHasTerminated: TCEssbasicError {
        TCEssbasicError(.operationDenied_FlowHasTerminated)
    }
    
    /// 禁止操作。
    public static var operationDenied_Forbid: TCEssbasicError {
        TCEssbasicError(.operationDenied_Forbid)
    }
    
    public static var operationDenied_InvalidApproverAge: TCEssbasicError {
        TCEssbasicError(.operationDenied_InvalidApproverAge)
    }
    
    /// 没有API权限。
    public static var operationDenied_NoApiAuth: TCEssbasicError {
        TCEssbasicError(.operationDenied_NoApiAuth)
    }
    
    public static var operationDenied_NoFlowPermission: TCEssbasicError {
        TCEssbasicError(.operationDenied_NoFlowPermission)
    }
    
    /// 未通过个人实名。
    public static var operationDenied_NoIdentityVerify: TCEssbasicError {
        TCEssbasicError(.operationDenied_NoIdentityVerify)
    }
    
    /// 流程配额不足。
    public static var operationDenied_NoQuota: TCEssbasicError {
        TCEssbasicError(.operationDenied_NoQuota)
    }
    
    public static var operationDenied_OperateType: TCEssbasicError {
        TCEssbasicError(.operationDenied_OperateType)
    }
    
    public static var operationDenied_OperatorHasNoPermission: TCEssbasicError {
        TCEssbasicError(.operationDenied_OperatorHasNoPermission)
    }
    
    public static var operationDenied_OutQueryLimit: TCEssbasicError {
        TCEssbasicError(.operationDenied_OutQueryLimit)
    }
    
    /// 用户与企业不对应。
    public static var operationDenied_UserNotInOrganization: TCEssbasicError {
        TCEssbasicError(.operationDenied_UserNotInOrganization)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCEssbasicError {
        TCEssbasicError(.resourceNotFound)
    }
    
    /// 应用号不存在。
    public static var resourceNotFound_Application: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_Application)
    }
    
    public static var resourceNotFound_ApplicationAuth: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_ApplicationAuth)
    }
    
    public static var resourceNotFound_ApplicationId: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_ApplicationId)
    }
    
    public static var resourceNotFound_File: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_File)
    }
    
    /// 未找到对应流程。
    public static var resourceNotFound_Flow: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_Flow)
    }
    
    public static var resourceNotFound_FlowApprovers: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_FlowApprovers)
    }
    
    /// 机构不存在。
    public static var resourceNotFound_Organization: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_Organization)
    }
    
    public static var resourceNotFound_Resource: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_Resource)
    }
    
    public static var resourceNotFound_Seal: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_Seal)
    }
    
    public static var resourceNotFound_TeamWorkOrganization: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_TeamWorkOrganization)
    }
    
    /// 模板不存在。
    public static var resourceNotFound_Template: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_Template)
    }
    
    public static var resourceNotFound_User: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_User)
    }
    
    public static var resourceNotFound_VerifyUser: TCEssbasicError {
        TCEssbasicError(.resourceNotFound_VerifyUser)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCEssbasicError {
        TCEssbasicError(.resourceUnavailable)
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
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, LimitExceeded.self, MissingParameter.self, OperationDenied.self, ResourceNotFound.self]
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