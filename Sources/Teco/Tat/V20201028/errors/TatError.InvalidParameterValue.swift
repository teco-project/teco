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

import TecoCore

extension TCTatError {
    public struct InvalidParameterValue: TCTatErrorType {
        enum Code: String {
            case agentUnsupportedCommandType = "InvalidParameterValue.AgentUnsupportedCommandType"
            case commandContentInvalid = "InvalidParameterValue.CommandContentInvalid"
            case commandNameDuplicated = "InvalidParameterValue.CommandNameDuplicated"
            case inconsistentInstance = "InvalidParameterValue.InconsistentInstance"
            case instanceIsNotRelatedToInvocation = "InvalidParameterValue.InstanceIsNotRelatedToInvocation"
            case invalidCommandId = "InvalidParameterValue.InvalidCommandId"
            case invalidCommandName = "InvalidParameterValue.InvalidCommandName"
            case invalidContent = "InvalidParameterValue.InvalidContent"
            case invalidCronExpression = "InvalidParameterValue.InvalidCronExpression"
            case invalidFilter = "InvalidParameterValue.InvalidFilter"
            case invalidInstanceId = "InvalidParameterValue.InvalidInstanceId"
            case invalidInvocationId = "InvalidParameterValue.InvalidInvocationId"
            case invalidInvocationTaskId = "InvalidParameterValue.InvalidInvocationTaskId"
            case invalidInvokerId = "InvalidParameterValue.InvalidInvokerId"
            case invalidOutputCOSBucketUrl = "InvalidParameterValue.InvalidOutputCOSBucketUrl"
            case invalidOutputCOSKeyPrefix = "InvalidParameterValue.InvalidOutputCOSKeyPrefix"
            case invalidRegisterCodeId = "InvalidParameterValue.InvalidRegisterCodeId"
            case invalidRegisterInstanceId = "InvalidParameterValue.InvalidRegisterInstanceId"
            case invalidTimeFormat = "InvalidParameterValue.InvalidTimeFormat"
            case invalidUsername = "InvalidParameterValue.InvalidUsername"
            case invalidWorkingDirectory = "InvalidParameterValue.InvalidWorkingDirectory"
            case invokeTimeExpired = "InvalidParameterValue.InvokeTimeExpired"
            case lackOfParameterInfo = "InvalidParameterValue.LackOfParameterInfo"
            case lackOfParameters = "InvalidParameterValue.LackOfParameters"
            case limitExceeded = "InvalidParameterValue.LimitExceeded"
            case parameterDisabled = "InvalidParameterValue.ParameterDisabled"
            case parameterInvalidJsonFormat = "InvalidParameterValue.ParameterInvalidJsonFormat"
            case parameterKeyContainsInvalidChar = "InvalidParameterValue.ParameterKeyContainsInvalidChar"
            case parameterKeyDuplicated = "InvalidParameterValue.ParameterKeyDuplicated"
            case parameterKeyLenExceeded = "InvalidParameterValue.ParameterKeyLenExceeded"
            case parameterNumberExceeded = "InvalidParameterValue.ParameterNumberExceeded"
            case parameterValueNotString = "InvalidParameterValue.ParameterValueNotString"
            case range = "InvalidParameterValue.Range"
            case supportParametersOnlyIfEnableParameter = "InvalidParameterValue.SupportParametersOnlyIfEnableParameter"
            case tooLong = "InvalidParameterValue.TooLong"
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

        /// Agent不支持此命令类型。
        ///
        /// 请确认执行机器是否支持此类型命令
        public static var agentUnsupportedCommandType: InvalidParameterValue {
            InvalidParameterValue(.agentUnsupportedCommandType)
        }

        /// Command 内容无效。
        public static var commandContentInvalid: InvalidParameterValue {
            InvalidParameterValue(.commandContentInvalid)
        }

        /// Command 名称重复。
        public static var commandNameDuplicated: InvalidParameterValue {
            InvalidParameterValue(.commandNameDuplicated)
        }

        /// 实例类型不一致。
        public static var inconsistentInstance: InvalidParameterValue {
            InvalidParameterValue(.inconsistentInstance)
        }

        /// 实例ID与执行活动无关。
        ///
        /// 检查参数InstanceIds。
        public static var instanceIsNotRelatedToInvocation: InvalidParameterValue {
            InvalidParameterValue(.instanceIsNotRelatedToInvocation)
        }

