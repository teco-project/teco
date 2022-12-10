//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCCdnError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case accessPortOpenedHttps = "InvalidParameter.AccessPortOpenedHttps"
            case bandLimitRequiredMainland = "InvalidParameter.BandLimitRequiredMainland"
            case bandwidthAlertCounterMeasureConflictOriginType = "InvalidParameter.BandwidthAlertCounterMeasureConflictOriginType"
            case camResourceBelongToDifferentUser = "InvalidParameter.CamResourceBelongToDifferentUser"
            case camResourceSixStageError = "InvalidParameter.CamResourceSixStageError"
            case camTagKeyAlreadyAttached = "InvalidParameter.CamTagKeyAlreadyAttached"
            case camTagKeyIllegal = "InvalidParameter.CamTagKeyIllegal"
            case camTagKeyNotExist = "InvalidParameter.CamTagKeyNotExist"
            case camTagValueIllegal = "InvalidParameter.CamTagValueIllegal"
            case cdnCertInfoNotFound = "InvalidParameter.CdnCertInfoNotFound"
            case cdnCertNoCertInfo = "InvalidParameter.CdnCertNoCertInfo"
            case cdnCertNotPem = "InvalidParameter.CdnCertNotPem"
            case cdnClsDuplicateTopic = "InvalidParameter.CdnClsDuplicateTopic"
            case cdnClsTopicNameInvalid = "InvalidParameter.CdnClsTopicNameInvalid"
            case cdnClsTopicNotExist = "InvalidParameter.CdnClsTopicNotExist"
            case cdnConfigInvalidCache = "InvalidParameter.CdnConfigInvalidCache"
            case cdnConfigInvalidHost = "InvalidParameter.CdnConfigInvalidHost"
            case cdnConfigInvalidTag = "InvalidParameter.CdnConfigInvalidTag"
            case cdnConfigTagRequired = "InvalidParameter.CdnConfigTagRequired"
            case cdnHostHasSpecialConfig = "InvalidParameter.CdnHostHasSpecialConfig"
            case cdnHostInternalHost = "InvalidParameter.CdnHostInternalHost"
            case cdnHostInvalidMiddleConfig = "InvalidParameter.CdnHostInvalidMiddleConfig"
            case cdnHostInvalidParam = "InvalidParameter.CdnHostInvalidParam"
            case cdnHostInvalidStatus = "InvalidParameter.CdnHostInvalidStatus"
            case cdnHostIsCosDefaultAccess = "InvalidParameter.CdnHostIsCosDefaultAccess"
            case cdnHostTooLongHost = "InvalidParameter.CdnHostTooLongHost"
            case cdnInterfaceError = "InvalidParameter.CdnInterfaceError"
            case cdnInvalidParamInterval = "InvalidParameter.CdnInvalidParamInterval"
            case cdnInvalidParamMetric = "InvalidParameter.CdnInvalidParamMetric"
            case cdnInvalidParamServiceType = "InvalidParameter.CdnInvalidParamServiceType"
            case cdnKeyRulesExcludeCustomRequiresFullLego = "InvalidParameter.CdnKeyRulesExcludeCustomRequiresFullLego"
            case cdnKeyRulesInvalidQueryStringValue = "InvalidParameter.CdnKeyRulesInvalidQueryStringValue"
            case cdnParamError = "InvalidParameter.CdnParamError"
            case cdnPurgeWildcardNotAllowed = "InvalidParameter.CdnPurgeWildcardNotAllowed"
            case cdnPushWildcardNotAllowed = "InvalidParameter.CdnPushWildcardNotAllowed"
            case cdnStatInvalidDate = "InvalidParameter.CdnStatInvalidDate"
            case cdnStatInvalidFilter = "InvalidParameter.CdnStatInvalidFilter"
            case cdnStatInvalidMetric = "InvalidParameter.CdnStatInvalidMetric"
            case cdnStatInvalidProjectId = "InvalidParameter.CdnStatInvalidProjectId"
            case cdnStatTooManyDomains = "InvalidParameter.CdnStatTooManyDomains"
            case cdnStatusInvalidDomain = "InvalidParameter.CDNStatusInvalidDomain"
            case cdnUrlExceedLength = "InvalidParameter.CdnUrlExceedLength"
            case clsIndexConflict = "InvalidParameter.ClsIndexConflict"
            case clsIndexRuleEmpty = "InvalidParameter.ClsIndexRuleEmpty"
            case clsInvalidContent = "InvalidParameter.ClsInvalidContent"
            case clsInvalidContentType = "InvalidParameter.ClsInvalidContentType"
            case clsInvalidParam = "InvalidParameter.ClsInvalidParam"
            case clsLogsetConflict = "InvalidParameter.ClsLogsetConflict"
            case clsLogsetEmpty = "InvalidParameter.ClsLogsetEmpty"
            case clsLogsetNotEmpty = "InvalidParameter.ClsLogsetNotEmpty"
            case clsMissingAuthorization = "InvalidParameter.ClsMissingAuthorization"
            case clsMissingContent = "InvalidParameter.ClsMissingContent"
            case clsSyntaxError = "InvalidParameter.ClsSyntaxError"
            case clsTopicClosed = "InvalidParameter.ClsTopicClosed"
            case clsTopicConflict = "InvalidParameter.ClsTopicConflict"
            case ecdnInterfaceError = "InvalidParameter.EcdnInterfaceError"
            case paramError = "InvalidParameter.ParamError"
            case pathRegexTooManySubPattern = "InvalidParameter.PathRegexTooManySubPattern"
            case remoteAuthInvalidPlatform = "InvalidParameter.RemoteAuthInvalidPlatform"
            case remoteAuthInvalidProtocol = "InvalidParameter.RemoteAuthInvalidProtocol"
            case scdnLogTaskExpired = "InvalidParameter.ScdnLogTaskExpired"
            case scdnLogTaskNotFoundOrNotFail = "InvalidParameter.ScdnLogTaskNotFoundOrNotFail"
            case scdnLogTaskTimeRangeInvalid = "InvalidParameter.ScdnLogTaskTimeRangeInvalid"
            case other = "InvalidParameter"
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
        
        /// 域名启用 HTTPS 配置需保持访问端口配置-443端口为开启状态。
        public static var accessPortOpenedHttps: InvalidParameter {
            InvalidParameter(.accessPortOpenedHttps)
        }
        
        /// 请删除域名的限流管理配置后再切换加速区域。
        public static var bandLimitRequiredMainland: InvalidParameter {
            InvalidParameter(.bandLimitRequiredMainland)
        }
        
        /// 源站类型为COS源或第三方对象存储的域名，用量封顶-超出阈值的处理方式仅支持访问返回404，请修改该配置后重试。
        public static var bandwidthAlertCounterMeasureConflictOriginType: InvalidParameter {
            InvalidParameter(.bandwidthAlertCounterMeasureConflictOriginType)
        }
        
        /// 同一次请求的资源AppId不一致。
        public static var camResourceBelongToDifferentUser: InvalidParameter {
            InvalidParameter(.camResourceBelongToDifferentUser)
        }
        
        /// 资源六段式标记参数错误。
        public static var camResourceSixStageError: InvalidParameter {
            InvalidParameter(.camResourceSixStageError)
        }
        
        /// 域名已与该标签关联，请勿重复操作。
        public static var camTagKeyAlreadyAttached: InvalidParameter {
            InvalidParameter(.camTagKeyAlreadyAttached)
        }
        
        /// 标签键字符不合法。
        public static var camTagKeyIllegal: InvalidParameter {
            InvalidParameter(.camTagKeyIllegal)
        }
        
        /// 标签键不存在。
        public static var camTagKeyNotExist: InvalidParameter {
            InvalidParameter(.camTagKeyNotExist)
        }
        
        /// 标签值字符不合法。
        public static var camTagValueIllegal: InvalidParameter {
            InvalidParameter(.camTagValueIllegal)
        }
        
        /// 证书信息不存在或非法，请确认后重试。
        public static var cdnCertInfoNotFound: InvalidParameter {
            InvalidParameter(.cdnCertInfoNotFound)
        }
        
        /// 证书无效，请确认后重试。
        public static var cdnCertNoCertInfo: InvalidParameter {
            InvalidParameter(.cdnCertNoCertInfo)
        }
        
        /// HTTPS证书无效。
        public static var cdnCertNotPem: InvalidParameter {
            InvalidParameter(.cdnCertNotPem)
        }
        
        /// 存在重复主题。
        public static var cdnClsDuplicateTopic: InvalidParameter {
            InvalidParameter(.cdnClsDuplicateTopic)
        }
        
        /// 主题名字不合法。
        public static var cdnClsTopicNameInvalid: InvalidParameter {
            InvalidParameter(.cdnClsTopicNameInvalid)
        }
        
        /// CLS主题不存在。
        public static var cdnClsTopicNotExist: InvalidParameter {
            InvalidParameter(.cdnClsTopicNotExist)
        }
        
        /// 缓存配置不合法，请确认后重试。
        public static var cdnConfigInvalidCache: InvalidParameter {
            InvalidParameter(.cdnConfigInvalidCache)
        }
        
        /// 域名不符合规范，请确认域名是否符合规范。
        public static var cdnConfigInvalidHost: InvalidParameter {
            InvalidParameter(.cdnConfigInvalidHost)
        }
        
        /// 标签配置不合法。
        public static var cdnConfigInvalidTag: InvalidParameter {
            InvalidParameter(.cdnConfigInvalidTag)
        }
        
        /// 域名添加失败，当前域名必须选择标签，请确认后重试。
        public static var cdnConfigTagRequired: InvalidParameter {
            InvalidParameter(.cdnConfigTagRequired)
        }
        
        /// 域名拥有特殊配置，需人工处理。
        public static var cdnHostHasSpecialConfig: InvalidParameter {
            InvalidParameter(.cdnHostHasSpecialConfig)
        }
        
        /// 该域名属于指定账号域名，不允许接入。
        public static var cdnHostInternalHost: InvalidParameter {
            InvalidParameter(.cdnHostInternalHost)
        }
        
        /// 错误的中间源配置。
        public static var cdnHostInvalidMiddleConfig: InvalidParameter {
            InvalidParameter(.cdnHostInvalidMiddleConfig)
        }
        
        /// 域名格式不合法，请确认后重试。
        public static var cdnHostInvalidParam: InvalidParameter {
            InvalidParameter(.cdnHostInvalidParam)
        }
        
        /// 域名状态不合法。
        public static var cdnHostInvalidStatus: InvalidParameter {
            InvalidParameter(.cdnHostInvalidStatus)
        }
        
        /// 该域名为COS访问域名，无法接入，如需启动加速服务，请前往COS控制台启用默认 CDN 加速域。
        public static var cdnHostIsCosDefaultAccess: InvalidParameter {
            InvalidParameter(.cdnHostIsCosDefaultAccess)
        }
        
        /// 域名太长。
        public static var cdnHostTooLongHost: InvalidParameter {
            InvalidParameter(.cdnHostTooLongHost)
        }
        
        /// 内部接口错误，请联系腾讯云工程师进一步排查。
        public static var cdnInterfaceError: InvalidParameter {
            InvalidParameter(.cdnInterfaceError)
        }
        
        /// 参数Interval错误，请确认后重试。
        public static var cdnInvalidParamInterval: InvalidParameter {
            InvalidParameter(.cdnInvalidParamInterval)
        }
        
        /// 参数Metric错误，请检查后重试。
        public static var cdnInvalidParamMetric: InvalidParameter {
            InvalidParameter(.cdnInvalidParamMetric)
        }
        
        /// ServiceType字段不合法，请确认后重试。
        public static var cdnInvalidParamServiceType: InvalidParameter {
            InvalidParameter(.cdnInvalidParamServiceType)
        }
        
        /// 配置暂不支持开启该配置。
        public static var cdnKeyRulesExcludeCustomRequiresFullLego: InvalidParameter {
            InvalidParameter(.cdnKeyRulesExcludeCustomRequiresFullLego)
        }
        
        /// QueryString字段不合法，请确认后重试。
        public static var cdnKeyRulesInvalidQueryStringValue: InvalidParameter {
            InvalidParameter(.cdnKeyRulesInvalidQueryStringValue)
        }
        
        /// 参数错误，请参考文档中示例参数填充。
        public static var cdnParamError: InvalidParameter {
            InvalidParameter(.cdnParamError)
        }
        
        /// 刷新不支持泛域名。
        public static var cdnPurgeWildcardNotAllowed: InvalidParameter {
            InvalidParameter(.cdnPurgeWildcardNotAllowed)
        }
        
        /// 预热不支持泛域名。
        public static var cdnPushWildcardNotAllowed: InvalidParameter {
            InvalidParameter(.cdnPushWildcardNotAllowed)
        }
        
        /// 日期不合法，请参考文档中日期示例。
        public static var cdnStatInvalidDate: InvalidParameter {
            InvalidParameter(.cdnStatInvalidDate)
        }
        
        /// 统计维度不合法，请参考文档中统计分析示例。
        public static var cdnStatInvalidFilter: InvalidParameter {
            InvalidParameter(.cdnStatInvalidFilter)
        }
        
        /// 统计类型不合法，请参考文档中统计分析示例。
        public static var cdnStatInvalidMetric: InvalidParameter {
            InvalidParameter(.cdnStatInvalidMetric)
        }
        
        /// 项目ID错误，请确认后重试。
        public static var cdnStatInvalidProjectId: InvalidParameter {
            InvalidParameter(.cdnStatInvalidProjectId)
        }
        
        /// 查询的域名数量超过限制。
        public static var cdnStatTooManyDomains: InvalidParameter {
            InvalidParameter(.cdnStatTooManyDomains)
        }
        
        /// 域名状态不合法。
        public static var cdnStatusInvalidDomain: InvalidParameter {
            InvalidParameter(.cdnStatusInvalidDomain)
        }
        
        /// URL 超过限制长度。
        public static var cdnUrlExceedLength: InvalidParameter {
            InvalidParameter(.cdnUrlExceedLength)
        }
        
        /// 索引冲突。
        public static var clsIndexConflict: InvalidParameter {
            InvalidParameter(.clsIndexConflict)
        }
        
        /// 索引规则为空。
        public static var clsIndexRuleEmpty: InvalidParameter {
            InvalidParameter(.clsIndexRuleEmpty)
        }
        
        /// 无效内容。
        public static var clsInvalidContent: InvalidParameter {
            InvalidParameter(.clsInvalidContent)
        }
        
        /// 无效的Content-Type。
        public static var clsInvalidContentType: InvalidParameter {
            InvalidParameter(.clsInvalidContentType)
        }
        
        /// 参数错误，请检查后重试。
        public static var clsInvalidParam: InvalidParameter {
            InvalidParameter(.clsInvalidParam)
        }
        
        /// 日志集冲突。
        public static var clsLogsetConflict: InvalidParameter {
            InvalidParameter(.clsLogsetConflict)
        }
        
        /// 日志集为空。
        public static var clsLogsetEmpty: InvalidParameter {
            InvalidParameter(.clsLogsetEmpty)
        }
        
        /// 日志集非空。
        public static var clsLogsetNotEmpty: InvalidParameter {
            InvalidParameter(.clsLogsetNotEmpty)
        }
        
        /// 没有授权信息。
        public static var clsMissingAuthorization: InvalidParameter {
            InvalidParameter(.clsMissingAuthorization)
        }
        
        /// 丢失内容。
        public static var clsMissingContent: InvalidParameter {
            InvalidParameter(.clsMissingContent)
        }
        
        /// 语法错误。
        public static var clsSyntaxError: InvalidParameter {
            InvalidParameter(.clsSyntaxError)
        }
        
        /// 主题已经关闭。
        public static var clsTopicClosed: InvalidParameter {
            InvalidParameter(.clsTopicClosed)
        }
        
        /// 主题冲突。
        public static var clsTopicConflict: InvalidParameter {
            InvalidParameter(.clsTopicConflict)
        }
        
        /// 内部接口错误，请重试或联系客服人员解决。
        public static var ecdnInterfaceError: InvalidParameter {
            InvalidParameter(.ecdnInterfaceError)
        }
        
        /// 参数错误。
        public static var paramError: InvalidParameter {
            InvalidParameter(.paramError)
        }
        
        /// 正则子模式超出上限。
        public static var pathRegexTooManySubPattern: InvalidParameter {
            InvalidParameter(.pathRegexTooManySubPattern)
        }
        
        /// 域名所在平台不支持远程鉴权。
        public static var remoteAuthInvalidPlatform: InvalidParameter {
            InvalidParameter(.remoteAuthInvalidPlatform)
        }
        
        /// 域名所在平台不支持使用https协议访问远程鉴权地址。
        public static var remoteAuthInvalidProtocol: InvalidParameter {
            InvalidParameter(.remoteAuthInvalidProtocol)
        }
        
        /// 任务已过期,无法重试。
        public static var scdnLogTaskExpired: InvalidParameter {
            InvalidParameter(.scdnLogTaskExpired)
        }
        
        /// 任务不存在或任务未失败。
        public static var scdnLogTaskNotFoundOrNotFail: InvalidParameter {
            InvalidParameter(.scdnLogTaskNotFoundOrNotFail)
        }
        
        /// 时间范围错误。
        public static var scdnLogTaskTimeRangeInvalid: InvalidParameter {
            InvalidParameter(.scdnLogTaskTimeRangeInvalid)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCCdnError.InvalidParameter: Equatable {
    public static func == (lhs: TCCdnError.InvalidParameter, rhs: TCCdnError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCdnError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCdnError.InvalidParameter {
    public func toCdnError() -> TCCdnError {
        guard let code = TCCdnError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCdnError(code, context: self.context)
    }
}