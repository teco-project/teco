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

/// Service error type returned by `Dts`.
public protocol TCDtsErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCDtsError``.
    ///
    /// - Returns: ``TCDtsError`` that holds the same error code and context.
    func asDtsError() -> TCDtsError
}

public struct TCDtsError: TCDtsErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_AuthFailureError = "AuthFailure.AuthFailureError"
        case authFailure_AuthorizedOperationDenyError = "AuthFailure.AuthorizedOperationDenyError"
        case authFailure_UnauthorizedOperationError = "AuthFailure.UnauthorizedOperationError"
        case dryRunOperation_DryRunOperationError = "DryRunOperation.DryRunOperationError"
        case failedOperation_FailedOperationError = "FailedOperation.FailedOperationError"
        case failedOperation_NotAllowOperation = "FailedOperation.NotAllowOperation"
        case failedOperation_StartJobFailed = "FailedOperation.StartJobFailed"
        case failedOperation_StatusInConflict = "FailedOperation.StatusInConflict"
        case internalError = "InternalError"
        case internalError_AddTaskError = "InternalError.AddTaskError"
        case internalError_CeleryError = "InternalError.CeleryError"
        case internalError_CgwSystemError = "InternalError.CgwSystemError"
        case internalError_DatabaseError = "InternalError.DatabaseError"
        case internalError_DuplicateJob = "InternalError.DuplicateJob"
        case internalError_InternalErrorError = "InternalError.InternalErrorError"
        case internalError_InternalHttpServerError = "InternalError.InternalHttpServerError"
        case internalError_InternalInnerCommonError = "InternalError.InternalInnerCommonError"
        case internalError_InternalTradeError = "InternalError.InternalTradeError"
        case internalError_LockError = "InternalError.LockError"
        case internalError_NotEnoughMoneyError = "InternalError.NotEnoughMoneyError"
        case internalError_ProtocolError = "InternalError.ProtocolError"
        case internalError_UndefinedError = "InternalError.UndefinedError"
        case internalError_UnknownError = "InternalError.UnknownError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_DataConvertError = "InvalidParameterValue.DataConvertError"
        case invalidParameterValue_InvalidParameterValue = "InvalidParameterValue.InvalidParameterValue"
        case invalidParameterValue_InvalidParameterValueError = "InvalidParameterValue.InvalidParameterValueError"
        case invalidParameter_ControllerNotFoundError = "InvalidParameter.ControllerNotFoundError"
        case invalidParameter_InstanceNotFound = "InvalidParameter.InstanceNotFound"
        case invalidParameter_InvalidParameterError = "InvalidParameter.InvalidParameterError"
        case limitExceeded_LimitExceededError = "LimitExceeded.LimitExceededError"
        case limitExceeded_MaxUnusedJobs = "LimitExceeded.MaxUnusedJobs"
        case missingParameter = "MissingParameter"
        case missingParameter_MissingParameterError = "MissingParameter.MissingParameterError"
        case operationDenied = "OperationDenied"
        case operationDenied_BizOperationDeniedError = "OperationDenied.BizOperationDeniedError"
        case operationDenied_JobOperationDeniedError = "OperationDenied.JobOperationDeniedError"
        case operationDenied_NotEnoughMoneyError = "OperationDenied.NotEnoughMoneyError"
        case operationDenied_OperationDeniedError = "OperationDenied.OperationDeniedError"
        case requestLimitExceeded_RequestLimitExceededError = "RequestLimitExceeded.RequestLimitExceededError"
        case resourceInUse_ResourceInUseError = "ResourceInUse.ResourceInUseError"
        case resourceInsufficient_ResourceInsufficientError = "ResourceInsufficient.ResourceInsufficientError"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_BizResourceNotFoundError = "ResourceNotFound.BizResourceNotFoundError"
        case resourceNotFound_JobNotExist = "ResourceNotFound.JobNotExist"
        case resourceNotFound_ResourceNotFound = "ResourceNotFound.ResourceNotFound"
        case resourceNotFound_ResourceNotFoundError = "ResourceNotFound.ResourceNotFoundError"
        case resourceUnavailable_ResourceUnavailableError = "ResourceUnavailable.ResourceUnavailableError"
        case resourcesSoldOut_ResourcesSoldOutError = "ResourcesSoldOut.ResourcesSoldOutError"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_NotEnoughPrivileges = "UnauthorizedOperation.NotEnoughPrivileges"
        case unauthorizedOperation_PermissionDenied = "UnauthorizedOperation.PermissionDenied"
        case unauthorizedOperation_UnauthorizedOperationError = "UnauthorizedOperation.UnauthorizedOperationError"
        case unknownParameter = "UnknownParameter"
        case unknownParameter_UnknownParameterError = "UnknownParameter.UnknownParameterError"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_IntraNetUserNotTaggedError = "UnsupportedOperation.IntraNetUserNotTaggedError"
        case unsupportedOperation_IntraNetUserNotTaggedForSyncJobError = "UnsupportedOperation.IntraNetUserNotTaggedForSyncJobError"
        case unsupportedOperation_UnsupportedOperationError = "UnsupportedOperation.UnsupportedOperationError"
    }
    
    /// Error domains affliated to ``TCDtsError``.
    public static var domains: [TCErrorType.Type] {
        [AuthFailure.self, DryRunOperation.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, OperationDenied.self, RequestLimitExceeded.self, ResourceInUse.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self, ResourcesSoldOut.self, UnauthorizedOperation.self, UnknownParameter.self, UnsupportedOperation.self]
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
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCDtsError {
        TCDtsError(.authFailure)
    }
    
    public static var authFailure_AuthFailureError: TCDtsError {
        TCDtsError(.authFailure_AuthFailureError)
    }
    
    /// 认证拒绝错误。
    public static var authFailure_AuthorizedOperationDenyError: TCDtsError {
        TCDtsError(.authFailure_AuthorizedOperationDenyError)
    }
    
    /// 鉴权失败，当前用户不允许执行该操作。
    ///
    /// 联系当前用户的主账号为操作者赋权。
    public static var authFailure_UnauthorizedOperationError: TCDtsError {
        TCDtsError(.authFailure_UnauthorizedOperationError)
    }
    
    public static var dryRunOperation_DryRunOperationError: TCDtsError {
        TCDtsError(.dryRunOperation_DryRunOperationError)
    }
    
    public static var failedOperation_FailedOperationError: TCDtsError {
        TCDtsError(.failedOperation_FailedOperationError)
    }
    
    /// 禁止该操作。
    public static var failedOperation_NotAllowOperation: TCDtsError {
        TCDtsError(.failedOperation_NotAllowOperation)
    }
    
    /// 任务开始失败。
    public static var failedOperation_StartJobFailed: TCDtsError {
        TCDtsError(.failedOperation_StartJobFailed)
    }
    
    /// 当前状态冲突，不能执行该操作。
    public static var failedOperation_StatusInConflict: TCDtsError {
        TCDtsError(.failedOperation_StatusInConflict)
    }
    
    /// 内部错误。
    public static var internalError: TCDtsError {
        TCDtsError(.internalError)
    }
    
    /// 添加异步任务失败。
    public static var internalError_AddTaskError: TCDtsError {
        TCDtsError(.internalError_AddTaskError)
    }
    
    /// 内部调度系统错误。
    ///
    /// 内部调度系统错误
    public static var internalError_CeleryError: TCDtsError {
        TCDtsError(.internalError_CeleryError)
    }
    
    /// cgw系统错误。
    public static var internalError_CgwSystemError: TCDtsError {
        TCDtsError(.internalError_CgwSystemError)
    }
    
    /// 迁移平台数据库访问失败。
    public static var internalError_DatabaseError: TCDtsError {
        TCDtsError(.internalError_DatabaseError)
    }
    
    /// 迁移任务冲突。
    public static var internalError_DuplicateJob: TCDtsError {
        TCDtsError(.internalError_DuplicateJob)
    }
    
    public static var internalError_InternalErrorError: TCDtsError {
        TCDtsError(.internalError_InternalErrorError)
    }
    
    /// http请求访问出错。
    public static var internalError_InternalHttpServerError: TCDtsError {
        TCDtsError(.internalError_InternalHttpServerError)
    }
    
    /// 内部组件访问错误。
    public static var internalError_InternalInnerCommonError: TCDtsError {
        TCDtsError(.internalError_InternalInnerCommonError)
    }
    
    /// 调用计费服务失败。
    public static var internalError_InternalTradeError: TCDtsError {
        TCDtsError(.internalError_InternalTradeError)
    }
    
    /// 锁冲突。
    public static var internalError_LockError: TCDtsError {
        TCDtsError(.internalError_LockError)
    }
    
    /// 用户余额不足。
    ///
    /// 充值后可继续购买。
    public static var internalError_NotEnoughMoneyError: TCDtsError {
        TCDtsError(.internalError_NotEnoughMoneyError)
    }
    
    /// 通信协议错误。
    public static var internalError_ProtocolError: TCDtsError {
        TCDtsError(.internalError_ProtocolError)
    }
    
    /// 内部错误。
    ///
    /// 联系客服
    public static var internalError_UndefinedError: TCDtsError {
        TCDtsError(.internalError_UndefinedError)
    }
    
    /// 未知的内部错误。
    ///
    /// 请联系客服。
    public static var internalError_UnknownError: TCDtsError {
        TCDtsError(.internalError_UnknownError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCDtsError {
        TCDtsError(.invalidParameter)
    }
    
    /// 数据转换错误。
    public static var invalidParameterValue_DataConvertError: TCDtsError {
        TCDtsError(.invalidParameterValue_DataConvertError)
    }
    
    /// 参数值错误。
    public static var invalidParameterValue_InvalidParameterValue: TCDtsError {
        TCDtsError(.invalidParameterValue_InvalidParameterValue)
    }
    
    /// 非法参数。
    public static var invalidParameterValue_InvalidParameterValueError: TCDtsError {
        TCDtsError(.invalidParameterValue_InvalidParameterValueError)
    }
    
    /// 异常错误导致当前接口未注册。
    public static var invalidParameter_ControllerNotFoundError: TCDtsError {
        TCDtsError(.invalidParameter_ControllerNotFoundError)
    }
    
    /// 实例不存在。
    public static var invalidParameter_InstanceNotFound: TCDtsError {
        TCDtsError(.invalidParameter_InstanceNotFound)
    }
    
    public static var invalidParameter_InvalidParameterError: TCDtsError {
        TCDtsError(.invalidParameter_InvalidParameterError)
    }
    
    public static var limitExceeded_LimitExceededError: TCDtsError {
        TCDtsError(.limitExceeded_LimitExceededError)
    }
    
    /// 闲置迁移任务数目超过限制。
    public static var limitExceeded_MaxUnusedJobs: TCDtsError {
        TCDtsError(.limitExceeded_MaxUnusedJobs)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCDtsError {
        TCDtsError(.missingParameter)
    }
    
    public static var missingParameter_MissingParameterError: TCDtsError {
        TCDtsError(.missingParameter_MissingParameterError)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCDtsError {
        TCDtsError(.operationDenied)
    }
    
    /// 当前操作不满足条件被阻止。
    public static var operationDenied_BizOperationDeniedError: TCDtsError {
        TCDtsError(.operationDenied_BizOperationDeniedError)
    }
    
    /// 任务操作失败。
    ///
    /// 任务操作失败
    public static var operationDenied_JobOperationDeniedError: TCDtsError {
        TCDtsError(.operationDenied_JobOperationDeniedError)
    }
    
    /// 用户余额不足。
    public static var operationDenied_NotEnoughMoneyError: TCDtsError {
        TCDtsError(.operationDenied_NotEnoughMoneyError)
    }
    
    public static var operationDenied_OperationDeniedError: TCDtsError {
        TCDtsError(.operationDenied_OperationDeniedError)
    }
    
    public static var requestLimitExceeded_RequestLimitExceededError: TCDtsError {
        TCDtsError(.requestLimitExceeded_RequestLimitExceededError)
    }
    
    public static var resourceInUse_ResourceInUseError: TCDtsError {
        TCDtsError(.resourceInUse_ResourceInUseError)
    }
    
    public static var resourceInsufficient_ResourceInsufficientError: TCDtsError {
        TCDtsError(.resourceInsufficient_ResourceInsufficientError)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCDtsError {
        TCDtsError(.resourceNotFound)
    }
    
    /// 未找到资源。
    ///
    /// 未找到用户的资源。请确认账号与资源的关系是否正确。
    public static var resourceNotFound_BizResourceNotFoundError: TCDtsError {
        TCDtsError(.resourceNotFound_BizResourceNotFoundError)
    }
    
    /// 迁移任务不存在。
    public static var resourceNotFound_JobNotExist: TCDtsError {
        TCDtsError(.resourceNotFound_JobNotExist)
    }
    
    /// 实例未找到。
    public static var resourceNotFound_ResourceNotFound: TCDtsError {
        TCDtsError(.resourceNotFound_ResourceNotFound)
    }
    
    public static var resourceNotFound_ResourceNotFoundError: TCDtsError {
        TCDtsError(.resourceNotFound_ResourceNotFoundError)
    }
    
    public static var resourceUnavailable_ResourceUnavailableError: TCDtsError {
        TCDtsError(.resourceUnavailable_ResourceUnavailableError)
    }
    
    public static var resourcesSoldOut_ResourcesSoldOutError: TCDtsError {
        TCDtsError(.resourcesSoldOut_ResourcesSoldOutError)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCDtsError {
        TCDtsError(.unauthorizedOperation)
    }
    
    /// 认证失败，没有足够权限。
    public static var unauthorizedOperation_NotEnoughPrivileges: TCDtsError {
        TCDtsError(.unauthorizedOperation_NotEnoughPrivileges)
    }
    
    /// 操作未被授权。
    public static var unauthorizedOperation_PermissionDenied: TCDtsError {
        TCDtsError(.unauthorizedOperation_PermissionDenied)
    }
    
    public static var unauthorizedOperation_UnauthorizedOperationError: TCDtsError {
        TCDtsError(.unauthorizedOperation_UnauthorizedOperationError)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCDtsError {
        TCDtsError(.unknownParameter)
    }
    
    public static var unknownParameter_UnknownParameterError: TCDtsError {
        TCDtsError(.unknownParameter_UnknownParameterError)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCDtsError {
        TCDtsError(.unsupportedOperation)
    }
    
    /// 自研上云用户创建同步任务时未指定标签，需要补齐“运营部门”、“运营产品”、“负责人”这三类标签。
    ///
    /// 【官方】自研上云的“标签”及其作用介绍https://km.woa.com/group/35679/docs/show/218713【官方】云上PAAS服务标签自动补齐规则说明及指引 https://km.woa.com/group/35679/docs/show/222609
    public static var unsupportedOperation_IntraNetUserNotTaggedError: TCDtsError {
        TCDtsError(.unsupportedOperation_IntraNetUserNotTaggedError)
    }
    
    /// 自研上云用户创建同步任务时未指定标签，需要补齐“运营部门”、“运营产品”、“负责人”这三类标签。
    ///
    /// 【官方】自研上云的“标签”及其作用介绍https://km.woa.com/group/35679/docs/show/218713
    /// 【官方】云上PAAS服务标签自动补齐规则说明及指引 https://km.woa.com/group/35679/docs/show/222609
    public static var unsupportedOperation_IntraNetUserNotTaggedForSyncJobError: TCDtsError {
        TCDtsError(.unsupportedOperation_IntraNetUserNotTaggedForSyncJobError)
    }
    
    public static var unsupportedOperation_UnsupportedOperationError: TCDtsError {
        TCDtsError(.unsupportedOperation_UnsupportedOperationError)
    }
    
    public func asDtsError() -> TCDtsError {
        return self
    }
}
