public struct TCLiveError: TCErrorType {
    enum Code: String {
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_AiTranscodeOptionFail = "FailedOperation.AiTranscodeOptionFail"
        case failedOperation_AlterTaskState = "FailedOperation.AlterTaskState"
        case failedOperation_AuthError = "FailedOperation.AuthError"
        case failedOperation_CallOtherSvrError = "FailedOperation.CallOtherSvrError"
        case failedOperation_CallOtherSvrFailed = "FailedOperation.CallOtherSvrFailed"
        case failedOperation_CancelSessionNotExist = "FailedOperation.CancelSessionNotExist"
        case failedOperation_CannotBeDeletedIssued = "FailedOperation.CannotBeDeletedIssued"
        case failedOperation_CannotBeDeletedWithinHour = "FailedOperation.CannotBeDeletedWithinHour"
        case failedOperation_CertificateExists = "FailedOperation.CertificateExists"
        case failedOperation_CertificateInvalid = "FailedOperation.CertificateInvalid"
        case failedOperation_CertificateMismatch = "FailedOperation.CertificateMismatch"
        case failedOperation_CertificateNotFound = "FailedOperation.CertificateNotFound"
        case failedOperation_ConfInUsed = "FailedOperation.ConfInUsed"
        case failedOperation_ConfigCDNFailed = "FailedOperation.ConfigCDNFailed"
        case failedOperation_CosBucketNotExist = "FailedOperation.CosBucketNotExist"
        case failedOperation_CosBucketNotPermission = "FailedOperation.CosBucketNotPermission"
        case failedOperation_CosRoleNotExists = "FailedOperation.CosRoleNotExists"
        case failedOperation_DeleteDomainInLockedTime = "FailedOperation.DeleteDomainInLockedTime"
        case failedOperation_DomainAdded = "FailedOperation.DomainAdded"
        case failedOperation_DomainGslbFail = "FailedOperation.DomainGslbFail"
        case failedOperation_DomainNeedRealName = "FailedOperation.DomainNeedRealName"
        case failedOperation_DomainNeedVerifyOwner = "FailedOperation.DomainNeedVerifyOwner"
        case failedOperation_ExceedsFreeLimit = "FailedOperation.ExceedsFreeLimit"
        case failedOperation_GetPictureUrlError = "FailedOperation.GetPictureUrlError"
        case failedOperation_GetStreamResolutionError = "FailedOperation.GetStreamResolutionError"
        case failedOperation_HasNotLivingStream = "FailedOperation.HasNotLivingStream"
        case failedOperation_HostOutLimit = "FailedOperation.HostOutLimit"
        case failedOperation_InvalidCertificateStatusCode = "FailedOperation.InvalidCertificateStatusCode"
        case failedOperation_InvalidParam = "FailedOperation.InvalidParam"
        case failedOperation_InvokeCdnApiFail = "FailedOperation.InvokeCdnApiFail"
        case failedOperation_InvokeVideoApiFail = "FailedOperation.InvokeVideoApiFail"
        case failedOperation_JiFeiNoEnoughFund = "FailedOperation.JiFeiNoEnoughFund"
        case failedOperation_NetworkError = "FailedOperation.NetworkError"
        case failedOperation_NoProjectPermission = "FailedOperation.NoProjectPermission"
        case failedOperation_NoRealNameAuth = "FailedOperation.NoRealNameAuth"
        case failedOperation_NotFound = "FailedOperation.NotFound"
        case failedOperation_ParentDomainAdded = "FailedOperation.ParentDomainAdded"
        case failedOperation_ProcessMixError = "FailedOperation.ProcessMixError"
        case failedOperation_QueryUploadInfoFailed = "FailedOperation.QueryUploadInfoFailed"
        case failedOperation_RuleAlreadyExist = "FailedOperation.RuleAlreadyExist"
        case failedOperation_SdkNoPackage = "FailedOperation.SdkNoPackage"
        case failedOperation_StreamNotExist = "FailedOperation.StreamNotExist"
        case failedOperation_SubDomainAdded = "FailedOperation.SubDomainAdded"
        case failedOperation_TagUnbindError = "FailedOperation.TagUnbindError"
        case internalError = "InternalError"
        case internalError_ArgsNotMatch = "InternalError.ArgsNotMatch"
        case internalError_CallOtherSvrError = "InternalError.CallOtherSvrError"
        case internalError_ChineseCharacterDetected = "InternalError.ChineseCharacterDetected"
        case internalError_ConfInUsed = "InternalError.ConfInUsed"
        case internalError_ConfNotFound = "InternalError.ConfNotFound"
        case internalError_ConfOutLimit = "InternalError.ConfOutLimit"
        case internalError_ConfigNotExist = "InternalError.ConfigNotExist"
        case internalError_ConnectDbError = "InternalError.ConnectDbError"
        case internalError_CrtDateInUsing = "InternalError.CrtDateInUsing"
        case internalError_CrtDateNotFound = "InternalError.CrtDateNotFound"
        case internalError_CrtDateNotLegal = "InternalError.CrtDateNotLegal"
        case internalError_CrtDateOverdue = "InternalError.CrtDateOverdue"
        case internalError_CrtDomainNotFound = "InternalError.CrtDomainNotFound"
        case internalError_CrtKeyNotMatch = "InternalError.CrtKeyNotMatch"
        case internalError_DBError = "InternalError.DBError"
        case internalError_DomainAlreadyExist = "InternalError.DomainAlreadyExist"
        case internalError_DomainFormatError = "InternalError.DomainFormatError"
        case internalError_DomainGslbFail = "InternalError.DomainGslbFail"
        case internalError_DomainIsFamous = "InternalError.DomainIsFamous"
        case internalError_DomainIsLimited = "InternalError.DomainIsLimited"
        case internalError_DomainNoRecord = "InternalError.DomainNoRecord"
        case internalError_DomainNotExist = "InternalError.DomainNotExist"
        case internalError_DomainTooLong = "InternalError.DomainTooLong"
        case internalError_GetBizidError = "InternalError.GetBizidError"
        case internalError_GetConfigError = "InternalError.GetConfigError"
        case internalError_GetStreamInfoError = "InternalError.GetStreamInfoError"
        case internalError_GetUpstreamInfoError = "InternalError.GetUpstreamInfoError"
        case internalError_GetWatermarkError = "InternalError.GetWatermarkError"
        case internalError_HasNotLivingStream = "InternalError.HasNotLivingStream"
        case internalError_InvalidInput = "InternalError.InvalidInput"
        case internalError_InvalidRequest = "InternalError.InvalidRequest"
        case internalError_InvalidUser = "InternalError.InvalidUser"
        case internalError_JiFeiOtherError = "InternalError.JiFeiOtherError"
        case internalError_NetworkError = "InternalError.NetworkError"
        case internalError_NotFound = "InternalError.NotFound"
        case internalError_NotPermmitOperat = "InternalError.NotPermmitOperat"
        case internalError_PlayDomainNoRecord = "InternalError.PlayDomainNoRecord"
        case internalError_ProcessorAlreadyExist = "InternalError.ProcessorAlreadyExist"
        case internalError_PushDomainNoRecord = "InternalError.PushDomainNoRecord"
        case internalError_QueryProIspPlayInfoError = "InternalError.QueryProIspPlayInfoError"
        case internalError_QueryUploadInfoFailed = "InternalError.QueryUploadInfoFailed"
        case internalError_RuleAlreadyExist = "InternalError.RuleAlreadyExist"
        case internalError_RuleInUsing = "InternalError.RuleInUsing"
        case internalError_RuleNotFound = "InternalError.RuleNotFound"
        case internalError_RuleOutLimit = "InternalError.RuleOutLimit"
        case internalError_StreamStatusError = "InternalError.StreamStatusError"
        case internalError_SystemError = "InternalError.SystemError"
        case internalError_UpdateDataError = "InternalError.UpdateDataError"
        case internalError_WatermarkAddError = "InternalError.WatermarkAddError"
        case internalError_WatermarkEditError = "InternalError.WatermarkEditError"
        case internalError_WatermarkNotExist = "InternalError.WatermarkNotExist"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_ArgsNotMatch = "InvalidParameter.ArgsNotMatch"
        case invalidParameter_COSCustomFileNameError = "InvalidParameter.COSCustomFileNameError"
        case invalidParameter_CancelSessionNotExist = "InvalidParameter.CancelSessionNotExist"
        case invalidParameter_CloudCrtIdError = "InvalidParameter.CloudCrtIdError"
        case invalidParameter_CloudDomainIsStop = "InvalidParameter.CloudDomainIsStop"
        case invalidParameter_CrtDateInUsing = "InvalidParameter.CrtDateInUsing"
        case invalidParameter_CrtDateNotFound = "InvalidParameter.CrtDateNotFound"
        case invalidParameter_CrtDateNotLegal = "InvalidParameter.CrtDateNotLegal"
        case invalidParameter_CrtDateOverdue = "InvalidParameter.CrtDateOverdue"
        case invalidParameter_CrtDomainNotFound = "InvalidParameter.CrtDomainNotFound"
        case invalidParameter_CrtKeyNotMatch = "InvalidParameter.CrtKeyNotMatch"
        case invalidParameter_CrtOrKeyNotExist = "InvalidParameter.CrtOrKeyNotExist"
        case invalidParameter_DomainAlreadyExist = "InvalidParameter.DomainAlreadyExist"
        case invalidParameter_DomainFormatError = "InvalidParameter.DomainFormatError"
        case invalidParameter_DomainHitBlackList = "InvalidParameter.DomainHitBlackList"
        case invalidParameter_DomainIsFamous = "InvalidParameter.DomainIsFamous"
        case invalidParameter_DomainIsLimited = "InvalidParameter.DomainIsLimited"
        case invalidParameter_DomainTooLong = "InvalidParameter.DomainTooLong"
        case invalidParameter_GopMustEqualAndExists = "InvalidParameter.GopMustEqualAndExists"
        case invalidParameter_InputNumLimitExceeded = "InvalidParameter.InputNumLimitExceeded"
        case invalidParameter_InvalidBackgroudResolution = "InvalidParameter.InvalidBackgroudResolution"
        case invalidParameter_InvalidBitrate = "InvalidParameter.InvalidBitrate"
        case invalidParameter_InvalidCallbackUrl = "InvalidParameter.InvalidCallbackUrl"
        case invalidParameter_InvalidCropParam = "InvalidParameter.InvalidCropParam"
        case invalidParameter_InvalidLayerParam = "InvalidParameter.InvalidLayerParam"
        case invalidParameter_InvalidOutputStreamID = "InvalidParameter.InvalidOutputStreamID"
        case invalidParameter_InvalidOutputType = "InvalidParameter.InvalidOutputType"
        case invalidParameter_InvalidPictureID = "InvalidParameter.InvalidPictureID"
        case invalidParameter_InvalidRoundRectRadius = "InvalidParameter.InvalidRoundRectRadius"
        case invalidParameter_InvalidSourceUrl = "InvalidParameter.InvalidSourceUrl"
        case invalidParameter_InvalidTaskTime = "InvalidParameter.InvalidTaskTime"
        case invalidParameter_InvalidToUrl = "InvalidParameter.InvalidToUrl"
        case invalidParameter_InvalidVodFileName = "InvalidParameter.InvalidVodFileName"
        case invalidParameter_InvalidWatermark = "InvalidParameter.InvalidWatermark"
        case invalidParameter_MpHostDelete = "InvalidParameter.MpHostDelete"
        case invalidParameter_MpPluginNoUse = "InvalidParameter.MpPluginNoUse"
        case invalidParameter_OtherError = "InvalidParameter.OtherError"
        case invalidParameter_SessionOutputStreamChanged = "InvalidParameter.SessionOutputStreamChanged"
        case invalidParameter_TaskNotExist = "InvalidParameter.TaskNotExist"
        case invalidParameter_TaskNumMoreThanLimit = "InvalidParameter.TaskNumMoreThanLimit"
        case invalidParameter_TemplateNotMatchInputNum = "InvalidParameter.TemplateNotMatchInputNum"
        case invalidParameter_ToUrlNoPermission = "InvalidParameter.ToUrlNoPermission"
        case invalidParameter_UrlNotSafe = "InvalidParameter.UrlNotSafe"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_MaximumRunningTask = "LimitExceeded.MaximumRunningTask"
        case limitExceeded_MaximumTask = "LimitExceeded.MaximumTask"
        case limitExceeded_RateLimitExceeded = "LimitExceeded.RateLimitExceeded"
        case missingParameter = "MissingParameter"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_CdnLogEmpty = "ResourceNotFound.CdnLogEmpty"
        case resourceNotFound_CdnThemeEmpty = "ResourceNotFound.CdnThemeEmpty"
        case resourceNotFound_ChannelNotExist = "ResourceNotFound.ChannelNotExist"
        case resourceNotFound_CrtDateNotFound = "ResourceNotFound.CrtDateNotFound"
        case resourceNotFound_CrtDomainNotFound = "ResourceNotFound.CrtDomainNotFound"
        case resourceNotFound_DomainNoRecord = "ResourceNotFound.DomainNoRecord"
        case resourceNotFound_DomainNotExist = "ResourceNotFound.DomainNotExist"
        case resourceNotFound_ForbidService = "ResourceNotFound.ForbidService"
        case resourceNotFound_FreezeService = "ResourceNotFound.FreezeService"
        case resourceNotFound_InvalidUser = "ResourceNotFound.InvalidUser"
        case resourceNotFound_PlayDomainNoRecord = "ResourceNotFound.PlayDomainNoRecord"
        case resourceNotFound_PushDomainNoRecord = "ResourceNotFound.PushDomainNoRecord"
        case resourceNotFound_StopService = "ResourceNotFound.StopService"
        case resourceNotFound_TaskId = "ResourceNotFound.TaskId"
        case resourceNotFound_UserDisableService = "ResourceNotFound.UserDisableService"
        case resourceNotFound_UserNotExist = "ResourceNotFound.UserNotExist"
        case resourceNotFound_UserNotFount = "ResourceNotFound.UserNotFount"
        case resourceNotFound_WatermarkNotExist = "ResourceNotFound.WatermarkNotExist"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_InvalidVodStatus = "ResourceUnavailable.InvalidVodStatus"
        case resourceUnavailable_StreamNotExist = "ResourceUnavailable.StreamNotExist"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_NotLVBCodeMode = "UnsupportedOperation.NotLVBCodeMode"
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
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCLiveError {
        TCLiveError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCLiveError {
        TCLiveError(.failedOperation)
    }
    
    /// 操作 AI 接口失败。
    public static var failedOperation_AiTranscodeOptionFail: TCLiveError {
        TCLiveError(.failedOperation_AiTranscodeOptionFail)
    }
    
    /// 改变任务状态失败。
    public static var failedOperation_AlterTaskState: TCLiveError {
        TCLiveError(.failedOperation_AlterTaskState)
    }
    
    /// 请参考ssl证书-获取证书详情(https://cloud.tencent.com/document/api/400/41673)
    public static var failedOperation_AuthError: TCLiveError {
        TCLiveError(.failedOperation_AuthError)
    }
    
    /// 调用第三方服务失败。
    public static var failedOperation_CallOtherSvrError: TCLiveError {
        TCLiveError(.failedOperation_CallOtherSvrError)
    }
    
    /// 调用内部服务失败。
    public static var failedOperation_CallOtherSvrFailed: TCLiveError {
        TCLiveError(.failedOperation_CallOtherSvrFailed)
    }
    
    /// 取消的混流 session 不存在。
    public static var failedOperation_CancelSessionNotExist: TCLiveError {
        TCLiveError(.failedOperation_CancelSessionNotExist)
    }
    
    /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
    public static var failedOperation_CannotBeDeletedIssued: TCLiveError {
        TCLiveError(.failedOperation_CannotBeDeletedIssued)
    }
    
    /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
    public static var failedOperation_CannotBeDeletedWithinHour: TCLiveError {
        TCLiveError(.failedOperation_CannotBeDeletedWithinHour)
    }
    
    /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
    public static var failedOperation_CertificateExists: TCLiveError {
        TCLiveError(.failedOperation_CertificateExists)
    }
    
    /// ssl接口返回：证书格式错误。
    ///
    /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
    public static var failedOperation_CertificateInvalid: TCLiveError {
        TCLiveError(.failedOperation_CertificateInvalid)
    }
    
    /// ssl接口返回：私钥与证书不匹配。
    ///
    /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
    public static var failedOperation_CertificateMismatch: TCLiveError {
        TCLiveError(.failedOperation_CertificateMismatch)
    }
    
    /// 证书在证书中心不存在。
    ///
    /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
    public static var failedOperation_CertificateNotFound: TCLiveError {
        TCLiveError(.failedOperation_CertificateNotFound)
    }
    
    /// 模版使用中。
    public static var failedOperation_ConfInUsed: TCLiveError {
        TCLiveError(.failedOperation_ConfInUsed)
    }
    
    /// 下发CDN平台失败。
    public static var failedOperation_ConfigCDNFailed: TCLiveError {
        TCLiveError(.failedOperation_ConfigCDNFailed)
    }
    
    public static var failedOperation_CosBucketNotExist: TCLiveError {
        TCLiveError(.failedOperation_CosBucketNotExist)
    }
    
    public static var failedOperation_CosBucketNotPermission: TCLiveError {
        TCLiveError(.failedOperation_CosBucketNotPermission)
    }
    
    public static var failedOperation_CosRoleNotExists: TCLiveError {
        TCLiveError(.failedOperation_CosRoleNotExists)
    }
    
    /// 2天内有产生流量，域名处于锁定期间，2天内无流量产生才允许删除域名。
    public static var failedOperation_DeleteDomainInLockedTime: TCLiveError {
        TCLiveError(.failedOperation_DeleteDomainInLockedTime)
    }
    
    /// 当前域名已添加，不可重复添加。
    public static var failedOperation_DomainAdded: TCLiveError {
        TCLiveError(.failedOperation_DomainAdded)
    }
    
    /// 自动配置域名规则失败，可能由于您的域名是人工维护，请联系售后同学解决。
    public static var failedOperation_DomainGslbFail: TCLiveError {
        TCLiveError(.failedOperation_DomainGslbFail)
    }
    
    /// 国内域名需要您通过实名认证。
    public static var failedOperation_DomainNeedRealName: TCLiveError {
        TCLiveError(.failedOperation_DomainNeedRealName)
    }
    
    /// 请按提示进行域名归属验证。
    public static var failedOperation_DomainNeedVerifyOwner: TCLiveError {
        TCLiveError(.failedOperation_DomainNeedVerifyOwner)
    }
    
    /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
    public static var failedOperation_ExceedsFreeLimit: TCLiveError {
        TCLiveError(.failedOperation_ExceedsFreeLimit)
    }
    
    /// 无法获取水印 url。
    public static var failedOperation_GetPictureUrlError: TCLiveError {
        TCLiveError(.failedOperation_GetPictureUrlError)
    }
    
    /// 获取输入流长宽失败。
    public static var failedOperation_GetStreamResolutionError: TCLiveError {
        TCLiveError(.failedOperation_GetStreamResolutionError)
    }
    
    /// 无在线流。
    public static var failedOperation_HasNotLivingStream: TCLiveError {
        TCLiveError(.failedOperation_HasNotLivingStream)
    }
    
    /// 域名数量超过限制(100个）。
    public static var failedOperation_HostOutLimit: TCLiveError {
        TCLiveError(.failedOperation_HostOutLimit)
    }
    
    /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
    public static var failedOperation_InvalidCertificateStatusCode: TCLiveError {
        TCLiveError(.failedOperation_InvalidCertificateStatusCode)
    }
    
    /// ssl接口返回：Type参数错误。
    ///
    /// 请参考ssl证书-获取证书详情(https://cloud.tencent.com/document/api/400/41673)
    public static var failedOperation_InvalidParam: TCLiveError {
        TCLiveError(.failedOperation_InvalidParam)
    }
    
    /// 操作 CDN 接口失败。
    public static var failedOperation_InvokeCdnApiFail: TCLiveError {
        TCLiveError(.failedOperation_InvokeCdnApiFail)
    }
    
    /// 操作点播接口异常。
    public static var failedOperation_InvokeVideoApiFail: TCLiveError {
        TCLiveError(.failedOperation_InvokeVideoApiFail)
    }
    
    /// 计费平台返回余额不足。
    public static var failedOperation_JiFeiNoEnoughFund: TCLiveError {
        TCLiveError(.failedOperation_JiFeiNoEnoughFund)
    }
    
    /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
    public static var failedOperation_NetworkError: TCLiveError {
        TCLiveError(.failedOperation_NetworkError)
    }
    
    /// ssl接口返回：没有项目权限。
    ///
    /// 请参考ssl证书-获取证书详情(https://cloud.tencent.com/document/api/400/41673)
    public static var failedOperation_NoProjectPermission: TCLiveError {
        TCLiveError(.failedOperation_NoProjectPermission)
    }
    
    /// 请参考ssl证书-获取证书详情(https://cloud.tencent.com/document/api/400/41673)
    public static var failedOperation_NoRealNameAuth: TCLiveError {
        TCLiveError(.failedOperation_NoRealNameAuth)
    }
    
    /// 找不到记录。
    public static var failedOperation_NotFound: TCLiveError {
        TCLiveError(.failedOperation_NotFound)
    }
    
    /// 您已添加该域名父域名，与当前域名冲突。
    public static var failedOperation_ParentDomainAdded: TCLiveError {
        TCLiveError(.failedOperation_ParentDomainAdded)
    }
    
    /// 启动混流失败。
    public static var failedOperation_ProcessMixError: TCLiveError {
        TCLiveError(.failedOperation_ProcessMixError)
    }
    
    /// 查询 upload 信息失败。
    public static var failedOperation_QueryUploadInfoFailed: TCLiveError {
        TCLiveError(.failedOperation_QueryUploadInfoFailed)
    }
    
    /// 规则已经存在。
    public static var failedOperation_RuleAlreadyExist: TCLiveError {
        TCLiveError(.failedOperation_RuleAlreadyExist)
    }
    
    /// 用户没有有效的流量套餐包。
    public static var failedOperation_SdkNoPackage: TCLiveError {
        TCLiveError(.failedOperation_SdkNoPackage)
    }
    
    /// 流不存在。
    public static var failedOperation_StreamNotExist: TCLiveError {
        TCLiveError(.failedOperation_StreamNotExist)
    }
    
    /// 您已添加该域名子域名，与当前域名冲突。
    public static var failedOperation_SubDomainAdded: TCLiveError {
        TCLiveError(.failedOperation_SubDomainAdded)
    }
    
    /// 解绑Tag失败，请尝试手动解绑。
    public static var failedOperation_TagUnbindError: TCLiveError {
        TCLiveError(.failedOperation_TagUnbindError)
    }
    
    /// 内部错误。
    public static var internalError: TCLiveError {
        TCLiveError(.internalError)
    }
    
    /// 针对添加转码模版的接口。
    public static var internalError_ArgsNotMatch: TCLiveError {
        TCLiveError(.internalError_ArgsNotMatch)
    }
    
    /// 调用内部服务错误。
    public static var internalError_CallOtherSvrError: TCLiveError {
        TCLiveError(.internalError_CallOtherSvrError)
    }
    
    /// 暂不支持添加中文域名，请核对域名格式。
    public static var internalError_ChineseCharacterDetected: TCLiveError {
        TCLiveError(.internalError_ChineseCharacterDetected)
    }
    
    /// 模版使用中。
    public static var internalError_ConfInUsed: TCLiveError {
        TCLiveError(.internalError_ConfInUsed)
    }
    
    /// 模版不存在。
    public static var internalError_ConfNotFound: TCLiveError {
        TCLiveError(.internalError_ConfNotFound)
    }
    
    /// 模版数量超过限制。
    public static var internalError_ConfOutLimit: TCLiveError {
        TCLiveError(.internalError_ConfOutLimit)
    }
    
    /// 配置不存在。
    public static var internalError_ConfigNotExist: TCLiveError {
        TCLiveError(.internalError_ConfigNotExist)
    }
    
    /// DB 连接错误。
    public static var internalError_ConnectDbError: TCLiveError {
        TCLiveError(.internalError_ConnectDbError)
    }
    
    /// 证书使用中。
    public static var internalError_CrtDateInUsing: TCLiveError {
        TCLiveError(.internalError_CrtDateInUsing)
    }
    
    /// 证书不存在。
    public static var internalError_CrtDateNotFound: TCLiveError {
        TCLiveError(.internalError_CrtDateNotFound)
    }
    
    /// 证书不合法。
    public static var internalError_CrtDateNotLegal: TCLiveError {
        TCLiveError(.internalError_CrtDateNotLegal)
    }
    
    /// 证书过期。
    public static var internalError_CrtDateOverdue: TCLiveError {
        TCLiveError(.internalError_CrtDateOverdue)
    }
    
    /// 没有相关域名。
    public static var internalError_CrtDomainNotFound: TCLiveError {
        TCLiveError(.internalError_CrtDomainNotFound)
    }
    
    /// 证书 Key 不匹配。
    public static var internalError_CrtKeyNotMatch: TCLiveError {
        TCLiveError(.internalError_CrtKeyNotMatch)
    }
    
    /// DB执行错误。
    public static var internalError_DBError: TCLiveError {
        TCLiveError(.internalError_DBError)
    }
    
    /// 该域名已在其他处接入，请检查域名是否输入正确。  如域名正确，您可通过验证后重新添加域名。
    public static var internalError_DomainAlreadyExist: TCLiveError {
        TCLiveError(.internalError_DomainAlreadyExist)
    }
    
    /// 域名格式错误，请输入合法格式域名。
    public static var internalError_DomainFormatError: TCLiveError {
        TCLiveError(.internalError_DomainFormatError)
    }
    
    /// 添加 GSLB 规则失败。
    public static var internalError_DomainGslbFail: TCLiveError {
        TCLiveError(.internalError_DomainGslbFail)
    }
    
    /// 该域名已在其他处接入，请检查域名是否输入正确。  如域名正确，您可通过验证后重新添加域名。
    public static var internalError_DomainIsFamous: TCLiveError {
        TCLiveError(.internalError_DomainIsFamous)
    }
    
    /// 您的域名不可用，请输入正确的域名。
    public static var internalError_DomainIsLimited: TCLiveError {
        TCLiveError(.internalError_DomainIsLimited)
    }
    
    /// 域名没有备案。
    public static var internalError_DomainNoRecord: TCLiveError {
        TCLiveError(.internalError_DomainNoRecord)
    }
    
    /// 域名不存在。
    public static var internalError_DomainNotExist: TCLiveError {
        TCLiveError(.internalError_DomainNotExist)
    }
    
    /// 域名长度超过限制。
    public static var internalError_DomainTooLong: TCLiveError {
        TCLiveError(.internalError_DomainTooLong)
    }
    
    /// 获取用户账号错误。
    public static var internalError_GetBizidError: TCLiveError {
        TCLiveError(.internalError_GetBizidError)
    }
    
    /// 获取配置错误。
    public static var internalError_GetConfigError: TCLiveError {
        TCLiveError(.internalError_GetConfigError)
    }
    
    /// 获取流信息失败。
    public static var internalError_GetStreamInfoError: TCLiveError {
        TCLiveError(.internalError_GetStreamInfoError)
    }
    
    /// 获取直播源信息错误。
    public static var internalError_GetUpstreamInfoError: TCLiveError {
        TCLiveError(.internalError_GetUpstreamInfoError)
    }
    
    /// 获取水印错误。
    public static var internalError_GetWatermarkError: TCLiveError {
        TCLiveError(.internalError_GetWatermarkError)
    }
    
    /// 无在线流。
    public static var internalError_HasNotLivingStream: TCLiveError {
        TCLiveError(.internalError_HasNotLivingStream)
    }
    
    /// 参数检校不通过。
    public static var internalError_InvalidInput: TCLiveError {
        TCLiveError(.internalError_InvalidInput)
    }
    
    /// 无效的请求。
    public static var internalError_InvalidRequest: TCLiveError {
        TCLiveError(.internalError_InvalidRequest)
    }
    
    /// 账号信息错误。
    public static var internalError_InvalidUser: TCLiveError {
        TCLiveError(.internalError_InvalidUser)
    }
    
    /// 计费平台返回其他错误。
    public static var internalError_JiFeiOtherError: TCLiveError {
        TCLiveError(.internalError_JiFeiOtherError)
    }
    
    /// 内部网络错误。
    public static var internalError_NetworkError: TCLiveError {
        TCLiveError(.internalError_NetworkError)
    }
    
    /// 记录不存在。
    public static var internalError_NotFound: TCLiveError {
        TCLiveError(.internalError_NotFound)
    }
    
    /// 无权限操作。
    public static var internalError_NotPermmitOperat: TCLiveError {
        TCLiveError(.internalError_NotPermmitOperat)
    }
    
    /// 播放域名不存在。
    public static var internalError_PlayDomainNoRecord: TCLiveError {
        TCLiveError(.internalError_PlayDomainNoRecord)
    }
    
    /// 转码模板名称已经存在。
    public static var internalError_ProcessorAlreadyExist: TCLiveError {
        TCLiveError(.internalError_ProcessorAlreadyExist)
    }
    
    /// 推流域名不存在。
    public static var internalError_PushDomainNoRecord: TCLiveError {
        TCLiveError(.internalError_PushDomainNoRecord)
    }
    
    /// 按省份运营商查询播放信息失败。
    public static var internalError_QueryProIspPlayInfoError: TCLiveError {
        TCLiveError(.internalError_QueryProIspPlayInfoError)
    }
    
    /// 查询 upload 信息失败。
    public static var internalError_QueryUploadInfoFailed: TCLiveError {
        TCLiveError(.internalError_QueryUploadInfoFailed)
    }
    
    /// 规则已经配置。
    public static var internalError_RuleAlreadyExist: TCLiveError {
        TCLiveError(.internalError_RuleAlreadyExist)
    }
    
    /// 规则使用中。
    public static var internalError_RuleInUsing: TCLiveError {
        TCLiveError(.internalError_RuleInUsing)
    }
    
    /// 规则不存在。
    public static var internalError_RuleNotFound: TCLiveError {
        TCLiveError(.internalError_RuleNotFound)
    }
    
    /// 规则超过限制。
    public static var internalError_RuleOutLimit: TCLiveError {
        TCLiveError(.internalError_RuleOutLimit)
    }
    
    /// 流状态异常。
    public static var internalError_StreamStatusError: TCLiveError {
        TCLiveError(.internalError_StreamStatusError)
    }
    
    /// 系统内部错误。
    public static var internalError_SystemError: TCLiveError {
        TCLiveError(.internalError_SystemError)
    }
    
    /// 更新数据失败。
    public static var internalError_UpdateDataError: TCLiveError {
        TCLiveError(.internalError_UpdateDataError)
    }
    
    /// 添加直播水印失败。
    public static var internalError_WatermarkAddError: TCLiveError {
        TCLiveError(.internalError_WatermarkAddError)
    }
    
    /// 水印修改内部错误。
    public static var internalError_WatermarkEditError: TCLiveError {
        TCLiveError(.internalError_WatermarkEditError)
    }
    
    /// 水印不存在。
    public static var internalError_WatermarkNotExist: TCLiveError {
        TCLiveError(.internalError_WatermarkNotExist)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCLiveError {
        TCLiveError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCLiveError {
        TCLiveError(.invalidParameterValue)
    }
    
    /// 错误的模板名。
    public static var invalidParameter_ArgsNotMatch: TCLiveError {
        TCLiveError(.invalidParameter_ArgsNotMatch)
    }
    
    /// Cos自定义文件名错误。
    public static var invalidParameter_COSCustomFileNameError: TCLiveError {
        TCLiveError(.invalidParameter_COSCustomFileNameError)
    }
    
    /// 取消不存在的会话。
    public static var invalidParameter_CancelSessionNotExist: TCLiveError {
        TCLiveError(.invalidParameter_CancelSessionNotExist)
    }
    
    /// 腾讯云证书托管 ID 错误。
    public static var invalidParameter_CloudCrtIdError: TCLiveError {
        TCLiveError(.invalidParameter_CloudCrtIdError)
    }
    
    /// 赠送的腾讯云域名已过期。
    public static var invalidParameter_CloudDomainIsStop: TCLiveError {
        TCLiveError(.invalidParameter_CloudDomainIsStop)
    }
    
    /// 证书使用中。
    public static var invalidParameter_CrtDateInUsing: TCLiveError {
        TCLiveError(.invalidParameter_CrtDateInUsing)
    }
    
    /// 证书不存在。
    public static var invalidParameter_CrtDateNotFound: TCLiveError {
        TCLiveError(.invalidParameter_CrtDateNotFound)
    }
    
    /// 证书内容不合法。
    public static var invalidParameter_CrtDateNotLegal: TCLiveError {
        TCLiveError(.invalidParameter_CrtDateNotLegal)
    }
    
    /// 证书过期。
    public static var invalidParameter_CrtDateOverdue: TCLiveError {
        TCLiveError(.invalidParameter_CrtDateOverdue)
    }
    
    /// 证书没有相关域名。
    public static var invalidParameter_CrtDomainNotFound: TCLiveError {
        TCLiveError(.invalidParameter_CrtDomainNotFound)
    }
    
    /// 证书 Key 不匹配。
    public static var invalidParameter_CrtKeyNotMatch: TCLiveError {
        TCLiveError(.invalidParameter_CrtKeyNotMatch)
    }
    
    /// 证书内容或者私钥未提供。
    public static var invalidParameter_CrtOrKeyNotExist: TCLiveError {
        TCLiveError(.invalidParameter_CrtOrKeyNotExist)
    }
    
    /// 域名已经存在。
    public static var invalidParameter_DomainAlreadyExist: TCLiveError {
        TCLiveError(.invalidParameter_DomainAlreadyExist)
    }
    
    /// 域名格式错误，请输入合法格式域名。
    public static var invalidParameter_DomainFormatError: TCLiveError {
        TCLiveError(.invalidParameter_DomainFormatError)
    }
    
    /// 当前域名在黑名单中。
    ///
    /// 重新其他填写域名。
    public static var invalidParameter_DomainHitBlackList: TCLiveError {
        TCLiveError(.invalidParameter_DomainHitBlackList)
    }
    
    /// 使用黑名单域名。
    public static var invalidParameter_DomainIsFamous: TCLiveError {
        TCLiveError(.invalidParameter_DomainIsFamous)
    }
    
    /// 域名受限，请提交工单，申请解除限制。
    public static var invalidParameter_DomainIsLimited: TCLiveError {
        TCLiveError(.invalidParameter_DomainIsLimited)
    }
    
    /// 域名长度超过限制。
    public static var invalidParameter_DomainTooLong: TCLiveError {
        TCLiveError(.invalidParameter_DomainTooLong)
    }
    
    public static var invalidParameter_GopMustEqualAndExists: TCLiveError {
        TCLiveError(.invalidParameter_GopMustEqualAndExists)
    }
    
    /// 输入数目超出限制。
    public static var invalidParameter_InputNumLimitExceeded: TCLiveError {
        TCLiveError(.invalidParameter_InputNumLimitExceeded)
    }
    
    /// 非法的背景长宽。
    public static var invalidParameter_InvalidBackgroudResolution: TCLiveError {
        TCLiveError(.invalidParameter_InvalidBackgroudResolution)
    }
    
    /// 非法的输出码率。
    public static var invalidParameter_InvalidBitrate: TCLiveError {
        TCLiveError(.invalidParameter_InvalidBitrate)
    }
    
    /// 回调地址不规范。
    public static var invalidParameter_InvalidCallbackUrl: TCLiveError {
        TCLiveError(.invalidParameter_InvalidCallbackUrl)
    }
    
    /// 裁剪区域溢出原始图片。
    public static var invalidParameter_InvalidCropParam: TCLiveError {
        TCLiveError(.invalidParameter_InvalidCropParam)
    }
    
    /// 图层参数错误。
    public static var invalidParameter_InvalidLayerParam: TCLiveError {
        TCLiveError(.invalidParameter_InvalidLayerParam)
    }
    
    /// 输出流 ID 被占用。
    public static var invalidParameter_InvalidOutputStreamID: TCLiveError {
        TCLiveError(.invalidParameter_InvalidOutputStreamID)
    }
    
    /// 非法输出类型，检查 OutputPram-StreamId 与 OutputType 是否匹配。
    public static var invalidParameter_InvalidOutputType: TCLiveError {
        TCLiveError(.invalidParameter_InvalidOutputType)
    }
    
    /// 水印 ID 未设置。
    public static var invalidParameter_InvalidPictureID: TCLiveError {
        TCLiveError(.invalidParameter_InvalidPictureID)
    }
    
    /// 非法的圆角矩形圆角半径。
    public static var invalidParameter_InvalidRoundRectRadius: TCLiveError {
        TCLiveError(.invalidParameter_InvalidRoundRectRadius)
    }
    
    /// 源地址不规范。
    public static var invalidParameter_InvalidSourceUrl: TCLiveError {
        TCLiveError(.invalidParameter_InvalidSourceUrl)
    }
    
    /// 任务时间超出限制。
    public static var invalidParameter_InvalidTaskTime: TCLiveError {
        TCLiveError(.invalidParameter_InvalidTaskTime)
    }
    
    /// 目标地址不规范。
    public static var invalidParameter_InvalidToUrl: TCLiveError {
        TCLiveError(.invalidParameter_InvalidToUrl)
    }
    
    /// 错误的VodFileName。
    public static var invalidParameter_InvalidVodFileName: TCLiveError {
        TCLiveError(.invalidParameter_InvalidVodFileName)
    }
    
    public static var invalidParameter_InvalidWatermark: TCLiveError {
        TCLiveError(.invalidParameter_InvalidWatermark)
    }
    
    /// 当月不允许添加已删除的小程序域名。
    public static var invalidParameter_MpHostDelete: TCLiveError {
        TCLiveError(.invalidParameter_MpHostDelete)
    }
    
    /// 小程序插件没有授权。
    public static var invalidParameter_MpPluginNoUse: TCLiveError {
        TCLiveError(.invalidParameter_MpPluginNoUse)
    }
    
    /// 其他错误。
    public static var invalidParameter_OtherError: TCLiveError {
        TCLiveError(.invalidParameter_OtherError)
    }
    
    /// 同一会话输出流发生变化。
    public static var invalidParameter_SessionOutputStreamChanged: TCLiveError {
        TCLiveError(.invalidParameter_SessionOutputStreamChanged)
    }
    
    /// 任务不存在。
    public static var invalidParameter_TaskNotExist: TCLiveError {
        TCLiveError(.invalidParameter_TaskNotExist)
    }
    
    /// 任务数超过限制。
    public static var invalidParameter_TaskNumMoreThanLimit: TCLiveError {
        TCLiveError(.invalidParameter_TaskNumMoreThanLimit)
    }
    
    /// 模板与输入流条数不匹配。
    public static var invalidParameter_TemplateNotMatchInputNum: TCLiveError {
        TCLiveError(.invalidParameter_TemplateNotMatchInputNum)
    }
    
    /// 外部地址无权限。
    public static var invalidParameter_ToUrlNoPermission: TCLiveError {
        TCLiveError(.invalidParameter_ToUrlNoPermission)
    }
    
    /// 域名解析不正确。
    public static var invalidParameter_UrlNotSafe: TCLiveError {
        TCLiveError(.invalidParameter_UrlNotSafe)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCLiveError {
        TCLiveError(.limitExceeded)
    }
    
    /// 当前并发任务数超限制。
    public static var limitExceeded_MaximumRunningTask: TCLiveError {
        TCLiveError(.limitExceeded_MaximumRunningTask)
    }
    
    /// 当天已创建任务数超限制。
    public static var limitExceeded_MaximumTask: TCLiveError {
        TCLiveError(.limitExceeded_MaximumTask)
    }
    
    /// 请参考ssl证书-获取证书详情(https://cloud.tencent.com/document/api/400/41673)
    public static var limitExceeded_RateLimitExceeded: TCLiveError {
        TCLiveError(.limitExceeded_RateLimitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCLiveError {
        TCLiveError(.missingParameter)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCLiveError {
        TCLiveError(.resourceInUse)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCLiveError {
        TCLiveError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCLiveError {
        TCLiveError(.resourceNotFound)
    }
    
    /// 日志下载 URL 不存在。
    public static var resourceNotFound_CdnLogEmpty: TCLiveError {
        TCLiveError(.resourceNotFound_CdnLogEmpty)
    }
    
    /// 日志主题不存在。
    public static var resourceNotFound_CdnThemeEmpty: TCLiveError {
        TCLiveError(.resourceNotFound_CdnThemeEmpty)
    }
    
    /// 频道不存在。
    public static var resourceNotFound_ChannelNotExist: TCLiveError {
        TCLiveError(.resourceNotFound_ChannelNotExist)
    }
    
    /// 证书不存在。
    public static var resourceNotFound_CrtDateNotFound: TCLiveError {
        TCLiveError(.resourceNotFound_CrtDateNotFound)
    }
    
    /// 未找到证书信息。
    public static var resourceNotFound_CrtDomainNotFound: TCLiveError {
        TCLiveError(.resourceNotFound_CrtDomainNotFound)
    }
    
    /// 域名没有备案。
    public static var resourceNotFound_DomainNoRecord: TCLiveError {
        TCLiveError(.resourceNotFound_DomainNoRecord)
    }
    
    /// 域名不存在或不匹配。
    public static var resourceNotFound_DomainNotExist: TCLiveError {
        TCLiveError(.resourceNotFound_DomainNotExist)
    }
    
    /// 请确认您在使用服务过程中是否有违规内容。
    public static var resourceNotFound_ForbidService: TCLiveError {
        TCLiveError(.resourceNotFound_ForbidService)
    }
    
    /// 用户长时间未使用，服务已被冻结，请提工单恢复。
    public static var resourceNotFound_FreezeService: TCLiveError {
        TCLiveError(.resourceNotFound_FreezeService)
    }
    
    /// 用户不支持此接口。
    public static var resourceNotFound_InvalidUser: TCLiveError {
        TCLiveError(.resourceNotFound_InvalidUser)
    }
    
    /// 播放域名不存在。
    public static var resourceNotFound_PlayDomainNoRecord: TCLiveError {
        TCLiveError(.resourceNotFound_PlayDomainNoRecord)
    }
    
    /// 推流域名不存在。
    public static var resourceNotFound_PushDomainNoRecord: TCLiveError {
        TCLiveError(.resourceNotFound_PushDomainNoRecord)
    }
    
    /// 账号停服，请先冲正开通服务后再操作。
    public static var resourceNotFound_StopService: TCLiveError {
        TCLiveError(.resourceNotFound_StopService)
    }
    
    /// TaskId 不存在。
    public static var resourceNotFound_TaskId: TCLiveError {
        TCLiveError(.resourceNotFound_TaskId)
    }
    
    /// 用户主动停服，可重新开通。
    public static var resourceNotFound_UserDisableService: TCLiveError {
        TCLiveError(.resourceNotFound_UserDisableService)
    }
    
    /// 用户未注册直播。
    public static var resourceNotFound_UserNotExist: TCLiveError {
        TCLiveError(.resourceNotFound_UserNotExist)
    }
    
    /// 用户不存在。
    public static var resourceNotFound_UserNotFount: TCLiveError {
        TCLiveError(.resourceNotFound_UserNotFount)
    }
    
    /// 水印不存在。
    public static var resourceNotFound_WatermarkNotExist: TCLiveError {
        TCLiveError(.resourceNotFound_WatermarkNotExist)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCLiveError {
        TCLiveError(.resourceUnavailable)
    }
    
    /// 点播未开服。
    public static var resourceUnavailable_InvalidVodStatus: TCLiveError {
        TCLiveError(.resourceUnavailable_InvalidVodStatus)
    }
    
    /// 推流不存在。
    public static var resourceUnavailable_StreamNotExist: TCLiveError {
        TCLiveError(.resourceUnavailable_StreamNotExist)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCLiveError {
        TCLiveError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCLiveError {
        TCLiveError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCLiveError {
        TCLiveError(.unsupportedOperation)
    }
    
    /// 非直播码/新版控制台模式。
    ///
    /// 请升级至新版直播控制台
    public static var unsupportedOperation_NotLVBCodeMode: TCLiveError {
        TCLiveError(.unsupportedOperation_NotLVBCodeMode)
    }
}

extension TCLiveError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, LimitExceeded.self, ResourceNotFound.self, ResourceUnavailable.self, UnsupportedOperation.self]
    }
}

extension TCLiveError: Equatable {
    public static func == (lhs: TCLiveError, rhs: TCLiveError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCLiveError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCLiveError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
