//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
            case domainNotFound = "InvalidParameter.DomainNotFound"
            case domainOnTrafficScheduling = "InvalidParameter.DomainOnTrafficScheduling"
            case errInvalidAction = "InvalidParameter.ErrInvalidAction"
            case errInvalidActionParam = "InvalidParameter.ErrInvalidActionParam"
            case errInvalidActionParamDuplicateName = "InvalidParameter.ErrInvalidActionParamDuplicateName"
            case errInvalidActionParamTooManyValues = "InvalidParameter.ErrInvalidActionParamTooManyValues"
            case errInvalidConditionIgnoreCase = "InvalidParameter.ErrInvalidConditionIgnoreCase"
            case errInvalidConditionNameTargetNotSupportName = "InvalidParameter.ErrInvalidConditionNameTargetNotSupportName"
            case errInvalidConditionValueBadValue = "InvalidParameter.ErrInvalidConditionValueBadValue"
            case errInvalidConditionValueBadValueContainFileNameExtension = "InvalidParameter.ErrInvalidConditionValueBadValueContainFileNameExtension"
            case errInvalidConditionValueTooLongValue = "InvalidParameter.ErrInvalidConditionValueTooLongValue"
            case hostNotFound = "InvalidParameter.HostNotFound"
            case invalidAuthenticationTypeSignParam = "InvalidParameter.InvalidAuthenticationTypeSignParam"
            case invalidCacheKey = "InvalidParameter.InvalidCacheKey"
            case invalidCacheKeyQueryStringValue = "InvalidParameter.InvalidCacheKeyQueryStringValue"
            case invalidCacheOnlyOnSwitch = "InvalidParameter.InvalidCacheOnlyOnSwitch"
            case invalidCertInfo = "InvalidParameter.InvalidCertInfo"
            case invalidClientIpHeaderName = "InvalidParameter.InvalidClientIpHeaderName"
            case invalidDynamicRoutine = "InvalidParameter.InvalidDynamicRoutine"
            case invalidErrorPageRedirectUrl = "InvalidParameter.InvalidErrorPageRedirectUrl"
            case invalidHttpsHstsMaxAge = "InvalidParameter.InvalidHttpsHstsMaxAge"
            case invalidHttpsTlsVersion = "InvalidParameter.InvalidHttpsTlsVersion"
            case invalidIpv6Switch = "InvalidParameter.InvalidIpv6Switch"
            case invalidOrigin = "InvalidParameter.InvalidOrigin"
            case invalidParameter = "InvalidParameter.InvalidParameter"
            case invalidPostMaxSizeBilling = "InvalidParameter.InvalidPostMaxSizeBilling"
            case invalidPostSizeValue = "InvalidParameter.InvalidPostSizeValue"
            case invalidRequestHeaderName = "InvalidParameter.InvalidRequestHeaderName"
            case invalidResourceIdBilling = "InvalidParameter.InvalidResourceIdBilling"
            case invalidResponseHeaderName = "InvalidParameter.InvalidResponseHeaderName"
            case invalidRuleEngine = "InvalidParameter.InvalidRuleEngine"
            case invalidRuleEngineAction = "InvalidParameter.InvalidRuleEngineAction"
            case invalidRuleEngineNotFound = "InvalidParameter.InvalidRuleEngineNotFound"
            case invalidRuleEngineTarget = "InvalidParameter.InvalidRuleEngineTarget"
            case invalidRuleEngineTargetsExtension = "InvalidParameter.InvalidRuleEngineTargetsExtension"
            case invalidRuleEngineTargetsUrl = "InvalidParameter.InvalidRuleEngineTargetsUrl"
            case invalidServerName = "InvalidParameter.InvalidServerName"
            case invalidUrlRedirectHost = "InvalidParameter.InvalidUrlRedirectHost"
            case invalidUrlRedirectUrl = "InvalidParameter.InvalidUrlRedirectUrl"
            case invalidWebSocketTimeout = "InvalidParameter.InvalidWebSocketTimeout"
            case keyRulesInvalidQueryStringValue = "InvalidParameter.KeyRulesInvalidQueryStringValue"
            case lengthExceedsLimit = "InvalidParameter.LengthExceedsLimit"
            case parameterError = "InvalidParameter.ParameterError"
            case planNotFound = "InvalidParameter.PlanNotFound"
            case security = "InvalidParameter.Security"
            case settingInvalidParam = "InvalidParameter.SettingInvalidParam"
            case target = "InvalidParameter.Target"
            case taskNotGenerated = "InvalidParameter.TaskNotGenerated"
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
        
        /// 操作频繁，请稍后重试。
        public static var actionInProgress: InvalidParameter {
            InvalidParameter(.actionInProgress)
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
        
        /// 域名不存在或不属于该账号。
        public static var domainNotFound: InvalidParameter {
            InvalidParameter(.domainNotFound)
        }
        
        public static var domainOnTrafficScheduling: InvalidParameter {
            InvalidParameter(.domainOnTrafficScheduling)
        }
        
        /// 非法操作。
        public static var errInvalidAction: InvalidParameter {
            InvalidParameter(.errInvalidAction)
        }
        
        /// 非法操作-非法参数。
        public static var errInvalidActionParam: InvalidParameter {
            InvalidParameter(.errInvalidActionParam)
        }
        
        /// 非法操作-非法参数-参数名重复。
        public static var errInvalidActionParamDuplicateName: InvalidParameter {
            InvalidParameter(.errInvalidActionParamDuplicateName)
        }
        
        /// 非法操作-非法参数-参数值数量超出限制。
        public static var errInvalidActionParamTooManyValues: InvalidParameter {
            InvalidParameter(.errInvalidActionParamTooManyValues)
        }
        
        /// 非法条件-非法忽略大小写。
        public static var errInvalidConditionIgnoreCase: InvalidParameter {
            InvalidParameter(.errInvalidConditionIgnoreCase)
        }
        
        /// 非法条件-非法参数名称-匹配类型不支持参数名称。
        public static var errInvalidConditionNameTargetNotSupportName: InvalidParameter {
            InvalidParameter(.errInvalidConditionNameTargetNotSupportName)
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
        
        /// 域名不存在。
        public static var hostNotFound: InvalidParameter {
            InvalidParameter(.hostNotFound)
        }
        
        /// 无效的token鉴权参数。
        public static var invalidAuthenticationTypeSignParam: InvalidParameter {
            InvalidParameter(.invalidAuthenticationTypeSignParam)
        }
        
        /// 无效的缓存键。
        public static var invalidCacheKey: InvalidParameter {
            InvalidParameter(.invalidCacheKey)
        }
        
        /// 无效的查询字符串。
        public static var invalidCacheKeyQueryStringValue: InvalidParameter {
            InvalidParameter(.invalidCacheKeyQueryStringValue)
        }
        
        /// 无效的节点缓存。
        public static var invalidCacheOnlyOnSwitch: InvalidParameter {
            InvalidParameter(.invalidCacheOnlyOnSwitch)
        }
        
        /// 证书信息错误。
        public static var invalidCertInfo: InvalidParameter {
            InvalidParameter(.invalidCertInfo)
        }
        
        /// 无效的客户端IP请求头。
        public static var invalidClientIpHeaderName: InvalidParameter {
            InvalidParameter(.invalidClientIpHeaderName)
        }
        
        /// 无效的智能加速。
        public static var invalidDynamicRoutine: InvalidParameter {
            InvalidParameter(.invalidDynamicRoutine)
        }
        
        /// 无效的自定义错误页面。
        public static var invalidErrorPageRedirectUrl: InvalidParameter {
            InvalidParameter(.invalidErrorPageRedirectUrl)
        }
        
        /// 无效的HTTPS HSTS。
        public static var invalidHttpsHstsMaxAge: InvalidParameter {
            InvalidParameter(.invalidHttpsHstsMaxAge)
        }
        
        /// 无效的HTTPS TLS版本。
        public static var invalidHttpsTlsVersion: InvalidParameter {
            InvalidParameter(.invalidHttpsTlsVersion)
        }
        
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
        
        /// 无效的请求头header。
        public static var invalidRequestHeaderName: InvalidParameter {
            InvalidParameter(.invalidRequestHeaderName)
        }
        
        /// 无套餐包。
        public static var invalidResourceIdBilling: InvalidParameter {
            InvalidParameter(.invalidResourceIdBilling)
        }
        
        /// 无效的响应头header。
        public static var invalidResponseHeaderName: InvalidParameter {
            InvalidParameter(.invalidResponseHeaderName)
        }
        
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
        
        /// 参数错误。
        public static var parameterError: InvalidParameter {
            InvalidParameter(.parameterError)
        }
        
        /// 套餐不存在。
        public static var planNotFound: InvalidParameter {
            InvalidParameter(.planNotFound)
        }
        
        /// 安全参数错误。
        public static var security: InvalidParameter {
            InvalidParameter(.security)
        }
        
        /// 域名配置错误。
        ///
        /// 参数错误-setting非法参数。
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
            case .domainNotFound: 
                code = .invalidParameter_DomainNotFound
            case .domainOnTrafficScheduling: 
                code = .invalidParameter_DomainOnTrafficScheduling
            case .errInvalidAction: 
                code = .invalidParameter_ErrInvalidAction
            case .errInvalidActionParam: 
                code = .invalidParameter_ErrInvalidActionParam
            case .errInvalidActionParamDuplicateName: 
                code = .invalidParameter_ErrInvalidActionParamDuplicateName
            case .errInvalidActionParamTooManyValues: 
                code = .invalidParameter_ErrInvalidActionParamTooManyValues
            case .errInvalidConditionIgnoreCase: 
                code = .invalidParameter_ErrInvalidConditionIgnoreCase
            case .errInvalidConditionNameTargetNotSupportName: 
                code = .invalidParameter_ErrInvalidConditionNameTargetNotSupportName
            case .errInvalidConditionValueBadValue: 
                code = .invalidParameter_ErrInvalidConditionValueBadValue
            case .errInvalidConditionValueBadValueContainFileNameExtension: 
                code = .invalidParameter_ErrInvalidConditionValueBadValueContainFileNameExtension
            case .errInvalidConditionValueTooLongValue: 
                code = .invalidParameter_ErrInvalidConditionValueTooLongValue
            case .hostNotFound: 
                code = .invalidParameter_HostNotFound
            case .invalidAuthenticationTypeSignParam: 
                code = .invalidParameter_InvalidAuthenticationTypeSignParam
            case .invalidCacheKey: 
                code = .invalidParameter_InvalidCacheKey
            case .invalidCacheKeyQueryStringValue: 
                code = .invalidParameter_InvalidCacheKeyQueryStringValue
            case .invalidCacheOnlyOnSwitch: 
                code = .invalidParameter_InvalidCacheOnlyOnSwitch
            case .invalidCertInfo: 
                code = .invalidParameter_InvalidCertInfo
            case .invalidClientIpHeaderName: 
                code = .invalidParameter_InvalidClientIpHeaderName
            case .invalidDynamicRoutine: 
                code = .invalidParameter_InvalidDynamicRoutine
            case .invalidErrorPageRedirectUrl: 
                code = .invalidParameter_InvalidErrorPageRedirectUrl
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
            case .invalidRequestHeaderName: 
                code = .invalidParameter_InvalidRequestHeaderName
            case .invalidResourceIdBilling: 
                code = .invalidParameter_InvalidResourceIdBilling
            case .invalidResponseHeaderName: 
                code = .invalidParameter_InvalidResponseHeaderName
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
            case .parameterError: 
                code = .invalidParameter_ParameterError
            case .planNotFound: 
                code = .invalidParameter_PlanNotFound
            case .security: 
                code = .invalidParameter_Security
            case .settingInvalidParam: 
                code = .invalidParameter_SettingInvalidParam
            case .target: 
                code = .invalidParameter_Target
            case .taskNotGenerated: 
                code = .invalidParameter_TaskNotGenerated
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
