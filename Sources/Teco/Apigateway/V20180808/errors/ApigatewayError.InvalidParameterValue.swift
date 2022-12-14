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

        /// ????????????????????????????????????????????????????????????
        public static var duplicatePluginConfig: InvalidParameterValue {
            InvalidParameterValue(.duplicatePluginConfig)
        }

        /// ???????????????ip?????????
        ///
        /// ????????????????????????ip?????????
        public static var illegalProxyIp: InvalidParameterValue {
            InvalidParameterValue(.illegalProxyIp)
        }

        /// ???????????????
        public static var invalidAccessKeyIds: InvalidParameterValue {
            InvalidParameterValue(.invalidAccessKeyIds)
        }

        /// ?????????Api?????????????????????OAUTH???
        public static var invalidApiBusinessType: InvalidParameterValue {
            InvalidParameterValue(.invalidApiBusinessType)
        }

        /// API Id?????????
        public static var invalidApiIds: InvalidParameterValue {
            InvalidParameterValue(.invalidApiIds)
        }

        /// ?????????API?????????
        public static var invalidApiRequestConfig: InvalidParameterValue {
            InvalidParameterValue(.invalidApiRequestConfig)
        }

        /// API????????????????????????API?????????TSF?????????????????????
        public static var invalidApiType: InvalidParameterValue {
            InvalidParameterValue(.invalidApiType)
        }

        /// ?????????????????????????????????
        public static var invalidBackendPath: InvalidParameterValue {
            InvalidParameterValue(.invalidBackendPath)
        }

        /// ????????????clb???
        public static var invalidClb: InvalidParameterValue {
            InvalidParameterValue(.invalidClb)
        }

        /// ???????????????
        public static var invalidCondition: InvalidParameterValue {
            InvalidParameterValue(.invalidCondition)
        }

        /// ???????????????????????????
        public static var invalidConstantParameters: InvalidParameterValue {
            InvalidParameterValue(.invalidConstantParameters)
        }

        /// ??????Env?????????????????????????????????release, prepub, test??????
        public static var invalidEnv: InvalidParameterValue {
            InvalidParameterValue(.invalidEnv)
        }

        /// ????????????????????????????????????????????????
        public static var invalidEnvStatus: InvalidParameterValue {
            InvalidParameterValue(.invalidEnvStatus)
        }

        /// ?????????????????????
        ///
        /// ??????????????????????????????????????????????????????
        public static var invalidFilterNotSupportedName: InvalidParameterValue {
            InvalidParameterValue(.invalidFilterNotSupportedName)
        }

        /// ??????GenLanguage???????????????
        public static var invalidGenLanguage: InvalidParameterValue {
            InvalidParameterValue(.invalidGenLanguage)
        }

        /// ?????????????????????????????????
        ///
        /// ??????????????????????????????????????????
        public static var invalidIPAddress: InvalidParameterValue {
            InvalidParameterValue(.invalidIPAddress)
        }

        /// ???????????????????????????????????????
        ///
        /// ????????????????????????????????????????????????
        public static var invalidMaxRequestNum: InvalidParameterValue {
            InvalidParameterValue(.invalidMaxRequestNum)
        }

        /// ???????????????????????? ANY, BEGIN, GET, POST, DELETE, HEAD, PUT, OPTIONS, TRACE, PATCH??????????????????????????????
        public static var invalidMethod: InvalidParameterValue {
            InvalidParameterValue(.invalidMethod)
        }

        /// ????????????????????????????????????????????????????????????
        public static var invalidPluginConfig: InvalidParameterValue {
            InvalidParameterValue(.invalidPluginConfig)
        }

        /// ???????????????????????????
        public static var invalidPort: InvalidParameterValue {
            InvalidParameterValue(.invalidPort)
        }

        /// ??????????????????????????????
        public static var invalidProcotol: InvalidParameterValue {
            InvalidParameterValue(.invalidProcotol)
        }

        /// OAUTH2.0 API ???????????????????????????
        public static var invalidPublicKey: InvalidParameterValue {
            InvalidParameterValue(.invalidPublicKey)
        }

        /// ???????????????
        public static var invalidRegion: InvalidParameterValue {
            InvalidParameterValue(.invalidRegion)
        }

        /// ???????????????????????????
        public static var invalidRequestParameters: InvalidParameterValue {
            InvalidParameterValue(.invalidRequestParameters)
        }

        /// SCF??????API???????????????
        public static var invalidScfConfig: InvalidParameterValue {
            InvalidParameterValue(.invalidScfConfig)
        }

        /// ???????????????????????????
        public static var invalidServiceConfig: InvalidParameterValue {
            InvalidParameterValue(.invalidServiceConfig)
        }

        /// ??????ServiceMockReturnMessage?????????
        public static var invalidServiceMockReturnMessage: InvalidParameterValue {
            InvalidParameterValue(.invalidServiceMockReturnMessage)
        }

        /// ???????????????????????????????????????????????????????????????
        public static var invalidServiceParam: InvalidParameterValue {
            InvalidParameterValue(.invalidServiceParam)
        }

        /// ??????ServiceParameters?????????
        public static var invalidServiceParameters: InvalidParameterValue {
            InvalidParameterValue(.invalidServiceParameters)
        }

        /// ???????????????????????????WEBSOCKET???????????????????????????????????????????????????WEBSOCKET???
        public static var invalidServiceType: InvalidParameterValue {
            InvalidParameterValue(.invalidServiceType)
        }

        /// ?????????????????????
        public static var invalidTagValues: InvalidParameterValue {
            InvalidParameterValue(.invalidTagValues)
        }

        /// TSF??????API???????????????
        public static var invalidTsfConfig: InvalidParameterValue {
            InvalidParameterValue(.invalidTsfConfig)
        }

        /// ???????????????????????????????????????????????????
        public static var invalidUpstream: InvalidParameterValue {
            InvalidParameterValue(.invalidUpstream)
        }

        /// URL???????????????
        public static var invalidUrl: InvalidParameterValue {
            InvalidParameterValue(.invalidUrl)
        }

        /// ??????vpc?????????
        public static var invalidVpcConfig: InvalidParameterValue {
            InvalidParameterValue(.invalidVpcConfig)
        }

        /// ???????????????WEBSOCKET???????????????????????????????????????????????????GET???
        public static var invalidWSMethod: InvalidParameterValue {
            InvalidParameterValue(.invalidWSMethod)
        }

        /// ??????????????????????????????
        ///
        /// ?????????????????????????????????
        public static var lengthExceeded: InvalidParameterValue {
            InvalidParameterValue(.lengthExceeded)
        }

        /// ????????????????????????????????????100???
        public static var limitExceeded: InvalidParameterValue {
            InvalidParameterValue(.limitExceeded)
        }

        /// ??????????????????????????????????????????????????????
        public static var notInOptions: InvalidParameterValue {
            InvalidParameterValue(.notInOptions)
        }

        /// OAuth???????????????????????????
        public static var nothingModifyForOauth: InvalidParameterValue {
            InvalidParameterValue(.nothingModifyForOauth)
        }

        /// ?????????????????????????????????????????????????????????
        public static var parameterNotMatch: InvalidParameterValue {
            InvalidParameterValue(.parameterNotMatch)
        }

        /// ???????????????????????????
        public static var parameterValueLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.parameterValueLimitExceeded)
        }

        /// ?????????????????????????????????????????????
        public static var rangeExceeded: InvalidParameterValue {
            InvalidParameterValue(.rangeExceeded)
        }

        /// ?????????????????????
        public static var unsupportedParameter: InvalidParameterValue {
            InvalidParameterValue(.unsupportedParameter)
        }

        /// ?????????????????????
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
