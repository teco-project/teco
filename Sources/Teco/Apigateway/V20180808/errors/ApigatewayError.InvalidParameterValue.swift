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

extension TCApigatewayError {
    public struct InvalidParameterValue: TCApigatewayErrorType {
        enum Code: String {
            case duplicatePluginConfig = "InvalidParameterValue.DuplicatePluginConfig"
            case illegalProxyIp = "InvalidParameterValue.IllegalProxyIp"
            case invalidAccessKeyIds = "InvalidParameterValue.InvalidAccessKeyIds"
            case invalidApiBusinessType = "InvalidParameterValue.InvalidApiBusinessType"
            case invalidApiIds = "InvalidParameterValue.InvalidApiIds"
            case invalidApiRequestConfig = "InvalidParameterValue.InvalidApiRequestConfig"
            case invalidApiType = "InvalidParameterValue.InvalidApiType"
            case invalidBackendPath = "InvalidParameterValue.InvalidBackendPath"
            case invalidClb = "InvalidParameterValue.InvalidClb"
            case invalidCondition = "InvalidParameterValue.InvalidCondition"
            case invalidConstantParameters = "InvalidParameterValue.InvalidConstantParameters"
            case invalidEnv = "InvalidParameterValue.InvalidEnv"
            case invalidEnvStatus = "InvalidParameterValue.InvalidEnvStatus"
            case invalidFilterNotSupportedName = "InvalidParameterValue.InvalidFilterNotSupportedName"
            case invalidGenLanguage = "InvalidParameterValue.InvalidGenLanguage"
            case invalidIPAddress = "InvalidParameterValue.InvalidIPAddress"
            case invalidMaxRequestNum = "InvalidParameterValue.InvalidMaxRequestNum"
            case invalidMethod = "InvalidParameterValue.InvalidMethod"
            case invalidPluginConfig = "InvalidParameterValue.InvalidPluginConfig"
            case invalidPort = "InvalidParameterValue.InvalidPort"
            case invalidProcotol = "InvalidParameterValue.InvalidProcotol"
            case invalidPublicKey = "InvalidParameterValue.InvalidPublicKey"
            case invalidRegion = "InvalidParameterValue.InvalidRegion"
            case invalidRequestParameters = "InvalidParameterValue.InvalidRequestParameters"
            case invalidScfConfig = "InvalidParameterValue.InvalidScfConfig"
            case invalidServiceConfig = "InvalidParameterValue.InvalidServiceConfig"
            case invalidServiceMockReturnMessage = "InvalidParameterValue.InvalidServiceMockReturnMessage"
            case invalidServiceParam = "InvalidParameterValue.InvalidServiceParam"
            case invalidServiceParameters = "InvalidParameterValue.InvalidServiceParameters"
            case invalidServiceType = "InvalidParameterValue.InvalidServiceType"
            case invalidTagValues = "InvalidParameterValue.InvalidTagValues"
            case invalidTsfConfig = "InvalidParameterValue.InvalidTsfConfig"
            case invalidUpstream = "InvalidParameterValue.InvalidUpstream"
            case invalidUrl = "InvalidParameterValue.InvalidUrl"
            case invalidVpcConfig = "InvalidParameterValue.InvalidVpcConfig"
            case invalidWSMethod = "InvalidParameterValue.InvalidWSMethod"
            case lengthExceeded = "InvalidParameterValue.LengthExceeded"
            case limitExceeded = "InvalidParameterValue.LimitExceeded"
            case notInOptions = "InvalidParameterValue.NotInOptions"
            case nothingModifyForOauth = "InvalidParameterValue.NothingModifyForOauth"
            case parameterNotMatch = "InvalidParameterValue.ParameterNotMatch"
            case parameterValueLimitExceeded = "InvalidParameterValue.ParameterValueLimitExceeded"
            case rangeExceeded = "InvalidParameterValue.RangeExceeded"
            case unsupportedParameter = "InvalidParameterValue.UnsupportedParameter"
            case other = "InvalidParameterValue"
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