        /// CommandId 无效。
        public static var invalidCommandId: InvalidParameterValue {
            InvalidParameterValue(.invalidCommandId)
        }

        /// Command 名称无效。
        public static var invalidCommandName: InvalidParameterValue {
            InvalidParameterValue(.invalidCommandName)
        }

        /// 命令内容无效。
        public static var invalidContent: InvalidParameterValue {
            InvalidParameterValue(.invalidContent)
        }

        /// Crontab 表达式无效。
        public static var invalidCronExpression: InvalidParameterValue {
            InvalidParameterValue(.invalidCronExpression)
        }

        /// Filter 无效。
        public static var invalidFilter: InvalidParameterValue {
            InvalidParameterValue(.invalidFilter)
        }

        /// 实例ID无效。
        public static var invalidInstanceId: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceId)
        }

        /// 不合法的执行活动ID。
        public static var invalidInvocationId: InvalidParameterValue {
            InvalidParameterValue(.invalidInvocationId)
        }

        /// 不合法的执行任务ID。
        public static var invalidInvocationTaskId: InvalidParameterValue {
            InvalidParameterValue(.invalidInvocationTaskId)
        }

        /// InvokerId 无效。
        public static var invalidInvokerId: InvalidParameterValue {
            InvalidParameterValue(.invalidInvokerId)
        }

        /// OutputCOSBucketUrl 无效。
        ///
        /// OutputCOSBucketUrl 应该形如：https://tat-123454321.cos.ap-beijing.myqcloud.com。
        public static var invalidOutputCOSBucketUrl: InvalidParameterValue {
            InvalidParameterValue(.invalidOutputCOSBucketUrl)
        }

        /// OutputCOSKeyPrefix 无效。
        public static var invalidOutputCOSKeyPrefix: InvalidParameterValue {
            InvalidParameterValue(.invalidOutputCOSKeyPrefix)
        }

        /// 无效的注册码ID。
        public static var invalidRegisterCodeId: InvalidParameterValue {
            InvalidParameterValue(.invalidRegisterCodeId)
        }

        /// 无效的托管实例ID。
        public static var invalidRegisterInstanceId: InvalidParameterValue {
            InvalidParameterValue(.invalidRegisterInstanceId)
        }

        /// 无效的时间格式。
        public static var invalidTimeFormat: InvalidParameterValue {
            InvalidParameterValue(.invalidTimeFormat)
        }

        /// 用户名不合法。
        public static var invalidUsername: InvalidParameterValue {
            InvalidParameterValue(.invalidUsername)
        }

        /// 命令执行路径不合法。
        public static var invalidWorkingDirectory: InvalidParameterValue {
            InvalidParameterValue(.invalidWorkingDirectory)
        }

        /// 调用时间已过期。
        public static var invokeTimeExpired: InvalidParameterValue {
            InvalidParameterValue(.invokeTimeExpired)
        }

        /// 已启用自定义参数功能，但缺失自定义参数信息。
        public static var lackOfParameterInfo: InvalidParameterValue {
            InvalidParameterValue(.lackOfParameterInfo)
        }

        /// 未提供 Parameters 信息。
        public static var lackOfParameters: InvalidParameterValue {
            InvalidParameterValue(.lackOfParameters)
        }

        /// 超过参数限制。
        public static var limitExceeded: InvalidParameterValue {
            InvalidParameterValue(.limitExceeded)
        }

        /// 未启用自定义参数功能。
        public static var parameterDisabled: InvalidParameterValue {
            InvalidParameterValue(.parameterDisabled)
        }

        /// 参数为非法 json string 格式。
        public static var parameterInvalidJsonFormat: InvalidParameterValue {
            InvalidParameterValue(.parameterInvalidJsonFormat)
        }

        /// 参数 Key 包含非法字符。
        public static var parameterKeyContainsInvalidChar: InvalidParameterValue {
            InvalidParameterValue(.parameterKeyContainsInvalidChar)
        }

        /// 参数 Key 重复。
        public static var parameterKeyDuplicated: InvalidParameterValue {
            InvalidParameterValue(.parameterKeyDuplicated)
        }

        /// 参数 Key 过长。
        public static var parameterKeyLenExceeded: InvalidParameterValue {
            InvalidParameterValue(.parameterKeyLenExceeded)
        }

