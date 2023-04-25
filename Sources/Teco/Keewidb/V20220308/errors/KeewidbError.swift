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

/// Service error type returned by `Keewidb`.
public protocol TCKeewidbErrorType: TCServiceErrorType {
    /// Get the service error as ``TCKeewidbError``.
    ///
    /// - Returns: ``TCKeewidbError`` that holds the same error code and context.
    func asKeewidbError() -> TCKeewidbError
}

public struct TCKeewidbError: TCKeewidbErrorType {
    enum Code: String {
        case failedOperation_AddInstanceInfoFailed = "FailedOperation.AddInstanceInfoFailed"
        case failedOperation_AssociateSecurityGroupsFailed = "FailedOperation.AssociateSecurityGroupsFailed"
        case failedOperation_ClearInstanceInfoFailed = "FailedOperation.ClearInstanceInfoFailed"
        case failedOperation_DisassociateSecurityGroupsFailed = "FailedOperation.DisassociateSecurityGroupsFailed"
        case failedOperation_DtsStatusAbnormal = "FailedOperation.DtsStatusAbnormal"
        case failedOperation_GetSecurityGroupDetailFailed = "FailedOperation.GetSecurityGroupDetailFailed"
        case failedOperation_SetRuleLocationFailed = "FailedOperation.SetRuleLocationFailed"
        case failedOperation_SystemError = "FailedOperation.SystemError"
        case failedOperation_UnSupportError = "FailedOperation.UnSupportError"
        case failedOperation_Unknown = "FailedOperation.Unknown"
        case failedOperation_UpdateInstanceInfoFailed = "FailedOperation.UpdateInstanceInfoFailed"
        case failedOperation_UpdateSecurityGroupsFailed = "FailedOperation.UpdateSecurityGroupsFailed"
        case internalError_CamAuthOssResponseReturnCodeError = "InternalError.CamAuthOssResponseReturnCodeError"
        case internalError_DbOperationFailed = "InternalError.DbOperationFailed"
        case internalError_ExecHttpRequestError = "InternalError.ExecHttpRequestError"
        case internalError_InstanceOperatePermissionError = "InternalError.InstanceOperatePermissionError"
        case internalError_InternalError = "InternalError.InternalError"
        case internalError_ListInstancesError = "InternalError.ListInstancesError"
        case internalError_NetWorkErr = "InternalError.NetWorkErr"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_PasswordEmpty = "InvalidParameterValue.PasswordEmpty"
        case invalidParameterValue_PasswordError = "InvalidParameterValue.PasswordError"
        case invalidParameterValue_PasswordFreeDenied = "InvalidParameterValue.PasswordFreeDenied"
        case invalidParameterValue_PasswordRuleError = "InvalidParameterValue.PasswordRuleError"
        case invalidParameterValue_UnSupportedType = "InvalidParameterValue.UnSupportedType"
        case invalidParameterValue_WeekDaysIsInvalid = "InvalidParameterValue.WeekDaysIsInvalid"
        case invalidParameter_EmptyParam = "InvalidParameter.EmptyParam"
        case invalidParameter_IllegalParameterError = "InvalidParameter.IllegalParameterError"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case invalidParameter_NotSupported = "InvalidParameter.NotSupported"
        case invalidParameter_Period = "InvalidParameter.Period"
        case invalidParameter_PermissionDenied = "InvalidParameter.PermissionDenied"
        case invalidParameter_SpecNotSupported = "InvalidParameter.SpecNotSupported"
        case limitExceeded_InvalidSize = "LimitExceeded.InvalidSize"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound_InstanceNotExists = "ResourceNotFound.InstanceNotExists"
        case resourceNotFound_InstanceNotFound = "ResourceNotFound.InstanceNotFound"
        case resourceUnavailable_CallOssError = "ResourceUnavailable.CallOssError"
        case resourceUnavailable_InstanceConfError = "ResourceUnavailable.InstanceConfError"
        case resourceUnavailable_InstanceLockedError = "ResourceUnavailable.InstanceLockedError"
        case resourceUnavailable_InstanceStateError = "ResourceUnavailable.InstanceStateError"
        case resourceUnavailable_InstanceStatusAbnormal = "ResourceUnavailable.InstanceStatusAbnormal"
        case resourceUnavailable_InstanceStatusError = "ResourceUnavailable.InstanceStatusError"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_UserNotInWhiteList = "UnauthorizedOperation.UserNotInWhiteList"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_IsAutoRenewError = "UnsupportedOperation.IsAutoRenewError"
    }