        /// 插件定义参数取值重复，请修改后重新操作。
        public static var duplicatePluginConfig: InvalidParameterValue {
            InvalidParameterValue(.duplicatePluginConfig)
        }

        /// 非法的后端ip地址。
        ///
        /// 请使用正确的后端ip地址。
        public static var illegalProxyIp: InvalidParameterValue {
            InvalidParameterValue(.illegalProxyIp)
        }

        /// 密钥错误。
        public static var invalidAccessKeyIds: InvalidParameterValue {
            InvalidParameterValue(.invalidAccessKeyIds)
        }

        /// 传入的Api业务类型必须为OAUTH。
        public static var invalidApiBusinessType: InvalidParameterValue {
            InvalidParameterValue(.invalidApiBusinessType)
        }

        /// API Id错误。
        public static var invalidApiIds: InvalidParameterValue {
            InvalidParameterValue(.invalidApiIds)
        }

        /// 无效的API配置。
        public static var invalidApiRequestConfig: InvalidParameterValue {
            InvalidParameterValue(.invalidApiRequestConfig)
        }

        /// API类型错误，微服务API只支持TSF后端服务类型。
        public static var invalidApiType: InvalidParameterValue {
            InvalidParameterValue(.invalidApiType)
        }

        /// 后端服务路径配置错误。
        public static var invalidBackendPath: InvalidParameterValue {
            InvalidParameterValue(.invalidBackendPath)
        }

        /// 不合法的clb。
        public static var invalidClb: InvalidParameterValue {
            InvalidParameterValue(.invalidClb)
        }

        /// 策略错误。
        public static var invalidCondition: InvalidParameterValue {
            InvalidParameterValue(.invalidCondition)
        }

        /// 不合法的常量参数。
        public static var invalidConstantParameters: InvalidParameterValue {
            InvalidParameterValue(.invalidConstantParameters)
        }

        /// 参数Env取值错误，取值范围为（release, prepub, test）。
        public static var invalidEnv: InvalidParameterValue {
            InvalidParameterValue(.invalidEnv)
        }

        /// 服务当前环境状态，不支持此操作。
        public static var invalidEnvStatus: InvalidParameterValue {
            InvalidParameterValue(.invalidEnvStatus)
        }

        /// 参数取值错误。
        ///
        /// 修改参数取值内容为可选范围内的取值。
        public static var invalidFilterNotSupportedName: InvalidParameterValue {
            InvalidParameterValue(.invalidFilterNotSupportedName)
        }

        /// 参数GenLanguage取值错误。
        public static var invalidGenLanguage: InvalidParameterValue {
            InvalidParameterValue(.invalidGenLanguage)
        }

        /// 参数后端地址取值错误。
        ///
        /// 请修改后端地址的取值再重试。
        public static var invalidIPAddress: InvalidParameterValue {
            InvalidParameterValue(.invalidIPAddress)
        }

        /// 参数请求配额总数取值错误。
        ///
        /// 请修改请求配额总数的取值再重试。
        public static var invalidMaxRequestNum: InvalidParameterValue {
            InvalidParameterValue(.invalidMaxRequestNum)
        }

        /// 方法错误。仅支持 ANY, BEGIN, GET, POST, DELETE, HEAD, PUT, OPTIONS, TRACE, PATCH，请修改后重新操作。
        public static var invalidMethod: InvalidParameterValue {
            InvalidParameterValue(.invalidMethod)
        }

        /// 插件定义参数取值错误，请修改后重新操作。
        public static var invalidPluginConfig: InvalidParameterValue {
            InvalidParameterValue(.invalidPluginConfig)
        }

        /// 后端服务端口错误。
        public static var invalidPort: InvalidParameterValue {
            InvalidParameterValue(.invalidPort)
        }

        /// 无效的协议类型参数。
        public static var invalidProcotol: InvalidParameterValue {
            InvalidParameterValue(.invalidProcotol)
        }

        /// OAUTH2.0 API 公钥参数格式错误。
        public static var invalidPublicKey: InvalidParameterValue {
            InvalidParameterValue(.invalidPublicKey)
        }

