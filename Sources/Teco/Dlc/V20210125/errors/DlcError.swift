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

/// Service error type returned by `Dlc`.
public protocol TCDlcErrorType: TCServiceErrorType {
    /// Get the service error as ``TCDlcError``.
    ///
    /// - Returns: ``TCDlcError`` that holds the same error code and context.
    func asDlcError() -> TCDlcError
}

public struct TCDlcError: TCDlcErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_AbnormalOrderStatus = "FailedOperation.AbnormalOrderStatus"
        case failedOperation_AnotherCreateProcessRunning = "FailedOperation.AnotherCreateProcessRunning"
        case failedOperation_AnotherProcessRunning = "FailedOperation.AnotherProcessRunning"
        case failedOperation_AnotherRequestProcessing = "FailedOperation.AnotherRequestProcessing"
        case failedOperation_BalanceNotEnough = "FailedOperation.BalanceNotEnough"
        case failedOperation_BillingSystemError = "FailedOperation.BillingSystemError"
        case failedOperation_BindTooManyTags = "FailedOperation.BindTooManyTags"
        case failedOperation_CreateDataEngineFailed = "FailedOperation.CreateDataEngineFailed"
        case failedOperation_DeliverGoodsFailed = "FailedOperation.DeliverGoodsFailed"
        case failedOperation_DuplicateTagKey = "FailedOperation.DuplicateTagKey"
        case failedOperation_FeeDeductionFailed = "FailedOperation.FeeDeductionFailed"
        case failedOperation_GetPolicyFailed = "FailedOperation.GetPolicyFailed"
        case failedOperation_GetProductInformationFailed = "FailedOperation.GetProductInformationFailed"
        case failedOperation_GetUserInfoFailed = "FailedOperation.GetUserInfoFailed"
        case failedOperation_GetWorkGroupInfoFailed = "FailedOperation.GetWorkGroupInfoFailed"
        case failedOperation_GrantPolicyFailed = "FailedOperation.GrantPolicyFailed"
        case failedOperation_HttpClientDoRequestFailed = "FailedOperation.HttpClientDoRequestFailed"
        case failedOperation_IllegalResource = "FailedOperation.IllegalResource"
        case failedOperation_IllegalTagKey = "FailedOperation.IllegalTagKey"
        case failedOperation_IllegalTagValue = "FailedOperation.IllegalTagValue"
        case failedOperation_InquirePriceFailed = "FailedOperation.InquirePriceFailed"
        case failedOperation_ModifyInstanceFailed = "FailedOperation.ModifyInstanceFailed"
        case failedOperation_NoPermission = "FailedOperation.NoPermission"
        case failedOperation_NoRealNameAuthentication = "FailedOperation.NoRealNameAuthentication"
        case failedOperation_NumberExceedLimit = "FailedOperation.NumberExceedLimit"
        case failedOperation_ParameterValidationFailed = "FailedOperation.ParameterValidationFailed"
        case failedOperation_RefundDepositFailed = "FailedOperation.RefundDepositFailed"
        case failedOperation_RevokePolicyFailed = "FailedOperation.RevokePolicyFailed"
        case failedOperation_TagAlreadyAttached = "FailedOperation.TagAlreadyAttached"
        case failedOperation_TagKeyTooLong = "FailedOperation.TagKeyTooLong"
        case failedOperation_TagNotExist = "FailedOperation.TagNotExist"
        case failedOperation_TagValueTooLong = "FailedOperation.TagValueTooLong"
        case failedOperation_TooManyResources = "FailedOperation.TooManyResources"
        case failedOperation_TooManyTags = "FailedOperation.TooManyTags"
        case internalError = "InternalError"
        case internalError_DBError = "InternalError.DBError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_DuplicateDataEngineName = "InvalidParameter.DuplicateDataEngineName"
        case invalidParameter_DuplicateGroupName = "InvalidParameter.DuplicateGroupName"
        case invalidParameter_DuplicateUserName = "InvalidParameter.DuplicateUserName"
        case invalidParameter_InvalidAccessPolicy = "InvalidParameter.InvalidAccessPolicy"
        case invalidParameter_InvalidDataEngineMode = "InvalidParameter.InvalidDataEngineMode"
        case invalidParameter_InvalidDataEngineName = "InvalidParameter.InvalidDataEngineName"
        case invalidParameter_InvalidDataEngineSpecs = "InvalidParameter.InvalidDataEngineSpecs"
        case invalidParameter_InvalidDescription = "InvalidParameter.InvalidDescription"
        case invalidParameter_InvalidEngineType = "InvalidParameter.InvalidEngineType"
        case invalidParameter_InvalidFailureTolerance = "InvalidParameter.InvalidFailureTolerance"
        case invalidParameter_InvalidFilterKey = "InvalidParameter.InvalidFilterKey"
        case invalidParameter_InvalidGroupId = "InvalidParameter.InvalidGroupId"
        case invalidParameter_InvalidMaxResults = "InvalidParameter.InvalidMaxResults"
        case invalidParameter_InvalidOffset = "InvalidParameter.InvalidOffset"
        case invalidParameter_InvalidPayMode = "InvalidParameter.InvalidPayMode"
        case invalidParameter_InvalidRoleArn = "InvalidParameter.InvalidRoleArn"
        case invalidParameter_InvalidSQL = "InvalidParameter.InvalidSQL"
        case invalidParameter_InvalidSQLNum = "InvalidParameter.InvalidSQLNum"
        case invalidParameter_InvalidSortByType = "InvalidParameter.InvalidSortByType"
        case invalidParameter_InvalidSparkAppParam = "InvalidParameter.InvalidSparkAppParam"
        case invalidParameter_InvalidStoreLocation = "InvalidParameter.InvalidStoreLocation"
        case invalidParameter_InvalidTaskId = "InvalidParameter.InvalidTaskId"
        case invalidParameter_InvalidTaskType = "InvalidParameter.InvalidTaskType"
        case invalidParameter_InvalidTimeSpan = "InvalidParameter.InvalidTimeSpan"
        case invalidParameter_InvalidTimeUnit = "InvalidParameter.InvalidTimeUnit"
        case invalidParameter_InvalidUserAlias = "InvalidParameter.InvalidUserAlias"
        case invalidParameter_InvalidUserName = "InvalidParameter.InvalidUserName"
        case invalidParameter_InvalidUserType = "InvalidParameter.InvalidUserType"
        case invalidParameter_InvalidWorkGroupName = "InvalidParameter.InvalidWorkGroupName"
        case invalidParameter_TaskAlreadyFinished = "InvalidParameter.TaskAlreadyFinished"
        case invalidParameter_VpcCidrFormatError = "InvalidParameter.VpcCidrFormatError"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_DatasourceNotFound = "ResourceNotFound.DatasourceNotFound"
        case resourceNotFound_ResourceNotFoundCode_SessionInsufficientResources = "ResourceNotFound.ResourceNotFoundCode_SessionInsufficientResources"
        case resourceNotFound_ResultOutputPathNotFound = "ResourceNotFound.ResultOutputPathNotFound"
        case resourceNotFound_SessionNotFound = "ResourceNotFound.SessionNotFound"
        case resourceNotFound_SessionStateDead = "ResourceNotFound.SessionStateDead"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_BalanceInsufficient = "ResourceUnavailable.BalanceInsufficient"
        case resourcesSoldOut = "ResourcesSoldOut"
        case resourcesSoldOut_UnauthorizedGrantPolicy = "ResourcesSoldOut.UnauthorizedGrantPolicy"
        case resourcesSoldOut_UnauthorizedOperation = "ResourcesSoldOut.UnauthorizedOperation"
        case resourcesSoldOut_UnauthorizedRevokePolicy = "ResourcesSoldOut.UnauthorizedRevokePolicy"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_AddUsersToWorkgroup = "UnauthorizedOperation.AddUsersToWorkgroup"
        case unauthorizedOperation_BindWorkgroupsToUser = "UnauthorizedOperation.BindWorkgroupsToUser"
        case unauthorizedOperation_CreateWorkgroup = "UnauthorizedOperation.CreateWorkgroup"
        case unauthorizedOperation_DeleteUser = "UnauthorizedOperation.DeleteUser"
        case unauthorizedOperation_DeleteUsersFromWorkgroup = "UnauthorizedOperation.DeleteUsersFromWorkgroup"
        case unauthorizedOperation_DeleteWorkgroup = "UnauthorizedOperation.DeleteWorkgroup"
        case unauthorizedOperation_GrantPolicy = "UnauthorizedOperation.GrantPolicy"
        case unauthorizedOperation_ModifyUserInfo = "UnauthorizedOperation.ModifyUserInfo"
        case unauthorizedOperation_ModifyWorkgroupInfo = "UnauthorizedOperation.ModifyWorkgroupInfo"
        case unauthorizedOperation_NoPaymentAuthority = "UnauthorizedOperation.NoPaymentAuthority"
        case unauthorizedOperation_OperateComputingEngine = "UnauthorizedOperation.OperateComputingEngine"
        case unauthorizedOperation_RevokePolicy = "UnauthorizedOperation.RevokePolicy"
        case unauthorizedOperation_UnbindWorkgroupsFromUser = "UnauthorizedOperation.UnbindWorkgroupsFromUser"
        case unauthorizedOperation_UseComputingEngine = "UnauthorizedOperation.UseComputingEngine"
        case unauthorizedOperation_UserNotExist = "UnauthorizedOperation.UserNotExist"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_ModifyOwnerUnsupported = "UnsupportedOperation.ModifyOwnerUnsupported"
    }

    /// Error domains affliated to ``TCDlcError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameter.self, ResourceNotFound.self, ResourceUnavailable.self, ResourcesSoldOut.self, UnauthorizedOperation.self, UnsupportedOperation.self]
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
    public static var authFailure: TCDlcError {
        TCDlcError(.authFailure)
    }

    /// 操作失败。
    public static var failedOperation: TCDlcError {
        TCDlcError(.failedOperation)
    }

    /// 订单状态异常。
    ///
    /// 计费侧订单状态异常，请重试或联系我们。
    public static var failedOperation_AbnormalOrderStatus: TCDlcError {
        TCDlcError(.failedOperation_AbnormalOrderStatus)
    }

    /// 另一个数据源正在创建中。
    public static var failedOperation_AnotherCreateProcessRunning: TCDlcError {
        TCDlcError(.failedOperation_AnotherCreateProcessRunning)
    }

    /// 另一个操作正在处理中，请稍后再试。
    public static var failedOperation_AnotherProcessRunning: TCDlcError {
        TCDlcError(.failedOperation_AnotherProcessRunning)
    }

    /// 另一个请求正在处理中，请稍后再试。
    public static var failedOperation_AnotherRequestProcessing: TCDlcError {
        TCDlcError(.failedOperation_AnotherRequestProcessing)
    }

    /// 账户余额不足。
    ///
    /// 请充值后再重试。
    public static var failedOperation_BalanceNotEnough: TCDlcError {
        TCDlcError(.failedOperation_BalanceNotEnough)
    }

    /// 计费系统异常。
    ///
    /// 请联系我们解决。
    public static var failedOperation_BillingSystemError: TCDlcError {
        TCDlcError(.failedOperation_BillingSystemError)
    }

    /// 绑定的标签数量超出限制。
    ///
    /// 减少绑定的标签数量
    public static var failedOperation_BindTooManyTags: TCDlcError {
        TCDlcError(.failedOperation_BindTooManyTags)
    }

    /// 创建引擎失败。
    ///
    /// 请重试或联系我们。
    public static var failedOperation_CreateDataEngineFailed: TCDlcError {
        TCDlcError(.failedOperation_CreateDataEngineFailed)
    }

    /// 发货失败。
    ///
    /// 请联系我们解决。
    public static var failedOperation_DeliverGoodsFailed: TCDlcError {
        TCDlcError(.failedOperation_DeliverGoodsFailed)
    }

    /// 重复的标签键。
    ///
    /// 检查要绑定的标签键
    public static var failedOperation_DuplicateTagKey: TCDlcError {
        TCDlcError(.failedOperation_DuplicateTagKey)
    }

    /// 扣费失败。
    ///
    /// 计费侧扣费失败，请重试或联系我们。
    public static var failedOperation_FeeDeductionFailed: TCDlcError {
        TCDlcError(.failedOperation_FeeDeductionFailed)
    }

    /// 获取鉴权策略失败。
    ///
    /// 请重试或联系我们
    public static var failedOperation_GetPolicyFailed: TCDlcError {
        TCDlcError(.failedOperation_GetPolicyFailed)
    }

    /// 获取商品信息失败。
    ///
    /// 请联系助手解决。
    public static var failedOperation_GetProductInformationFailed: TCDlcError {
        TCDlcError(.failedOperation_GetProductInformationFailed)
    }

    /// 获取用户信息失败。
    ///
    /// 请重试，如重试也失败，请联系我们。
    public static var failedOperation_GetUserInfoFailed: TCDlcError {
        TCDlcError(.failedOperation_GetUserInfoFailed)
    }

    /// 获取工作组信息失败。
    ///
    /// 请重试或联系我们。
    public static var failedOperation_GetWorkGroupInfoFailed: TCDlcError {
        TCDlcError(.failedOperation_GetWorkGroupInfoFailed)
    }

    /// 授权失败。
    ///
    /// 请重试或联系我们。
    public static var failedOperation_GrantPolicyFailed: TCDlcError {
        TCDlcError(.failedOperation_GrantPolicyFailed)
    }

    /// HTTP客户端请求失败。
    public static var failedOperation_HttpClientDoRequestFailed: TCDlcError {
        TCDlcError(.failedOperation_HttpClientDoRequestFailed)
    }

    /// 资源不符合规定。
    ///
    /// 检查资源是否越权。
    public static var failedOperation_IllegalResource: TCDlcError {
        TCDlcError(.failedOperation_IllegalResource)
    }

    /// 标签键含有非法字符。
    ///
    /// 检查要绑定的标签键
    public static var failedOperation_IllegalTagKey: TCDlcError {
        TCDlcError(.failedOperation_IllegalTagKey)
    }

    /// 标签值含有非法字符。
    ///
    /// 检查要绑定的标签值
    public static var failedOperation_IllegalTagValue: TCDlcError {
        TCDlcError(.failedOperation_IllegalTagValue)
    }

    /// 询价失败。
    ///
    /// 计费询价失败，请重试或联系我们。
    public static var failedOperation_InquirePriceFailed: TCDlcError {
        TCDlcError(.failedOperation_InquirePriceFailed)
    }

    /// 实例变配失败。
    ///
    /// 请联系我们解决
    public static var failedOperation_ModifyInstanceFailed: TCDlcError {
        TCDlcError(.failedOperation_ModifyInstanceFailed)
    }

    /// 没有操作权限。
    ///
    /// 授权之后重试。
    public static var failedOperation_NoPermission: TCDlcError {
        TCDlcError(.failedOperation_NoPermission)
    }

    /// 账号未进行实名认证。
    ///
    /// 请进行实名认证。
    public static var failedOperation_NoRealNameAuthentication: TCDlcError {
        TCDlcError(.failedOperation_NoRealNameAuthentication)
    }

    /// 采购数量超过限制。
    ///
    /// 采购数量超过限制，请降低购买数量。
    public static var failedOperation_NumberExceedLimit: TCDlcError {
        TCDlcError(.failedOperation_NumberExceedLimit)
    }

    /// 参数校验失败。
    ///
    /// 参数校验失败，请重试或联系我们。
    public static var failedOperation_ParameterValidationFailed: TCDlcError {
        TCDlcError(.failedOperation_ParameterValidationFailed)
    }

    /// 退押金失败。
    ///
    /// 请联系我们。
    public static var failedOperation_RefundDepositFailed: TCDlcError {
        TCDlcError(.failedOperation_RefundDepositFailed)
    }

    /// 取消授权失败。
    ///
    /// 请重试或联系我们。
    public static var failedOperation_RevokePolicyFailed: TCDlcError {
        TCDlcError(.failedOperation_RevokePolicyFailed)
    }

    /// 资源已经绑定了同名标签键。
    ///
    /// 确认需要绑定的标签键。
    public static var failedOperation_TagAlreadyAttached: TCDlcError {
        TCDlcError(.failedOperation_TagAlreadyAttached)
    }

    /// 标签键长度超过限制。
    ///
    /// 检查要绑定的标签键
    public static var failedOperation_TagKeyTooLong: TCDlcError {
        TCDlcError(.failedOperation_TagKeyTooLong)
    }

    /// 标签不存在。
    ///
    /// 添加标签之后再绑定
    public static var failedOperation_TagNotExist: TCDlcError {
        TCDlcError(.failedOperation_TagNotExist)
    }

    /// 标签值长度超过限制。
    ///
    /// 检查要绑定的标签值
    public static var failedOperation_TagValueTooLong: TCDlcError {
        TCDlcError(.failedOperation_TagValueTooLong)
    }

    /// 资源数量超出限制。
    ///
    /// 减少资源数量
    public static var failedOperation_TooManyResources: TCDlcError {
        TCDlcError(.failedOperation_TooManyResources)
    }

    /// 标签数量超出限制。
    ///
    /// 减少绑定的标签数
    public static var failedOperation_TooManyTags: TCDlcError {
        TCDlcError(.failedOperation_TooManyTags)
    }

    /// 内部错误。
    public static var internalError: TCDlcError {
        TCDlcError(.internalError)
    }

    /// 数据库错误。
    public static var internalError_DBError: TCDlcError {
        TCDlcError(.internalError_DBError)
    }

    /// 参数错误。
    public static var invalidParameter: TCDlcError {
        TCDlcError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCDlcError {
        TCDlcError(.invalidParameterValue)
    }

    /// 重复的引擎名称。
    ///
    /// 请换一个引擎名称。
    public static var invalidParameter_DuplicateDataEngineName: TCDlcError {
        TCDlcError(.invalidParameter_DuplicateDataEngineName)
    }

    /// 重复的工作组名称。
    public static var invalidParameter_DuplicateGroupName: TCDlcError {
        TCDlcError(.invalidParameter_DuplicateGroupName)
    }

    /// 重复的用户名。
    public static var invalidParameter_DuplicateUserName: TCDlcError {
        TCDlcError(.invalidParameter_DuplicateUserName)
    }

    /// 无效的访问策略。
    public static var invalidParameter_InvalidAccessPolicy: TCDlcError {
        TCDlcError(.invalidParameter_InvalidAccessPolicy)
    }

    /// 无效的数据引擎模式。
    ///
    /// 修改数据引擎模式。
    public static var invalidParameter_InvalidDataEngineMode: TCDlcError {
        TCDlcError(.invalidParameter_InvalidDataEngineMode)
    }

    /// 无效的数据引擎名。
    ///
    /// 一般是引擎名字重复或包含不支持的符号。
    public static var invalidParameter_InvalidDataEngineName: TCDlcError {
        TCDlcError(.invalidParameter_InvalidDataEngineName)
    }

    /// 无效的数据引擎规格。
    ///
    /// 修改引擎规格符合要求。
    public static var invalidParameter_InvalidDataEngineSpecs: TCDlcError {
        TCDlcError(.invalidParameter_InvalidDataEngineSpecs)
    }

    /// 无效的描述信息。
    public static var invalidParameter_InvalidDescription: TCDlcError {
        TCDlcError(.invalidParameter_InvalidDescription)
    }

    /// 无效的引擎类型。
    ///
    /// 引擎类型仅支持presto或spark
    public static var invalidParameter_InvalidEngineType: TCDlcError {
        TCDlcError(.invalidParameter_InvalidEngineType)
    }

    /// 无效的容错策略。
    public static var invalidParameter_InvalidFailureTolerance: TCDlcError {
        TCDlcError(.invalidParameter_InvalidFailureTolerance)
    }

    /// 无效的过滤条件。
    ///
    /// 请更换过滤条件。
    public static var invalidParameter_InvalidFilterKey: TCDlcError {
        TCDlcError(.invalidParameter_InvalidFilterKey)
    }

    /// 无效的工作组Id。
    public static var invalidParameter_InvalidGroupId: TCDlcError {
        TCDlcError(.invalidParameter_InvalidGroupId)
    }

    /// 无效的最大结果数。
    ///
    /// 调整最大结果数到1~1000
    public static var invalidParameter_InvalidMaxResults: TCDlcError {
        TCDlcError(.invalidParameter_InvalidMaxResults)
    }

    /// 无效的Offset值。
    public static var invalidParameter_InvalidOffset: TCDlcError {
        TCDlcError(.invalidParameter_InvalidOffset)
    }

    /// 无效的计费模式。
    ///
    /// 仅支持0：按量计费；1：包年包月模式
    public static var invalidParameter_InvalidPayMode: TCDlcError {
        TCDlcError(.invalidParameter_InvalidPayMode)
    }

    /// 无效的CAM role arn。
    ///
    /// 请使用正确的已经授权的CAM role arn
    public static var invalidParameter_InvalidRoleArn: TCDlcError {
        TCDlcError(.invalidParameter_InvalidRoleArn)
    }

    /// SQL解析失败。
    public static var invalidParameter_InvalidSQL: TCDlcError {
        TCDlcError(.invalidParameter_InvalidSQL)
    }

    /// SQL数量不符合规范。
    ///
    /// 单次提交的SQL数量应该小于等于50，大于等于1。
    public static var invalidParameter_InvalidSQLNum: TCDlcError {
        TCDlcError(.invalidParameter_InvalidSQLNum)
    }

    /// 不支持的排序类型。
    public static var invalidParameter_InvalidSortByType: TCDlcError {
        TCDlcError(.invalidParameter_InvalidSortByType)
    }

    /// SparkAppParam无效。
    public static var invalidParameter_InvalidSparkAppParam: TCDlcError {
        TCDlcError(.invalidParameter_InvalidSparkAppParam)
    }

    /// 存储位置错误。
    public static var invalidParameter_InvalidStoreLocation: TCDlcError {
        TCDlcError(.invalidParameter_InvalidStoreLocation)
    }

    /// 无效的taskid。
    public static var invalidParameter_InvalidTaskId: TCDlcError {
        TCDlcError(.invalidParameter_InvalidTaskId)
    }

    /// 无效的任务类型。
    ///
    /// 填写正确的任务类型SQLTask
    public static var invalidParameter_InvalidTaskType: TCDlcError {
        TCDlcError(.invalidParameter_InvalidTaskType)
    }

    /// 无效的计费时长。
    ///
    /// 计费时长。按量计费下固定为3600；包年包月计费下表示购买的月份
    public static var invalidParameter_InvalidTimeSpan: TCDlcError {
        TCDlcError(.invalidParameter_InvalidTimeSpan)
    }

    /// 无效的计费时长单位。
    ///
    /// 计费时长单位。按量计费下固定为s；包年包月计费下固定为m
    public static var invalidParameter_InvalidTimeUnit: TCDlcError {
        TCDlcError(.invalidParameter_InvalidTimeUnit)
    }

    /// 无效用户名称。
    public static var invalidParameter_InvalidUserAlias: TCDlcError {
        TCDlcError(.invalidParameter_InvalidUserAlias)
    }

    /// 无效的用户名。
    public static var invalidParameter_InvalidUserName: TCDlcError {
        TCDlcError(.invalidParameter_InvalidUserName)
    }

    /// 无效的用户类型。
    ///
    /// 请检查用户类型是否存在或者其余入参是否符合所选用户类型的要求。
    public static var invalidParameter_InvalidUserType: TCDlcError {
        TCDlcError(.invalidParameter_InvalidUserType)
    }

    /// 无效的工作组名。
    public static var invalidParameter_InvalidWorkGroupName: TCDlcError {
        TCDlcError(.invalidParameter_InvalidWorkGroupName)
    }

    /// 任务已经结束，不能取消。
    ///
    /// 等待任务状态更新。
    public static var invalidParameter_TaskAlreadyFinished: TCDlcError {
        TCDlcError(.invalidParameter_TaskAlreadyFinished)
    }

    /// Vpc cidr格式错误。
    public static var invalidParameter_VpcCidrFormatError: TCDlcError {
        TCDlcError(.invalidParameter_VpcCidrFormatError)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCDlcError {
        TCDlcError(.limitExceeded)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCDlcError {
        TCDlcError(.missingParameter)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCDlcError {
        TCDlcError(.operationDenied)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCDlcError {
        TCDlcError(.resourceNotFound)
    }

    /// 指定数据源连接没有找到。
    public static var resourceNotFound_DatasourceNotFound: TCDlcError {
        TCDlcError(.resourceNotFound_DatasourceNotFound)
    }

    /// 当前无资源创建session，请稍后重试或使用包年包月集群。
    public static var resourceNotFound_ResourceNotFoundCode_SessionInsufficientResources: TCDlcError {
        TCDlcError(.resourceNotFound_ResourceNotFoundCode_SessionInsufficientResources)
    }

    /// 未找到结果路径。
    public static var resourceNotFound_ResultOutputPathNotFound: TCDlcError {
        TCDlcError(.resourceNotFound_ResultOutputPathNotFound)
    }

    /// session不存在。
    public static var resourceNotFound_SessionNotFound: TCDlcError {
        TCDlcError(.resourceNotFound_SessionNotFound)
    }

    /// session已消亡。
    public static var resourceNotFound_SessionStateDead: TCDlcError {
        TCDlcError(.resourceNotFound_SessionStateDead)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCDlcError {
        TCDlcError(.resourceUnavailable)
    }

    /// 账号余额不足，无法执行SQL任务。
    ///
    /// 请充值。
    public static var resourceUnavailable_BalanceInsufficient: TCDlcError {
        TCDlcError(.resourceUnavailable_BalanceInsufficient)
    }

    /// 资源售罄。
    public static var resourcesSoldOut: TCDlcError {
        TCDlcError(.resourcesSoldOut)
    }

    /// 无权限授权策略。
    public static var resourcesSoldOut_UnauthorizedGrantPolicy: TCDlcError {
        TCDlcError(.resourcesSoldOut_UnauthorizedGrantPolicy)
    }

    /// 无权限操作。
    public static var resourcesSoldOut_UnauthorizedOperation: TCDlcError {
        TCDlcError(.resourcesSoldOut_UnauthorizedOperation)
    }

    /// 无权限回收权限。
    public static var resourcesSoldOut_UnauthorizedRevokePolicy: TCDlcError {
        TCDlcError(.resourcesSoldOut_UnauthorizedRevokePolicy)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCDlcError {
        TCDlcError(.unauthorizedOperation)
    }

    /// 子用户不是管理员，无权将用户添加到工作组。
    ///
    /// 请DLC管理员前往【权限管理】为您授权后重试操作
    public static var unauthorizedOperation_AddUsersToWorkgroup: TCDlcError {
        TCDlcError(.unauthorizedOperation_AddUsersToWorkgroup)
    }

    /// 子用户不是管理员，无权绑定工作组到用户。
    ///
    /// 请DLC管理员前往【权限管理】为您授权后重试操作
    public static var unauthorizedOperation_BindWorkgroupsToUser: TCDlcError {
        TCDlcError(.unauthorizedOperation_BindWorkgroupsToUser)
    }

    /// 子用户不是管理员，无权创建工作组。
    ///
    /// 请DLC管理员前往【权限管理】为您授权后重试操作
    public static var unauthorizedOperation_CreateWorkgroup: TCDlcError {
        TCDlcError(.unauthorizedOperation_CreateWorkgroup)
    }

    /// 子用户不是管理员，无权删除用户。
    ///
    /// 请DLC管理员前往【权限管理】为您授权后重试操作
    public static var unauthorizedOperation_DeleteUser: TCDlcError {
        TCDlcError(.unauthorizedOperation_DeleteUser)
    }

    /// 子用户不是管理员，无权将用户从工作组解绑。
    ///
    /// 请DLC管理员前往【权限管理】为您授权后重试操作
    public static var unauthorizedOperation_DeleteUsersFromWorkgroup: TCDlcError {
        TCDlcError(.unauthorizedOperation_DeleteUsersFromWorkgroup)
    }

    /// 子用户不是管理员，无权删除工作组。
    ///
    /// 请DLC管理员前往【权限管理】为您授权后重试操作
    public static var unauthorizedOperation_DeleteWorkgroup: TCDlcError {
        TCDlcError(.unauthorizedOperation_DeleteWorkgroup)
    }

    /// 子用户无权授予特定权限。
    ///
    /// 请DLC管理员前往【权限管理】为您授权后重试操作
    public static var unauthorizedOperation_GrantPolicy: TCDlcError {
        TCDlcError(.unauthorizedOperation_GrantPolicy)
    }

    /// 子用户不是管理员，无权修改用户信息。
    ///
    /// 请DLC管理员前往【权限管理】为您授权后重试操作
    public static var unauthorizedOperation_ModifyUserInfo: TCDlcError {
        TCDlcError(.unauthorizedOperation_ModifyUserInfo)
    }

    /// 子用户不是管理员，无权修改工作组信息。
    ///
    /// 请DLC管理员前往【权限管理】为您授权后重试操作
    public static var unauthorizedOperation_ModifyWorkgroupInfo: TCDlcError {
        TCDlcError(.unauthorizedOperation_ModifyWorkgroupInfo)
    }

    /// 没有支付权限。
    ///
    /// 子用户没有支付权限，请联系主账号进行购买或者添加权限。
    public static var unauthorizedOperation_NoPaymentAuthority: TCDlcError {
        TCDlcError(.unauthorizedOperation_NoPaymentAuthority)
    }

    /// 子用户无权操作引擎。
    ///
    /// 请DLC管理员前往【权限管理】为您授权后重试操作
    public static var unauthorizedOperation_OperateComputingEngine: TCDlcError {
        TCDlcError(.unauthorizedOperation_OperateComputingEngine)
    }

    /// 子用户无权取消特定权限。
    ///
    /// 请DLC管理员前往【权限管理】为您授权后重试操作
    public static var unauthorizedOperation_RevokePolicy: TCDlcError {
        TCDlcError(.unauthorizedOperation_RevokePolicy)
    }

    /// 子用户不是管理员，无权将工作组和用户解绑。
    ///
    /// 请DLC管理员前往【权限管理】为您授权后重试操作
    public static var unauthorizedOperation_UnbindWorkgroupsFromUser: TCDlcError {
        TCDlcError(.unauthorizedOperation_UnbindWorkgroupsFromUser)
    }

    /// 子用户无权使用计算引擎。
    ///
    /// 请DLC管理员前往【权限管理】为您授权后重试操作
    public static var unauthorizedOperation_UseComputingEngine: TCDlcError {
        TCDlcError(.unauthorizedOperation_UseComputingEngine)
    }

    /// 子用户不存在。
    ///
    /// 请DLC管理员前往【权限管理】新建用户并授权后重试操作
    public static var unauthorizedOperation_UserNotExist: TCDlcError {
        TCDlcError(.unauthorizedOperation_UserNotExist)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCDlcError {
        TCDlcError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCDlcError {
        TCDlcError(.unsupportedOperation)
    }

    /// 无法修改主账号。
    public static var unsupportedOperation_ModifyOwnerUnsupported: TCDlcError {
        TCDlcError(.unsupportedOperation_ModifyOwnerUnsupported)
    }

    public func asDlcError() -> TCDlcError {
        return self
    }
}