    /// Error domains affliated to ``TCKeewidbError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
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

    /// 实例安全组信息添加失败。
    public static var failedOperation_AddInstanceInfoFailed: TCKeewidbError {
        TCKeewidbError(.failedOperation_AddInstanceInfoFailed)
    }

    /// 绑定安全组失败。
    public static var failedOperation_AssociateSecurityGroupsFailed: TCKeewidbError {
        TCKeewidbError(.failedOperation_AssociateSecurityGroupsFailed)
    }

    /// 实例安全组信息清除失败。
    public static var failedOperation_ClearInstanceInfoFailed: TCKeewidbError {
        TCKeewidbError(.failedOperation_ClearInstanceInfoFailed)
    }

    /// 解绑安全组失败。
    public static var failedOperation_DisassociateSecurityGroupsFailed: TCKeewidbError {
        TCKeewidbError(.failedOperation_DisassociateSecurityGroupsFailed)
    }

    /// 当前DTS状态下不允许该操作。
    public static var failedOperation_DtsStatusAbnormal: TCKeewidbError {
        TCKeewidbError(.failedOperation_DtsStatusAbnormal)
    }

    /// 获取安全组详情失败。
    public static var failedOperation_GetSecurityGroupDetailFailed: TCKeewidbError {
        TCKeewidbError(.failedOperation_GetSecurityGroupDetailFailed)
    }

    /// 设置规则失败。
    public static var failedOperation_SetRuleLocationFailed: TCKeewidbError {
        TCKeewidbError(.failedOperation_SetRuleLocationFailed)
    }

    /// 内部系统错误，和业务无关。
    public static var failedOperation_SystemError: TCKeewidbError {
        TCKeewidbError(.failedOperation_SystemError)
    }

    /// 实例不支持该接口。
    public static var failedOperation_UnSupportError: TCKeewidbError {
        TCKeewidbError(.failedOperation_UnSupportError)
    }

    /// 未知类型操作错误。
    public static var failedOperation_Unknown: TCKeewidbError {
        TCKeewidbError(.failedOperation_Unknown)
    }

    /// 实例安全组信息更新失败。
    public static var failedOperation_UpdateInstanceInfoFailed: TCKeewidbError {
        TCKeewidbError(.failedOperation_UpdateInstanceInfoFailed)
    }

    /// 更新安全组失败。
    public static var failedOperation_UpdateSecurityGroupsFailed: TCKeewidbError {
        TCKeewidbError(.failedOperation_UpdateSecurityGroupsFailed)
    }

    /// cam鉴权错误。
    public static var internalError_CamAuthOssResponseReturnCodeError: TCKeewidbError {
        TCKeewidbError(.internalError_CamAuthOssResponseReturnCodeError)
    }

    /// 统一的 DB 操作错误，可以是 update insert select..。
    public static var internalError_DbOperationFailed: TCKeewidbError {
        TCKeewidbError(.internalError_DbOperationFailed)
    }

    /// 执行Http请求失败。
    public static var internalError_ExecHttpRequestError: TCKeewidbError {
        TCKeewidbError(.internalError_ExecHttpRequestError)
    }

    /// 无操作权限。
    public static var internalError_InstanceOperatePermissionError: TCKeewidbError {
        TCKeewidbError(.internalError_InstanceOperatePermissionError)
    }

    /// 内部错误。
    public static var internalError_InternalError: TCKeewidbError {
        TCKeewidbError(.internalError_InternalError)
    }

    /// 获取实例列表出错。
    public static var internalError_ListInstancesError: TCKeewidbError {
        TCKeewidbError(.internalError_ListInstancesError)
    }

    /// 网络错误。
    public static var internalError_NetWorkErr: TCKeewidbError {
        TCKeewidbError(.internalError_NetWorkErr)
    }

    /// 参数错误。
    public static var invalidParameter: TCKeewidbError {
        TCKeewidbError(.invalidParameter)
    }

    /// 密码为空。
    public static var invalidParameterValue_PasswordEmpty: TCKeewidbError {
        TCKeewidbError(.invalidParameterValue_PasswordEmpty)
    }

    /// 密码校验出错，密码错误。
    public static var invalidParameterValue_PasswordError: TCKeewidbError {
        TCKeewidbError(.invalidParameterValue_PasswordError)
    }

    /// 腾讯集团内部账号禁止使用免密实例。
    public static var invalidParameterValue_PasswordFreeDenied: TCKeewidbError {
        TCKeewidbError(.invalidParameterValue_PasswordFreeDenied)
    }

