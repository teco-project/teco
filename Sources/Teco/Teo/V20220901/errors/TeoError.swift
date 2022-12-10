public struct TCTeoError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_CertificateNotFound = "FailedOperation.CertificateNotFound"
        case failedOperation_CreateClsLogSetFailed = "FailedOperation.CreateClsLogSetFailed"
        case failedOperation_CreateClsLogTopicTaskFailed = "FailedOperation.CreateClsLogTopicTaskFailed"
        case failedOperation_InvalidZoneStatus = "FailedOperation.InvalidZoneStatus"
        case internalError = "InternalError"
        case internalError_BackendError = "InternalError.BackendError"
        case internalError_DBError = "InternalError.DBError"
        case internalError_DomainConfig = "InternalError.DomainConfig"
        case internalError_FailedToGenerateUrl = "InternalError.FailedToGenerateUrl"
        case internalError_GetRoleError = "InternalError.GetRoleError"
        case internalError_ProxyServer = "InternalError.ProxyServer"
        case internalError_QuotaSystem = "InternalError.QuotaSystem"
        case internalError_RouteError = "InternalError.RouteError"
        case internalError_SystemError = "InternalError.SystemError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_ConflictRecord = "InvalidParameterValue.ConflictRecord"
        case invalidParameterValue_ConflictWithDNSSEC = "InvalidParameterValue.ConflictWithDNSSEC"
        case invalidParameterValue_ConflictWithLBRecord = "InvalidParameterValue.ConflictWithLBRecord"
        case invalidParameterValue_ConflictWithNSRecord = "InvalidParameterValue.ConflictWithNSRecord"
        case invalidParameterValue_InvalidDNSContent = "InvalidParameterValue.InvalidDNSContent"
        case invalidParameterValue_InvalidDNSName = "InvalidParameterValue.InvalidDNSName"
        case invalidParameterValue_InvalidDomainStatus = "InvalidParameterValue.InvalidDomainStatus"
        case invalidParameterValue_InvalidProxyName = "InvalidParameterValue.InvalidProxyName"
        case invalidParameterValue_InvalidProxyOrigin = "InvalidParameterValue.InvalidProxyOrigin"
        case invalidParameterValue_RecordAlreadyExists = "InvalidParameterValue.RecordAlreadyExists"
        case invalidParameterValue_RecordNotAllowed = "InvalidParameterValue.RecordNotAllowed"
        case invalidParameter_ActionInProgress = "InvalidParameter.ActionInProgress"
        case invalidParameter_CertChainError = "InvalidParameter.CertChainError"
        case invalidParameter_CertCheckError = "InvalidParameter.CertCheckError"
        case invalidParameter_CertCompleteError = "InvalidParameter.CertCompleteError"
        case invalidParameter_CertFormatError = "InvalidParameter.CertFormatError"
        case invalidParameter_CertIsExpired = "InvalidParameter.CertIsExpired"
        case invalidParameter_CertNoCn = "InvalidParameter.CertNoCn"
        case invalidParameter_CertNoInfo = "InvalidParameter.CertNoInfo"
        case invalidParameter_CertNotMatchDomain = "InvalidParameter.CertNotMatchDomain"
        case invalidParameter_CertNotMatchKey = "InvalidParameter.CertNotMatchKey"
        case invalidParameter_CertNotPem = "InvalidParameter.CertNotPem"
        case invalidParameter_CertSystemError = "InvalidParameter.CertSystemError"
        case invalidParameter_CertToExpire = "InvalidParameter.CertToExpire"
        case invalidParameter_CertTooShortKeySize = "InvalidParameter.CertTooShortKeySize"
        case invalidParameter_CertUnsupportedType = "InvalidParameter.CertUnsupportedType"
        case invalidParameter_DomainNotFound = "InvalidParameter.DomainNotFound"
        case invalidParameter_DomainOnTrafficScheduling = "InvalidParameter.DomainOnTrafficScheduling"
        case invalidParameter_ErrInvalidAction = "InvalidParameter.ErrInvalidAction"
        case invalidParameter_ErrInvalidActionParam = "InvalidParameter.ErrInvalidActionParam"
        case invalidParameter_ErrInvalidActionParamDuplicateName = "InvalidParameter.ErrInvalidActionParamDuplicateName"
        case invalidParameter_ErrInvalidActionParamTooManyValues = "InvalidParameter.ErrInvalidActionParamTooManyValues"
        case invalidParameter_ErrInvalidConditionIgnoreCase = "InvalidParameter.ErrInvalidConditionIgnoreCase"
        case invalidParameter_ErrInvalidConditionNameTargetNotSupportName = "InvalidParameter.ErrInvalidConditionNameTargetNotSupportName"
        case invalidParameter_ErrInvalidConditionValueBadValue = "InvalidParameter.ErrInvalidConditionValueBadValue"
        case invalidParameter_ErrInvalidConditionValueBadValueContainFileNameExtension = "InvalidParameter.ErrInvalidConditionValueBadValueContainFileNameExtension"
        case invalidParameter_ErrInvalidConditionValueTooLongValue = "InvalidParameter.ErrInvalidConditionValueTooLongValue"
        case invalidParameter_HostNotFound = "InvalidParameter.HostNotFound"
        case invalidParameter_InvalidAuthenticationTypeSignParam = "InvalidParameter.InvalidAuthenticationTypeSignParam"
        case invalidParameter_InvalidCacheKey = "InvalidParameter.InvalidCacheKey"
        case invalidParameter_InvalidCacheKeyQueryStringValue = "InvalidParameter.InvalidCacheKeyQueryStringValue"
        case invalidParameter_InvalidCacheOnlyOnSwitch = "InvalidParameter.InvalidCacheOnlyOnSwitch"
        case invalidParameter_InvalidCertInfo = "InvalidParameter.InvalidCertInfo"
        case invalidParameter_InvalidClientIpHeaderName = "InvalidParameter.InvalidClientIpHeaderName"
        case invalidParameter_InvalidDynamicRoutine = "InvalidParameter.InvalidDynamicRoutine"
        case invalidParameter_InvalidErrorPageRedirectUrl = "InvalidParameter.InvalidErrorPageRedirectUrl"
        case invalidParameter_InvalidHttpsHstsMaxAge = "InvalidParameter.InvalidHttpsHstsMaxAge"
        case invalidParameter_InvalidHttpsTlsVersion = "InvalidParameter.InvalidHttpsTlsVersion"
        case invalidParameter_InvalidIpv6Switch = "InvalidParameter.InvalidIpv6Switch"
        case invalidParameter_InvalidOrigin = "InvalidParameter.InvalidOrigin"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case invalidParameter_InvalidPostMaxSizeBilling = "InvalidParameter.InvalidPostMaxSizeBilling"
        case invalidParameter_InvalidPostSizeValue = "InvalidParameter.InvalidPostSizeValue"
        case invalidParameter_InvalidRequestHeaderName = "InvalidParameter.InvalidRequestHeaderName"
        case invalidParameter_InvalidResourceIdBilling = "InvalidParameter.InvalidResourceIdBilling"
        case invalidParameter_InvalidResponseHeaderName = "InvalidParameter.InvalidResponseHeaderName"
        case invalidParameter_InvalidRuleEngine = "InvalidParameter.InvalidRuleEngine"
        case invalidParameter_InvalidRuleEngineAction = "InvalidParameter.InvalidRuleEngineAction"
        case invalidParameter_InvalidRuleEngineNotFound = "InvalidParameter.InvalidRuleEngineNotFound"
        case invalidParameter_InvalidRuleEngineTarget = "InvalidParameter.InvalidRuleEngineTarget"
        case invalidParameter_InvalidRuleEngineTargetsExtension = "InvalidParameter.InvalidRuleEngineTargetsExtension"
        case invalidParameter_InvalidRuleEngineTargetsUrl = "InvalidParameter.InvalidRuleEngineTargetsUrl"
        case invalidParameter_InvalidServerName = "InvalidParameter.InvalidServerName"
        case invalidParameter_InvalidUrlRedirectHost = "InvalidParameter.InvalidUrlRedirectHost"
        case invalidParameter_InvalidUrlRedirectUrl = "InvalidParameter.InvalidUrlRedirectUrl"
        case invalidParameter_InvalidWebSocketTimeout = "InvalidParameter.InvalidWebSocketTimeout"
        case invalidParameter_KeyRulesInvalidQueryStringValue = "InvalidParameter.KeyRulesInvalidQueryStringValue"
        case invalidParameter_LengthExceedsLimit = "InvalidParameter.LengthExceedsLimit"
        case invalidParameter_ParameterError = "InvalidParameter.ParameterError"
        case invalidParameter_PlanNotFound = "InvalidParameter.PlanNotFound"
        case invalidParameter_Security = "InvalidParameter.Security"
        case invalidParameter_SettingInvalidParam = "InvalidParameter.SettingInvalidParam"
        case invalidParameter_Target = "InvalidParameter.Target"
        case invalidParameter_TaskNotGenerated = "InvalidParameter.TaskNotGenerated"
        case invalidParameter_UploadUrl = "InvalidParameter.UploadUrl"
        case invalidParameter_ZoneHasBeenBound = "InvalidParameter.ZoneHasBeenBound"
        case invalidParameter_ZoneNotFound = "InvalidParameter.ZoneNotFound"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_BatchQuota = "LimitExceeded.BatchQuota"
        case limitExceeded_DailyQuota = "LimitExceeded.DailyQuota"
        case limitExceeded_RateLimitExceeded = "LimitExceeded.RateLimitExceeded"
        case operationDenied = "OperationDenied"
        case operationDenied_DomainIsBlocked = "OperationDenied.DomainIsBlocked"
        case operationDenied_DomainNoICP = "OperationDenied.DomainNoICP"
        case operationDenied_L4ProxyInBannedStatus = "OperationDenied.L4ProxyInBannedStatus"
        case operationDenied_MultipleCnameZone = "OperationDenied.MultipleCnameZone"
        case operationDenied_NSNotAllowTrafficStrategy = "OperationDenied.NSNotAllowTrafficStrategy"
        case resourceInUse = "ResourceInUse"
        case resourceInUse_AliasDomain = "ResourceInUse.AliasDomain"
        case resourceInUse_Cname = "ResourceInUse.Cname"
        case resourceInUse_Dns = "ResourceInUse.Dns"
        case resourceInUse_DuplicateName = "ResourceInUse.DuplicateName"
        case resourceInUse_GenericHost = "ResourceInUse.GenericHost"
        case resourceInUse_Host = "ResourceInUse.Host"
        case resourceInUse_NS = "ResourceInUse.NS"
        case resourceInUse_Others = "ResourceInUse.Others"
        case resourceInUse_OthersAliasDomain = "ResourceInUse.OthersAliasDomain"
        case resourceInUse_OthersCname = "ResourceInUse.OthersCname"
        case resourceInUse_OthersHost = "ResourceInUse.OthersHost"
        case resourceInUse_OthersNS = "ResourceInUse.OthersNS"
        case resourceInUse_SelfAndOthersCname = "ResourceInUse.SelfAndOthersCname"
        case resourceInUse_Zone = "ResourceInUse.Zone"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_AvailableDomainNotFound = "ResourceUnavailable.AvailableDomainNotFound"
        case resourceUnavailable_CertNotFound = "ResourceUnavailable.CertNotFound"
        case resourceUnavailable_HostNotFound = "ResourceUnavailable.HostNotFound"
        case resourceUnavailable_ProxyZoneNotFound = "ResourceUnavailable.ProxyZoneNotFound"
        case resourceUnavailable_ZoneNotFound = "ResourceUnavailable.ZoneNotFound"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_CamUnauthorized = "UnauthorizedOperation.CamUnauthorized"
        case unauthorizedOperation_DomainEmpty = "UnauthorizedOperation.DomainEmpty"
        case unauthorizedOperation_NoPermission = "UnauthorizedOperation.NoPermission"
        case unauthorizedOperation_Unknown = "UnauthorizedOperation.Unknown"
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
    public static var authFailure: TCTeoError {
        TCTeoError(.authFailure)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCTeoError {
        TCTeoError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCTeoError {
        TCTeoError(.failedOperation)
    }
    
    /// 证书不存在。
    public static var failedOperation_CertificateNotFound: TCTeoError {
        TCTeoError(.failedOperation_CertificateNotFound)
    }
    
    /// 创建日志集失败，请检查日志集名是否已存在。
    public static var failedOperation_CreateClsLogSetFailed: TCTeoError {
        TCTeoError(.failedOperation_CreateClsLogSetFailed)
    }
    
    /// 创建日志主题任务失败，请检查日志主题名或任务名是否已存在。
    public static var failedOperation_CreateClsLogTopicTaskFailed: TCTeoError {
        TCTeoError(.failedOperation_CreateClsLogTopicTaskFailed)
    }
    
    public static var failedOperation_InvalidZoneStatus: TCTeoError {
        TCTeoError(.failedOperation_InvalidZoneStatus)
    }
    
    /// 内部错误。
    public static var internalError: TCTeoError {
        TCTeoError(.internalError)
    }
    
    /// 后台处理出错。
    public static var internalError_BackendError: TCTeoError {
        TCTeoError(.internalError_BackendError)
    }
    
    /// 数据库错误。
    public static var internalError_DBError: TCTeoError {
        TCTeoError(.internalError_DBError)
    }
    
    /// 获取配置失败。
    public static var internalError_DomainConfig: TCTeoError {
        TCTeoError(.internalError_DomainConfig)
    }
    
    /// 上传链接生成失败。
    public static var internalError_FailedToGenerateUrl: TCTeoError {
        TCTeoError(.internalError_FailedToGenerateUrl)
    }
    
    /// 获取角色失败。
    public static var internalError_GetRoleError: TCTeoError {
        TCTeoError(.internalError_GetRoleError)
    }
    
    /// 后端服务器发生未知错误。
    public static var internalError_ProxyServer: TCTeoError {
        TCTeoError(.internalError_ProxyServer)
    }
    
    /// 配额系统处理失败。
    public static var internalError_QuotaSystem: TCTeoError {
        TCTeoError(.internalError_QuotaSystem)
    }
    
    /// 后端服务路由地址错误。
    public static var internalError_RouteError: TCTeoError {
        TCTeoError(.internalError_RouteError)
    }
    
    /// 内部错误。
    ///
    /// 内部错误-系统错误。
    public static var internalError_SystemError: TCTeoError {
        TCTeoError(.internalError_SystemError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCTeoError {
        TCTeoError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCTeoError {
        TCTeoError(.invalidParameterValue)
    }
    
    /// 与已经添加的记录冲突。
    public static var invalidParameterValue_ConflictRecord: TCTeoError {
        TCTeoError(.invalidParameterValue_ConflictRecord)
    }
    
    /// DNS 记录与 DNSSEC 功能冲突。
    public static var invalidParameterValue_ConflictWithDNSSEC: TCTeoError {
        TCTeoError(.invalidParameterValue_ConflictWithDNSSEC)
    }
    
    /// DNS 记录与 LB 记录冲突。
    public static var invalidParameterValue_ConflictWithLBRecord: TCTeoError {
        TCTeoError(.invalidParameterValue_ConflictWithLBRecord)
    }
    
    /// DNS 记录与 NS 记录冲突。
    public static var invalidParameterValue_ConflictWithNSRecord: TCTeoError {
        TCTeoError(.invalidParameterValue_ConflictWithNSRecord)
    }
    
    /// DNS 记录内容错误。
    public static var invalidParameterValue_InvalidDNSContent: TCTeoError {
        TCTeoError(.invalidParameterValue_InvalidDNSContent)
    }
    
    /// DNS 记录名称错误。
    public static var invalidParameterValue_InvalidDNSName: TCTeoError {
        TCTeoError(.invalidParameterValue_InvalidDNSName)
    }
    
    public static var invalidParameterValue_InvalidDomainStatus: TCTeoError {
        TCTeoError(.invalidParameterValue_InvalidDomainStatus)
    }
    
    /// DNS 代理域名错误。
    public static var invalidParameterValue_InvalidProxyName: TCTeoError {
        TCTeoError(.invalidParameterValue_InvalidProxyName)
    }
    
    /// DNS 代理域名源站错误。
    public static var invalidParameterValue_InvalidProxyOrigin: TCTeoError {
        TCTeoError(.invalidParameterValue_InvalidProxyOrigin)
    }
    
    /// 记录已存在。
    public static var invalidParameterValue_RecordAlreadyExists: TCTeoError {
        TCTeoError(.invalidParameterValue_RecordAlreadyExists)
    }
    
    /// 记录不允许添加。
    public static var invalidParameterValue_RecordNotAllowed: TCTeoError {
        TCTeoError(.invalidParameterValue_RecordNotAllowed)
    }
    
    /// 操作频繁，请稍后重试。
    public static var invalidParameter_ActionInProgress: TCTeoError {
        TCTeoError(.invalidParameter_ActionInProgress)
    }
    
    /// HTTPS证书链错误。
    public static var invalidParameter_CertChainError: TCTeoError {
        TCTeoError(.invalidParameter_CertChainError)
    }
    
    /// 证书错误。
    public static var invalidParameter_CertCheckError: TCTeoError {
        TCTeoError(.invalidParameter_CertCheckError)
    }
    
    /// 证书错误。
    public static var invalidParameter_CertCompleteError: TCTeoError {
        TCTeoError(.invalidParameter_CertCompleteError)
    }
    
    /// 证书错误。
    public static var invalidParameter_CertFormatError: TCTeoError {
        TCTeoError(.invalidParameter_CertFormatError)
    }
    
    /// HTTPS证书已过期。
    public static var invalidParameter_CertIsExpired: TCTeoError {
        TCTeoError(.invalidParameter_CertIsExpired)
    }
    
    /// 证书错误。
    public static var invalidParameter_CertNoCn: TCTeoError {
        TCTeoError(.invalidParameter_CertNoCn)
    }
    
    /// 无效的HTTPS证书。
    public static var invalidParameter_CertNoInfo: TCTeoError {
        TCTeoError(.invalidParameter_CertNoInfo)
    }
    
    /// HTTPS证书和域名不匹配。
    public static var invalidParameter_CertNotMatchDomain: TCTeoError {
        TCTeoError(.invalidParameter_CertNotMatchDomain)
    }
    
    /// HTTPS证书和密钥不匹配。
    public static var invalidParameter_CertNotMatchKey: TCTeoError {
        TCTeoError(.invalidParameter_CertNotMatchKey)
    }
    
    /// 证书错误。
    public static var invalidParameter_CertNotPem: TCTeoError {
        TCTeoError(.invalidParameter_CertNotPem)
    }
    
    /// 内部错误。
    public static var invalidParameter_CertSystemError: TCTeoError {
        TCTeoError(.invalidParameter_CertSystemError)
    }
    
    /// HTTPS证书即将过期。
    public static var invalidParameter_CertToExpire: TCTeoError {
        TCTeoError(.invalidParameter_CertToExpire)
    }
    
    /// 证书错误。
    public static var invalidParameter_CertTooShortKeySize: TCTeoError {
        TCTeoError(.invalidParameter_CertTooShortKeySize)
    }
    
    /// 证书错误。
    public static var invalidParameter_CertUnsupportedType: TCTeoError {
        TCTeoError(.invalidParameter_CertUnsupportedType)
    }
    
    /// 域名不存在或不属于该账号。
    public static var invalidParameter_DomainNotFound: TCTeoError {
        TCTeoError(.invalidParameter_DomainNotFound)
    }
    
    public static var invalidParameter_DomainOnTrafficScheduling: TCTeoError {
        TCTeoError(.invalidParameter_DomainOnTrafficScheduling)
    }
    
    /// 非法操作。
    public static var invalidParameter_ErrInvalidAction: TCTeoError {
        TCTeoError(.invalidParameter_ErrInvalidAction)
    }
    
    /// 非法操作-非法参数。
    public static var invalidParameter_ErrInvalidActionParam: TCTeoError {
        TCTeoError(.invalidParameter_ErrInvalidActionParam)
    }
    
    /// 非法操作-非法参数-参数名重复。
    public static var invalidParameter_ErrInvalidActionParamDuplicateName: TCTeoError {
        TCTeoError(.invalidParameter_ErrInvalidActionParamDuplicateName)
    }
    
    /// 非法操作-非法参数-参数值数量超出限制。
    public static var invalidParameter_ErrInvalidActionParamTooManyValues: TCTeoError {
        TCTeoError(.invalidParameter_ErrInvalidActionParamTooManyValues)
    }
    
    /// 非法条件-非法忽略大小写。
    public static var invalidParameter_ErrInvalidConditionIgnoreCase: TCTeoError {
        TCTeoError(.invalidParameter_ErrInvalidConditionIgnoreCase)
    }
    
    /// 非法条件-非法参数名称-匹配类型不支持参数名称。
    public static var invalidParameter_ErrInvalidConditionNameTargetNotSupportName: TCTeoError {
        TCTeoError(.invalidParameter_ErrInvalidConditionNameTargetNotSupportName)
    }
    
    /// 非法条件-非法参数值-无效的参数值。
    public static var invalidParameter_ErrInvalidConditionValueBadValue: TCTeoError {
        TCTeoError(.invalidParameter_ErrInvalidConditionValueBadValue)
    }
    
    /// 非法条件-非法参数值-无效的参数值-文件名不应包含文件后缀。
    public static var invalidParameter_ErrInvalidConditionValueBadValueContainFileNameExtension: TCTeoError {
        TCTeoError(.invalidParameter_ErrInvalidConditionValueBadValueContainFileNameExtension)
    }
    
    /// 非法条件-非法参数值-参数值长度超出限制。
    public static var invalidParameter_ErrInvalidConditionValueTooLongValue: TCTeoError {
        TCTeoError(.invalidParameter_ErrInvalidConditionValueTooLongValue)
    }
    
    /// 域名不存在。
    public static var invalidParameter_HostNotFound: TCTeoError {
        TCTeoError(.invalidParameter_HostNotFound)
    }
    
    /// 无效的token鉴权参数。
    public static var invalidParameter_InvalidAuthenticationTypeSignParam: TCTeoError {
        TCTeoError(.invalidParameter_InvalidAuthenticationTypeSignParam)
    }
    
    /// 无效的缓存键。
    public static var invalidParameter_InvalidCacheKey: TCTeoError {
        TCTeoError(.invalidParameter_InvalidCacheKey)
    }
    
    /// 无效的查询字符串。
    public static var invalidParameter_InvalidCacheKeyQueryStringValue: TCTeoError {
        TCTeoError(.invalidParameter_InvalidCacheKeyQueryStringValue)
    }
    
    /// 无效的节点缓存。
    public static var invalidParameter_InvalidCacheOnlyOnSwitch: TCTeoError {
        TCTeoError(.invalidParameter_InvalidCacheOnlyOnSwitch)
    }
    
    /// 证书信息错误。
    public static var invalidParameter_InvalidCertInfo: TCTeoError {
        TCTeoError(.invalidParameter_InvalidCertInfo)
    }
    
    /// 无效的客户端IP请求头。
    public static var invalidParameter_InvalidClientIpHeaderName: TCTeoError {
        TCTeoError(.invalidParameter_InvalidClientIpHeaderName)
    }
    
    /// 无效的智能加速。
    public static var invalidParameter_InvalidDynamicRoutine: TCTeoError {
        TCTeoError(.invalidParameter_InvalidDynamicRoutine)
    }
    
    /// 无效的自定义错误页面。
    public static var invalidParameter_InvalidErrorPageRedirectUrl: TCTeoError {
        TCTeoError(.invalidParameter_InvalidErrorPageRedirectUrl)
    }
    
    /// 无效的HTTPS HSTS。
    public static var invalidParameter_InvalidHttpsHstsMaxAge: TCTeoError {
        TCTeoError(.invalidParameter_InvalidHttpsHstsMaxAge)
    }
    
    /// 无效的HTTPS TLS版本。
    public static var invalidParameter_InvalidHttpsTlsVersion: TCTeoError {
        TCTeoError(.invalidParameter_InvalidHttpsTlsVersion)
    }
    
    public static var invalidParameter_InvalidIpv6Switch: TCTeoError {
        TCTeoError(.invalidParameter_InvalidIpv6Switch)
    }
    
    /// 无效的源站。
    public static var invalidParameter_InvalidOrigin: TCTeoError {
        TCTeoError(.invalidParameter_InvalidOrigin)
    }
    
    /// 参数错误。
    public static var invalidParameter_InvalidParameter: TCTeoError {
        TCTeoError(.invalidParameter_InvalidParameter)
    }
    
    /// 套餐包不支持最大上传大小。
    public static var invalidParameter_InvalidPostMaxSizeBilling: TCTeoError {
        TCTeoError(.invalidParameter_InvalidPostMaxSizeBilling)
    }
    
    /// 无效的最大上传大小。
    public static var invalidParameter_InvalidPostSizeValue: TCTeoError {
        TCTeoError(.invalidParameter_InvalidPostSizeValue)
    }
    
    /// 无效的请求头header。
    public static var invalidParameter_InvalidRequestHeaderName: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRequestHeaderName)
    }
    
    /// 无套餐包。
    public static var invalidParameter_InvalidResourceIdBilling: TCTeoError {
        TCTeoError(.invalidParameter_InvalidResourceIdBilling)
    }
    
    /// 无效的响应头header。
    public static var invalidParameter_InvalidResponseHeaderName: TCTeoError {
        TCTeoError(.invalidParameter_InvalidResponseHeaderName)
    }
    
    public static var invalidParameter_InvalidRuleEngine: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRuleEngine)
    }
    
    /// 无效的规则引擎操作。
    public static var invalidParameter_InvalidRuleEngineAction: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRuleEngineAction)
    }
    
    /// 规则不存在。
    public static var invalidParameter_InvalidRuleEngineNotFound: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRuleEngineNotFound)
    }
    
    /// 无效的规则引擎条件。
    public static var invalidParameter_InvalidRuleEngineTarget: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRuleEngineTarget)
    }
    
    /// 无效的规则引擎文件后缀条件。
    public static var invalidParameter_InvalidRuleEngineTargetsExtension: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRuleEngineTargetsExtension)
    }
    
    /// 无效的规则引擎URL条件。
    public static var invalidParameter_InvalidRuleEngineTargetsUrl: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRuleEngineTargetsUrl)
    }
    
    /// 无效的回源Host。
    public static var invalidParameter_InvalidServerName: TCTeoError {
        TCTeoError(.invalidParameter_InvalidServerName)
    }
    
    /// URL重写的目标HOST无效。
    public static var invalidParameter_InvalidUrlRedirectHost: TCTeoError {
        TCTeoError(.invalidParameter_InvalidUrlRedirectHost)
    }
    
    /// URL重写的目标URL无效。
    public static var invalidParameter_InvalidUrlRedirectUrl: TCTeoError {
        TCTeoError(.invalidParameter_InvalidUrlRedirectUrl)
    }
    
    /// 无效的WebSocket。
    public static var invalidParameter_InvalidWebSocketTimeout: TCTeoError {
        TCTeoError(.invalidParameter_InvalidWebSocketTimeout)
    }
    
    /// 无效的缓存键。
    public static var invalidParameter_KeyRulesInvalidQueryStringValue: TCTeoError {
        TCTeoError(.invalidParameter_KeyRulesInvalidQueryStringValue)
    }
    
    /// 参数长度超过限制。
    public static var invalidParameter_LengthExceedsLimit: TCTeoError {
        TCTeoError(.invalidParameter_LengthExceedsLimit)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParameterError: TCTeoError {
        TCTeoError(.invalidParameter_ParameterError)
    }
    
    /// 套餐不存在。
    public static var invalidParameter_PlanNotFound: TCTeoError {
        TCTeoError(.invalidParameter_PlanNotFound)
    }
    
    /// 安全参数错误。
    public static var invalidParameter_Security: TCTeoError {
        TCTeoError(.invalidParameter_Security)
    }
    
    /// 域名配置错误。
    ///
    /// 参数错误-setting非法参数。
    public static var invalidParameter_SettingInvalidParam: TCTeoError {
        TCTeoError(.invalidParameter_SettingInvalidParam)
    }
    
    /// 资源存在错误。
    public static var invalidParameter_Target: TCTeoError {
        TCTeoError(.invalidParameter_Target)
    }
    
    /// 任务无法生成。
    public static var invalidParameter_TaskNotGenerated: TCTeoError {
        TCTeoError(.invalidParameter_TaskNotGenerated)
    }
    
    /// 文件上传链接存在问题。
    public static var invalidParameter_UploadUrl: TCTeoError {
        TCTeoError(.invalidParameter_UploadUrl)
    }
    
    /// 站点已被绑定。
    public static var invalidParameter_ZoneHasBeenBound: TCTeoError {
        TCTeoError(.invalidParameter_ZoneHasBeenBound)
    }
    
    /// 站点不存在。
    public static var invalidParameter_ZoneNotFound: TCTeoError {
        TCTeoError(.invalidParameter_ZoneNotFound)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCTeoError {
        TCTeoError(.limitExceeded)
    }
    
    /// 本次提交的资源数超过上限。
    public static var limitExceeded_BatchQuota: TCTeoError {
        TCTeoError(.limitExceeded_BatchQuota)
    }
    
    /// 当天提交的资源数超过上限。
    public static var limitExceeded_DailyQuota: TCTeoError {
        TCTeoError(.limitExceeded_DailyQuota)
    }
    
    /// 单位时间内接口请求频率达到限制。
    public static var limitExceeded_RateLimitExceeded: TCTeoError {
        TCTeoError(.limitExceeded_RateLimitExceeded)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCTeoError {
        TCTeoError(.operationDenied)
    }
    
    /// 域名被封禁，暂时无法操作。
    public static var operationDenied_DomainIsBlocked: TCTeoError {
        TCTeoError(.operationDenied_DomainIsBlocked)
    }
    
    /// 域名尚未备案。
    public static var operationDenied_DomainNoICP: TCTeoError {
        TCTeoError(.operationDenied_DomainNoICP)
    }
    
    public static var operationDenied_L4ProxyInBannedStatus: TCTeoError {
        TCTeoError(.operationDenied_L4ProxyInBannedStatus)
    }
    
    public static var operationDenied_MultipleCnameZone: TCTeoError {
        TCTeoError(.operationDenied_MultipleCnameZone)
    }
    
    public static var operationDenied_NSNotAllowTrafficStrategy: TCTeoError {
        TCTeoError(.operationDenied_NSNotAllowTrafficStrategy)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCTeoError {
        TCTeoError(.resourceInUse)
    }
    
    public static var resourceInUse_AliasDomain: TCTeoError {
        TCTeoError(.resourceInUse_AliasDomain)
    }
    
    public static var resourceInUse_Cname: TCTeoError {
        TCTeoError(.resourceInUse_Cname)
    }
    
    public static var resourceInUse_Dns: TCTeoError {
        TCTeoError(.resourceInUse_Dns)
    }
    
    public static var resourceInUse_DuplicateName: TCTeoError {
        TCTeoError(.resourceInUse_DuplicateName)
    }
    
    public static var resourceInUse_GenericHost: TCTeoError {
        TCTeoError(.resourceInUse_GenericHost)
    }
    
    public static var resourceInUse_Host: TCTeoError {
        TCTeoError(.resourceInUse_Host)
    }
    
    public static var resourceInUse_NS: TCTeoError {
        TCTeoError(.resourceInUse_NS)
    }
    
    /// 资源被其他用户接入。
    public static var resourceInUse_Others: TCTeoError {
        TCTeoError(.resourceInUse_Others)
    }
    
    public static var resourceInUse_OthersAliasDomain: TCTeoError {
        TCTeoError(.resourceInUse_OthersAliasDomain)
    }
    
    public static var resourceInUse_OthersCname: TCTeoError {
        TCTeoError(.resourceInUse_OthersCname)
    }
    
    public static var resourceInUse_OthersHost: TCTeoError {
        TCTeoError(.resourceInUse_OthersHost)
    }
    
    public static var resourceInUse_OthersNS: TCTeoError {
        TCTeoError(.resourceInUse_OthersNS)
    }
    
    public static var resourceInUse_SelfAndOthersCname: TCTeoError {
        TCTeoError(.resourceInUse_SelfAndOthersCname)
    }
    
    public static var resourceInUse_Zone: TCTeoError {
        TCTeoError(.resourceInUse_Zone)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCTeoError {
        TCTeoError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCTeoError {
        TCTeoError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCTeoError {
        TCTeoError(.resourceUnavailable)
    }
    
    /// 无剩余可创建新任务的域名。
    public static var resourceUnavailable_AvailableDomainNotFound: TCTeoError {
        TCTeoError(.resourceUnavailable_AvailableDomainNotFound)
    }
    
    /// 证书不存在或未授权。
    public static var resourceUnavailable_CertNotFound: TCTeoError {
        TCTeoError(.resourceUnavailable_CertNotFound)
    }
    
    /// 域名不存在或未开启代理。
    public static var resourceUnavailable_HostNotFound: TCTeoError {
        TCTeoError(.resourceUnavailable_HostNotFound)
    }
    
    /// 未拉取到已开启代理的zone信息。
    public static var resourceUnavailable_ProxyZoneNotFound: TCTeoError {
        TCTeoError(.resourceUnavailable_ProxyZoneNotFound)
    }
    
    /// 站点不存在或不属于该账号。
    public static var resourceUnavailable_ZoneNotFound: TCTeoError {
        TCTeoError(.resourceUnavailable_ZoneNotFound)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCTeoError {
        TCTeoError(.unauthorizedOperation)
    }
    
    /// Cam 未授权。
    public static var unauthorizedOperation_CamUnauthorized: TCTeoError {
        TCTeoError(.unauthorizedOperation_CamUnauthorized)
    }
    
    /// 鉴权错误。
    public static var unauthorizedOperation_DomainEmpty: TCTeoError {
        TCTeoError(.unauthorizedOperation_DomainEmpty)
    }
    
    /// 子账户没有操作权限，请添加权限后继续操作。
    public static var unauthorizedOperation_NoPermission: TCTeoError {
        TCTeoError(.unauthorizedOperation_NoPermission)
    }
    
    /// 后端服务器发生未知错误。
    public static var unauthorizedOperation_Unknown: TCTeoError {
        TCTeoError(.unauthorizedOperation_Unknown)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCTeoError {
        TCTeoError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCTeoError {
        TCTeoError(.unsupportedOperation)
    }
}

extension TCTeoError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, OperationDenied.self, ResourceInUse.self, ResourceUnavailable.self, UnauthorizedOperation.self]
    }
}

extension TCTeoError: Equatable {
    public static func == (lhs: TCTeoError, rhs: TCTeoError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTeoError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTeoError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
