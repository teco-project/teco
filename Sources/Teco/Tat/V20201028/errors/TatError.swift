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

/// Service error type returned by `Tat`.
public protocol TCTatErrorType: TCServiceErrorType {
    /// Get the service error as ``TCTatError``.
    ///
    /// - Returns: ``TCTatError`` that holds the same error code and context.
    func asTatError() -> TCTatError
}

public struct TCTatError: TCTatErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation_CVMError = "FailedOperation.CVMError"
        case failedOperation_LighthouseError = "FailedOperation.LighthouseError"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AgentUnsupportedCommandType = "InvalidParameterValue.AgentUnsupportedCommandType"
        case invalidParameterValue_CommandContentInvalid = "InvalidParameterValue.CommandContentInvalid"
        case invalidParameterValue_CommandNameDuplicated = "InvalidParameterValue.CommandNameDuplicated"
        case invalidParameterValue_InconsistentInstance = "InvalidParameterValue.InconsistentInstance"
        case invalidParameterValue_InstanceIsNotRelatedToInvocation = "InvalidParameterValue.InstanceIsNotRelatedToInvocation"
        case invalidParameterValue_InvalidCommandId = "InvalidParameterValue.InvalidCommandId"
        case invalidParameterValue_InvalidCommandName = "InvalidParameterValue.InvalidCommandName"
        case invalidParameterValue_InvalidContent = "InvalidParameterValue.InvalidContent"
        case invalidParameterValue_InvalidCronExpression = "InvalidParameterValue.InvalidCronExpression"
        case invalidParameterValue_InvalidFilter = "InvalidParameterValue.InvalidFilter"
        case invalidParameterValue_InvalidInstanceId = "InvalidParameterValue.InvalidInstanceId"
        case invalidParameterValue_InvalidInvocationId = "InvalidParameterValue.InvalidInvocationId"
        case invalidParameterValue_InvalidInvocationTaskId = "InvalidParameterValue.InvalidInvocationTaskId"
        case invalidParameterValue_InvalidInvokerId = "InvalidParameterValue.InvalidInvokerId"
        case invalidParameterValue_InvalidOutputCOSBucketUrl = "InvalidParameterValue.InvalidOutputCOSBucketUrl"
        case invalidParameterValue_InvalidOutputCOSKeyPrefix = "InvalidParameterValue.InvalidOutputCOSKeyPrefix"
        case invalidParameterValue_InvalidRegisterCodeId = "InvalidParameterValue.InvalidRegisterCodeId"
        case invalidParameterValue_InvalidRegisterInstanceId = "InvalidParameterValue.InvalidRegisterInstanceId"
        case invalidParameterValue_InvalidTimeFormat = "InvalidParameterValue.InvalidTimeFormat"
        case invalidParameterValue_InvalidUsername = "InvalidParameterValue.InvalidUsername"
        case invalidParameterValue_InvalidWorkingDirectory = "InvalidParameterValue.InvalidWorkingDirectory"
        case invalidParameterValue_InvokeTimeExpired = "InvalidParameterValue.InvokeTimeExpired"
        case invalidParameterValue_LackOfParameterInfo = "InvalidParameterValue.LackOfParameterInfo"
        case invalidParameterValue_LackOfParameters = "InvalidParameterValue.LackOfParameters"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameterValue_ParameterDisabled = "InvalidParameterValue.ParameterDisabled"
        case invalidParameterValue_ParameterInvalidJsonFormat = "InvalidParameterValue.ParameterInvalidJsonFormat"
        case invalidParameterValue_ParameterKeyContainsInvalidChar = "InvalidParameterValue.ParameterKeyContainsInvalidChar"
        case invalidParameterValue_ParameterKeyDuplicated = "InvalidParameterValue.ParameterKeyDuplicated"
        case invalidParameterValue_ParameterKeyLenExceeded = "InvalidParameterValue.ParameterKeyLenExceeded"
        case invalidParameterValue_ParameterNumberExceeded = "InvalidParameterValue.ParameterNumberExceeded"
        case invalidParameterValue_ParameterValueNotString = "InvalidParameterValue.ParameterValueNotString"
        case invalidParameterValue_Range = "InvalidParameterValue.Range"
        case invalidParameterValue_SupportParametersOnlyIfEnableParameter = "InvalidParameterValue.SupportParametersOnlyIfEnableParameter"
        case invalidParameterValue_TooLong = "InvalidParameterValue.TooLong"
        case invalidParameter_ConflictParameter = "InvalidParameter.ConflictParameter"
        case invalidParameter_InvalidUsername = "InvalidParameter.InvalidUsername"
        case invalidParameter_ParameterNameDuplicated = "InvalidParameter.ParameterNameDuplicated"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_FilterValueExceeded = "LimitExceeded.FilterValueExceeded"
        case missingParameter = "MissingParameter"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_CommandNotFound = "ResourceNotFound.CommandNotFound"
        case resourceNotFound_InstanceNotFound = "ResourceNotFound.InstanceNotFound"
        case resourceNotFound_InvocationNotFound = "ResourceNotFound.InvocationNotFound"
        case resourceNotFound_RegisterCodesNotFoundCode = "ResourceNotFound.RegisterCodesNotFoundCode"
        case resourceNotFound_RegisterInstanceNotFoundCode = "ResourceNotFound.RegisterInstanceNotFoundCode"
        case resourceNotFound_RoleNotFound = "ResourceNotFound.RoleNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_AgentNotInstalled = "ResourceUnavailable.AgentNotInstalled"
        case resourceUnavailable_AgentStatusNotOnline = "ResourceUnavailable.AgentStatusNotOnline"
        case resourceUnavailable_CommandInExecuting = "ResourceUnavailable.CommandInExecuting"
        case resourceUnavailable_CommandInInvoker = "ResourceUnavailable.CommandInInvoker"
        case resourceUnavailable_InstanceStateNotRunning = "ResourceUnavailable.InstanceStateNotRunning"
        case resourceUnavailable_LighthouseUnsupportedRegion = "ResourceUnavailable.LighthouseUnsupportedRegion"
        case unauthorizedOperation_AssumeRoleUnauthorized = "UnauthorizedOperation.AssumeRoleUnauthorized"
        case unauthorizedOperation_CamAuthFailed = "UnauthorizedOperation.CamAuthFailed"
        case unauthorizedOperation_InvalidToken = "UnauthorizedOperation.InvalidToken"
        case unauthorizedOperation_MFAExpired = "UnauthorizedOperation.MFAExpired"
        case unauthorizedOperation_MFANotFound = "UnauthorizedOperation.MFANotFound"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
    }

    /// Error domains affliated to ``TCTatError``.
    public static var domains: [TCErrorType.Type] {
        [
            FailedOperation.self,
            InvalidParameter.self,
            InvalidParameterValue.self,
            LimitExceeded.self,
            ResourceNotFound.self,
            ResourceUnavailable.self,
            UnauthorizedOperation.self
        ]
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

    /// CAM签名/鉴权错误。
    public static var authFailure: TCTatError {
        TCTatError(.authFailure)
    }

    /// 调用 CVM 失败。
    public static var failedOperation_CVMError: TCTatError {
        TCTatError(.failedOperation_CVMError)
    }

    /// 调用 Lighthouse 失败。
    public static var failedOperation_LighthouseError: TCTatError {
        TCTatError(.failedOperation_LighthouseError)
    }

    /// 内部错误。
    public static var internalError: TCTatError {
        TCTatError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCTatError {
        TCTatError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCTatError {
        TCTatError(.invalidParameterValue)
    }

    /// Agent不支持此命令类型。
    ///
    /// 请确认执行机器是否支持此类型命令
    public static var invalidParameterValue_AgentUnsupportedCommandType: TCTatError {
        TCTatError(.invalidParameterValue_AgentUnsupportedCommandType)
    }

    /// Command 内容无效。
    public static var invalidParameterValue_CommandContentInvalid: TCTatError {
        TCTatError(.invalidParameterValue_CommandContentInvalid)
    }

    /// Command 名称重复。
    public static var invalidParameterValue_CommandNameDuplicated: TCTatError {
        TCTatError(.invalidParameterValue_CommandNameDuplicated)
    }

    /// 实例类型不一致。
    public static var invalidParameterValue_InconsistentInstance: TCTatError {
        TCTatError(.invalidParameterValue_InconsistentInstance)
    }

    /// 实例ID与执行活动无关。
    ///
    /// 检查参数InstanceIds。
    public static var invalidParameterValue_InstanceIsNotRelatedToInvocation: TCTatError {
        TCTatError(.invalidParameterValue_InstanceIsNotRelatedToInvocation)
    }

    /// CommandId 无效。
    public static var invalidParameterValue_InvalidCommandId: TCTatError {
        TCTatError(.invalidParameterValue_InvalidCommandId)
    }

    /// Command 名称无效。
    public static var invalidParameterValue_InvalidCommandName: TCTatError {
        TCTatError(.invalidParameterValue_InvalidCommandName)
    }

    /// 命令内容无效。
    public static var invalidParameterValue_InvalidContent: TCTatError {
        TCTatError(.invalidParameterValue_InvalidContent)
    }

    /// Crontab 表达式无效。
    public static var invalidParameterValue_InvalidCronExpression: TCTatError {
        TCTatError(.invalidParameterValue_InvalidCronExpression)
    }

    /// Filter 无效。
    public static var invalidParameterValue_InvalidFilter: TCTatError {
        TCTatError(.invalidParameterValue_InvalidFilter)
    }

    /// 实例ID无效。
    public static var invalidParameterValue_InvalidInstanceId: TCTatError {
        TCTatError(.invalidParameterValue_InvalidInstanceId)
    }

    /// 不合法的执行活动ID。
    public static var invalidParameterValue_InvalidInvocationId: TCTatError {
        TCTatError(.invalidParameterValue_InvalidInvocationId)
    }

    /// 不合法的执行任务ID。
    public static var invalidParameterValue_InvalidInvocationTaskId: TCTatError {
        TCTatError(.invalidParameterValue_InvalidInvocationTaskId)
    }

    /// InvokerId 无效。
    public static var invalidParameterValue_InvalidInvokerId: TCTatError {
        TCTatError(.invalidParameterValue_InvalidInvokerId)
    }

    /// OutputCOSBucketUrl 无效。
    ///
    /// OutputCOSBucketUrl 应该形如：https://tat-123454321.cos.ap-beijing.myqcloud.com。
    public static var invalidParameterValue_InvalidOutputCOSBucketUrl: TCTatError {
        TCTatError(.invalidParameterValue_InvalidOutputCOSBucketUrl)
    }

    /// OutputCOSKeyPrefix 无效。
    public static var invalidParameterValue_InvalidOutputCOSKeyPrefix: TCTatError {
        TCTatError(.invalidParameterValue_InvalidOutputCOSKeyPrefix)
    }

    /// 无效的注册码ID。
    public static var invalidParameterValue_InvalidRegisterCodeId: TCTatError {
        TCTatError(.invalidParameterValue_InvalidRegisterCodeId)
    }

    /// 无效的托管实例ID。
    public static var invalidParameterValue_InvalidRegisterInstanceId: TCTatError {
        TCTatError(.invalidParameterValue_InvalidRegisterInstanceId)
    }

    /// 无效的时间格式。
    public static var invalidParameterValue_InvalidTimeFormat: TCTatError {
        TCTatError(.invalidParameterValue_InvalidTimeFormat)
    }

    /// 用户名不合法。
    public static var invalidParameterValue_InvalidUsername: TCTatError {
        TCTatError(.invalidParameterValue_InvalidUsername)
    }

    /// 命令执行路径不合法。
    public static var invalidParameterValue_InvalidWorkingDirectory: TCTatError {
        TCTatError(.invalidParameterValue_InvalidWorkingDirectory)
    }

    /// 调用时间已过期。
    public static var invalidParameterValue_InvokeTimeExpired: TCTatError {
        TCTatError(.invalidParameterValue_InvokeTimeExpired)
    }

    /// 已启用自定义参数功能，但缺失自定义参数信息。
    public static var invalidParameterValue_LackOfParameterInfo: TCTatError {
        TCTatError(.invalidParameterValue_LackOfParameterInfo)
    }

    /// 未提供 Parameters 信息。
    public static var invalidParameterValue_LackOfParameters: TCTatError {
        TCTatError(.invalidParameterValue_LackOfParameters)
    }

    /// 超过参数限制。
    public static var invalidParameterValue_LimitExceeded: TCTatError {
        TCTatError(.invalidParameterValue_LimitExceeded)
    }

    /// 未启用自定义参数功能。
    public static var invalidParameterValue_ParameterDisabled: TCTatError {
        TCTatError(.invalidParameterValue_ParameterDisabled)
    }

    /// 参数为非法 json string 格式。
    public static var invalidParameterValue_ParameterInvalidJsonFormat: TCTatError {
        TCTatError(.invalidParameterValue_ParameterInvalidJsonFormat)
    }

    /// 参数 Key 包含非法字符。
    public static var invalidParameterValue_ParameterKeyContainsInvalidChar: TCTatError {
        TCTatError(.invalidParameterValue_ParameterKeyContainsInvalidChar)
    }

    /// 参数 Key 重复。
    public static var invalidParameterValue_ParameterKeyDuplicated: TCTatError {
        TCTatError(.invalidParameterValue_ParameterKeyDuplicated)
    }

    /// 参数 Key 过长。
    public static var invalidParameterValue_ParameterKeyLenExceeded: TCTatError {
        TCTatError(.invalidParameterValue_ParameterKeyLenExceeded)
    }

    /// 参数数目过多。
    public static var invalidParameterValue_ParameterNumberExceeded: TCTatError {
        TCTatError(.invalidParameterValue_ParameterNumberExceeded)
    }

    /// 参数 Value 非 string 类型。
    public static var invalidParameterValue_ParameterValueNotString: TCTatError {
        TCTatError(.invalidParameterValue_ParameterValueNotString)
    }

    /// 参数取值范围不合法。
    public static var invalidParameterValue_Range: TCTatError {
        TCTatError(.invalidParameterValue_Range)
    }

    /// 未启用自定义参数功能。
    public static var invalidParameterValue_SupportParametersOnlyIfEnableParameter: TCTatError {
        TCTatError(.invalidParameterValue_SupportParametersOnlyIfEnableParameter)
    }

    /// 长度超过限制。
    public static var invalidParameterValue_TooLong: TCTatError {
        TCTatError(.invalidParameterValue_TooLong)
    }

    /// 参数冲突。
    public static var invalidParameter_ConflictParameter: TCTatError {
        TCTatError(.invalidParameter_ConflictParameter)
    }

    /// 无效用户名。
    public static var invalidParameter_InvalidUsername: TCTatError {
        TCTatError(.invalidParameter_InvalidUsername)
    }

    /// 参数名称重复。
    public static var invalidParameter_ParameterNameDuplicated: TCTatError {
        TCTatError(.invalidParameter_ParameterNameDuplicated)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCTatError {
        TCTatError(.limitExceeded)
    }

    /// 填写的 Filter 取值过多。
    public static var limitExceeded_FilterValueExceeded: TCTatError {
        TCTatError(.limitExceeded_FilterValueExceeded)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCTatError {
        TCTatError(.missingParameter)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCTatError {
        TCTatError(.resourceNotFound)
    }

    /// 命令不存在。
    public static var resourceNotFound_CommandNotFound: TCTatError {
        TCTatError(.resourceNotFound_CommandNotFound)
    }

    /// 实例不存在。
    public static var resourceNotFound_InstanceNotFound: TCTatError {
        TCTatError(.resourceNotFound_InstanceNotFound)
    }

    /// 执行活动未找到。
    ///
    /// 检查参数InvocationId
    public static var resourceNotFound_InvocationNotFound: TCTatError {
        TCTatError(.resourceNotFound_InvocationNotFound)
    }

    public static var resourceNotFound_RegisterCodesNotFoundCode: TCTatError {
        TCTatError(.resourceNotFound_RegisterCodesNotFoundCode)
    }

    public static var resourceNotFound_RegisterInstanceNotFoundCode: TCTatError {
        TCTatError(.resourceNotFound_RegisterInstanceNotFoundCode)
    }

    /// 角色不存在。
    public static var resourceNotFound_RoleNotFound: TCTatError {
        TCTatError(.resourceNotFound_RoleNotFound)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCTatError {
        TCTatError(.resourceUnavailable)
    }

    /// Agent 未安装。
    public static var resourceUnavailable_AgentNotInstalled: TCTatError {
        TCTatError(.resourceUnavailable_AgentNotInstalled)
    }

    /// Agent 不在线。
    public static var resourceUnavailable_AgentStatusNotOnline: TCTatError {
        TCTatError(.resourceUnavailable_AgentStatusNotOnline)
    }

    /// 命令正在执行中。
    public static var resourceUnavailable_CommandInExecuting: TCTatError {
        TCTatError(.resourceUnavailable_CommandInExecuting)
    }

    /// 命令已关联执行器。
    public static var resourceUnavailable_CommandInInvoker: TCTatError {
        TCTatError(.resourceUnavailable_CommandInInvoker)
    }

    /// 实例未处于运行中。
    public static var resourceUnavailable_InstanceStateNotRunning: TCTatError {
        TCTatError(.resourceUnavailable_InstanceStateNotRunning)
    }

    /// Lighthouse 尚不支持指定的地域。
    ///
    /// 请确认所填实例是否为所请求的地域的资源。
    public static var resourceUnavailable_LighthouseUnsupportedRegion: TCTatError {
        TCTatError(.resourceUnavailable_LighthouseUnsupportedRegion)
    }

    /// 角色扮演未授权。
    public static var unauthorizedOperation_AssumeRoleUnauthorized: TCTatError {
        TCTatError(.unauthorizedOperation_AssumeRoleUnauthorized)
    }

    /// CAM鉴权失败。
    public static var unauthorizedOperation_CamAuthFailed: TCTatError {
        TCTatError(.unauthorizedOperation_CamAuthFailed)
    }

    /// Token 无效。
    public static var unauthorizedOperation_InvalidToken: TCTatError {
        TCTatError(.unauthorizedOperation_InvalidToken)
    }

    /// Multi-Factor Authentication(MFA) 过期。
    public static var unauthorizedOperation_MFAExpired: TCTatError {
        TCTatError(.unauthorizedOperation_MFAExpired)
    }

    /// Multi-Factor Authentication(MFA) 不存在。
    public static var unauthorizedOperation_MFANotFound: TCTatError {
        TCTatError(.unauthorizedOperation_MFANotFound)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCTatError {
        TCTatError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCTatError {
        TCTatError(.unsupportedOperation)
    }

    public func asTatError() -> TCTatError {
        return self
    }
}