        /// 地域错误。
        public static var invalidRegion: InvalidParameterValue {
            InvalidParameterValue(.invalidRegion)
        }

        /// 不合法的请求参数。
        public static var invalidRequestParameters: InvalidParameterValue {
            InvalidParameterValue(.invalidRequestParameters)
        }

        /// SCF类型API参数错误。
        public static var invalidScfConfig: InvalidParameterValue {
            InvalidParameterValue(.invalidScfConfig)
        }

        /// 不合法的服务配置。
        public static var invalidServiceConfig: InvalidParameterValue {
            InvalidParameterValue(.invalidServiceConfig)
        }

        /// 参数ServiceMockReturnMessage错误。
        public static var invalidServiceMockReturnMessage: InvalidParameterValue {
            InvalidParameterValue(.invalidServiceMockReturnMessage)
        }

        /// 参数配置错误，未配置在后端参数配置列表中。
        public static var invalidServiceParam: InvalidParameterValue {
            InvalidParameterValue(.invalidServiceParam)
        }

        /// 参数ServiceParameters错误。
        public static var invalidServiceParameters: InvalidParameterValue {
            InvalidParameterValue(.invalidServiceParameters)
        }

        /// 后端服务类型错误。WEBSOCKET类型的后端服务，前端协议需要配置为WEBSOCKET。
        public static var invalidServiceType: InvalidParameterValue {
            InvalidParameterValue(.invalidServiceType)
        }

        /// 标签参数错误。
        public static var invalidTagValues: InvalidParameterValue {
            InvalidParameterValue(.invalidTagValues)
        }

        /// TSF类型API配置错误。
        public static var invalidTsfConfig: InvalidParameterValue {
            InvalidParameterValue(.invalidTsfConfig)
        }

        /// 当前后端通道不存在或者是无效状态。
        public static var invalidUpstream: InvalidParameterValue {
            InvalidParameterValue(.invalidUpstream)
        }

        /// URL参数错误。
        public static var invalidUrl: InvalidParameterValue {
            InvalidParameterValue(.invalidUrl)
        }

        /// 无效vpc信息。
        public static var invalidVpcConfig: InvalidParameterValue {
            InvalidParameterValue(.invalidVpcConfig)
        }

        /// 方法错误。WEBSOCKET类型的后端服务，前端方法需要配置为GET。
        public static var invalidWSMethod: InvalidParameterValue {
            InvalidParameterValue(.invalidWSMethod)
        }

        /// 参数的长度超出限制。
        ///
        /// 修改参数的值，再重试。
        public static var lengthExceeded: InvalidParameterValue {
            InvalidParameterValue(.lengthExceeded)
        }

        /// 参数个数超出限制，上限为100。
        public static var limitExceeded: InvalidParameterValue {
            InvalidParameterValue(.limitExceeded)
        }

        /// 参数取值错误。当前值不在可选范围内。
        public static var notInOptions: InvalidParameterValue {
            InvalidParameterValue(.notInOptions)
        }

        /// OAuth接口无可用修改项。
        public static var nothingModifyForOauth: InvalidParameterValue {
            InvalidParameterValue(.nothingModifyForOauth)
        }

        /// 后端参数配置错误，未配置相关前端参数。
        public static var parameterNotMatch: InvalidParameterValue {
            InvalidParameterValue(.parameterNotMatch)
        }

        /// 参数个数超过限制。
        public static var parameterValueLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.parameterValueLimitExceeded)
        }

        /// 参数取值错误，不在参数范围内。
        public static var rangeExceeded: InvalidParameterValue {
            InvalidParameterValue(.rangeExceeded)
        }

