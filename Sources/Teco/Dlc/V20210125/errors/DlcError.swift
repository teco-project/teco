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

/// Service error type returned by `Dlc`.
public protocol TCDlcErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCDlcError``.
    ///
    /// - Returns: ``TCDlcError`` that holds the same error code and context.
    func asDlcError() -> TCDlcError
}

public struct TCDlcError: TCDlcErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_AnotherRequestProcessing = "FailedOperation.AnotherRequestProcessing"
        case failedOperation_GetPolicyFailed = "FailedOperation.GetPolicyFailed"
        case failedOperation_GetUserInfoFailed = "FailedOperation.GetUserInfoFailed"
        case failedOperation_GetWorkGroupInfoFailed = "FailedOperation.GetWorkGroupInfoFailed"
        case failedOperation_GrantPolicyFailed = "FailedOperation.GrantPolicyFailed"
        case failedOperation_HttpClientDoRequestFailed = "FailedOperation.HttpClientDoRequestFailed"
        case failedOperation_RevokePolicyFailed = "FailedOperation.RevokePolicyFailed"
        case internalError = "InternalError"
        case internalError_DBError = "InternalError.DBError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_DuplicateGroupName = "InvalidParameter.DuplicateGroupName"
        case invalidParameter_DuplicateUserName = "InvalidParameter.DuplicateUserName"
        case invalidParameter_InvalidAccessPolicy = "InvalidParameter.InvalidAccessPolicy"
        case invalidParameter_InvalidDataEngineName = "InvalidParameter.InvalidDataEngineName"
        case invalidParameter_InvalidDescription = "InvalidParameter.InvalidDescription"
        case invalidParameter_InvalidFailureTolerance = "InvalidParameter.InvalidFailureTolerance"
        case invalidParameter_InvalidFilterKey = "InvalidParameter.InvalidFilterKey"
        case invalidParameter_InvalidGroupId = "InvalidParameter.InvalidGroupId"
        case invalidParameter_InvalidOffset = "InvalidParameter.InvalidOffset"
        case invalidParameter_InvalidRoleArn = "InvalidParameter.InvalidRoleArn"
        case invalidParameter_InvalidSQL = "InvalidParameter.InvalidSQL"
        case invalidParameter_InvalidSQLNum = "InvalidParameter.InvalidSQLNum"
        case invalidParameter_InvalidSortByType = "InvalidParameter.InvalidSortByType"
        case invalidParameter_InvalidSparkAppParam = "InvalidParameter.InvalidSparkAppParam"
        case invalidParameter_InvalidStoreLocation = "InvalidParameter.InvalidStoreLocation"
        case invalidParameter_InvalidTaskId = "InvalidParameter.InvalidTaskId"
        case invalidParameter_InvalidTaskType = "InvalidParameter.InvalidTaskType"
        case invalidParameter_InvalidUserAlias = "InvalidParameter.InvalidUserAlias"
        case invalidParameter_InvalidUserName = "InvalidParameter.InvalidUserName"
        case invalidParameter_InvalidUserType = "InvalidParameter.InvalidUserType"
        case invalidParameter_InvalidWorkGroupName = "InvalidParameter.InvalidWorkGroupName"
        case invalidParameter_TaskAlreadyFinished = "InvalidParameter.TaskAlreadyFinished"
        case missingParameter = "MissingParameter"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_DatasourceNotFound = "ResourceNotFound.DatasourceNotFound"
        case resourceNotFound_ResultOutputPathNotFound = "ResourceNotFound.ResultOutputPathNotFound"
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
        case unauthorizedOperation_RevokePolicy = "UnauthorizedOperation.RevokePolicy"
        case unauthorizedOperation_UnbindWorkgroupsFromUser = "UnauthorizedOperation.UnbindWorkgroupsFromUser"
        case unauthorizedOperation_UseComputingEngine = "UnauthorizedOperation.UseComputingEngine"
        case unauthorizedOperation_UserNotExist = "UnauthorizedOperation.UserNotExist"
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

    /// 另一个请求正在处理中，请稍后再试。
    public static var failedOperation_AnotherRequestProcessing: TCDlcError {
        TCDlcError(.failedOperation_AnotherRequestProcessing)
    }

    /// 请重试或联系我们
    public static var failedOperation_GetPolicyFailed: TCDlcError {
        TCDlcError(.failedOperation_GetPolicyFailed)
    }

    /// 请重试，如重试也失败，请联系我们。
    public static var failedOperation_GetUserInfoFailed: TCDlcError {
        TCDlcError(.failedOperation_GetUserInfoFailed)
    }

    /// 请重试或联系我们。
    public static var failedOperation_GetWorkGroupInfoFailed: TCDlcError {
        TCDlcError(.failedOperation_GetWorkGroupInfoFailed)
    }

    /// 请重试或联系我们。
    public static var failedOperation_GrantPolicyFailed: TCDlcError {
        TCDlcError(.failedOperation_GrantPolicyFailed)
    }

    /// HTTP客户端请求失败。
    public static var failedOperation_HttpClientDoRequestFailed: TCDlcError {
        TCDlcError(.failedOperation_HttpClientDoRequestFailed)
    }

    /// 请重试或联系我们。
    public static var failedOperation_RevokePolicyFailed: TCDlcError {
        TCDlcError(.failedOperation_RevokePolicyFailed)
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

    /// 无效的数据引擎名。
    ///
    /// 一般是引擎名字重复或包含不支持的符号。
    public static var invalidParameter_InvalidDataEngineName: TCDlcError {
        TCDlcError(.invalidParameter_InvalidDataEngineName)
    }

    /// 无效的描述信息。
    public static var invalidParameter_InvalidDescription: TCDlcError {
        TCDlcError(.invalidParameter_InvalidDescription)
    }

    /// 无效的容错策略。
    public static var invalidParameter_InvalidFailureTolerance: TCDlcError {
        TCDlcError(.invalidParameter_InvalidFailureTolerance)
    }

    /// 请更换过滤条件。
    public static var invalidParameter_InvalidFilterKey: TCDlcError {
        TCDlcError(.invalidParameter_InvalidFilterKey)
    }

    /// 无效的工作组Id。
    public static var invalidParameter_InvalidGroupId: TCDlcError {
        TCDlcError(.invalidParameter_InvalidGroupId)
    }

    /// 无效的Offset值。
    public static var invalidParameter_InvalidOffset: TCDlcError {
        TCDlcError(.invalidParameter_InvalidOffset)
    }

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

    /// 缺少参数错误。
    public static var missingParameter: TCDlcError {
        TCDlcError(.missingParameter)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCDlcError {
        TCDlcError(.resourceNotFound)
    }

    /// 指定数据源连接没有找到。
    public static var resourceNotFound_DatasourceNotFound: TCDlcError {
        TCDlcError(.resourceNotFound_DatasourceNotFound)
    }

    public static var resourceNotFound_ResultOutputPathNotFound: TCDlcError {
        TCDlcError(.resourceNotFound_ResultOutputPathNotFound)
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
