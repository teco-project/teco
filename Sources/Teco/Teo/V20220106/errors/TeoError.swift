public struct TCTeoError: TCErrorType {
    enum Code: String {
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_CertificateNotFound = "FailedOperation.CertificateNotFound"
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
        case invalidParameterValue_ConflictRecord = "InvalidParameterValue.ConflictRecord"
        case invalidParameterValue_ConflictWithDNSSEC = "InvalidParameterValue.ConflictWithDNSSEC"
        case invalidParameterValue_ConflictWithLBRecord = "InvalidParameterValue.ConflictWithLBRecord"
        case invalidParameterValue_ConflictWithNSRecord = "InvalidParameterValue.ConflictWithNSRecord"
        case invalidParameterValue_InvalidDNSContent = "InvalidParameterValue.InvalidDNSContent"
        case invalidParameterValue_InvalidDNSName = "InvalidParameterValue.InvalidDNSName"
        case invalidParameterValue_InvalidProxyName = "InvalidParameterValue.InvalidProxyName"
        case invalidParameterValue_InvalidProxyOrigin = "InvalidParameterValue.InvalidProxyOrigin"
        case invalidParameterValue_InvalidSRVName = "InvalidParameterValue.InvalidSRVName"
        case invalidParameterValue_RecordAlreadyExists = "InvalidParameterValue.RecordAlreadyExists"
        case invalidParameterValue_RecordNotAllowed = "InvalidParameterValue.RecordNotAllowed"
        case invalidParameter_ActionInProgress = "InvalidParameter.ActionInProgress"
        case invalidParameter_DomainNotFound = "InvalidParameter.DomainNotFound"
        case invalidParameter_InvalidCacheOnlyOnSwitch = "InvalidParameter.InvalidCacheOnlyOnSwitch"
        case invalidParameter_InvalidCertInfo = "InvalidParameter.InvalidCertInfo"
        case invalidParameter_InvalidClientIpHeaderName = "InvalidParameter.InvalidClientIpHeaderName"
        case invalidParameter_InvalidDynamicRoutineBilling = "InvalidParameter.InvalidDynamicRoutineBilling"
        case invalidParameter_InvalidFilterName = "InvalidParameter.InvalidFilterName"
        case invalidParameter_InvalidForceRedirectType = "InvalidParameter.InvalidForceRedirectType"
        case invalidParameter_InvalidOrigin = "InvalidParameter.InvalidOrigin"
        case invalidParameter_InvalidPostMaxSizeBilling = "InvalidParameter.InvalidPostMaxSizeBilling"
        case invalidParameter_InvalidPostSizeValue = "InvalidParameter.InvalidPostSizeValue"
        case invalidParameter_InvalidRedirectUrlCapture = "InvalidParameter.InvalidRedirectUrlCapture"
        case invalidParameter_InvalidRequestHeaderName = "InvalidParameter.InvalidRequestHeaderName"
        case invalidParameter_InvalidRequestHeaderValue = "InvalidParameter.InvalidRequestHeaderValue"
        case invalidParameter_InvalidResourceIdBilling = "InvalidParameter.InvalidResourceIdBilling"
        case invalidParameter_InvalidResponseHeaderValue = "InvalidParameter.InvalidResponseHeaderValue"
        case invalidParameter_InvalidRuleEngineAction = "InvalidParameter.InvalidRuleEngineAction"
        case invalidParameter_InvalidRuleEngineTarget = "InvalidParameter.InvalidRuleEngineTarget"
        case invalidParameter_InvalidRuleEngineTargetsExtension = "InvalidParameter.InvalidRuleEngineTargetsExtension"
        case invalidParameter_InvalidUrlRedirectUrl = "InvalidParameter.InvalidUrlRedirectUrl"
        case invalidParameter_InvalidWebSocketTimeout = "InvalidParameter.InvalidWebSocketTimeout"
        case invalidParameter_ParameterError = "InvalidParameter.ParameterError"
        case invalidParameter_Security = "InvalidParameter.Security"
        case invalidParameter_SettingInvalidParam = "InvalidParameter.SettingInvalidParam"
        case invalidParameter_Target = "InvalidParameter.Target"
        case invalidParameter_TaskNotGenerated = "InvalidParameter.TaskNotGenerated"
        case invalidParameter_UploadUrl = "InvalidParameter.UploadUrl"
        case invalidParameter_ZoneNotFound = "InvalidParameter.ZoneNotFound"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_BatchQuota = "LimitExceeded.BatchQuota"
        case limitExceeded_DailyQuota = "LimitExceeded.DailyQuota"
        case operationDenied = "OperationDenied"
        case operationDenied_DomainNoICP = "OperationDenied.DomainNoICP"
        case resourceInUse = "ResourceInUse"
        case resourceInUse_Others = "ResourceInUse.Others"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_CertNotFound = "ResourceUnavailable.CertNotFound"
        case resourceUnavailable_HostNotFound = "ResourceUnavailable.HostNotFound"
        case resourceUnavailable_ZoneNotFound = "ResourceUnavailable.ZoneNotFound"
        case unauthorizedOperation_CamUnauthorized = "UnauthorizedOperation.CamUnauthorized"
        case unauthorizedOperation_DomainEmpty = "UnauthorizedOperation.DomainEmpty"
        case unauthorizedOperation_NoPermission = "UnauthorizedOperation.NoPermission"
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
    
    /// DNS 代理域名错误。
    public static var invalidParameterValue_InvalidProxyName: TCTeoError {
        TCTeoError(.invalidParameterValue_InvalidProxyName)
    }
    
    /// DNS 代理域名源站错误。
    public static var invalidParameterValue_InvalidProxyOrigin: TCTeoError {
        TCTeoError(.invalidParameterValue_InvalidProxyOrigin)
    }
    
    /// SRV 记录名称错误。
    public static var invalidParameterValue_InvalidSRVName: TCTeoError {
        TCTeoError(.invalidParameterValue_InvalidSRVName)
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
    
    /// 域名不存在或不属于该账号。
    public static var invalidParameter_DomainNotFound: TCTeoError {
        TCTeoError(.invalidParameter_DomainNotFound)
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
    
    /// 套餐包不支持智能加速配置。
    public static var invalidParameter_InvalidDynamicRoutineBilling: TCTeoError {
        TCTeoError(.invalidParameter_InvalidDynamicRoutineBilling)
    }
    
    /// 不合法的过滤字段。
    public static var invalidParameter_InvalidFilterName: TCTeoError {
        TCTeoError(.invalidParameter_InvalidFilterName)
    }
    
    /// 无效的强制HTTPS跳转。
    public static var invalidParameter_InvalidForceRedirectType: TCTeoError {
        TCTeoError(.invalidParameter_InvalidForceRedirectType)
    }
    
    /// 无效的源站。
    public static var invalidParameter_InvalidOrigin: TCTeoError {
        TCTeoError(.invalidParameter_InvalidOrigin)
    }
    
    /// 套餐包不支持最大上传大小。
    public static var invalidParameter_InvalidPostMaxSizeBilling: TCTeoError {
        TCTeoError(.invalidParameter_InvalidPostMaxSizeBilling)
    }
    
    /// 无效的最大上传大小。
    public static var invalidParameter_InvalidPostSizeValue: TCTeoError {
        TCTeoError(.invalidParameter_InvalidPostSizeValue)
    }
    
    /// 无效的URL重写。
    public static var invalidParameter_InvalidRedirectUrlCapture: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRedirectUrlCapture)
    }
    
    /// 无效的请求头header。
    public static var invalidParameter_InvalidRequestHeaderName: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRequestHeaderName)
    }
    
    /// 无效的请求头header。
    public static var invalidParameter_InvalidRequestHeaderValue: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRequestHeaderValue)
    }
    
    /// 无套餐包。
    public static var invalidParameter_InvalidResourceIdBilling: TCTeoError {
        TCTeoError(.invalidParameter_InvalidResourceIdBilling)
    }
    
    /// 无效的响应头header。
    public static var invalidParameter_InvalidResponseHeaderValue: TCTeoError {
        TCTeoError(.invalidParameter_InvalidResponseHeaderValue)
    }
    
    /// 无效的规则引擎操作。
    public static var invalidParameter_InvalidRuleEngineAction: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRuleEngineAction)
    }
    
    /// 无效的规则引擎条件。
    public static var invalidParameter_InvalidRuleEngineTarget: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRuleEngineTarget)
    }
    
    /// 无效的规则引擎文件后缀条件。
    public static var invalidParameter_InvalidRuleEngineTargetsExtension: TCTeoError {
        TCTeoError(.invalidParameter_InvalidRuleEngineTargetsExtension)
    }
    
    /// URL重写的目标URL无效。
    public static var invalidParameter_InvalidUrlRedirectUrl: TCTeoError {
        TCTeoError(.invalidParameter_InvalidUrlRedirectUrl)
    }
    
    /// 无效的WebSocket。
    public static var invalidParameter_InvalidWebSocketTimeout: TCTeoError {
        TCTeoError(.invalidParameter_InvalidWebSocketTimeout)
    }
    
    /// 参数错误。
    public static var invalidParameter_ParameterError: TCTeoError {
        TCTeoError(.invalidParameter_ParameterError)
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
    
    /// 操作被拒绝。
    public static var operationDenied: TCTeoError {
        TCTeoError(.operationDenied)
    }
    
    /// 域名尚未备案。
    public static var operationDenied_DomainNoICP: TCTeoError {
        TCTeoError(.operationDenied_DomainNoICP)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCTeoError {
        TCTeoError(.resourceInUse)
    }
    
    /// 资源被其他用户接入。
    public static var resourceInUse_Others: TCTeoError {
        TCTeoError(.resourceInUse_Others)
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
    
    /// 证书不存在或未授权。
    public static var resourceUnavailable_CertNotFound: TCTeoError {
        TCTeoError(.resourceUnavailable_CertNotFound)
    }
    
    /// 域名不存在或未开启代理。
    public static var resourceUnavailable_HostNotFound: TCTeoError {
        TCTeoError(.resourceUnavailable_HostNotFound)
    }
    
    /// 站点不存在或不属于该账号。
    public static var resourceUnavailable_ZoneNotFound: TCTeoError {
        TCTeoError(.resourceUnavailable_ZoneNotFound)
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