        /// 参数取值错误。
        public static var unsupportedParameter: InvalidParameterValue {
            InvalidParameterValue(.unsupportedParameter)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asApigatewayError() -> TCApigatewayError {
            let code: TCApigatewayError.Code
            switch self.error {
            case .duplicatePluginConfig:
                code = .invalidParameterValue_DuplicatePluginConfig
            case .illegalProxyIp:
                code = .invalidParameterValue_IllegalProxyIp
            case .invalidAccessKeyIds:
                code = .invalidParameterValue_InvalidAccessKeyIds
            case .invalidApiBusinessType:
                code = .invalidParameterValue_InvalidApiBusinessType
            case .invalidApiIds:
                code = .invalidParameterValue_InvalidApiIds
            case .invalidApiRequestConfig:
                code = .invalidParameterValue_InvalidApiRequestConfig
            case .invalidApiType:
                code = .invalidParameterValue_InvalidApiType
            case .invalidBackendPath:
                code = .invalidParameterValue_InvalidBackendPath
            case .invalidClb:
                code = .invalidParameterValue_InvalidClb
            case .invalidCondition:
                code = .invalidParameterValue_InvalidCondition
            case .invalidConstantParameters:
                code = .invalidParameterValue_InvalidConstantParameters
            case .invalidEnv:
                code = .invalidParameterValue_InvalidEnv
            case .invalidEnvStatus:
                code = .invalidParameterValue_InvalidEnvStatus
            case .invalidFilterNotSupportedName:
                code = .invalidParameterValue_InvalidFilterNotSupportedName
            case .invalidGenLanguage:
                code = .invalidParameterValue_InvalidGenLanguage
            case .invalidIPAddress:
                code = .invalidParameterValue_InvalidIPAddress
            case .invalidMaxRequestNum:
                code = .invalidParameterValue_InvalidMaxRequestNum
            case .invalidMethod:
                code = .invalidParameterValue_InvalidMethod
            case .invalidPluginConfig:
                code = .invalidParameterValue_InvalidPluginConfig
            case .invalidPort:
                code = .invalidParameterValue_InvalidPort
            case .invalidProcotol:
                code = .invalidParameterValue_InvalidProcotol
            case .invalidPublicKey:
                code = .invalidParameterValue_InvalidPublicKey
            case .invalidRegion:
                code = .invalidParameterValue_InvalidRegion
            case .invalidRequestParameters:
                code = .invalidParameterValue_InvalidRequestParameters
            case .invalidScfConfig:
                code = .invalidParameterValue_InvalidScfConfig
            case .invalidServiceConfig:
                code = .invalidParameterValue_InvalidServiceConfig
            case .invalidServiceMockReturnMessage:
                code = .invalidParameterValue_InvalidServiceMockReturnMessage
            case .invalidServiceParam:
                code = .invalidParameterValue_InvalidServiceParam
            case .invalidServiceParameters:
                code = .invalidParameterValue_InvalidServiceParameters
            case .invalidServiceType:
                code = .invalidParameterValue_InvalidServiceType
            case .invalidTagValues:
                code = .invalidParameterValue_InvalidTagValues
            case .invalidTsfConfig:
                code = .invalidParameterValue_InvalidTsfConfig
            case .invalidUpstream:
                code = .invalidParameterValue_InvalidUpstream
            case .invalidUrl:
                code = .invalidParameterValue_InvalidUrl
            case .invalidVpcConfig:
                code = .invalidParameterValue_InvalidVpcConfig
            case .invalidWSMethod:
                code = .invalidParameterValue_InvalidWSMethod
            case .lengthExceeded:
                code = .invalidParameterValue_LengthExceeded
            case .limitExceeded:
                code = .invalidParameterValue_LimitExceeded
            case .notInOptions:
                code = .invalidParameterValue_NotInOptions
            case .nothingModifyForOauth:
                code = .invalidParameterValue_NothingModifyForOauth
            case .parameterNotMatch:
                code = .invalidParameterValue_ParameterNotMatch
            case .parameterValueLimitExceeded:
                code = .invalidParameterValue_ParameterValueLimitExceeded
            case .rangeExceeded:
                code = .invalidParameterValue_RangeExceeded
            case .unsupportedParameter:
                code = .invalidParameterValue_UnsupportedParameter
            case .other:
                code = .invalidParameterValue
            }
            return TCApigatewayError(code, context: self.context)
        }
    }
}
