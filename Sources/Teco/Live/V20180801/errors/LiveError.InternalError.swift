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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCLiveError {
    public struct InternalError: TCLiveErrorType {
        enum Code: String {
            case argsNotMatch = "InternalError.ArgsNotMatch"
            case callOtherSvrError = "InternalError.CallOtherSvrError"
            case chineseCharacterDetected = "InternalError.ChineseCharacterDetected"
            case confInUsed = "InternalError.ConfInUsed"
            case confNotFound = "InternalError.ConfNotFound"
            case confOutLimit = "InternalError.ConfOutLimit"
            case configNotExist = "InternalError.ConfigNotExist"
            case connectDbError = "InternalError.ConnectDbError"
            case crtDateInUsing = "InternalError.CrtDateInUsing"
            case crtDateNotFound = "InternalError.CrtDateNotFound"
            case crtDateNotLegal = "InternalError.CrtDateNotLegal"
            case crtDateOverdue = "InternalError.CrtDateOverdue"
            case crtDomainNotFound = "InternalError.CrtDomainNotFound"
            case crtKeyNotMatch = "InternalError.CrtKeyNotMatch"
            case dbError = "InternalError.DBError"
            case domainAlreadyExist = "InternalError.DomainAlreadyExist"
            case domainFormatError = "InternalError.DomainFormatError"
            case domainGslbFail = "InternalError.DomainGslbFail"
            case domainIsFamous = "InternalError.DomainIsFamous"
            case domainIsLimited = "InternalError.DomainIsLimited"
            case domainNoRecord = "InternalError.DomainNoRecord"
            case domainNotExist = "InternalError.DomainNotExist"
            case domainTooLong = "InternalError.DomainTooLong"
            case getBizidError = "InternalError.GetBizidError"
            case getConfigError = "InternalError.GetConfigError"
            case getStreamInfoError = "InternalError.GetStreamInfoError"
            case getUpstreamInfoError = "InternalError.GetUpstreamInfoError"
            case getWatermarkError = "InternalError.GetWatermarkError"
            case hasNotLivingStream = "InternalError.HasNotLivingStream"
            case invalidInput = "InternalError.InvalidInput"
            case invalidRequest = "InternalError.InvalidRequest"
            case invalidUser = "InternalError.InvalidUser"
            case jiFeiOtherError = "InternalError.JiFeiOtherError"
            case networkError = "InternalError.NetworkError"
            case notFound = "InternalError.NotFound"
            case notPermmitOperat = "InternalError.NotPermmitOperat"
            case playDomainNoRecord = "InternalError.PlayDomainNoRecord"
            case processorAlreadyExist = "InternalError.ProcessorAlreadyExist"
            case pushDomainNoRecord = "InternalError.PushDomainNoRecord"
            case queryProIspPlayInfoError = "InternalError.QueryProIspPlayInfoError"
            case queryUploadInfoFailed = "InternalError.QueryUploadInfoFailed"
            case ruleAlreadyExist = "InternalError.RuleAlreadyExist"
            case ruleInUsing = "InternalError.RuleInUsing"
            case ruleNotFound = "InternalError.RuleNotFound"
            case ruleOutLimit = "InternalError.RuleOutLimit"
            case streamStatusError = "InternalError.StreamStatusError"
            case systemError = "InternalError.SystemError"
            case updateDataError = "InternalError.UpdateDataError"
            case watermarkAddError = "InternalError.WatermarkAddError"
            case watermarkEditError = "InternalError.WatermarkEditError"
            case watermarkNotExist = "InternalError.WatermarkNotExist"
            case other = "InternalError"
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

        /// 针对添加转码模版的接口。
        public static var argsNotMatch: InternalError {
            InternalError(.argsNotMatch)
        }

        /// 调用内部服务错误。
        public static var callOtherSvrError: InternalError {
            InternalError(.callOtherSvrError)
        }

        /// 暂不支持添加中文域名，请核对域名格式。
        public static var chineseCharacterDetected: InternalError {
            InternalError(.chineseCharacterDetected)
        }

        /// 模版使用中。
        public static var confInUsed: InternalError {
            InternalError(.confInUsed)
        }

        /// 模版不存在。
        public static var confNotFound: InternalError {
            InternalError(.confNotFound)
        }

        /// 模版数量超过限制。
        public static var confOutLimit: InternalError {
            InternalError(.confOutLimit)
        }

        /// 配置不存在。
        public static var configNotExist: InternalError {
            InternalError(.configNotExist)
        }

        /// DB 连接错误。
        public static var connectDbError: InternalError {
            InternalError(.connectDbError)
        }

        /// 证书使用中。
        public static var crtDateInUsing: InternalError {
            InternalError(.crtDateInUsing)
        }

        /// 证书不存在。
        public static var crtDateNotFound: InternalError {
            InternalError(.crtDateNotFound)
        }

        /// 证书不合法。
        public static var crtDateNotLegal: InternalError {
            InternalError(.crtDateNotLegal)
        }

        /// 证书过期。
        public static var crtDateOverdue: InternalError {
            InternalError(.crtDateOverdue)
        }

        /// 没有相关域名。
        public static var crtDomainNotFound: InternalError {
            InternalError(.crtDomainNotFound)
        }

        /// 证书 Key 不匹配。
        public static var crtKeyNotMatch: InternalError {
            InternalError(.crtKeyNotMatch)
        }

        /// DB执行错误。
        public static var dbError: InternalError {
            InternalError(.dbError)
        }

        /// 该域名已在其他处接入，请检查域名是否输入正确。  如域名正确，您可通过验证后重新添加域名。
        public static var domainAlreadyExist: InternalError {
            InternalError(.domainAlreadyExist)
        }

        /// 域名格式错误，请输入合法格式域名。
        public static var domainFormatError: InternalError {
            InternalError(.domainFormatError)
        }

        /// 添加 GSLB 规则失败。
        public static var domainGslbFail: InternalError {
            InternalError(.domainGslbFail)
        }

        /// 该域名已在其他处接入，请检查域名是否输入正确。  如域名正确，您可通过验证后重新添加域名。
        public static var domainIsFamous: InternalError {
            InternalError(.domainIsFamous)
        }

        /// 您的域名不可用，请输入正确的域名。
        public static var domainIsLimited: InternalError {
            InternalError(.domainIsLimited)
        }

        /// 域名没有备案。
        public static var domainNoRecord: InternalError {
            InternalError(.domainNoRecord)
        }

        /// 域名不存在。
        public static var domainNotExist: InternalError {
            InternalError(.domainNotExist)
        }

        /// 域名长度超过限制。
        public static var domainTooLong: InternalError {
            InternalError(.domainTooLong)
        }

        /// 获取用户账号错误。
        public static var getBizidError: InternalError {
            InternalError(.getBizidError)
        }

        /// 获取配置错误。
        public static var getConfigError: InternalError {
            InternalError(.getConfigError)
        }

        /// 获取流信息失败。
        public static var getStreamInfoError: InternalError {
            InternalError(.getStreamInfoError)
        }

        /// 获取直播源信息错误。
        public static var getUpstreamInfoError: InternalError {
            InternalError(.getUpstreamInfoError)
        }

        /// 获取水印错误。
        public static var getWatermarkError: InternalError {
            InternalError(.getWatermarkError)
        }

        /// 无在线流。
        public static var hasNotLivingStream: InternalError {
            InternalError(.hasNotLivingStream)
        }

        /// 参数检校不通过。
        public static var invalidInput: InternalError {
            InternalError(.invalidInput)
        }

        /// 无效的请求。
        public static var invalidRequest: InternalError {
            InternalError(.invalidRequest)
        }

        /// 账号信息错误。
        public static var invalidUser: InternalError {
            InternalError(.invalidUser)
        }

        /// 计费平台返回其他错误。
        public static var jiFeiOtherError: InternalError {
            InternalError(.jiFeiOtherError)
        }

        /// 内部网络错误。
        public static var networkError: InternalError {
            InternalError(.networkError)
        }

        /// 记录不存在。
        public static var notFound: InternalError {
            InternalError(.notFound)
        }

        /// 无权限操作。
        public static var notPermmitOperat: InternalError {
            InternalError(.notPermmitOperat)
        }

        /// 播放域名不存在。
        public static var playDomainNoRecord: InternalError {
            InternalError(.playDomainNoRecord)
        }

        /// 转码模板名称已经存在。
        public static var processorAlreadyExist: InternalError {
            InternalError(.processorAlreadyExist)
        }

        /// 推流域名不存在。
        public static var pushDomainNoRecord: InternalError {
            InternalError(.pushDomainNoRecord)
        }

        /// 按省份运营商查询播放信息失败。
        public static var queryProIspPlayInfoError: InternalError {
            InternalError(.queryProIspPlayInfoError)
        }

        /// 查询 upload 信息失败。
        public static var queryUploadInfoFailed: InternalError {
            InternalError(.queryUploadInfoFailed)
        }

        /// 规则已经配置。
        public static var ruleAlreadyExist: InternalError {
            InternalError(.ruleAlreadyExist)
        }

        /// 规则使用中。
        public static var ruleInUsing: InternalError {
            InternalError(.ruleInUsing)
        }

        /// 规则不存在。
        public static var ruleNotFound: InternalError {
            InternalError(.ruleNotFound)
        }

        /// 规则超过限制。
        public static var ruleOutLimit: InternalError {
            InternalError(.ruleOutLimit)
        }

        /// 流状态异常。
        public static var streamStatusError: InternalError {
            InternalError(.streamStatusError)
        }

        /// 系统内部错误。
        public static var systemError: InternalError {
            InternalError(.systemError)
        }

        /// 更新数据失败。
        public static var updateDataError: InternalError {
            InternalError(.updateDataError)
        }

        /// 添加直播水印失败。
        public static var watermarkAddError: InternalError {
            InternalError(.watermarkAddError)
        }

        /// 水印修改内部错误。
        public static var watermarkEditError: InternalError {
            InternalError(.watermarkEditError)
        }

        /// 水印不存在。
        public static var watermarkNotExist: InternalError {
            InternalError(.watermarkNotExist)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asLiveError() -> TCLiveError {
            let code: TCLiveError.Code
            switch self.error {
            case .argsNotMatch:
                code = .internalError_ArgsNotMatch
            case .callOtherSvrError:
                code = .internalError_CallOtherSvrError
            case .chineseCharacterDetected:
                code = .internalError_ChineseCharacterDetected
            case .confInUsed:
                code = .internalError_ConfInUsed
            case .confNotFound:
                code = .internalError_ConfNotFound
            case .confOutLimit:
                code = .internalError_ConfOutLimit
            case .configNotExist:
                code = .internalError_ConfigNotExist
            case .connectDbError:
                code = .internalError_ConnectDbError
            case .crtDateInUsing:
                code = .internalError_CrtDateInUsing
            case .crtDateNotFound:
                code = .internalError_CrtDateNotFound
            case .crtDateNotLegal:
                code = .internalError_CrtDateNotLegal
            case .crtDateOverdue:
                code = .internalError_CrtDateOverdue
            case .crtDomainNotFound:
                code = .internalError_CrtDomainNotFound
            case .crtKeyNotMatch:
                code = .internalError_CrtKeyNotMatch
            case .dbError:
                code = .internalError_DBError
            case .domainAlreadyExist:
                code = .internalError_DomainAlreadyExist
            case .domainFormatError:
                code = .internalError_DomainFormatError
            case .domainGslbFail:
                code = .internalError_DomainGslbFail
            case .domainIsFamous:
                code = .internalError_DomainIsFamous
            case .domainIsLimited:
                code = .internalError_DomainIsLimited
            case .domainNoRecord:
                code = .internalError_DomainNoRecord
            case .domainNotExist:
                code = .internalError_DomainNotExist
            case .domainTooLong:
                code = .internalError_DomainTooLong
            case .getBizidError:
                code = .internalError_GetBizidError
            case .getConfigError:
                code = .internalError_GetConfigError
            case .getStreamInfoError:
                code = .internalError_GetStreamInfoError
            case .getUpstreamInfoError:
                code = .internalError_GetUpstreamInfoError
            case .getWatermarkError:
                code = .internalError_GetWatermarkError
            case .hasNotLivingStream:
                code = .internalError_HasNotLivingStream
            case .invalidInput:
                code = .internalError_InvalidInput
            case .invalidRequest:
                code = .internalError_InvalidRequest
            case .invalidUser:
                code = .internalError_InvalidUser
            case .jiFeiOtherError:
                code = .internalError_JiFeiOtherError
            case .networkError:
                code = .internalError_NetworkError
            case .notFound:
                code = .internalError_NotFound
            case .notPermmitOperat:
                code = .internalError_NotPermmitOperat
            case .playDomainNoRecord:
                code = .internalError_PlayDomainNoRecord
            case .processorAlreadyExist:
                code = .internalError_ProcessorAlreadyExist
            case .pushDomainNoRecord:
                code = .internalError_PushDomainNoRecord
            case .queryProIspPlayInfoError:
                code = .internalError_QueryProIspPlayInfoError
            case .queryUploadInfoFailed:
                code = .internalError_QueryUploadInfoFailed
            case .ruleAlreadyExist:
                code = .internalError_RuleAlreadyExist
            case .ruleInUsing:
                code = .internalError_RuleInUsing
            case .ruleNotFound:
                code = .internalError_RuleNotFound
            case .ruleOutLimit:
                code = .internalError_RuleOutLimit
            case .streamStatusError:
                code = .internalError_StreamStatusError
            case .systemError:
                code = .internalError_SystemError
            case .updateDataError:
                code = .internalError_UpdateDataError
            case .watermarkAddError:
                code = .internalError_WatermarkAddError
            case .watermarkEditError:
                code = .internalError_WatermarkEditError
            case .watermarkNotExist:
                code = .internalError_WatermarkNotExist
            case .other:
                code = .internalError
            }
            return TCLiveError(code, context: self.context)
        }
    }
}
