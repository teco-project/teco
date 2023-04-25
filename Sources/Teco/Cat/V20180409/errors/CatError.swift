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

/// Service error type returned by `Cat`.
public protocol TCCatErrorType: TCServiceErrorType {
    /// Get the service error as ``TCCatError``.
    ///
    /// - Returns: ``TCCatError`` that holds the same error code and context.
    func asCatError() -> TCCatError
}

public struct TCCatError: TCCatErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_DbQueryFailed = "FailedOperation.DbQueryFailed"
        case failedOperation_DbRecordCreateFailed = "FailedOperation.DbRecordCreateFailed"
        case failedOperation_DbRecordUpdateFailed = "FailedOperation.DbRecordUpdateFailed"
        case failedOperation_ESQueryError = "FailedOperation.ESQueryError"
        case failedOperation_ErrPrePaidResourceExpire = "FailedOperation.ErrPrePaidResourceExpire"
        case failedOperation_NoValidNodes = "FailedOperation.NoValidNodes"
        case failedOperation_OrderOutOfCredit = "FailedOperation.OrderOutOfCredit"
        case failedOperation_PreResourceIDFailed = "FailedOperation.PreResourceIDFailed"
        case failedOperation_ResourceNotFound = "FailedOperation.ResourceNotFound"
        case failedOperation_SendRequest = "FailedOperation.SendRequest"
        case failedOperation_TagRequiredVerifyFailed = "FailedOperation.TagRequiredVerifyFailed"
        case failedOperation_TaskNotRunning = "FailedOperation.TaskNotRunning"
        case failedOperation_TaskNotSuspended = "FailedOperation.TaskNotSuspended"
        case failedOperation_TaskOperationNotAllow = "FailedOperation.TaskOperationNotAllow"
        case failedOperation_TaskTypeNotSame = "FailedOperation.TaskTypeNotSame"
        case failedOperation_TrialTaskExceed = "FailedOperation.TrialTaskExceed"
        case failedOperation_UnmarshalResponse = "FailedOperation.UnmarshalResponse"
        case failedOperation_UserNoQcloudTAGFullAccess = "FailedOperation.UserNoQcloudTAGFullAccess"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case missingParameter = "MissingParameter"
        case resourceNotFound = "ResourceNotFound"
        case unknownParameter = "UnknownParameter"
    }

    /// Error domains affliated to ``TCCatError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self]
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

    /// 操作失败。
    public static var failedOperation: TCCatError {
        TCCatError(.failedOperation)
    }

    /// 数据库查询错误。
    public static var failedOperation_DbQueryFailed: TCCatError {
        TCCatError(.failedOperation_DbQueryFailed)
    }

    /// 数据库创建失败。
    public static var failedOperation_DbRecordCreateFailed: TCCatError {
        TCCatError(.failedOperation_DbRecordCreateFailed)
    }

    /// 数据库更新失败。
    public static var failedOperation_DbRecordUpdateFailed: TCCatError {
        TCCatError(.failedOperation_DbRecordUpdateFailed)
    }

    /// ES查询错误。
    ///
    /// 尝试重新访问该接口，如果无效，尝试缩小时间范围或更换排序的指标。
    public static var failedOperation_ESQueryError: TCCatError {
        TCCatError(.failedOperation_ESQueryError)
    }

    /// 任务绑定的预付费套餐已过期。
    ///
    /// 任务绑定的预付费套餐已过期，请续期对应的套餐包。
    public static var failedOperation_ErrPrePaidResourceExpire: TCCatError {
        TCCatError(.failedOperation_ErrPrePaidResourceExpire)
    }

    /// 无有效节点。
    public static var failedOperation_NoValidNodes: TCCatError {
        TCCatError(.failedOperation_NoValidNodes)
    }

    /// 账单欠费。
    public static var failedOperation_OrderOutOfCredit: TCCatError {
        TCCatError(.failedOperation_OrderOutOfCredit)
    }

    /// 预付费资源id绑定错误。
    ///
    /// 未查询到此id对应的预付费资源或者此预付费资源已经绑定其他任务，请更换资源id或者删除已经绑定此资源的任务。
    public static var failedOperation_PreResourceIDFailed: TCCatError {
        TCCatError(.failedOperation_PreResourceIDFailed)
    }

    /// 资源不存在。
    public static var failedOperation_ResourceNotFound: TCCatError {
        TCCatError(.failedOperation_ResourceNotFound)
    }

    /// 发送授权请求失败。
    public static var failedOperation_SendRequest: TCCatError {
        TCCatError(.failedOperation_SendRequest)
    }

    /// 标签验证错误。
    ///
    /// 需要标签中需要包含 运营产品，运营部门，负责人。
    public static var failedOperation_TagRequiredVerifyFailed: TCCatError {
        TCCatError(.failedOperation_TagRequiredVerifyFailed)
    }

    /// 任务未运行。
    public static var failedOperation_TaskNotRunning: TCCatError {
        TCCatError(.failedOperation_TaskNotRunning)
    }

    /// 任务未暂停。
    public static var failedOperation_TaskNotSuspended: TCCatError {
        TCCatError(.failedOperation_TaskNotSuspended)
    }

    /// 任务状态不允许当前操作。
    public static var failedOperation_TaskOperationNotAllow: TCCatError {
        TCCatError(.failedOperation_TaskOperationNotAllow)
    }

    /// 批量拨测任务的类型不相同。
    ///
    /// 选择相同拨测类型的一批任务
    public static var failedOperation_TaskTypeNotSame: TCCatError {
        TCCatError(.failedOperation_TaskTypeNotSame)
    }

    /// 试用任务量超时。
    public static var failedOperation_TrialTaskExceed: TCCatError {
        TCCatError(.failedOperation_TrialTaskExceed)
    }

    /// json解析失败。
    ///
    /// 检查api调用逻辑
    public static var failedOperation_UnmarshalResponse: TCCatError {
        TCCatError(.failedOperation_UnmarshalResponse)
    }

    /// 鉴权失败。
    ///
    /// 当前子用户无相关标签写权限，请联系主账号管理员协助授予QcloudTAGFullAccess
    public static var failedOperation_UserNoQcloudTAGFullAccess: TCCatError {
        TCCatError(.failedOperation_UserNoQcloudTAGFullAccess)
    }

    /// 内部错误。
    public static var internalError: TCCatError {
        TCCatError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCCatError {
        TCCatError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCCatError {
        TCCatError(.invalidParameterValue)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCCatError {
        TCCatError(.missingParameter)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCCatError {
        TCCatError(.resourceNotFound)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCCatError {
        TCCatError(.unknownParameter)
    }

    public func asCatError() -> TCCatError {
        return self
    }
}
