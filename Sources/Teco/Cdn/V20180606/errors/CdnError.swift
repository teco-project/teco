public struct TCCdnError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_InvalidAuthorization = "AuthFailure.InvalidAuthorization"
        case failedOperation = "FailedOperation"
        case failedOperation_CdnConfigError = "FailedOperation.CdnConfigError"
        case internalError = "InternalError"
        case internalError_CamSystemError = "InternalError.CamSystemError"
        case internalError_CdnConfigError = "InternalError.CdnConfigError"
        case internalError_CdnDbError = "InternalError.CdnDbError"
        case internalError_CdnQueryParamError = "InternalError.CdnQueryParamError"
        case internalError_CdnQuerySystemError = "InternalError.CdnQuerySystemError"
        case internalError_CdnSystemError = "InternalError.CdnSystemError"
        case internalError_ClsInternalError = "InternalError.ClsInternalError"
        case internalError_CostDataSystemError = "InternalError.CostDataSystemError"
        case internalError_DataSystemError = "InternalError.DataSystemError"
        case internalError_Error = "InternalError.Error"
        case internalError_InvalidErrorCode = "InternalError.InvalidErrorCode"
        case internalError_ProxyServer = "InternalError.ProxyServer"
        case internalError_RouteError = "InternalError.RouteError"
        case internalError_ScdnUserNoPackage = "InternalError.ScdnUserNoPackage"
        case internalError_ScdnUserSuspend = "InternalError.ScdnUserSuspend"
        case internalError_SystemDBError = "InternalError.SystemDBError"
        case internalError_SystemError = "InternalError.SystemError"
        case internalError_TagSystemError = "InternalError.TagSystemError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_AccessPortOpenedHttps = "InvalidParameter.AccessPortOpenedHttps"
        case invalidParameter_BandLimitRequiredMainland = "InvalidParameter.BandLimitRequiredMainland"
        case invalidParameter_BandwidthAlertCounterMeasureConflictOriginType = "InvalidParameter.BandwidthAlertCounterMeasureConflictOriginType"
        case invalidParameter_CDNStatusInvalidDomain = "InvalidParameter.CDNStatusInvalidDomain"
        case invalidParameter_CamResourceBelongToDifferentUser = "InvalidParameter.CamResourceBelongToDifferentUser"
        case invalidParameter_CamResourceSixStageError = "InvalidParameter.CamResourceSixStageError"
        case invalidParameter_CamTagKeyAlreadyAttached = "InvalidParameter.CamTagKeyAlreadyAttached"
        case invalidParameter_CamTagKeyIllegal = "InvalidParameter.CamTagKeyIllegal"
        case invalidParameter_CamTagKeyNotExist = "InvalidParameter.CamTagKeyNotExist"
        case invalidParameter_CamTagValueIllegal = "InvalidParameter.CamTagValueIllegal"
        case invalidParameter_CdnCertInfoNotFound = "InvalidParameter.CdnCertInfoNotFound"
        case invalidParameter_CdnCertNoCertInfo = "InvalidParameter.CdnCertNoCertInfo"
        case invalidParameter_CdnCertNotPem = "InvalidParameter.CdnCertNotPem"
        case invalidParameter_CdnClsDuplicateTopic = "InvalidParameter.CdnClsDuplicateTopic"
        case invalidParameter_CdnClsTopicNameInvalid = "InvalidParameter.CdnClsTopicNameInvalid"
        case invalidParameter_CdnClsTopicNotExist = "InvalidParameter.CdnClsTopicNotExist"
        case invalidParameter_CdnConfigInvalidCache = "InvalidParameter.CdnConfigInvalidCache"
        case invalidParameter_CdnConfigInvalidHost = "InvalidParameter.CdnConfigInvalidHost"
        case invalidParameter_CdnConfigInvalidTag = "InvalidParameter.CdnConfigInvalidTag"
        case invalidParameter_CdnConfigTagRequired = "InvalidParameter.CdnConfigTagRequired"
        case invalidParameter_CdnHostHasSpecialConfig = "InvalidParameter.CdnHostHasSpecialConfig"
        case invalidParameter_CdnHostInternalHost = "InvalidParameter.CdnHostInternalHost"
        case invalidParameter_CdnHostInvalidMiddleConfig = "InvalidParameter.CdnHostInvalidMiddleConfig"
        case invalidParameter_CdnHostInvalidParam = "InvalidParameter.CdnHostInvalidParam"
        case invalidParameter_CdnHostInvalidStatus = "InvalidParameter.CdnHostInvalidStatus"
        case invalidParameter_CdnHostIsCosDefaultAccess = "InvalidParameter.CdnHostIsCosDefaultAccess"
        case invalidParameter_CdnHostTooLongHost = "InvalidParameter.CdnHostTooLongHost"
        case invalidParameter_CdnInterfaceError = "InvalidParameter.CdnInterfaceError"
        case invalidParameter_CdnInvalidParamInterval = "InvalidParameter.CdnInvalidParamInterval"
        case invalidParameter_CdnInvalidParamMetric = "InvalidParameter.CdnInvalidParamMetric"
        case invalidParameter_CdnInvalidParamServiceType = "InvalidParameter.CdnInvalidParamServiceType"
        case invalidParameter_CdnKeyRulesExcludeCustomRequiresFullLego = "InvalidParameter.CdnKeyRulesExcludeCustomRequiresFullLego"
        case invalidParameter_CdnKeyRulesInvalidQueryStringValue = "InvalidParameter.CdnKeyRulesInvalidQueryStringValue"
        case invalidParameter_CdnParamError = "InvalidParameter.CdnParamError"
        case invalidParameter_CdnPurgeWildcardNotAllowed = "InvalidParameter.CdnPurgeWildcardNotAllowed"
        case invalidParameter_CdnPushWildcardNotAllowed = "InvalidParameter.CdnPushWildcardNotAllowed"
        case invalidParameter_CdnStatInvalidDate = "InvalidParameter.CdnStatInvalidDate"
        case invalidParameter_CdnStatInvalidFilter = "InvalidParameter.CdnStatInvalidFilter"
        case invalidParameter_CdnStatInvalidMetric = "InvalidParameter.CdnStatInvalidMetric"
        case invalidParameter_CdnStatInvalidProjectId = "InvalidParameter.CdnStatInvalidProjectId"
        case invalidParameter_CdnStatTooManyDomains = "InvalidParameter.CdnStatTooManyDomains"
        case invalidParameter_CdnUrlExceedLength = "InvalidParameter.CdnUrlExceedLength"
        case invalidParameter_ClsIndexConflict = "InvalidParameter.ClsIndexConflict"
        case invalidParameter_ClsIndexRuleEmpty = "InvalidParameter.ClsIndexRuleEmpty"
        case invalidParameter_ClsInvalidContent = "InvalidParameter.ClsInvalidContent"
        case invalidParameter_ClsInvalidContentType = "InvalidParameter.ClsInvalidContentType"
        case invalidParameter_ClsInvalidParam = "InvalidParameter.ClsInvalidParam"
        case invalidParameter_ClsLogsetConflict = "InvalidParameter.ClsLogsetConflict"
        case invalidParameter_ClsLogsetEmpty = "InvalidParameter.ClsLogsetEmpty"
        case invalidParameter_ClsLogsetNotEmpty = "InvalidParameter.ClsLogsetNotEmpty"
        case invalidParameter_ClsMissingAuthorization = "InvalidParameter.ClsMissingAuthorization"
        case invalidParameter_ClsMissingContent = "InvalidParameter.ClsMissingContent"
        case invalidParameter_ClsSyntaxError = "InvalidParameter.ClsSyntaxError"
        case invalidParameter_ClsTopicClosed = "InvalidParameter.ClsTopicClosed"
        case invalidParameter_ClsTopicConflict = "InvalidParameter.ClsTopicConflict"
        case invalidParameter_EcdnInterfaceError = "InvalidParameter.EcdnInterfaceError"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case invalidParameter_PathRegexTooManySubPattern = "InvalidParameter.PathRegexTooManySubPattern"
        case invalidParameter_RemoteAuthInvalidPlatform = "InvalidParameter.RemoteAuthInvalidPlatform"
        case invalidParameter_RemoteAuthInvalidProtocol = "InvalidParameter.RemoteAuthInvalidProtocol"
        case invalidParameter_ScdnLogTaskExpired = "InvalidParameter.ScdnLogTaskExpired"
        case invalidParameter_ScdnLogTaskNotFoundOrNotFail = "InvalidParameter.ScdnLogTaskNotFoundOrNotFail"
        case invalidParameter_ScdnLogTaskTimeRangeInvalid = "InvalidParameter.ScdnLogTaskTimeRangeInvalid"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_CamResourceArrayTooLong = "LimitExceeded.CamResourceArrayTooLong"
        case limitExceeded_CamResourceTooManyTagKey = "LimitExceeded.CamResourceTooManyTagKey"
        case limitExceeded_CamTagKeyTooLong = "LimitExceeded.CamTagKeyTooLong"
        case limitExceeded_CamTagKeyTooManyTagValue = "LimitExceeded.CamTagKeyTooManyTagValue"
        case limitExceeded_CamTagQuotaExceedLimit = "LimitExceeded.CamTagQuotaExceedLimit"
        case limitExceeded_CamUserTooManyTagKey = "LimitExceeded.CamUserTooManyTagKey"
        case limitExceeded_CdnCallingQueryIpTooOften = "LimitExceeded.CdnCallingQueryIpTooOften"
        case limitExceeded_CdnClsTooManyTopics = "LimitExceeded.CdnClsTooManyTopics"
        case limitExceeded_CdnConfigTooManyCacheRules = "LimitExceeded.CdnConfigTooManyCacheRules"
        case limitExceeded_CdnHostOpTooOften = "LimitExceeded.CdnHostOpTooOften"
        case limitExceeded_CdnPurgePathExceedBatchLimit = "LimitExceeded.CdnPurgePathExceedBatchLimit"
        case limitExceeded_CdnPurgePathExceedDayLimit = "LimitExceeded.CdnPurgePathExceedDayLimit"
        case limitExceeded_CdnPurgeUrlExceedBatchLimit = "LimitExceeded.CdnPurgeUrlExceedBatchLimit"
        case limitExceeded_CdnPurgeUrlExceedDayLimit = "LimitExceeded.CdnPurgeUrlExceedDayLimit"
        case limitExceeded_CdnPushExceedBatchLimit = "LimitExceeded.CdnPushExceedBatchLimit"
        case limitExceeded_CdnPushExceedDayLimit = "LimitExceeded.CdnPushExceedDayLimit"
        case limitExceeded_CdnQueryIpBatchTooMany = "LimitExceeded.CdnQueryIpBatchTooMany"
        case limitExceeded_CdnUserTooManyHosts = "LimitExceeded.CdnUserTooManyHosts"
        case limitExceeded_ClsLogSizeExceed = "LimitExceeded.ClsLogSizeExceed"
        case limitExceeded_ClsLogsetExceed = "LimitExceeded.ClsLogsetExceed"
        case limitExceeded_ClsTopicExceed = "LimitExceeded.ClsTopicExceed"
        case limitExceeded_ScdnLogTaskExceedDayLimit = "LimitExceeded.ScdnLogTaskExceedDayLimit"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse_CdnConflictHostExists = "ResourceInUse.CdnConflictHostExists"
        case resourceInUse_CdnHostExists = "ResourceInUse.CdnHostExists"
        case resourceInUse_CdnOpInProgress = "ResourceInUse.CdnOpInProgress"
        case resourceInUse_TcbHostExists = "ResourceInUse.TcbHostExists"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_CamTagKeyNotExist = "ResourceNotFound.CamTagKeyNotExist"
        case resourceNotFound_CdnHostNotExists = "ResourceNotFound.CdnHostNotExists"
        case resourceNotFound_CdnProjectNotExists = "ResourceNotFound.CdnProjectNotExists"
        case resourceNotFound_CdnUserNotExists = "ResourceNotFound.CdnUserNotExists"
        case resourceNotFound_CdnUserTooManyHosts = "ResourceNotFound.CdnUserTooManyHosts"
        case resourceNotFound_ClsIndexNotExist = "ResourceNotFound.ClsIndexNotExist"
        case resourceNotFound_ClsLogsetNotExist = "ResourceNotFound.ClsLogsetNotExist"
        case resourceNotFound_ClsTopicNotExist = "ResourceNotFound.ClsTopicNotExist"
        case resourceNotFound_EcdnDomainNotExists = "ResourceNotFound.EcdnDomainNotExists"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_CdnHostBelongsToOthersInMainland = "ResourceUnavailable.CdnHostBelongsToOthersInMainland"
        case resourceUnavailable_CdnHostBelongsToOthersInOverseas = "ResourceUnavailable.CdnHostBelongsToOthersInOverseas"
        case resourceUnavailable_CdnHostExistsInDsa = "ResourceUnavailable.CdnHostExistsInDsa"
        case resourceUnavailable_CdnHostExistsInTcb = "ResourceUnavailable.CdnHostExistsInTcb"
        case resourceUnavailable_CdnHostIsLocked = "ResourceUnavailable.CdnHostIsLocked"
        case resourceUnavailable_CdnHostIsMalicious = "ResourceUnavailable.CdnHostIsMalicious"
        case resourceUnavailable_CdnHostIsNotOffline = "ResourceUnavailable.CdnHostIsNotOffline"
        case resourceUnavailable_CdnHostIsNotOnline = "ResourceUnavailable.CdnHostIsNotOnline"
        case resourceUnavailable_CdnHostNoIcp = "ResourceUnavailable.CdnHostNoIcp"
        case resourceUnavailable_HostExistInVod = "ResourceUnavailable.HostExistInVod"
        case resourceUnavailable_ScdnUserNoPackage = "ResourceUnavailable.ScdnUserNoPackage"
        case resourceUnavailable_ScdnUserSuspend = "ResourceUnavailable.ScdnUserSuspend"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_CdnAccountUnauthorized = "UnauthorizedOperation.CdnAccountUnauthorized"
        case unauthorizedOperation_CdnCamUnauthorized = "UnauthorizedOperation.CdnCamUnauthorized"
        case unauthorizedOperation_CdnClsNotRegistered = "UnauthorizedOperation.CdnClsNotRegistered"
        case unauthorizedOperation_CdnDomainRecordNotVerified = "UnauthorizedOperation.CdnDomainRecordNotVerified"
        case unauthorizedOperation_CdnHostExistsInInternal = "UnauthorizedOperation.CdnHostExistsInInternal"
        case unauthorizedOperation_CdnHostInIcpBlacklist = "UnauthorizedOperation.CdnHostInIcpBlacklist"
        case unauthorizedOperation_CdnHostIsOwnedByOther = "UnauthorizedOperation.CdnHostIsOwnedByOther"
        case unauthorizedOperation_CdnHostIsToApplyHost = "UnauthorizedOperation.CdnHostIsToApplyHost"
        case unauthorizedOperation_CdnHostIsUsedByOther = "UnauthorizedOperation.CdnHostIsUsedByOther"
        case unauthorizedOperation_CdnHostUnauthorized = "UnauthorizedOperation.CdnHostUnauthorized"
        case unauthorizedOperation_CdnInvalidUserStatus = "UnauthorizedOperation.CdnInvalidUserStatus"
        case unauthorizedOperation_CdnProjectUnauthorized = "UnauthorizedOperation.CdnProjectUnauthorized"
        case unauthorizedOperation_CdnTagUnauthorized = "UnauthorizedOperation.CdnTagUnauthorized"
        case unauthorizedOperation_CdnTxtRecordValueNotMatch = "UnauthorizedOperation.CdnTxtRecordValueNotMatch"
        case unauthorizedOperation_CdnUserAuthFail = "UnauthorizedOperation.CdnUserAuthFail"
        case unauthorizedOperation_CdnUserAuthWait = "UnauthorizedOperation.CdnUserAuthWait"
        case unauthorizedOperation_CdnUserInvalidCredential = "UnauthorizedOperation.CdnUserInvalidCredential"
        case unauthorizedOperation_CdnUserIsIsolated = "UnauthorizedOperation.CdnUserIsIsolated"
        case unauthorizedOperation_CdnUserIsSuspended = "UnauthorizedOperation.CdnUserIsSuspended"
        case unauthorizedOperation_CdnUserNoWhitelist = "UnauthorizedOperation.CdnUserNoWhitelist"
        case unauthorizedOperation_ClsInvalidAuthorization = "UnauthorizedOperation.ClsInvalidAuthorization"
        case unauthorizedOperation_ClsServiceNotActivated = "UnauthorizedOperation.ClsServiceNotActivated"
        case unauthorizedOperation_ClsUnauthorized = "UnauthorizedOperation.ClsUnauthorized"
        case unauthorizedOperation_CsrfError = "UnauthorizedOperation.CsrfError"
        case unauthorizedOperation_DomainEmpty = "UnauthorizedOperation.DomainEmpty"
        case unauthorizedOperation_EcdnMigratedCdn = "UnauthorizedOperation.EcdnMigratedCdn"
        case unauthorizedOperation_NoPermission = "UnauthorizedOperation.NoPermission"
        case unauthorizedOperation_OpNoAuth = "UnauthorizedOperation.OpNoAuth"
        case unauthorizedOperation_OperationTooOften = "UnauthorizedOperation.OperationTooOften"
        case unauthorizedOperation_Unknown = "UnauthorizedOperation.Unknown"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_ClsNotAllowed = "UnsupportedOperation.ClsNotAllowed"
        case unsupportedOperation_OpNoAuth = "UnsupportedOperation.OpNoAuth"
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
    public static var authFailure: TCCdnError {
        TCCdnError(.authFailure)
    }
    
    /// 鉴权错误，请确认后重试。
    public static var authFailure_InvalidAuthorization: TCCdnError {
        TCCdnError(.authFailure_InvalidAuthorization)
    }
    
    /// 操作失败。
    public static var failedOperation: TCCdnError {
        TCCdnError(.failedOperation)
    }
    
    /// 域名配置更新操作失败，请重试或联系客服人员解决。
    public static var failedOperation_CdnConfigError: TCCdnError {
        TCCdnError(.failedOperation_CdnConfigError)
    }
    
    /// 内部错误。
    public static var internalError: TCCdnError {
        TCCdnError(.internalError)
    }
    
    /// 内部鉴权系统错误。
    public static var internalError_CamSystemError: TCCdnError {
        TCCdnError(.internalError_CamSystemError)
    }
    
    /// 域名配置更新失败。
    public static var internalError_CdnConfigError: TCCdnError {
        TCCdnError(.internalError_CdnConfigError)
    }
    
    /// 内部数据错误，请联系腾讯云工程师进一步排查。
    public static var internalError_CdnDbError: TCCdnError {
        TCCdnError(.internalError_CdnDbError)
    }
    
    /// 内部查询错误，请重试或联系客服人员解决。
    public static var internalError_CdnQueryParamError: TCCdnError {
        TCCdnError(.internalError_CdnQueryParamError)
    }
    
    /// 内部查询错误，请重试或联系客服人员解决。
    public static var internalError_CdnQuerySystemError: TCCdnError {
        TCCdnError(.internalError_CdnQuerySystemError)
    }
    
    /// 系统错误，请联系腾讯云工程师进一步排查。
    public static var internalError_CdnSystemError: TCCdnError {
        TCCdnError(.internalError_CdnSystemError)
    }
    
    /// 日志服务内部错误。
    public static var internalError_ClsInternalError: TCCdnError {
        TCCdnError(.internalError_ClsInternalError)
    }
    
    /// 计费数据内部查询错误，请重试或联系客服人员解决。
    public static var internalError_CostDataSystemError: TCCdnError {
        TCCdnError(.internalError_CostDataSystemError)
    }
    
    /// 数据查询错误，请联系腾讯云工程师进一步排查。
    public static var internalError_DataSystemError: TCCdnError {
        TCCdnError(.internalError_DataSystemError)
    }
    
    /// 内部服务错误，请联系腾讯云工程师进一步排查。
    public static var internalError_Error: TCCdnError {
        TCCdnError(.internalError_Error)
    }
    
    /// 内部服务错误，请联系腾讯云工程师进一步排查。
    public static var internalError_InvalidErrorCode: TCCdnError {
        TCCdnError(.internalError_InvalidErrorCode)
    }
    
    /// 内部服务错误，请联系腾讯云工程师进一步排查。
    public static var internalError_ProxyServer: TCCdnError {
        TCCdnError(.internalError_ProxyServer)
    }
    
    /// 内部服务错误，请联系腾讯云工程师进一步排查。
    public static var internalError_RouteError: TCCdnError {
        TCCdnError(.internalError_RouteError)
    }
    
    /// SCDN服务未生效，请购买或续费SCDN套餐后重试。
    public static var internalError_ScdnUserNoPackage: TCCdnError {
        TCCdnError(.internalError_ScdnUserNoPackage)
    }
    
    /// 安全加速服务已停服，请重新购买套餐后开启。
    public static var internalError_ScdnUserSuspend: TCCdnError {
        TCCdnError(.internalError_ScdnUserSuspend)
    }
    
    /// 内部数据错误，请重试或联系客服人员解决。
    public static var internalError_SystemDBError: TCCdnError {
        TCCdnError(.internalError_SystemDBError)
    }
    
    /// 内部服务错误，请联系腾讯云工程师进一步排查。
    public static var internalError_SystemError: TCCdnError {
        TCCdnError(.internalError_SystemError)
    }
    
    /// 标签内部错误，请重试或联系客服人员解决。
    public static var internalError_TagSystemError: TCCdnError {
        TCCdnError(.internalError_TagSystemError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCCdnError {
        TCCdnError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCCdnError {
        TCCdnError(.invalidParameterValue)
    }
    
    /// 域名启用 HTTPS 配置需保持访问端口配置-443端口为开启状态。
    public static var invalidParameter_AccessPortOpenedHttps: TCCdnError {
        TCCdnError(.invalidParameter_AccessPortOpenedHttps)
    }
    
    /// 请删除域名的限流管理配置后再切换加速区域。
    public static var invalidParameter_BandLimitRequiredMainland: TCCdnError {
        TCCdnError(.invalidParameter_BandLimitRequiredMainland)
    }
    
    /// 源站类型为COS源或第三方对象存储的域名，用量封顶-超出阈值的处理方式仅支持访问返回404，请修改该配置后重试。
    public static var invalidParameter_BandwidthAlertCounterMeasureConflictOriginType: TCCdnError {
        TCCdnError(.invalidParameter_BandwidthAlertCounterMeasureConflictOriginType)
    }
    
    /// 域名状态不合法。
    public static var invalidParameter_CDNStatusInvalidDomain: TCCdnError {
        TCCdnError(.invalidParameter_CDNStatusInvalidDomain)
    }
    
    /// 同一次请求的资源AppId不一致。
    public static var invalidParameter_CamResourceBelongToDifferentUser: TCCdnError {
        TCCdnError(.invalidParameter_CamResourceBelongToDifferentUser)
    }
    
    /// 资源六段式标记参数错误。
    public static var invalidParameter_CamResourceSixStageError: TCCdnError {
        TCCdnError(.invalidParameter_CamResourceSixStageError)
    }
    
    /// 域名已与该标签关联，请勿重复操作。
    public static var invalidParameter_CamTagKeyAlreadyAttached: TCCdnError {
        TCCdnError(.invalidParameter_CamTagKeyAlreadyAttached)
    }
    
    /// 标签键字符不合法。
    public static var invalidParameter_CamTagKeyIllegal: TCCdnError {
        TCCdnError(.invalidParameter_CamTagKeyIllegal)
    }
    
    /// 标签键不存在。
    public static var invalidParameter_CamTagKeyNotExist: TCCdnError {
        TCCdnError(.invalidParameter_CamTagKeyNotExist)
    }
    
    /// 标签值字符不合法。
    public static var invalidParameter_CamTagValueIllegal: TCCdnError {
        TCCdnError(.invalidParameter_CamTagValueIllegal)
    }
    
    /// 证书信息不存在或非法，请确认后重试。
    public static var invalidParameter_CdnCertInfoNotFound: TCCdnError {
        TCCdnError(.invalidParameter_CdnCertInfoNotFound)
    }
    
    /// 证书无效，请确认后重试。
    public static var invalidParameter_CdnCertNoCertInfo: TCCdnError {
        TCCdnError(.invalidParameter_CdnCertNoCertInfo)
    }
    
    /// HTTPS证书无效。
    public static var invalidParameter_CdnCertNotPem: TCCdnError {
        TCCdnError(.invalidParameter_CdnCertNotPem)
    }
    
    /// 存在重复主题。
    public static var invalidParameter_CdnClsDuplicateTopic: TCCdnError {
        TCCdnError(.invalidParameter_CdnClsDuplicateTopic)
    }
    
    /// 主题名字不合法。
    public static var invalidParameter_CdnClsTopicNameInvalid: TCCdnError {
        TCCdnError(.invalidParameter_CdnClsTopicNameInvalid)
    }
    
    /// CLS主题不存在。
    public static var invalidParameter_CdnClsTopicNotExist: TCCdnError {
        TCCdnError(.invalidParameter_CdnClsTopicNotExist)
    }
    
    /// 缓存配置不合法，请确认后重试。
    public static var invalidParameter_CdnConfigInvalidCache: TCCdnError {
        TCCdnError(.invalidParameter_CdnConfigInvalidCache)
    }
    
    /// 域名不符合规范，请确认域名是否符合规范。
    public static var invalidParameter_CdnConfigInvalidHost: TCCdnError {
        TCCdnError(.invalidParameter_CdnConfigInvalidHost)
    }
    
    /// 标签配置不合法。
    public static var invalidParameter_CdnConfigInvalidTag: TCCdnError {
        TCCdnError(.invalidParameter_CdnConfigInvalidTag)
    }
    
    /// 域名添加失败，当前域名必须选择标签，请确认后重试。
    public static var invalidParameter_CdnConfigTagRequired: TCCdnError {
        TCCdnError(.invalidParameter_CdnConfigTagRequired)
    }
    
    /// 域名拥有特殊配置，需人工处理。
    public static var invalidParameter_CdnHostHasSpecialConfig: TCCdnError {
        TCCdnError(.invalidParameter_CdnHostHasSpecialConfig)
    }
    
    /// 该域名属于指定账号域名，不允许接入。
    public static var invalidParameter_CdnHostInternalHost: TCCdnError {
        TCCdnError(.invalidParameter_CdnHostInternalHost)
    }
    
    /// 错误的中间源配置。
    public static var invalidParameter_CdnHostInvalidMiddleConfig: TCCdnError {
        TCCdnError(.invalidParameter_CdnHostInvalidMiddleConfig)
    }
    
    /// 域名格式不合法，请确认后重试。
    public static var invalidParameter_CdnHostInvalidParam: TCCdnError {
        TCCdnError(.invalidParameter_CdnHostInvalidParam)
    }
    
    /// 域名状态不合法。
    public static var invalidParameter_CdnHostInvalidStatus: TCCdnError {
        TCCdnError(.invalidParameter_CdnHostInvalidStatus)
    }
    
    /// 该域名为COS访问域名，无法接入，如需启动加速服务，请前往COS控制台启用默认 CDN 加速域。
    public static var invalidParameter_CdnHostIsCosDefaultAccess: TCCdnError {
        TCCdnError(.invalidParameter_CdnHostIsCosDefaultAccess)
    }
    
    /// 域名太长。
    public static var invalidParameter_CdnHostTooLongHost: TCCdnError {
        TCCdnError(.invalidParameter_CdnHostTooLongHost)
    }
    
    /// 内部接口错误，请联系腾讯云工程师进一步排查。
    public static var invalidParameter_CdnInterfaceError: TCCdnError {
        TCCdnError(.invalidParameter_CdnInterfaceError)
    }
    
    /// 参数Interval错误，请确认后重试。
    public static var invalidParameter_CdnInvalidParamInterval: TCCdnError {
        TCCdnError(.invalidParameter_CdnInvalidParamInterval)
    }
    
    /// 参数Metric错误，请检查后重试。
    public static var invalidParameter_CdnInvalidParamMetric: TCCdnError {
        TCCdnError(.invalidParameter_CdnInvalidParamMetric)
    }
    
    /// ServiceType字段不合法，请确认后重试。
    public static var invalidParameter_CdnInvalidParamServiceType: TCCdnError {
        TCCdnError(.invalidParameter_CdnInvalidParamServiceType)
    }
    
    /// 配置暂不支持开启该配置。
    public static var invalidParameter_CdnKeyRulesExcludeCustomRequiresFullLego: TCCdnError {
        TCCdnError(.invalidParameter_CdnKeyRulesExcludeCustomRequiresFullLego)
    }
    
    /// QueryString字段不合法，请确认后重试。
    public static var invalidParameter_CdnKeyRulesInvalidQueryStringValue: TCCdnError {
        TCCdnError(.invalidParameter_CdnKeyRulesInvalidQueryStringValue)
    }
    
    /// 参数错误，请参考文档中示例参数填充。
    public static var invalidParameter_CdnParamError: TCCdnError {
        TCCdnError(.invalidParameter_CdnParamError)
    }
    
    /// 刷新不支持泛域名。
    public static var invalidParameter_CdnPurgeWildcardNotAllowed: TCCdnError {
        TCCdnError(.invalidParameter_CdnPurgeWildcardNotAllowed)
    }
    
    /// 预热不支持泛域名。
    public static var invalidParameter_CdnPushWildcardNotAllowed: TCCdnError {
        TCCdnError(.invalidParameter_CdnPushWildcardNotAllowed)
    }
    
    /// 日期不合法，请参考文档中日期示例。
    public static var invalidParameter_CdnStatInvalidDate: TCCdnError {
        TCCdnError(.invalidParameter_CdnStatInvalidDate)
    }
    
    /// 统计维度不合法，请参考文档中统计分析示例。
    public static var invalidParameter_CdnStatInvalidFilter: TCCdnError {
        TCCdnError(.invalidParameter_CdnStatInvalidFilter)
    }
    
    /// 统计类型不合法，请参考文档中统计分析示例。
    public static var invalidParameter_CdnStatInvalidMetric: TCCdnError {
        TCCdnError(.invalidParameter_CdnStatInvalidMetric)
    }
    
    /// 项目ID错误，请确认后重试。
    public static var invalidParameter_CdnStatInvalidProjectId: TCCdnError {
        TCCdnError(.invalidParameter_CdnStatInvalidProjectId)
    }
    
    /// 查询的域名数量超过限制。
    public static var invalidParameter_CdnStatTooManyDomains: TCCdnError {
        TCCdnError(.invalidParameter_CdnStatTooManyDomains)
    }
    
    /// URL 超过限制长度。
    public static var invalidParameter_CdnUrlExceedLength: TCCdnError {
        TCCdnError(.invalidParameter_CdnUrlExceedLength)
    }
    
    /// 索引冲突。
    public static var invalidParameter_ClsIndexConflict: TCCdnError {
        TCCdnError(.invalidParameter_ClsIndexConflict)
    }
    
    /// 索引规则为空。
    public static var invalidParameter_ClsIndexRuleEmpty: TCCdnError {
        TCCdnError(.invalidParameter_ClsIndexRuleEmpty)
    }
    
    /// 无效内容。
    public static var invalidParameter_ClsInvalidContent: TCCdnError {
        TCCdnError(.invalidParameter_ClsInvalidContent)
    }
    
    /// 无效的Content-Type。
    public static var invalidParameter_ClsInvalidContentType: TCCdnError {
        TCCdnError(.invalidParameter_ClsInvalidContentType)
    }
    
    /// 参数错误，请检查后重试。
    public static var invalidParameter_ClsInvalidParam: TCCdnError {
        TCCdnError(.invalidParameter_ClsInvalidParam)
    }
    
    /// 日志集冲突。
    public static var invalidParameter_ClsLogsetConflict: TCCdnError {
        TCCdnError(.invalidParameter_ClsLogsetConflict)
    }
    
    /// 日志集为空。
    public static var invalidParameter_ClsLogsetEmpty: TCCdnError {
        TCCdnError(.invalidParameter_ClsLogsetEmpty)
    }
    
    /// 日志集非空。
    public static var invalidParameter_ClsLogsetNotEmpty: TCCdnError {
        TCCdnError(.invalidParameter_ClsLogsetNotEmpty)
    }
    
    /// 没有授权信息。
    public static var invalidParameter_ClsMissingAuthorization: TCCdnError {
        TCCdnError(.invalidParameter_ClsMissingAuthorization)
    }
    
    /// 丢失内容。
    public static var invalidParameter_ClsMissingContent: TCCdnError {
        TCCdnError(.invalidParameter_ClsMissingContent)
    }
    
    /// 语法错误。
    public static var invalidParameter_ClsSyntaxError: TCCdnError {
        TCCdnError(.invalidParameter_ClsSyntaxError)
    }
    
    /// 主题已经关闭。
    public static var invalidParameter_ClsTopicClosed: TCCdnError {
        TCCdnError(.invalidParameter_ClsTopicClosed)
    }
    
    /// 主题冲突。
    public static var invalidParameter_ClsTopicConflict: TCCdnError {
        TCCdnError(.invalidParameter_ClsTopicConflict)
    }
    
    /// 内部接口错误，请重试或联系客服人员解决。
    public static var invalidParameter_EcdnInterfaceError: TCCdnError {
        TCCdnError(.invalidParameter_EcdnInterfaceError)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParamError: TCCdnError {
        TCCdnError(.invalidParameter_ParamError)
    }
    
    /// 正则子模式超出上限。
    public static var invalidParameter_PathRegexTooManySubPattern: TCCdnError {
        TCCdnError(.invalidParameter_PathRegexTooManySubPattern)
    }
    
    /// 域名所在平台不支持远程鉴权。
    public static var invalidParameter_RemoteAuthInvalidPlatform: TCCdnError {
        TCCdnError(.invalidParameter_RemoteAuthInvalidPlatform)
    }
    
    /// 域名所在平台不支持使用https协议访问远程鉴权地址。
    public static var invalidParameter_RemoteAuthInvalidProtocol: TCCdnError {
        TCCdnError(.invalidParameter_RemoteAuthInvalidProtocol)
    }
    
    /// 任务已过期,无法重试。
    public static var invalidParameter_ScdnLogTaskExpired: TCCdnError {
        TCCdnError(.invalidParameter_ScdnLogTaskExpired)
    }
    
    /// 任务不存在或任务未失败。
    public static var invalidParameter_ScdnLogTaskNotFoundOrNotFail: TCCdnError {
        TCCdnError(.invalidParameter_ScdnLogTaskNotFoundOrNotFail)
    }
    
    /// 时间范围错误。
    public static var invalidParameter_ScdnLogTaskTimeRangeInvalid: TCCdnError {
        TCCdnError(.invalidParameter_ScdnLogTaskTimeRangeInvalid)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCCdnError {
        TCCdnError(.limitExceeded)
    }
    
    /// 资源数组超过最大值。
    public static var limitExceeded_CamResourceArrayTooLong: TCCdnError {
        TCCdnError(.limitExceeded_CamResourceArrayTooLong)
    }
    
    /// 单个资源标签键数不能超过50。
    public static var limitExceeded_CamResourceTooManyTagKey: TCCdnError {
        TCCdnError(.limitExceeded_CamResourceTooManyTagKey)
    }
    
    /// 标签键长度超过最大值。
    public static var limitExceeded_CamTagKeyTooLong: TCCdnError {
        TCCdnError(.limitExceeded_CamTagKeyTooLong)
    }
    
    /// 单个标签键对应标签值不能超过1000。
    public static var limitExceeded_CamTagKeyTooManyTagValue: TCCdnError {
        TCCdnError(.limitExceeded_CamTagKeyTooManyTagValue)
    }
    
    public static var limitExceeded_CamTagQuotaExceedLimit: TCCdnError {
        TCCdnError(.limitExceeded_CamTagQuotaExceedLimit)
    }
    
    /// 单个用户最多1000个不同的key。
    public static var limitExceeded_CamUserTooManyTagKey: TCCdnError {
        TCCdnError(.limitExceeded_CamUserTooManyTagKey)
    }
    
    /// 查询IP归属操作过于频繁。
    public static var limitExceeded_CdnCallingQueryIpTooOften: TCCdnError {
        TCCdnError(.limitExceeded_CdnCallingQueryIpTooOften)
    }
    
    /// 该账号已经创建了太多主题。
    public static var limitExceeded_CdnClsTooManyTopics: TCCdnError {
        TCCdnError(.limitExceeded_CdnClsTooManyTopics)
    }
    
    /// 缓存配置规则数超出限制。
    public static var limitExceeded_CdnConfigTooManyCacheRules: TCCdnError {
        TCCdnError(.limitExceeded_CdnConfigTooManyCacheRules)
    }
    
    /// 域名操作过于频繁。
    public static var limitExceeded_CdnHostOpTooOften: TCCdnError {
        TCCdnError(.limitExceeded_CdnHostOpTooOften)
    }
    
    /// 刷新的目录数量超过限制。
    public static var limitExceeded_CdnPurgePathExceedBatchLimit: TCCdnError {
        TCCdnError(.limitExceeded_CdnPurgePathExceedBatchLimit)
    }
    
    /// 刷新的目录数量超过每日限制。
    public static var limitExceeded_CdnPurgePathExceedDayLimit: TCCdnError {
        TCCdnError(.limitExceeded_CdnPurgePathExceedDayLimit)
    }
    
    /// 刷新的Url数量超过限制。
    public static var limitExceeded_CdnPurgeUrlExceedBatchLimit: TCCdnError {
        TCCdnError(.limitExceeded_CdnPurgeUrlExceedBatchLimit)
    }
    
    /// 刷新的Url数量超过每日限额。
    public static var limitExceeded_CdnPurgeUrlExceedDayLimit: TCCdnError {
        TCCdnError(.limitExceeded_CdnPurgeUrlExceedDayLimit)
    }
    
    /// 预热的Url数量超过单次限制。
    public static var limitExceeded_CdnPushExceedBatchLimit: TCCdnError {
        TCCdnError(.limitExceeded_CdnPushExceedBatchLimit)
    }
    
    /// 预热的Url数量超过每日限制。
    public static var limitExceeded_CdnPushExceedDayLimit: TCCdnError {
        TCCdnError(.limitExceeded_CdnPushExceedDayLimit)
    }
    
    /// 批量查询IP归属个数超过限制。
    public static var limitExceeded_CdnQueryIpBatchTooMany: TCCdnError {
        TCCdnError(.limitExceeded_CdnQueryIpBatchTooMany)
    }
    
    /// 用户域名数量已达上限，请联系腾讯云工程师处理。
    public static var limitExceeded_CdnUserTooManyHosts: TCCdnError {
        TCCdnError(.limitExceeded_CdnUserTooManyHosts)
    }
    
    /// 日志大小超限。
    public static var limitExceeded_ClsLogSizeExceed: TCCdnError {
        TCCdnError(.limitExceeded_ClsLogSizeExceed)
    }
    
    /// 日志集数目超出。
    public static var limitExceeded_ClsLogsetExceed: TCCdnError {
        TCCdnError(.limitExceeded_ClsLogsetExceed)
    }
    
    /// 主题超限。
    public static var limitExceeded_ClsTopicExceed: TCCdnError {
        TCCdnError(.limitExceeded_ClsTopicExceed)
    }
    
    /// 每日任务数量超出最大值。
    public static var limitExceeded_ScdnLogTaskExceedDayLimit: TCCdnError {
        TCCdnError(.limitExceeded_ScdnLogTaskExceedDayLimit)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCCdnError {
        TCCdnError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCCdnError {
        TCCdnError(.operationDenied)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCCdnError {
        TCCdnError(.requestLimitExceeded)
    }
    
    /// 域名与系统中已存在域名存在冲突。
    public static var resourceInUse_CdnConflictHostExists: TCCdnError {
        TCCdnError(.resourceInUse_CdnConflictHostExists)
    }
    
    /// 域名已存在。
    public static var resourceInUse_CdnHostExists: TCCdnError {
        TCCdnError(.resourceInUse_CdnHostExists)
    }
    
    /// CDN资源正在被操作中。
    public static var resourceInUse_CdnOpInProgress: TCCdnError {
        TCCdnError(.resourceInUse_CdnOpInProgress)
    }
    
    /// 域名已存在。
    public static var resourceInUse_TcbHostExists: TCCdnError {
        TCCdnError(.resourceInUse_TcbHostExists)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCCdnError {
        TCCdnError(.resourceNotFound)
    }
    
    /// 标签键不存在。
    public static var resourceNotFound_CamTagKeyNotExist: TCCdnError {
        TCCdnError(.resourceNotFound_CamTagKeyNotExist)
    }
    
    /// 未查询到该域名，请确认域名是否正确。
    public static var resourceNotFound_CdnHostNotExists: TCCdnError {
        TCCdnError(.resourceNotFound_CdnHostNotExists)
    }
    
    /// 项目不存在，请确认后重试。
    public static var resourceNotFound_CdnProjectNotExists: TCCdnError {
        TCCdnError(.resourceNotFound_CdnProjectNotExists)
    }
    
    /// 未开通CDN服务，请开通后使用此接口。
    public static var resourceNotFound_CdnUserNotExists: TCCdnError {
        TCCdnError(.resourceNotFound_CdnUserNotExists)
    }
    
    /// 用户域名数量已达上限，请联系腾讯云工程师处理。
    public static var resourceNotFound_CdnUserTooManyHosts: TCCdnError {
        TCCdnError(.resourceNotFound_CdnUserTooManyHosts)
    }
    
    /// 索引不存在。
    public static var resourceNotFound_ClsIndexNotExist: TCCdnError {
        TCCdnError(.resourceNotFound_ClsIndexNotExist)
    }
    
    /// 日志集不存在。
    public static var resourceNotFound_ClsLogsetNotExist: TCCdnError {
        TCCdnError(.resourceNotFound_ClsLogsetNotExist)
    }
    
    /// 主题不存在。
    public static var resourceNotFound_ClsTopicNotExist: TCCdnError {
        TCCdnError(.resourceNotFound_ClsTopicNotExist)
    }
    
    /// 域名不存在，请确认后重试。
    public static var resourceNotFound_EcdnDomainNotExists: TCCdnError {
        TCCdnError(.resourceNotFound_EcdnDomainNotExists)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCCdnError {
        TCCdnError(.resourceUnavailable)
    }
    
    /// 该域名已在其他处接入中国境内服务地域，如需修改服务地域为全球，需验证取回域名。
    public static var resourceUnavailable_CdnHostBelongsToOthersInMainland: TCCdnError {
        TCCdnError(.resourceUnavailable_CdnHostBelongsToOthersInMainland)
    }
    
    /// 该域名已在其他处接入中国境外服务地域，如需修改服务地域为全球，需验证取回域名。
    public static var resourceUnavailable_CdnHostBelongsToOthersInOverseas: TCCdnError {
        TCCdnError(.resourceUnavailable_CdnHostBelongsToOthersInOverseas)
    }
    
    /// 域名已接入DSA功能。
    public static var resourceUnavailable_CdnHostExistsInDsa: TCCdnError {
        TCCdnError(.resourceUnavailable_CdnHostExistsInDsa)
    }
    
    /// 域名已经在TCB控制台接入。
    public static var resourceUnavailable_CdnHostExistsInTcb: TCCdnError {
        TCCdnError(.resourceUnavailable_CdnHostExistsInTcb)
    }
    
    /// 域名被锁定。
    public static var resourceUnavailable_CdnHostIsLocked: TCCdnError {
        TCCdnError(.resourceUnavailable_CdnHostIsLocked)
    }
    
    /// 该域名有违法违规风险，不可接入。
    public static var resourceUnavailable_CdnHostIsMalicious: TCCdnError {
        TCCdnError(.resourceUnavailable_CdnHostIsMalicious)
    }
    
    /// 域名未下线。
    public static var resourceUnavailable_CdnHostIsNotOffline: TCCdnError {
        TCCdnError(.resourceUnavailable_CdnHostIsNotOffline)
    }
    
    /// 域名已下线，无法提交预热。
    public static var resourceUnavailable_CdnHostIsNotOnline: TCCdnError {
        TCCdnError(.resourceUnavailable_CdnHostIsNotOnline)
    }
    
    /// 域名未备案，请将域名备案。备案同步周期为2小时，若域名已备案，可稍后重新接入。
    public static var resourceUnavailable_CdnHostNoIcp: TCCdnError {
        TCCdnError(.resourceUnavailable_CdnHostNoIcp)
    }
    
    /// 该域名已在云点播内接入，请先在云点播内删除域名后再接入。
    public static var resourceUnavailable_HostExistInVod: TCCdnError {
        TCCdnError(.resourceUnavailable_HostExistInVod)
    }
    
    /// SCDN服务未生效，请购买或续费SCDN套餐后重试。
    public static var resourceUnavailable_ScdnUserNoPackage: TCCdnError {
        TCCdnError(.resourceUnavailable_ScdnUserNoPackage)
    }
    
    /// SCDN服务未生效，请购买或续费SCDN套餐后重试。
    public static var resourceUnavailable_ScdnUserSuspend: TCCdnError {
        TCCdnError(.resourceUnavailable_ScdnUserSuspend)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCCdnError {
        TCCdnError(.unauthorizedOperation)
    }
    
    /// 子账号禁止查询整体数据。
    public static var unauthorizedOperation_CdnAccountUnauthorized: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnAccountUnauthorized)
    }
    
    /// 子账号未配置cam策略。
    public static var unauthorizedOperation_CdnCamUnauthorized: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnCamUnauthorized)
    }
    
    /// 该账号未授权开通CLS。
    public static var unauthorizedOperation_CdnClsNotRegistered: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnClsNotRegistered)
    }
    
    /// 域名解析未进行验证。
    public static var unauthorizedOperation_CdnDomainRecordNotVerified: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnDomainRecordNotVerified)
    }
    
    /// 域名在内部系统已存在，请提工单处理。
    public static var unauthorizedOperation_CdnHostExistsInInternal: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnHostExistsInInternal)
    }
    
    /// 该域名涉及违法违规风险，不可接入。
    public static var unauthorizedOperation_CdnHostInIcpBlacklist: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnHostInIcpBlacklist)
    }
    
    /// 该域名属于其他账号，您没有权限接入。
    public static var unauthorizedOperation_CdnHostIsOwnedByOther: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnHostIsOwnedByOther)
    }
    
    /// 域名需要提工单申请接入。
    public static var unauthorizedOperation_CdnHostIsToApplyHost: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnHostIsToApplyHost)
    }
    
    /// 域名已被其他账号接入，更多详情请提交工单联系我们。
    public static var unauthorizedOperation_CdnHostIsUsedByOther: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnHostIsUsedByOther)
    }
    
    /// CDN子账号加速域名未授权。
    public static var unauthorizedOperation_CdnHostUnauthorized: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnHostUnauthorized)
    }
    
    /// 用户状态不合法，暂时无法使用服务。
    public static var unauthorizedOperation_CdnInvalidUserStatus: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnInvalidUserStatus)
    }
    
    /// 子账号项目未授权。
    public static var unauthorizedOperation_CdnProjectUnauthorized: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnProjectUnauthorized)
    }
    
    /// 子账号标签未授权。
    public static var unauthorizedOperation_CdnTagUnauthorized: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnTagUnauthorized)
    }
    
    /// 域名解析记录值验证不通过。
    public static var unauthorizedOperation_CdnTxtRecordValueNotMatch: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnTxtRecordValueNotMatch)
    }
    
    /// CDN用户认证失败。
    public static var unauthorizedOperation_CdnUserAuthFail: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnUserAuthFail)
    }
    
    /// CDN用户待认证。
    public static var unauthorizedOperation_CdnUserAuthWait: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnUserAuthWait)
    }
    
    /// 内部服务错误，请联系腾讯云工程师进一步排查。
    public static var unauthorizedOperation_CdnUserInvalidCredential: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnUserInvalidCredential)
    }
    
    /// 账号由于欠费被隔离，请冲正后重试。
    public static var unauthorizedOperation_CdnUserIsIsolated: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnUserIsIsolated)
    }
    
    /// 加速服务已停服，请重启加速服务后重试。
    public static var unauthorizedOperation_CdnUserIsSuspended: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnUserIsSuspended)
    }
    
    /// 非内测白名单用户，无该功能使用权限。
    public static var unauthorizedOperation_CdnUserNoWhitelist: TCCdnError {
        TCCdnError(.unauthorizedOperation_CdnUserNoWhitelist)
    }
    
    /// 无效的授权。
    public static var unauthorizedOperation_ClsInvalidAuthorization: TCCdnError {
        TCCdnError(.unauthorizedOperation_ClsInvalidAuthorization)
    }
    
    /// CLS服务未开通，请先在CLS控制台开通服务。
    public static var unauthorizedOperation_ClsServiceNotActivated: TCCdnError {
        TCCdnError(.unauthorizedOperation_ClsServiceNotActivated)
    }
    
    /// 授权未通过。
    public static var unauthorizedOperation_ClsUnauthorized: TCCdnError {
        TCCdnError(.unauthorizedOperation_ClsUnauthorized)
    }
    
    /// 内部服务错误，请联系腾讯云工程师进一步排查。
    public static var unauthorizedOperation_CsrfError: TCCdnError {
        TCCdnError(.unauthorizedOperation_CsrfError)
    }
    
    /// 鉴权域名为空。
    public static var unauthorizedOperation_DomainEmpty: TCCdnError {
        TCCdnError(.unauthorizedOperation_DomainEmpty)
    }
    
    /// 请前往CDN控制台进行操作。
    public static var unauthorizedOperation_EcdnMigratedCdn: TCCdnError {
        TCCdnError(.unauthorizedOperation_EcdnMigratedCdn)
    }
    
    /// 未授权的操作。
    public static var unauthorizedOperation_NoPermission: TCCdnError {
        TCCdnError(.unauthorizedOperation_NoPermission)
    }
    
    /// 暂不支持此操作，请联系腾讯云工程师处理。
    public static var unauthorizedOperation_OpNoAuth: TCCdnError {
        TCCdnError(.unauthorizedOperation_OpNoAuth)
    }
    
    /// 操作超出调用频次限制。
    public static var unauthorizedOperation_OperationTooOften: TCCdnError {
        TCCdnError(.unauthorizedOperation_OperationTooOften)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation_Unknown: TCCdnError {
        TCCdnError(.unauthorizedOperation_Unknown)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCCdnError {
        TCCdnError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCCdnError {
        TCCdnError(.unsupportedOperation)
    }
    
    /// 不允许操作。
    public static var unsupportedOperation_ClsNotAllowed: TCCdnError {
        TCCdnError(.unsupportedOperation_ClsNotAllowed)
    }
    
    /// 暂不支持此操作，请联系腾讯云工程师处理。
    public static var unsupportedOperation_OpNoAuth: TCCdnError {
        TCCdnError(.unsupportedOperation_OpNoAuth)
    }
}

extension TCCdnError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, LimitExceeded.self, ResourceInUse.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCCdnError: Equatable {
    public static func == (lhs: TCCdnError, rhs: TCCdnError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCdnError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}