    /// 设置密码时，MC 传入的 old password 与先前设定密码不同。
    public static var invalidParameterValue_PasswordRuleError: TCKeewidbError {
        TCKeewidbError(.invalidParameterValue_PasswordRuleError)
    }

    /// 实例类型不支持。
    public static var invalidParameterValue_UnSupportedType: TCKeewidbError {
        TCKeewidbError(.invalidParameterValue_UnSupportedType)
    }

    /// weekday输入无效数据。
    public static var invalidParameterValue_WeekDaysIsInvalid: TCKeewidbError {
        TCKeewidbError(.invalidParameterValue_WeekDaysIsInvalid)
    }

    /// 参数为空。
    public static var invalidParameter_EmptyParam: TCKeewidbError {
        TCKeewidbError(.invalidParameter_EmptyParam)
    }

    /// 非法参数错误。
    public static var invalidParameter_IllegalParameterError: TCKeewidbError {
        TCKeewidbError(.invalidParameter_IllegalParameterError)
    }

    /// 业务参数错误。
    public static var invalidParameter_InvalidParameter: TCKeewidbError {
        TCKeewidbError(.invalidParameter_InvalidParameter)
    }

    /// 参数错误，不支持操作。
    public static var invalidParameter_NotSupported: TCKeewidbError {
        TCKeewidbError(.invalidParameter_NotSupported)
    }

    /// 时间格式或者范围不符合要求。
    public static var invalidParameter_Period: TCKeewidbError {
        TCKeewidbError(.invalidParameter_Period)
    }

    /// 接口没有cam权限。
    public static var invalidParameter_PermissionDenied: TCKeewidbError {
        TCKeewidbError(.invalidParameter_PermissionDenied)
    }

    /// 不支持的实例规格。
    public static var invalidParameter_SpecNotSupported: TCKeewidbError {
        TCKeewidbError(.invalidParameter_SpecNotSupported)
    }

    /// 请求的容量不在售卖规格中。
    public static var limitExceeded_InvalidSize: TCKeewidbError {
        TCKeewidbError(.limitExceeded_InvalidSize)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCKeewidbError {
        TCKeewidbError(.resourceInsufficient)
    }

    /// 找不到对应实例
    public static var resourceNotFound_InstanceNotExists: TCKeewidbError {
        TCKeewidbError(.resourceNotFound_InstanceNotExists)
    }

    /// 找不到该实例。
    public static var resourceNotFound_InstanceNotFound: TCKeewidbError {
        TCKeewidbError(.resourceNotFound_InstanceNotFound)
    }

    /// 调用后端接口失败。
    public static var resourceUnavailable_CallOssError: TCKeewidbError {
        TCKeewidbError(.resourceUnavailable_CallOssError)
    }

    /// 实例配置错误。
    public static var resourceUnavailable_InstanceConfError: TCKeewidbError {
        TCKeewidbError(.resourceUnavailable_InstanceConfError)
    }

    /// 实例已经被其它流程锁定。
    public static var resourceUnavailable_InstanceLockedError: TCKeewidbError {
        TCKeewidbError(.resourceUnavailable_InstanceLockedError)
    }

    /// 实例状态错误。
    public static var resourceUnavailable_InstanceStateError: TCKeewidbError {
        TCKeewidbError(.resourceUnavailable_InstanceStateError)
    }

    /// 实例状态异常，不能执行对应流程。
    public static var resourceUnavailable_InstanceStatusAbnormal: TCKeewidbError {
        TCKeewidbError(.resourceUnavailable_InstanceStatusAbnormal)
    }

    /// 实例状态异常，不能执行对应操作。
    public static var resourceUnavailable_InstanceStatusError: TCKeewidbError {
        TCKeewidbError(.resourceUnavailable_InstanceStatusError)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCKeewidbError {
        TCKeewidbError(.unauthorizedOperation)
    }

    /// 用户不在白名单中。
    public static var unauthorizedOperation_UserNotInWhiteList: TCKeewidbError {
        TCKeewidbError(.unauthorizedOperation_UserNotInWhiteList)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCKeewidbError {
        TCKeewidbError(.unsupportedOperation)
    }

    /// 自动续费标识错误。
    public static var unsupportedOperation_IsAutoRenewError: TCKeewidbError {
        TCKeewidbError(.unsupportedOperation_IsAutoRenewError)
    }

    public func asKeewidbError() -> TCKeewidbError {
        return self
    }
}
