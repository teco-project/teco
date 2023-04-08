//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCTeoError {
    public struct InvalidParameter: TCTeoErrorType {
        enum Code: String {
            case actionInProgress = "InvalidParameter.ActionInProgress"
            case cacheKeyQueryStringTooManyValue = "InvalidParameter.CacheKeyQueryStringTooManyValue"
            case certChainError = "InvalidParameter.CertChainError"
            case certCheckError = "InvalidParameter.CertCheckError"
            case certCompleteError = "InvalidParameter.CertCompleteError"
            case certFormatError = "InvalidParameter.CertFormatError"
            case certIsExpired = "InvalidParameter.CertIsExpired"
            case certNoCn = "InvalidParameter.CertNoCn"
            case certNoInfo = "InvalidParameter.CertNoInfo"
            case certNotMatchDomain = "InvalidParameter.CertNotMatchDomain"
            case certNotMatchKey = "InvalidParameter.CertNotMatchKey"
            case certNotPem = "InvalidParameter.CertNotPem"
            case certSystemError = "InvalidParameter.CertSystemError"
            case certToExpire = "InvalidParameter.CertToExpire"
            case certTooShortKeySize = "InvalidParameter.CertTooShortKeySize"
            case certUnsupportedType = "InvalidParameter.CertUnsupportedType"
            case cnameWildHostNotAllowApplyCertificate = "InvalidParameter.CnameWildHostNotAllowApplyCertificate"
            case domainNotFound = "InvalidParameter.DomainNotFound"
            case domainOnTrafficScheduling = "InvalidParameter.DomainOnTrafficScheduling"
            case errActionUnsupportTarget = "InvalidParameter.ErrActionUnsupportTarget"
            case errInvalidAction = "InvalidParameter.ErrInvalidAction"
            case errInvalidActionParam = "InvalidParameter.ErrInvalidActionParam"
            case errInvalidActionParamAction = "InvalidParameter.ErrInvalidActionParamAction"
            case errInvalidActionParamBadValueType = "InvalidParameter.ErrInvalidActionParamBadValueType"
            case errInvalidActionParamDuplicateName = "InvalidParameter.ErrInvalidActionParamDuplicateName"
            case errInvalidActionParamName = "InvalidParameter.ErrInvalidActionParamName"
            case errInvalidActionParamTooManyValues = "InvalidParameter.ErrInvalidActionParamTooManyValues"
            case errInvalidActionType = "InvalidParameter.ErrInvalidActionType"
            case errInvalidConditionIgnoreCase = "InvalidParameter.ErrInvalidConditionIgnoreCase"
            case errInvalidConditionNameBadName = "InvalidParameter.ErrInvalidConditionNameBadName"
            case errInvalidConditionNameTargetNotSupportName = "InvalidParameter.ErrInvalidConditionNameTargetNotSupportName"
            case errInvalidConditionValueBadRegular = "InvalidParameter.ErrInvalidConditionValueBadRegular"
            case errInvalidConditionValueBadUrl = "InvalidParameter.ErrInvalidConditionValueBadUrl"
            case errInvalidConditionValueBadValue = "InvalidParameter.ErrInvalidConditionValueBadValue"
            case errInvalidConditionValueBadValueContainFileNameExtension = "InvalidParameter.ErrInvalidConditionValueBadValueContainFileNameExtension"
            case errInvalidConditionValueTooLongValue = "InvalidParameter.ErrInvalidConditionValueTooLongValue"
            case errInvalidConditionValueTooManyRegular = "InvalidParameter.ErrInvalidConditionValueTooManyRegular"
            case errInvalidConditionValueTooManyWildcard = "InvalidParameter.ErrInvalidConditionValueTooManyWildcard"
            case errInvalidConditionValueZeroLength = "InvalidParameter.ErrInvalidConditionValueZeroLength"
            case grpcRequireHttp2 = "InvalidParameter.GrpcRequireHttp2"
            case hostNotFound = "InvalidParameter.HostNotFound"
            case hostStatusNotAllowApplyCertificate = "InvalidParameter.HostStatusNotAllowApplyCertificate"
            case invalidAccelerateType = "InvalidParameter.InvalidAccelerateType"
            case invalidAuthentication = "InvalidParameter.InvalidAuthentication"
            case invalidAuthenticationTypeSecretKey = "InvalidParameter.InvalidAuthenticationTypeSecretKey"
            case invalidAuthenticationTypeSignParam = "InvalidParameter.InvalidAuthenticationTypeSignParam"
            case invalidBackupServerName = "InvalidParameter.InvalidBackupServerName"
            case invalidCacheConfigCache = "InvalidParameter.InvalidCacheConfigCache"
            case invalidCacheConfigFollowOrigin = "InvalidParameter.InvalidCacheConfigFollowOrigin"
            case invalidCacheKey = "InvalidParameter.InvalidCacheKey"
            case invalidCacheKeyIgnoreCase = "InvalidParameter.InvalidCacheKeyIgnoreCase"
            case invalidCacheKeyQueryStringValue = "InvalidParameter.InvalidCacheKeyQueryStringValue"
            case invalidCacheKeyScheme = "InvalidParameter.InvalidCacheKeyScheme"
            case invalidCacheOnlyOnSwitch = "InvalidParameter.InvalidCacheOnlyOnSwitch"
            case invalidCacheTime = "InvalidParameter.InvalidCacheTime"
            case invalidCertInfo = "InvalidParameter.InvalidCertInfo"
            case invalidClientIpHeaderName = "InvalidParameter.InvalidClientIpHeaderName"
            case invalidClientIpOrigin = "InvalidParameter.InvalidClientIpOrigin"
            case invalidDynamicRoutine = "InvalidParameter.InvalidDynamicRoutine"
            case invalidDynamicRoutineBilling = "InvalidParameter.InvalidDynamicRoutineBilling"
            case invalidErrorPageRedirectUrl = "InvalidParameter.InvalidErrorPageRedirectUrl"
            case invalidHttps = "InvalidParameter.InvalidHttps"
            case invalidHttpsCipherSuiteAndTlsVersion = "InvalidParameter.InvalidHttpsCipherSuiteAndTlsVersion"
            case invalidHttpsHstsMaxAge = "InvalidParameter.InvalidHttpsHstsMaxAge"
            case invalidHttpsTlsVersion = "InvalidParameter.InvalidHttpsTlsVersion"
            case invalidIpv6Switch = "InvalidParameter.InvalidIpv6Switch"
            case invalidOrigin = "InvalidParameter.InvalidOrigin"
            case invalidParameter = "InvalidParameter.InvalidParameter"
            case invalidPostMaxSizeBilling = "InvalidParameter.InvalidPostMaxSizeBilling"
            case invalidPostSizeValue = "InvalidParameter.InvalidPostSizeValue"
            case invalidQuicBilling = "InvalidParameter.InvalidQuicBilling"
            case invalidRangeOriginPull = "InvalidParameter.InvalidRangeOriginPull"
            case invalidRequestHeaderName = "InvalidParameter.InvalidRequestHeaderName"
            case invalidRequestHeaderNameXff = "InvalidParameter.InvalidRequestHeaderNameXff"
            case invalidRequestHeaderValue = "InvalidParameter.InvalidRequestHeaderValue"
            case invalidResourceIdBilling = "InvalidParameter.InvalidResourceIdBilling"
            case invalidResponseHeaderName = "InvalidParameter.InvalidResponseHeaderName"
            case invalidResponseHeaderValue = "InvalidParameter.InvalidResponseHeaderValue"
            case invalidRuleEngine = "InvalidParameter.InvalidRuleEngine"
            case invalidRuleEngineAction = "InvalidParameter.InvalidRuleEngineAction"
            case invalidRuleEngineNotFound = "InvalidParameter.InvalidRuleEngineNotFound"
            case invalidRuleEngineTarget = "InvalidParameter.InvalidRuleEngineTarget"
            case invalidRuleEngineTargetsExtension = "InvalidParameter.InvalidRuleEngineTargetsExtension"
            case invalidRuleEngineTargetsUrl = "InvalidParameter.InvalidRuleEngineTargetsUrl"
            case invalidServerName = "InvalidParameter.InvalidServerName"
            case invalidUpstreamRequestQueryStringValue = "InvalidParameter.InvalidUpstreamRequestQueryStringValue"
            case invalidUrlRedirectHost = "InvalidParameter.InvalidUrlRedirectHost"
            case invalidUrlRedirectUrl = "InvalidParameter.InvalidUrlRedirectUrl"
            case invalidWebSocketTimeout = "InvalidParameter.InvalidWebSocketTimeout"
            case keyRulesInvalidQueryStringValue = "InvalidParameter.KeyRulesInvalidQueryStringValue"
            case lengthExceedsLimit = "InvalidParameter.LengthExceedsLimit"
            case originIsInnerIp = "InvalidParameter.OriginIsInnerIp"
            case originOriginGroupIdIsRequired = "InvalidParameter.OriginOriginGroupIdIsRequired"
            case parameterError = "InvalidParameter.ParameterError"
            case planNotFound = "InvalidParameter.PlanNotFound"
            case postMaxSizeLimitExceeded = "InvalidParameter.PostMaxSizeLimitExceeded"
            case security = "InvalidParameter.Security"
            case settingInvalidParam = "InvalidParameter.SettingInvalidParam"
            case target = "InvalidParameter.Target"
            case taskNotGenerated = "InvalidParameter.TaskNotGenerated"
            case taskSystemError = "InvalidParameter.TaskSystemError"
            case uploadUrl = "InvalidParameter.UploadUrl"
            case zoneHasBeenBound = "InvalidParameter.ZoneHasBeenBound"
            case zoneNotFound = "InvalidParameter.ZoneNotFound"
            case other = "InvalidParameter"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 操作频繁，请稍后重试。
        public static var actionInProgress: InvalidParameter {
            InvalidParameter(.actionInProgress)
        }

        /// 查询字符串规则超过了限制。
        public static var cacheKeyQueryStringTooManyValue: InvalidParameter {
            InvalidParameter(.cacheKeyQueryStringTooManyValue)
        }

        /// HTTPS证书链错误。
        public static var certChainError: InvalidParameter {
            InvalidParameter(.certChainError)
        }

        /// 证书错误。
        public static var certCheckError: InvalidParameter {
            InvalidParameter(.certCheckError)
        }

        /// 证书错误。
        public static var certCompleteError: InvalidParameter {
            InvalidParameter(.certCompleteError)
        }

        /// 证书错误。
        public static var certFormatError: InvalidParameter {
            InvalidParameter(.certFormatError)
        }

        /// HTTPS证书已过期。
        public static var certIsExpired: InvalidParameter {
            InvalidParameter(.certIsExpired)
        }

        /// 证书错误。
        public static var certNoCn: InvalidParameter {
            InvalidParameter(.certNoCn)
        }

        /// 无效的HTTPS证书。
        public static var certNoInfo: InvalidParameter {
            InvalidParameter(.certNoInfo)
        }

        /// HTTPS证书和域名不匹配。
        public static var certNotMatchDomain: InvalidParameter {
            InvalidParameter(.certNotMatchDomain)
        }

        /// HTTPS证书和密钥不匹配。
        public static var certNotMatchKey: InvalidParameter {
            InvalidParameter(.certNotMatchKey)
        }

        /// 证书错误。
        public static var certNotPem: InvalidParameter {
            InvalidParameter(.certNotPem)
        }

        /// 内部错误。
        public static var certSystemError: InvalidParameter {
            InvalidParameter(.certSystemError)
        }

        /// HTTPS证书即将过期。
        public static var certToExpire: InvalidParameter {
            InvalidParameter(.certToExpire)
        }

        /// 证书错误。
        public static var certTooShortKeySize: InvalidParameter {
            InvalidParameter(.certTooShortKeySize)
        }

        /// 证书错误。
        public static var certUnsupportedType: InvalidParameter {
            InvalidParameter(.certUnsupportedType)
        }

        /// CNAME模式下无法申请泛域名证书。
        public static var cnameWildHostNotAllowApplyCertificate: InvalidParameter {
            InvalidParameter(.cnameWildHostNotAllowApplyCertificate)
        }

        /// 域名不存在或不属于该账号。
        public static var domainNotFound: InvalidParameter {
            InvalidParameter(.domainNotFound)
        }

        /// 当前域名已开启流量调度功能。
        public static var domainOnTrafficScheduling: InvalidParameter {
            InvalidParameter(.domainOnTrafficScheduling)
        }

        /// 操作不支持条件。
        public static var errActionUnsupportTarget: InvalidParameter {
            InvalidParameter(.errActionUnsupportTarget)
        }

        /// 非法操作。
        public static var errInvalidAction: InvalidParameter {
            InvalidParameter(.errInvalidAction)
        }

        /// 非法操作-非法参数。
        public static var errInvalidActionParam: InvalidParameter {
            InvalidParameter(.errInvalidActionParam)
        }

        /// 非法操作-非法参数-无效action。
        public static var errInvalidActionParamAction: InvalidParameter {
            InvalidParameter(.errInvalidActionParamAction)
        }

        /// 非法操作-非法参数-无效参数值类型。
        public static var errInvalidActionParamBadValueType: InvalidParameter {
            InvalidParameter(.errInvalidActionParamBadValueType)
        }

        /// 非法操作-非法参数-参数名重复。
        public static var errInvalidActionParamDuplicateName: InvalidParameter {
            InvalidParameter(.errInvalidActionParamDuplicateName)
        }

        /// 非法操作-非法参数-无效参数值类型。
        public static var errInvalidActionParamName: InvalidParameter {
            InvalidParameter(.errInvalidActionParamName)
        }

        /// 非法操作-非法参数-参数值数量超出限制。
        public static var errInvalidActionParamTooManyValues: InvalidParameter {
            InvalidParameter(.errInvalidActionParamTooManyValues)
        }

        /// 非法操作-非法类型。
        public static var errInvalidActionType: InvalidParameter {
            InvalidParameter(.errInvalidActionType)
        }

        /// 非法条件-非法忽略大小写。
        public static var errInvalidConditionIgnoreCase: InvalidParameter {
            InvalidParameter(.errInvalidConditionIgnoreCase)
        }

        /// 非法条件-非法参数名称-无效的参数名称。
        public static var errInvalidConditionNameBadName: InvalidParameter {
            InvalidParameter(.errInvalidConditionNameBadName)
        }

        /// 非法条件-非法参数名称-匹配类型不支持参数名称。
        public static var errInvalidConditionNameTargetNotSupportName: InvalidParameter {
            InvalidParameter(.errInvalidConditionNameTargetNotSupportName)
        }

        /// 非法条件-非法参数值-无效的正则表达式。
        public static var errInvalidConditionValueBadRegular: InvalidParameter {
            InvalidParameter(.errInvalidConditionValueBadRegular)
        }

        /// 非法条件-非法参数值-无效的url。
        public static var errInvalidConditionValueBadUrl: InvalidParameter {
            InvalidParameter(.errInvalidConditionValueBadUrl)
        }

        /// 非法条件-非法参数值-无效的参数值。
        public static var errInvalidConditionValueBadValue: InvalidParameter {
            InvalidParameter(.errInvalidConditionValueBadValue)
        }

        /// 非法条件-非法参数值-无效的参数值-文件名不应包含文件后缀。
        public static var errInvalidConditionValueBadValueContainFileNameExtension: InvalidParameter {
            InvalidParameter(.errInvalidConditionValueBadValueContainFileNameExtension)
        }

        /// 非法条件-非法参数值-参数值长度超出限制。
        public static var errInvalidConditionValueTooLongValue: InvalidParameter {
            InvalidParameter(.errInvalidConditionValueTooLongValue)
        }

        /// 非法条件-非法参数值-正则表达式数量超出限制。
        public static var errInvalidConditionValueTooManyRegular: InvalidParameter {
            InvalidParameter(.errInvalidConditionValueTooManyRegular)
        }

        /// 非法条件-非法参数值-通配符数量超出限制。
        public static var errInvalidConditionValueTooManyWildcard: InvalidParameter {
            InvalidParameter(.errInvalidConditionValueTooManyWildcard)
        }

        /// 非法条件-非法参数值-参数值数量为0。
        public static var errInvalidConditionValueZeroLength: InvalidParameter {
            InvalidParameter(.errInvalidConditionValueZeroLength)
        }

        /// 开启 Grpc 协议支持需要同时开启 HTTP/2 协议支持。
        public static var grpcRequireHttp2: InvalidParameter {
            InvalidParameter(.grpcRequireHttp2)
        }

        /// 域名不存在。
        public static var hostNotFound: InvalidParameter {
            InvalidParameter(.hostNotFound)
        }

        /// CNAME 未切换或者源站未路由到EO服务器。
        public static var hostStatusNotAllowApplyCertificate: InvalidParameter {
            InvalidParameter(.hostStatusNotAllowApplyCertificate)
        }

        /// 参数错误。
        public static var invalidAccelerateType: InvalidParameter {
            InvalidParameter(.invalidAccelerateType)
        }

        /// 无效的token鉴权。
        public static var invalidAuthentication: InvalidParameter {
            InvalidParameter(.invalidAuthentication)
        }

        /// 无效的token鉴权密钥。
        public static var invalidAuthenticationTypeSecretKey: InvalidParameter {
            InvalidParameter(.invalidAuthenticationTypeSecretKey)
        }

        /// 无效的token鉴权参数。
        public static var invalidAuthenticationTypeSignParam: InvalidParameter {
            InvalidParameter(.invalidAuthenticationTypeSignParam)
        }

        /// 无效的备源回源Host。
        public static var invalidBackupServerName: InvalidParameter {
            InvalidParameter(.invalidBackupServerName)
        }

        /// 无效的节点缓存。
        public static var invalidCacheConfigCache: InvalidParameter {
            InvalidParameter(.invalidCacheConfigCache)
        }

        /// 无效的节点缓存，遵循源站行为。
        public static var invalidCacheConfigFollowOrigin: InvalidParameter {
            InvalidParameter(.invalidCacheConfigFollowOrigin)
        }

        /// 无效的缓存键。
        public static var invalidCacheKey: InvalidParameter {
            InvalidParameter(.invalidCacheKey)
        }

        /// 无效的缓存键忽略大小写。
        public static var invalidCacheKeyIgnoreCase: InvalidParameter {
            InvalidParameter(.invalidCacheKeyIgnoreCase)
        }

        /// 无效的查询字符串。
        public static var invalidCacheKeyQueryStringValue: InvalidParameter {
            InvalidParameter(.invalidCacheKeyQueryStringValue)
        }

        /// 无效的自定义Cache Key Scheme无效。
        public static var invalidCacheKeyScheme: InvalidParameter {
            InvalidParameter(.invalidCacheKeyScheme)
        }

        /// 无效的节点缓存。
        public static var invalidCacheOnlyOnSwitch: InvalidParameter {
            InvalidParameter(.invalidCacheOnlyOnSwitch)
        }

        /// 无效的节点缓存时间。
        public static var invalidCacheTime: InvalidParameter {
            InvalidParameter(.invalidCacheTime)
        }

        /// 证书信息错误。
        public static var invalidCertInfo: InvalidParameter {
            InvalidParameter(.invalidCertInfo)
        }

        /// 无效的客户端IP请求头。
        public static var invalidClientIpHeaderName: InvalidParameter {
            InvalidParameter(.invalidClientIpHeaderName)
        }

        /// 分区域回源的源站无效。
        public static var invalidClientIpOrigin: InvalidParameter {
            InvalidParameter(.invalidClientIpOrigin)
        }

        /// 无效的智能加速。
        public static var invalidDynamicRoutine: InvalidParameter {
            InvalidParameter(.invalidDynamicRoutine)
        }

        /// 套餐包不支持智能加速配置。
        public static var invalidDynamicRoutineBilling: InvalidParameter {
            InvalidParameter(.invalidDynamicRoutineBilling)
        }

        /// 无效的自定义错误页面。
        public static var invalidErrorPageRedirectUrl: InvalidParameter {
            InvalidParameter(.invalidErrorPageRedirectUrl)
        }

        /// 无效的HTTPS。
        public static var invalidHttps: InvalidParameter {
            InvalidParameter(.invalidHttps)
        }

        /// 加密套件与TLS版本不匹配。
        public static var invalidHttpsCipherSuiteAndTlsVersion: InvalidParameter {
            InvalidParameter(.invalidHttpsCipherSuiteAndTlsVersion)
        }

        /// 无效的HTTPS HSTS。
        public static var invalidHttpsHstsMaxAge: InvalidParameter {
            InvalidParameter(.invalidHttpsHstsMaxAge)
        }

        /// 无效的HTTPS TLS版本。
        public static var invalidHttpsTlsVersion: InvalidParameter {
            InvalidParameter(.invalidHttpsTlsVersion)
        }

        /// 无效的Ipv6开关配置。
        public static var invalidIpv6Switch: InvalidParameter {
            InvalidParameter(.invalidIpv6Switch)
        }

        /// 无效的源站。
        public static var invalidOrigin: InvalidParameter {
            InvalidParameter(.invalidOrigin)
        }

        /// 参数错误。
        public static var invalidParameter: InvalidParameter {
            InvalidParameter(.invalidParameter)
        }

        /// 套餐包不支持最大上传大小。
        public static var invalidPostMaxSizeBilling: InvalidParameter {
            InvalidParameter(.invalidPostMaxSizeBilling)
        }

        /// 无效的最大上传大小。
        public static var invalidPostSizeValue: InvalidParameter {
            InvalidParameter(.invalidPostSizeValue)
        }

        /// 套餐包不支持Quic配置。
        public static var invalidQuicBilling: InvalidParameter {
            InvalidParameter(.invalidQuicBilling)
        }

        /// 无效的分片回源。
        public static var invalidRangeOriginPull: InvalidParameter {
            InvalidParameter(.invalidRangeOriginPull)
        }

        /// 无效的请求头header。
        public static var invalidRequestHeaderName: InvalidParameter {
            InvalidParameter(.invalidRequestHeaderName)
        }

        /// x-forwarded-for 请求头配置无效
        ///
        /// x-forwarded-for 请求头无法自定义，请删除后提交
        public static var invalidRequestHeaderNameXff: InvalidParameter {
            InvalidParameter(.invalidRequestHeaderNameXff)
        }

        /// 无效的请求头header。
        public static var invalidRequestHeaderValue: InvalidParameter {
            InvalidParameter(.invalidRequestHeaderValue)
        }

        /// 无套餐包。
        public static var invalidResourceIdBilling: InvalidParameter {
            InvalidParameter(.invalidResourceIdBilling)
        }

        /// 无效的响应头header。
        public static var invalidResponseHeaderName: InvalidParameter {
            InvalidParameter(.invalidResponseHeaderName)
        }

        /// 无效的响应头header。
        public static var invalidResponseHeaderValue: InvalidParameter {
            InvalidParameter(.invalidResponseHeaderValue)
        }

        /// 无效的规则引擎配置。
        public static var invalidRuleEngine: InvalidParameter {
            InvalidParameter(.invalidRuleEngine)
        }

        /// 无效的规则引擎操作。
        public static var invalidRuleEngineAction: InvalidParameter {
            InvalidParameter(.invalidRuleEngineAction)
        }

        /// 规则不存在。
        public static var invalidRuleEngineNotFound: InvalidParameter {
            InvalidParameter(.invalidRuleEngineNotFound)
        }

        /// 无效的规则引擎条件。
        public static var invalidRuleEngineTarget: InvalidParameter {
            InvalidParameter(.invalidRuleEngineTarget)
        }

        /// 无效的规则引擎文件后缀条件。
        public static var invalidRuleEngineTargetsExtension: InvalidParameter {
            InvalidParameter(.invalidRuleEngineTargetsExtension)
        }

        /// 无效的规则引擎URL条件。
        public static var invalidRuleEngineTargetsUrl: InvalidParameter {
            InvalidParameter(.invalidRuleEngineTargetsUrl)
        }

        /// 无效的回源Host。
        public static var invalidServerName: InvalidParameter {
            InvalidParameter(.invalidServerName)
        }

        /// 无效的回源请求参数设置-无效查询字符串值。
        public static var invalidUpstreamRequestQueryStringValue: InvalidParameter {
            InvalidParameter(.invalidUpstreamRequestQueryStringValue)
        }

        /// URL重写的目标HOST无效。
        public static var invalidUrlRedirectHost: InvalidParameter {
            InvalidParameter(.invalidUrlRedirectHost)
        }

        /// URL重写的目标URL无效。
        public static var invalidUrlRedirectUrl: InvalidParameter {
            InvalidParameter(.invalidUrlRedirectUrl)
        }

        /// 无效的WebSocket。
        public static var invalidWebSocketTimeout: InvalidParameter {
            InvalidParameter(.invalidWebSocketTimeout)
        }

        /// 无效的缓存键。
        public static var keyRulesInvalidQueryStringValue: InvalidParameter {
            InvalidParameter(.keyRulesInvalidQueryStringValue)
        }

        /// 参数长度超过限制。
        public static var lengthExceedsLimit: InvalidParameter {
            InvalidParameter(.lengthExceedsLimit)
        }

        /// 源站是内网IP。
        public static var originIsInnerIp: InvalidParameter {
            InvalidParameter(.originIsInnerIp)
        }

        /// 修改源站操作中源站组Id必填。
        public static var originOriginGroupIdIsRequired: InvalidParameter {
            InvalidParameter(.originOriginGroupIdIsRequired)
        }

        /// 参数错误。
        public static var parameterError: InvalidParameter {
            InvalidParameter(.parameterError)
        }

        /// 套餐不存在。
        public static var planNotFound: InvalidParameter {
            InvalidParameter(.planNotFound)
        }

        /// 最大上传大小超出限制
        public static var postMaxSizeLimitExceeded: InvalidParameter {
            InvalidParameter(.postMaxSizeLimitExceeded)
        }

        /// 参数错误
        public static var security: InvalidParameter {
            InvalidParameter(.security)
        }

        /// 配置项参数错误。
        public static var settingInvalidParam: InvalidParameter {
            InvalidParameter(.settingInvalidParam)
        }

        /// 资源存在错误。
        public static var target: InvalidParameter {
            InvalidParameter(.target)
        }

        /// 任务无法生成。
        public static var taskNotGenerated: InvalidParameter {
            InvalidParameter(.taskNotGenerated)
        }

        /// 内部错误。
        public static var taskSystemError: InvalidParameter {
            InvalidParameter(.taskSystemError)
        }

        /// 文件上传链接存在问题。
        public static var uploadUrl: InvalidParameter {
            InvalidParameter(.uploadUrl)
        }

        /// 站点已被绑定。
        public static var zoneHasBeenBound: InvalidParameter {
            InvalidParameter(.zoneHasBeenBound)
        }

        /// 站点不存在。
        public static var zoneNotFound: InvalidParameter {
            InvalidParameter(.zoneNotFound)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asTeoError() -> TCTeoError {
            let code: TCTeoError.Code
            switch self.error {
            case .actionInProgress:
                code = .invalidParameter_ActionInProgress
            case .cacheKeyQueryStringTooManyValue:
                code = .invalidParameter_CacheKeyQueryStringTooManyValue
            case .certChainError:
                code = .invalidParameter_CertChainError
            case .certCheckError:
                code = .invalidParameter_CertCheckError
            case .certCompleteError:
                code = .invalidParameter_CertCompleteError
            case .certFormatError:
                code = .invalidParameter_CertFormatError
            case .certIsExpired:
                code = .invalidParameter_CertIsExpired
            case .certNoCn:
                code = .invalidParameter_CertNoCn
            case .certNoInfo:
                code = .invalidParameter_CertNoInfo
            case .certNotMatchDomain:
                code = .invalidParameter_CertNotMatchDomain
            case .certNotMatchKey:
                code = .invalidParameter_CertNotMatchKey
            case .certNotPem:
                code = .invalidParameter_CertNotPem
            case .certSystemError:
                code = .invalidParameter_CertSystemError
            case .certToExpire:
                code = .invalidParameter_CertToExpire
            case .certTooShortKeySize:
                code = .invalidParameter_CertTooShortKeySize
            case .certUnsupportedType:
                code = .invalidParameter_CertUnsupportedType
            case .cnameWildHostNotAllowApplyCertificate:
                code = .invalidParameter_CnameWildHostNotAllowApplyCertificate
            case .domainNotFound:
                code = .invalidParameter_DomainNotFound
            case .domainOnTrafficScheduling:
                code = .invalidParameter_DomainOnTrafficScheduling
            case .errActionUnsupportTarget:
                code = .invalidParameter_ErrActionUnsupportTarget
            case .errInvalidAction:
                code = .invalidParameter_ErrInvalidAction
            case .errInvalidActionParam:
                code = .invalidParameter_ErrInvalidActionParam
            case .errInvalidActionParamAction:
                code = .invalidParameter_ErrInvalidActionParamAction
            case .errInvalidActionParamBadValueType:
                code = .invalidParameter_ErrInvalidActionParamBadValueType
            case .errInvalidActionParamDuplicateName:
                code = .invalidParameter_ErrInvalidActionParamDuplicateName
            case .errInvalidActionParamName:
                code = .invalidParameter_ErrInvalidActionParamName
            case .errInvalidActionParamTooManyValues:
                code = .invalidParameter_ErrInvalidActionParamTooManyValues
            case .errInvalidActionType:
                code = .invalidParameter_ErrInvalidActionType
            case .errInvalidConditionIgnoreCase:
                code = .invalidParameter_ErrInvalidConditionIgnoreCase
            case .errInvalidConditionNameBadName:
                code = .invalidParameter_ErrInvalidConditionNameBadName
            case .errInvalidConditionNameTargetNotSupportName:
                code = .invalidParameter_ErrInvalidConditionNameTargetNotSupportName
            case .errInvalidConditionValueBadRegular:
                code = .invalidParameter_ErrInvalidConditionValueBadRegular
            case .errInvalidConditionValueBadUrl:
                code = .invalidParameter_ErrInvalidConditionValueBadUrl
            case .errInvalidConditionValueBadValue:
                code = .invalidParameter_ErrInvalidConditionValueBadValue
            case .errInvalidConditionValueBadValueContainFileNameExtension:
                code = .invalidParameter_ErrInvalidConditionValueBadValueContainFileNameExtension
            case .errInvalidConditionValueTooLongValue:
                code = .invalidParameter_ErrInvalidConditionValueTooLongValue
            case .errInvalidConditionValueTooManyRegular:
                code = .invalidParameter_ErrInvalidConditionValueTooManyRegular
            case .errInvalidConditionValueTooManyWildcard:
                code = .invalidParameter_ErrInvalidConditionValueTooManyWildcard
            case .errInvalidConditionValueZeroLength:
                code = .invalidParameter_ErrInvalidConditionValueZeroLength
            case .grpcRequireHttp2:
                code = .invalidParameter_GrpcRequireHttp2
            case .hostNotFound:
                code = .invalidParameter_HostNotFound
            case .hostStatusNotAllowApplyCertificate:
                code = .invalidParameter_HostStatusNotAllowApplyCertificate
            case .invalidAccelerateType:
                code = .invalidParameter_InvalidAccelerateType
            case .invalidAuthentication:
                code = .invalidParameter_InvalidAuthentication
            case .invalidAuthenticationTypeSecretKey:
                code = .invalidParameter_InvalidAuthenticationTypeSecretKey
            case .invalidAuthenticationTypeSignParam:
                code = .invalidParameter_InvalidAuthenticationTypeSignParam
            case .invalidBackupServerName:
                code = .invalidParameter_InvalidBackupServerName
            case .invalidCacheConfigCache:
                code = .invalidParameter_InvalidCacheConfigCache
            case .invalidCacheConfigFollowOrigin:
                code = .invalidParameter_InvalidCacheConfigFollowOrigin
            case .invalidCacheKey:
                code = .invalidParameter_InvalidCacheKey
            case .invalidCacheKeyIgnoreCase:
                code = .invalidParameter_InvalidCacheKeyIgnoreCase
            case .invalidCacheKeyQueryStringValue:
                code = .invalidParameter_InvalidCacheKeyQueryStringValue
            case .invalidCacheKeyScheme:
                code = .invalidParameter_InvalidCacheKeyScheme
            case .invalidCacheOnlyOnSwitch:
                code = .invalidParameter_InvalidCacheOnlyOnSwitch
            case .invalidCacheTime:
                code = .invalidParameter_InvalidCacheTime
            case .invalidCertInfo:
                code = .invalidParameter_InvalidCertInfo
            case .invalidClientIpHeaderName:
                code = .invalidParameter_InvalidClientIpHeaderName
            case .invalidClientIpOrigin:
                code = .invalidParameter_InvalidClientIpOrigin
            case .invalidDynamicRoutine:
                code = .invalidParameter_InvalidDynamicRoutine
            case .invalidDynamicRoutineBilling:
                code = .invalidParameter_InvalidDynamicRoutineBilling
            case .invalidErrorPageRedirectUrl:
                code = .invalidParameter_InvalidErrorPageRedirectUrl
            case .invalidHttps:
                code = .invalidParameter_InvalidHttps
            case .invalidHttpsCipherSuiteAndTlsVersion:
                code = .invalidParameter_InvalidHttpsCipherSuiteAndTlsVersion
            case .invalidHttpsHstsMaxAge:
                code = .invalidParameter_InvalidHttpsHstsMaxAge
            case .invalidHttpsTlsVersion:
                code = .invalidParameter_InvalidHttpsTlsVersion
            case .invalidIpv6Switch:
                code = .invalidParameter_InvalidIpv6Switch
            case .invalidOrigin:
                code = .invalidParameter_InvalidOrigin
            case .invalidParameter:
                code = .invalidParameter_InvalidParameter
            case .invalidPostMaxSizeBilling:
                code = .invalidParameter_InvalidPostMaxSizeBilling
            case .invalidPostSizeValue:
                code = .invalidParameter_InvalidPostSizeValue
            case .invalidQuicBilling:
                code = .invalidParameter_InvalidQuicBilling
            case .invalidRangeOriginPull:
                code = .invalidParameter_InvalidRangeOriginPull
            case .invalidRequestHeaderName:
                code = .invalidParameter_InvalidRequestHeaderName
            case .invalidRequestHeaderNameXff:
                code = .invalidParameter_InvalidRequestHeaderNameXff
            case .invalidRequestHeaderValue:
                code = .invalidParameter_InvalidRequestHeaderValue
            case .invalidResourceIdBilling:
                code = .invalidParameter_InvalidResourceIdBilling
            case .invalidResponseHeaderName:
                code = .invalidParameter_InvalidResponseHeaderName
            case .invalidResponseHeaderValue:
                code = .invalidParameter_InvalidResponseHeaderValue
            case .invalidRuleEngine:
                code = .invalidParameter_InvalidRuleEngine
            case .invalidRuleEngineAction:
                code = .invalidParameter_InvalidRuleEngineAction
            case .invalidRuleEngineNotFound:
                code = .invalidParameter_InvalidRuleEngineNotFound
            case .invalidRuleEngineTarget:
                code = .invalidParameter_InvalidRuleEngineTarget
            case .invalidRuleEngineTargetsExtension:
                code = .invalidParameter_InvalidRuleEngineTargetsExtension
            case .invalidRuleEngineTargetsUrl:
                code = .invalidParameter_InvalidRuleEngineTargetsUrl
            case .invalidServerName:
                code = .invalidParameter_InvalidServerName
            case .invalidUpstreamRequestQueryStringValue:
                code = .invalidParameter_InvalidUpstreamRequestQueryStringValue
            case .invalidUrlRedirectHost:
                code = .invalidParameter_InvalidUrlRedirectHost
            case .invalidUrlRedirectUrl:
                code = .invalidParameter_InvalidUrlRedirectUrl
            case .invalidWebSocketTimeout:
                code = .invalidParameter_InvalidWebSocketTimeout
            case .keyRulesInvalidQueryStringValue:
                code = .invalidParameter_KeyRulesInvalidQueryStringValue
            case .lengthExceedsLimit:
                code = .invalidParameter_LengthExceedsLimit
            case .originIsInnerIp:
                code = .invalidParameter_OriginIsInnerIp
            case .originOriginGroupIdIsRequired:
                code = .invalidParameter_OriginOriginGroupIdIsRequired
            case .parameterError:
                code = .invalidParameter_ParameterError
            case .planNotFound:
                code = .invalidParameter_PlanNotFound
            case .postMaxSizeLimitExceeded:
                code = .invalidParameter_PostMaxSizeLimitExceeded
            case .security:
                code = .invalidParameter_Security
            case .settingInvalidParam:
                code = .invalidParameter_SettingInvalidParam
            case .target:
                code = .invalidParameter_Target
            case .taskNotGenerated:
                code = .invalidParameter_TaskNotGenerated
            case .taskSystemError:
                code = .invalidParameter_TaskSystemError
            case .uploadUrl:
                code = .invalidParameter_UploadUrl
            case .zoneHasBeenBound:
                code = .invalidParameter_ZoneHasBeenBound
            case .zoneNotFound:
                code = .invalidParameter_ZoneNotFound
            case .other:
                code = .invalidParameter
            }
            return TCTeoError(code, context: self.context)
        }
    }
}
