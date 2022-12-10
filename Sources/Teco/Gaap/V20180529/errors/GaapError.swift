public struct TCGaapError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_NotEnterpriseAuthorization = "AuthFailure.NotEnterpriseAuthorization"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_AccountBalanceInsufficient = "FailedOperation.AccountBalanceInsufficient"
        case failedOperation_ActionIsDoing = "FailedOperation.ActionIsDoing"
        case failedOperation_ActionOperateTooQuickly = "FailedOperation.ActionOperateTooQuickly"
        case failedOperation_BelongDifferentGroup = "FailedOperation.BelongDifferentGroup"
        case failedOperation_CTCCTokenExpired = "FailedOperation.CTCCTokenExpired"
        case failedOperation_CertificateIsUsing = "FailedOperation.CertificateIsUsing"
        case failedOperation_CreateQosExceedLimit = "FailedOperation.CreateQosExceedLimit"
        case failedOperation_DeleteProxyGroupProxyRemained = "FailedOperation.DeleteProxyGroupProxyRemained"
        case failedOperation_DomainAlreadyExisted = "FailedOperation.DomainAlreadyExisted"
        case failedOperation_DomainStatusNotInRunning = "FailedOperation.DomainStatusNotInRunning"
        case failedOperation_DuplicatedRequest = "FailedOperation.DuplicatedRequest"
        case failedOperation_GroupStatusNotInRuning = "FailedOperation.GroupStatusNotInRuning"
        case failedOperation_IPUnmatched = "FailedOperation.IPUnmatched"
        case failedOperation_InstanceStatusNotInRuning = "FailedOperation.InstanceStatusNotInRuning"
        case failedOperation_InvalidListenerProtocol = "FailedOperation.InvalidListenerProtocol"
        case failedOperation_LimitNumofListener = "FailedOperation.LimitNumofListener"
        case failedOperation_LimitNumofProxiesInGroup = "FailedOperation.LimitNumofProxiesInGroup"
        case failedOperation_LimitNumofRules = "FailedOperation.LimitNumofRules"
        case failedOperation_LimitRealServerNum = "FailedOperation.LimitRealServerNum"
        case failedOperation_ListenerHasTask = "FailedOperation.ListenerHasTask"
        case failedOperation_ListenerStatusError = "FailedOperation.ListenerStatusError"
        case failedOperation_Migration = "FailedOperation.Migration"
        case failedOperation_NoResourceBound = "FailedOperation.NoResourceBound"
        case failedOperation_NonStandardProxy = "FailedOperation.NonStandardProxy"
        case failedOperation_NotSupportOldVersionProxy = "FailedOperation.NotSupportOldVersionProxy"
        case failedOperation_NotSupportProxyGroup = "FailedOperation.NotSupportProxyGroup"
        case failedOperation_NotSupportScalar = "FailedOperation.NotSupportScalar"
        case failedOperation_OperateLimitNumofListener = "FailedOperation.OperateLimitNumofListener"
        case failedOperation_ProxySecurityAlreadyClose = "FailedOperation.ProxySecurityAlreadyClose"
        case failedOperation_ProxySecurityAlreadyOpen = "FailedOperation.ProxySecurityAlreadyOpen"
        case failedOperation_ProxySecurityPolicyDefaultRule = "FailedOperation.ProxySecurityPolicyDefaultRule"
        case failedOperation_ProxySecurityPolicyDuplicatedRule = "FailedOperation.ProxySecurityPolicyDuplicatedRule"
        case failedOperation_ProxySecurityPolicyExisted = "FailedOperation.ProxySecurityPolicyExisted"
        case failedOperation_ProxySecurityPolicyOperating = "FailedOperation.ProxySecurityPolicyOperating"
        case failedOperation_ProxySellOut = "FailedOperation.ProxySellOut"
        case failedOperation_ProxyStatusNotInRuning = "FailedOperation.ProxyStatusNotInRuning"
        case failedOperation_ProxyVersionNotSupport = "FailedOperation.ProxyVersionNotSupport"
        case failedOperation_RealServerAlreadyBound = "FailedOperation.RealServerAlreadyBound"
        case failedOperation_RealServerNotInProject = "FailedOperation.RealServerNotInProject"
        case failedOperation_RequestVendorTimeout = "FailedOperation.RequestVendorTimeout"
        case failedOperation_ResourceCanNotAccess = "FailedOperation.ResourceCanNotAccess"
        case failedOperation_ResourceHadBeenDone = "FailedOperation.ResourceHadBeenDone"
        case failedOperation_ResourceNotFound = "FailedOperation.ResourceNotFound"
        case failedOperation_ResourceUpgrading = "FailedOperation.ResourceUpgrading"
        case failedOperation_RuleAlreadyExisted = "FailedOperation.RuleAlreadyExisted"
        case failedOperation_SessionNotExist = "FailedOperation.SessionNotExist"
        case failedOperation_TagResourcesFailed = "FailedOperation.TagResourcesFailed"
        case failedOperation_UnTagResourcesFailed = "FailedOperation.UnTagResourcesFailed"
        case failedOperation_UserNotAuthenticated = "FailedOperation.UserNotAuthenticated"
        case failedOperation_UserNotConfirmProtocol = "FailedOperation.UserNotConfirmProtocol"
        case failedOperation_UserOutOfCoverage = "FailedOperation.UserOutOfCoverage"
        case failedOperation_VendorReturnError = "FailedOperation.VendorReturnError"
        case failedOperation_VendorServerError = "FailedOperation.VendorServerError"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_CertificateContentNotMatchKey = "InvalidParameterValue.CertificateContentNotMatchKey"
        case invalidParameterValue_CertificateNotMatchDomain = "InvalidParameterValue.CertificateNotMatchDomain"
        case invalidParameterValue_DomainInIcpBlacklist = "InvalidParameterValue.DomainInIcpBlacklist"
        case invalidParameterValue_DomainNotRegister = "InvalidParameterValue.DomainNotRegister"
        case invalidParameterValue_DuplicateRS = "InvalidParameterValue.DuplicateRS"
        case invalidParameterValue_DuplicatedListenerPort = "InvalidParameterValue.DuplicatedListenerPort"
        case invalidParameterValue_FeatureConflict = "InvalidParameterValue.FeatureConflict"
        case invalidParameterValue_GlobalDomainHitBanBlacklist = "InvalidParameterValue.GlobalDomainHitBanBlacklist"
        case invalidParameterValue_HitBanBlacklist = "InvalidParameterValue.HitBanBlacklist"
        case invalidParameterValue_HitBlacklist = "InvalidParameterValue.HitBlacklist"
        case invalidParameterValue_InvalidBandwidth = "InvalidParameterValue.InvalidBandwidth"
        case invalidParameterValue_InvalidCertificateContent = "InvalidParameterValue.InvalidCertificateContent"
        case invalidParameterValue_InvalidCertificateId = "InvalidParameterValue.InvalidCertificateId"
        case invalidParameterValue_InvalidCertificateKey = "InvalidParameterValue.InvalidCertificateKey"
        case invalidParameterValue_InvalidConcurrency = "InvalidParameterValue.InvalidConcurrency"
        case invalidParameterValue_InvalidListenerPort = "InvalidParameterValue.InvalidListenerPort"
        case invalidParameterValue_InvalidTags = "InvalidParameterValue.InvalidTags"
        case invalidParameterValue_L7DomainHitBanBlacklist = "InvalidParameterValue.L7DomainHitBanBlacklist"
        case invalidParameterValue_ProjectIdNotBelong = "InvalidParameterValue.ProjectIdNotBelong"
        case invalidParameterValue_ProxyAndGroupFeatureConflict = "InvalidParameterValue.ProxyAndGroupFeatureConflict"
        case invalidParameterValue_ProxyAndRegionFeatureConflict = "InvalidParameterValue.ProxyAndRegionFeatureConflict"
        case invalidParameterValue_RealServerNotBelong = "InvalidParameterValue.RealServerNotBelong"
        case invalidParameterValue_UnknownAccessRegion = "InvalidParameterValue.UnknownAccessRegion"
        case invalidParameterValue_UnknownDestRegion = "InvalidParameterValue.UnknownDestRegion"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_Domain = "LimitExceeded.Domain"
        case limitExceeded_TagQuota = "LimitExceeded.TagQuota"
        case missingParameter = "MissingParameter"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_AccountViolation = "ResourceUnavailable.AccountViolation"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_CrossBorderInIsolating = "UnauthorizedOperation.CrossBorderInIsolating"
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
    public static var authFailure: TCGaapError {
        TCGaapError(.authFailure)
    }
    
    /// 非企业认证客户。
    public static var authFailure_NotEnterpriseAuthorization: TCGaapError {
        TCGaapError(.authFailure_NotEnterpriseAuthorization)
    }
    
    /// 子账户未授权操作。
    public static var authFailure_UnauthorizedOperation: TCGaapError {
        TCGaapError(.authFailure_UnauthorizedOperation)
    }
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCGaapError {
        TCGaapError(.dryRunOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCGaapError {
        TCGaapError(.failedOperation)
    }
    
    /// 账户余额不足，无法创建该通道。
    public static var failedOperation_AccountBalanceInsufficient: TCGaapError {
        TCGaapError(.failedOperation_AccountBalanceInsufficient)
    }
    
    /// 操作正在执行中，请勿重复操作。
    public static var failedOperation_ActionIsDoing: TCGaapError {
        TCGaapError(.failedOperation_ActionIsDoing)
    }
    
    /// 接口操作太频繁，请稍后重试。
    public static var failedOperation_ActionOperateTooQuickly: TCGaapError {
        TCGaapError(.failedOperation_ActionOperateTooQuickly)
    }
    
    /// 该批通道归属于不同的通道组，无法批量操作。
    public static var failedOperation_BelongDifferentGroup: TCGaapError {
        TCGaapError(.failedOperation_BelongDifferentGroup)
    }
    
    /// 中国电信加速token过期。
    public static var failedOperation_CTCCTokenExpired: TCGaapError {
        TCGaapError(.failedOperation_CTCCTokenExpired)
    }
    
    /// 证书正在使用中，无法操作。
    public static var failedOperation_CertificateIsUsing: TCGaapError {
        TCGaapError(.failedOperation_CertificateIsUsing)
    }
    
    /// 相同加速间隔时间过短。
    public static var failedOperation_CreateQosExceedLimit: TCGaapError {
        TCGaapError(.failedOperation_CreateQosExceedLimit)
    }
    
    /// 通道组中存在通道，无法删除。
    public static var failedOperation_DeleteProxyGroupProxyRemained: TCGaapError {
        TCGaapError(.failedOperation_DeleteProxyGroupProxyRemained)
    }
    
    /// 该域名在监听器下已使用。
    public static var failedOperation_DomainAlreadyExisted: TCGaapError {
        TCGaapError(.failedOperation_DomainAlreadyExisted)
    }
    
    /// 域名状态为非运行状态，无法操作。
    public static var failedOperation_DomainStatusNotInRunning: TCGaapError {
        TCGaapError(.failedOperation_DomainStatusNotInRunning)
    }
    
    /// 重复的请求，请检查ClientToken的值。
    public static var failedOperation_DuplicatedRequest: TCGaapError {
        TCGaapError(.failedOperation_DuplicatedRequest)
    }
    
    /// 通道组状态为非运行状态，无法操作。
    public static var failedOperation_GroupStatusNotInRuning: TCGaapError {
        TCGaapError(.failedOperation_GroupStatusNotInRuning)
    }
    
    /// 加速目标IP与绑定的通道IP不匹配。
    public static var failedOperation_IPUnmatched: TCGaapError {
        TCGaapError(.failedOperation_IPUnmatched)
    }
    
    /// 通道状态为非运行状态，无法操作。
    public static var failedOperation_InstanceStatusNotInRuning: TCGaapError {
        TCGaapError(.failedOperation_InstanceStatusNotInRuning)
    }
    
    /// 无效的监听器协议。
    public static var failedOperation_InvalidListenerProtocol: TCGaapError {
        TCGaapError(.failedOperation_InvalidListenerProtocol)
    }
    
    /// 监听器数量超过限制。
    public static var failedOperation_LimitNumofListener: TCGaapError {
        TCGaapError(.failedOperation_LimitNumofListener)
    }
    
    /// 通道组下通道数量超过限制。
    public static var failedOperation_LimitNumofProxiesInGroup: TCGaapError {
        TCGaapError(.failedOperation_LimitNumofProxiesInGroup)
    }
    
    /// 转发规则数超过限制。
    public static var failedOperation_LimitNumofRules: TCGaapError {
        TCGaapError(.failedOperation_LimitNumofRules)
    }
    
    /// 绑定源站数量超过限制。
    public static var failedOperation_LimitRealServerNum: TCGaapError {
        TCGaapError(.failedOperation_LimitRealServerNum)
    }
    
    /// 监听器正在操作中，请勿重复操作。
    public static var failedOperation_ListenerHasTask: TCGaapError {
        TCGaapError(.failedOperation_ListenerHasTask)
    }
    
    /// 监听器当前状态无法支持该操作。
    public static var failedOperation_ListenerStatusError: TCGaapError {
        TCGaapError(.failedOperation_ListenerStatusError)
    }
    
    /// 加速通道在升级中，暂不支持配置变更，请提工单申请。
    public static var failedOperation_Migration: TCGaapError {
        TCGaapError(.failedOperation_Migration)
    }
    
    /// 该应用模版没有绑定通道。
    public static var failedOperation_NoResourceBound: TCGaapError {
        TCGaapError(.failedOperation_NoResourceBound)
    }
    
    /// 该通道为非标通道，限制所有写操作。
    public static var failedOperation_NonStandardProxy: TCGaapError {
        TCGaapError(.failedOperation_NonStandardProxy)
    }
    
    /// 仅支持Version2.0的通道。
    public static var failedOperation_NotSupportOldVersionProxy: TCGaapError {
        TCGaapError(.failedOperation_NotSupportOldVersionProxy)
    }
    
    /// 该操作不支持通道组。
    public static var failedOperation_NotSupportProxyGroup: TCGaapError {
        TCGaapError(.failedOperation_NotSupportProxyGroup)
    }
    
    /// 不支持配置变更。
    public static var failedOperation_NotSupportScalar: TCGaapError {
        TCGaapError(.failedOperation_NotSupportScalar)
    }
    
    /// 单次操作端口过多，超过数量上限。
    public static var failedOperation_OperateLimitNumofListener: TCGaapError {
        TCGaapError(.failedOperation_OperateLimitNumofListener)
    }
    
    /// 安全策略已关闭，请勿重复操作。
    public static var failedOperation_ProxySecurityAlreadyClose: TCGaapError {
        TCGaapError(.failedOperation_ProxySecurityAlreadyClose)
    }
    
    /// 安全策略已开启，请勿重复操作。
    public static var failedOperation_ProxySecurityAlreadyOpen: TCGaapError {
        TCGaapError(.failedOperation_ProxySecurityAlreadyOpen)
    }
    
    /// 添加规则失败：禁止拒绝默认的通道访问规则。
    public static var failedOperation_ProxySecurityPolicyDefaultRule: TCGaapError {
        TCGaapError(.failedOperation_ProxySecurityPolicyDefaultRule)
    }
    
    /// 添加规则失败：安全防护访问规则重复。
    public static var failedOperation_ProxySecurityPolicyDuplicatedRule: TCGaapError {
        TCGaapError(.failedOperation_ProxySecurityPolicyDuplicatedRule)
    }
    
    /// 安全策略已经存在，请勿重复创建。
    public static var failedOperation_ProxySecurityPolicyExisted: TCGaapError {
        TCGaapError(.failedOperation_ProxySecurityPolicyExisted)
    }
    
    /// 通道安全策略操作中。
    public static var failedOperation_ProxySecurityPolicyOperating: TCGaapError {
        TCGaapError(.failedOperation_ProxySecurityPolicyOperating)
    }
    
    /// 线路售罄或资源不足，请提工单申请。
    public static var failedOperation_ProxySellOut: TCGaapError {
        TCGaapError(.failedOperation_ProxySellOut)
    }
    
    /// 通道处于非运行状态，不能添加监听器。
    public static var failedOperation_ProxyStatusNotInRuning: TCGaapError {
        TCGaapError(.failedOperation_ProxyStatusNotInRuning)
    }
    
    /// 不支持该版本通道。
    public static var failedOperation_ProxyVersionNotSupport: TCGaapError {
        TCGaapError(.failedOperation_ProxyVersionNotSupport)
    }
    
    /// 已经绑定了源站，无法删除。
    public static var failedOperation_RealServerAlreadyBound: TCGaapError {
        TCGaapError(.failedOperation_RealServerAlreadyBound)
    }
    
    /// 源站不归属于该项目。
    public static var failedOperation_RealServerNotInProject: TCGaapError {
        TCGaapError(.failedOperation_RealServerNotInProject)
    }
    
    /// 请求运营商超时。
    public static var failedOperation_RequestVendorTimeout: TCGaapError {
        TCGaapError(.failedOperation_RequestVendorTimeout)
    }
    
    /// 该资源不可访问。
    public static var failedOperation_ResourceCanNotAccess: TCGaapError {
        TCGaapError(.failedOperation_ResourceCanNotAccess)
    }
    
    public static var failedOperation_ResourceHadBeenDone: TCGaapError {
        TCGaapError(.failedOperation_ResourceHadBeenDone)
    }
    
    /// 应用ID填写有误，请检查应用ID是否存在。
    public static var failedOperation_ResourceNotFound: TCGaapError {
        TCGaapError(.failedOperation_ResourceNotFound)
    }
    
    /// 资源升级中。
    public static var failedOperation_ResourceUpgrading: TCGaapError {
        TCGaapError(.failedOperation_ResourceUpgrading)
    }
    
    /// 规则已经存在。
    public static var failedOperation_RuleAlreadyExisted: TCGaapError {
        TCGaapError(.failedOperation_RuleAlreadyExisted)
    }
    
    /// Session不存在或已经被取消。
    public static var failedOperation_SessionNotExist: TCGaapError {
        TCGaapError(.failedOperation_SessionNotExist)
    }
    
    public static var failedOperation_TagResourcesFailed: TCGaapError {
        TCGaapError(.failedOperation_TagResourcesFailed)
    }
    
    public static var failedOperation_UnTagResourcesFailed: TCGaapError {
        TCGaapError(.failedOperation_UnTagResourcesFailed)
    }
    
    /// 用户未认证。
    public static var failedOperation_UserNotAuthenticated: TCGaapError {
        TCGaapError(.failedOperation_UserNotAuthenticated)
    }
    
    public static var failedOperation_UserNotConfirmProtocol: TCGaapError {
        TCGaapError(.failedOperation_UserNotConfirmProtocol)
    }
    
    /// 该用户不在运营商网络可加速范围内。
    public static var failedOperation_UserOutOfCoverage: TCGaapError {
        TCGaapError(.failedOperation_UserOutOfCoverage)
    }
    
    /// 运营商返回结果错误。
    public static var failedOperation_VendorReturnError: TCGaapError {
        TCGaapError(.failedOperation_VendorReturnError)
    }
    
    /// 运营商服务器临时错误。
    public static var failedOperation_VendorServerError: TCGaapError {
        TCGaapError(.failedOperation_VendorServerError)
    }
    
    /// 内部错误。
    public static var internalError: TCGaapError {
        TCGaapError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCGaapError {
        TCGaapError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCGaapError {
        TCGaapError(.invalidParameterValue)
    }
    
    public static var invalidParameterValue_CertificateContentNotMatchKey: TCGaapError {
        TCGaapError(.invalidParameterValue_CertificateContentNotMatchKey)
    }
    
    /// Https证书与域名不匹配。
    public static var invalidParameterValue_CertificateNotMatchDomain: TCGaapError {
        TCGaapError(.invalidParameterValue_CertificateNotMatchDomain)
    }
    
    /// 域名在ICP黑名单内。
    public static var invalidParameterValue_DomainInIcpBlacklist: TCGaapError {
        TCGaapError(.invalidParameterValue_DomainInIcpBlacklist)
    }
    
    /// 域名未备案。
    public static var invalidParameterValue_DomainNotRegister: TCGaapError {
        TCGaapError(.invalidParameterValue_DomainNotRegister)
    }
    
    /// RealServer已存在。
    public static var invalidParameterValue_DuplicateRS: TCGaapError {
        TCGaapError(.invalidParameterValue_DuplicateRS)
    }
    
    /// 监听器端口已存在。
    public static var invalidParameterValue_DuplicatedListenerPort: TCGaapError {
        TCGaapError(.invalidParameterValue_DuplicatedListenerPort)
    }
    
    /// 无法同时开启所设置的特性。
    public static var invalidParameterValue_FeatureConflict: TCGaapError {
        TCGaapError(.invalidParameterValue_FeatureConflict)
    }
    
    /// 该默认入口被封禁，无法添加。
    public static var invalidParameterValue_GlobalDomainHitBanBlacklist: TCGaapError {
        TCGaapError(.invalidParameterValue_GlobalDomainHitBanBlacklist)
    }
    
    /// 资源已被录入封禁黑名单。
    public static var invalidParameterValue_HitBanBlacklist: TCGaapError {
        TCGaapError(.invalidParameterValue_HitBanBlacklist)
    }
    
    /// header黑名单限制。
    public static var invalidParameterValue_HitBlacklist: TCGaapError {
        TCGaapError(.invalidParameterValue_HitBlacklist)
    }
    
    /// 带宽值不在可选范围内。
    public static var invalidParameterValue_InvalidBandwidth: TCGaapError {
        TCGaapError(.invalidParameterValue_InvalidBandwidth)
    }
    
    /// 解析失败，请检查证书内容格式。
    public static var invalidParameterValue_InvalidCertificateContent: TCGaapError {
        TCGaapError(.invalidParameterValue_InvalidCertificateContent)
    }
    
    /// 证书不可用。
    public static var invalidParameterValue_InvalidCertificateId: TCGaapError {
        TCGaapError(.invalidParameterValue_InvalidCertificateId)
    }
    
    /// 解析失败，请检查证书密钥格式。
    public static var invalidParameterValue_InvalidCertificateKey: TCGaapError {
        TCGaapError(.invalidParameterValue_InvalidCertificateKey)
    }
    
    /// 并发量值不在可选范围内。
    public static var invalidParameterValue_InvalidConcurrency: TCGaapError {
        TCGaapError(.invalidParameterValue_InvalidConcurrency)
    }
    
    /// 该监听器端口不可用。
    public static var invalidParameterValue_InvalidListenerPort: TCGaapError {
        TCGaapError(.invalidParameterValue_InvalidListenerPort)
    }
    
    /// 未找到或无权限访问该标签
    public static var invalidParameterValue_InvalidTags: TCGaapError {
        TCGaapError(.invalidParameterValue_InvalidTags)
    }
    
    /// 该域名被封禁，无法添加。
    public static var invalidParameterValue_L7DomainHitBanBlacklist: TCGaapError {
        TCGaapError(.invalidParameterValue_L7DomainHitBanBlacklist)
    }
    
    /// 项目不属于该用户。
    public static var invalidParameterValue_ProjectIdNotBelong: TCGaapError {
        TCGaapError(.invalidParameterValue_ProjectIdNotBelong)
    }
    
    /// 该通道组下无法支持该通道所需的特性。
    public static var invalidParameterValue_ProxyAndGroupFeatureConflict: TCGaapError {
        TCGaapError(.invalidParameterValue_ProxyAndGroupFeatureConflict)
    }
    
    /// 该地区不支持通道所设置的特性。
    public static var invalidParameterValue_ProxyAndRegionFeatureConflict: TCGaapError {
        TCGaapError(.invalidParameterValue_ProxyAndRegionFeatureConflict)
    }
    
    /// 源站不属于该用户。
    public static var invalidParameterValue_RealServerNotBelong: TCGaapError {
        TCGaapError(.invalidParameterValue_RealServerNotBelong)
    }
    
    /// 未找到或无权限访问的加速区域。
    public static var invalidParameterValue_UnknownAccessRegion: TCGaapError {
        TCGaapError(.invalidParameterValue_UnknownAccessRegion)
    }
    
    /// 未找到或无权限访问的源站区域。
    public static var invalidParameterValue_UnknownDestRegion: TCGaapError {
        TCGaapError(.invalidParameterValue_UnknownDestRegion)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCGaapError {
        TCGaapError(.limitExceeded)
    }
    
    /// 域名数量超限制。
    public static var limitExceeded_Domain: TCGaapError {
        TCGaapError(.limitExceeded_Domain)
    }
    
    public static var limitExceeded_TagQuota: TCGaapError {
        TCGaapError(.limitExceeded_TagQuota)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCGaapError {
        TCGaapError(.missingParameter)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCGaapError {
        TCGaapError(.resourceNotFound)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCGaapError {
        TCGaapError(.resourceUnavailable)
    }
    
    /// 账号下存在违规资源，详情请查看站内信或邮件。
    public static var resourceUnavailable_AccountViolation: TCGaapError {
        TCGaapError(.resourceUnavailable_AccountViolation)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCGaapError {
        TCGaapError(.unauthorizedOperation)
    }
    
    /// 跨境通道的联通带宽处于隔离中。
    public static var unauthorizedOperation_CrossBorderInIsolating: TCGaapError {
        TCGaapError(.unauthorizedOperation_CrossBorderInIsolating)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCGaapError {
        TCGaapError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCGaapError {
        TCGaapError(.unsupportedOperation)
    }
}

extension TCGaapError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InvalidParameterValue.self, LimitExceeded.self, ResourceUnavailable.self, UnauthorizedOperation.self]
    }
}

extension TCGaapError: Equatable {
    public static func == (lhs: TCGaapError, rhs: TCGaapError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCGaapError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}