        /// 参数数目过多。
        public static var parameterNumberExceeded: InvalidParameterValue {
            InvalidParameterValue(.parameterNumberExceeded)
        }

        /// 参数 Value 非 string 类型。
        public static var parameterValueNotString: InvalidParameterValue {
            InvalidParameterValue(.parameterValueNotString)
        }

        /// 参数取值范围不合法。
        public static var range: InvalidParameterValue {
            InvalidParameterValue(.range)
        }

        /// 未启用自定义参数功能。
        public static var supportParametersOnlyIfEnableParameter: InvalidParameterValue {
            InvalidParameterValue(.supportParametersOnlyIfEnableParameter)
        }

        /// 长度超过限制。
        public static var tooLong: InvalidParameterValue {
            InvalidParameterValue(.tooLong)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asTatError() -> TCTatError {
            let code: TCTatError.Code
            switch self.error {
            case .agentUnsupportedCommandType:
                code = .invalidParameterValue_AgentUnsupportedCommandType
            case .commandContentInvalid:
                code = .invalidParameterValue_CommandContentInvalid
            case .commandNameDuplicated:
                code = .invalidParameterValue_CommandNameDuplicated
            case .inconsistentInstance:
                code = .invalidParameterValue_InconsistentInstance
            case .instanceIsNotRelatedToInvocation:
                code = .invalidParameterValue_InstanceIsNotRelatedToInvocation
            case .invalidCommandId:
                code = .invalidParameterValue_InvalidCommandId
            case .invalidCommandName:
                code = .invalidParameterValue_InvalidCommandName
            case .invalidContent:
                code = .invalidParameterValue_InvalidContent
            case .invalidCronExpression:
                code = .invalidParameterValue_InvalidCronExpression
            case .invalidFilter:
                code = .invalidParameterValue_InvalidFilter
            case .invalidInstanceId:
                code = .invalidParameterValue_InvalidInstanceId
            case .invalidInvocationId:
                code = .invalidParameterValue_InvalidInvocationId
            case .invalidInvocationTaskId:
                code = .invalidParameterValue_InvalidInvocationTaskId
            case .invalidInvokerId:
                code = .invalidParameterValue_InvalidInvokerId
            case .invalidOutputCOSBucketUrl:
                code = .invalidParameterValue_InvalidOutputCOSBucketUrl
            case .invalidOutputCOSKeyPrefix:
                code = .invalidParameterValue_InvalidOutputCOSKeyPrefix
            case .invalidRegisterCodeId:
                code = .invalidParameterValue_InvalidRegisterCodeId
            case .invalidRegisterInstanceId:
                code = .invalidParameterValue_InvalidRegisterInstanceId
            case .invalidTimeFormat:
                code = .invalidParameterValue_InvalidTimeFormat
            case .invalidUsername:
                code = .invalidParameterValue_InvalidUsername
            case .invalidWorkingDirectory:
                code = .invalidParameterValue_InvalidWorkingDirectory
            case .invokeTimeExpired:
                code = .invalidParameterValue_InvokeTimeExpired
            case .lackOfParameterInfo:
                code = .invalidParameterValue_LackOfParameterInfo
            case .lackOfParameters:
                code = .invalidParameterValue_LackOfParameters
            case .limitExceeded:
                code = .invalidParameterValue_LimitExceeded
            case .parameterDisabled:
                code = .invalidParameterValue_ParameterDisabled
            case .parameterInvalidJsonFormat:
                code = .invalidParameterValue_ParameterInvalidJsonFormat
            case .parameterKeyContainsInvalidChar:
                code = .invalidParameterValue_ParameterKeyContainsInvalidChar
            case .parameterKeyDuplicated:
                code = .invalidParameterValue_ParameterKeyDuplicated
            case .parameterKeyLenExceeded:
                code = .invalidParameterValue_ParameterKeyLenExceeded
            case .parameterNumberExceeded:
                code = .invalidParameterValue_ParameterNumberExceeded
            case .parameterValueNotString:
                code = .invalidParameterValue_ParameterValueNotString
            case .range:
                code = .invalidParameterValue_Range
            case .supportParametersOnlyIfEnableParameter:
                code = .invalidParameterValue_SupportParametersOnlyIfEnableParameter
            case .tooLong:
                code = .invalidParameterValue_TooLong
            case .other:
                code = .invalidParameterValue
            }
            return TCTatError(code, context: self.context)
        }
    }
}
