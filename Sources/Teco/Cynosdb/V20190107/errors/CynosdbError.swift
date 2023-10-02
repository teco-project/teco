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

/// Service error type returned by `Cynosdb`.
public protocol TCCynosdbErrorType: TCServiceErrorType {
    /// Get the service error as ``TCCynosdbError``.
    ///
    /// - Returns: ``TCCynosdbError`` that holds the same error code and context.
    func asCynosdbError() -> TCCynosdbError
}

public struct TCCynosdbError: TCCynosdbErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_BatchGetInstanceError = "FailedOperation.BatchGetInstanceError"
        case failedOperation_BindSourcePackageError = "FailedOperation.BindSourcePackageError"
        case failedOperation_CamCheckResourceError = "FailedOperation.CamCheckResourceError"
        case failedOperation_CamSigAndAuthError = "FailedOperation.CamSigAndAuthError"
        case failedOperation_CreateOrder = "FailedOperation.CreateOrder"
        case failedOperation_CreateSourcePackageError = "FailedOperation.CreateSourcePackageError"
        case failedOperation_DatabaseAccessError = "FailedOperation.DatabaseAccessError"
        case failedOperation_DescribeAccountPrivilegesError = "FailedOperation.DescribeAccountPrivilegesError"
        case failedOperation_FlowCreateError = "FailedOperation.FlowCreateError"
        case failedOperation_FlowNotFoundError = "FailedOperation.FlowNotFoundError"
        case failedOperation_GetBackupStrategyError = "FailedOperation.GetBackupStrategyError"
        case failedOperation_GetNetServiceInfoError = "FailedOperation.GetNetServiceInfoError"
        case failedOperation_GetOssInfoError = "FailedOperation.GetOssInfoError"
        case failedOperation_InsufficientBalance = "FailedOperation.InsufficientBalance"
        case failedOperation_OperationFailedError = "FailedOperation.OperationFailedError"
        case failedOperation_QuerySourcePackageDetailError = "FailedOperation.QuerySourcePackageDetailError"
        case failedOperation_QuerySourcePackageError = "FailedOperation.QuerySourcePackageError"
        case failedOperation_QuerySpecBySpecCodeError = "FailedOperation.QuerySpecBySpecCodeError"
        case failedOperation_RefundSourcePackageError = "FailedOperation.RefundSourcePackageError"
        case failedOperation_TradeCreateOrderError = "FailedOperation.TradeCreateOrderError"
        case failedOperation_UnBindSourcePackageError = "FailedOperation.UnBindSourcePackageError"
        case internalError = "InternalError"
        case internalError_DbOperationFailed = "InternalError.DbOperationFailed"
        case internalError_GetSecurityGroupDetailFailed = "InternalError.GetSecurityGroupDetailFailed"
        case internalError_GetSubnetFailed = "InternalError.GetSubnetFailed"
        case internalError_GetVpcFailed = "InternalError.GetVpcFailed"
        case internalError_HttpError = "InternalError.HttpError"
        case internalError_InternalHttpServerError = "InternalError.InternalHttpServerError"
        case internalError_ListInstanceFailed = "InternalError.ListInstanceFailed"
        case internalError_OperateWanFail = "InternalError.OperateWanFail"
        case internalError_OperationNotSupport = "InternalError.OperationNotSupport"
        case internalError_QueryDatabaseFailed = "InternalError.QueryDatabaseFailed"
        case internalError_ServiceError = "InternalError.ServiceError"
        case internalError_SystemError = "InternalError.SystemError"
        case internalError_UnknownError = "InternalError.UnknownError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AccountAlreadyExistError = "InvalidParameterValue.AccountAlreadyExistError"
        case invalidParameterValue_AccountExist = "InvalidParameterValue.AccountExist"
        case invalidParameterValue_AccountNotExistError = "InvalidParameterValue.AccountNotExistError"
        case invalidParameterValue_ClusterNotFound = "InvalidParameterValue.ClusterNotFound"
        case invalidParameterValue_DBTypeNotFound = "InvalidParameterValue.DBTypeNotFound"
        case invalidParameterValue_DbModeNotServerlessError = "InvalidParameterValue.DbModeNotServerlessError"
        case invalidParameterValue_DealNameNotFound = "InvalidParameterValue.DealNameNotFound"
        case invalidParameterValue_FlowNotFound = "InvalidParameterValue.FlowNotFound"
        case invalidParameterValue_IllegalInstanceName = "InvalidParameterValue.IllegalInstanceName"
        case invalidParameterValue_IllegalOrderBy = "InvalidParameterValue.IllegalOrderBy"
        case invalidParameterValue_IllegalPassword = "InvalidParameterValue.IllegalPassword"
        case invalidParameterValue_InstanceNotFound = "InvalidParameterValue.InstanceNotFound"
        case invalidParameterValue_InternalAccount = "InvalidParameterValue.InternalAccount"
        case invalidParameterValue_InvalidDBVersion = "InvalidParameterValue.InvalidDBVersion"
        case invalidParameterValue_InvalidParameterValueError = "InvalidParameterValue.InvalidParameterValueError"
        case invalidParameterValue_InvalidPasswordValueError = "InvalidParameterValue.InvalidPasswordValueError"
        case invalidParameterValue_InvalidRegionIdError = "InvalidParameterValue.InvalidRegionIdError"
        case invalidParameterValue_InvalidSpec = "InvalidParameterValue.InvalidSpec"
        case invalidParameterValue_InvalidZoneIdError = "InvalidParameterValue.InvalidZoneIdError"
        case invalidParameterValue_ParamBothSetError = "InvalidParameterValue.ParamBothSetError"
        case invalidParameterValue_ParamError = "InvalidParameterValue.ParamError"
        case invalidParameterValue_ParameterOutRangeError = "InvalidParameterValue.ParameterOutRangeError"
        case invalidParameterValue_PrePayPayModeError = "InvalidParameterValue.PrePayPayModeError"
        case invalidParameterValue_ProjectIdNotFound = "InvalidParameterValue.ProjectIdNotFound"
        case invalidParameterValue_RegionZoneUnavailable = "InvalidParameterValue.RegionZoneUnavailable"
        case invalidParameterValue_StoragePoolNotFound = "InvalidParameterValue.StoragePoolNotFound"
        case invalidParameterValue_SubnetNotFound = "InvalidParameterValue.SubnetNotFound"
        case invalidParameterValue_ValueNotFound = "InvalidParameterValue.ValueNotFound"
        case invalidParameterValue_VpcNotFound = "InvalidParameterValue.VpcNotFound"
        case invalidParameter_ControllerNotFoundError = "InvalidParameter.ControllerNotFoundError"
        case invalidParameter_ExceptionParam = "InvalidParameter.ExceptionParam"
        case invalidParameter_InvalidParameterError = "InvalidParameter.InvalidParameterError"
        case invalidParameter_IsolateNotAllowed = "InvalidParameter.IsolateNotAllowed"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_ClusterInstanceLimit = "LimitExceeded.ClusterInstanceLimit"
        case limitExceeded_UserInstanceLimit = "LimitExceeded.UserInstanceLimit"
        case missingParameter = "MissingParameter"
        case operationDenied_AuditPolicyNotExistError = "OperationDenied.AuditPolicyNotExistError"
        case operationDenied_CamDeniedError = "OperationDenied.CamDeniedError"
        case operationDenied_ClusterOpNotAllowedError = "OperationDenied.ClusterOpNotAllowedError"
        case operationDenied_ClusterStatusDeniedError = "OperationDenied.ClusterStatusDeniedError"
        case operationDenied_InstanceAccessDeniedError = "OperationDenied.InstanceAccessDeniedError"
        case operationDenied_InstanceStatusDeniedError = "OperationDenied.InstanceStatusDeniedError"
        case operationDenied_InstanceStatusLimitError = "OperationDenied.InstanceStatusLimitError"
        case operationDenied_InsufficientBalanceError = "OperationDenied.InsufficientBalanceError"
        case operationDenied_ServerlessClusterStatusDenied = "OperationDenied.ServerlessClusterStatusDenied"
        case operationDenied_ServerlessInstanceStatusDenied = "OperationDenied.ServerlessInstanceStatusDenied"
        case operationDenied_TaskConflictError = "OperationDenied.TaskConflictError"
        case operationDenied_UnSupportSaleSpecError = "OperationDenied.UnSupportSaleSpecError"
        case operationDenied_UserNotAuthenticatedError = "OperationDenied.UserNotAuthenticatedError"
        case operationDenied_VersionNotSupportError = "OperationDenied.VersionNotSupportError"
        case resourceNotFound_ClusterNotFoundError = "ResourceNotFound.ClusterNotFoundError"
        case resourceNotFound_InstanceNotFoundError = "ResourceNotFound.InstanceNotFoundError"
        case resourceNotFound_ResourceError = "ResourceNotFound.ResourceError"
        case resourceUnavailable_InstanceLockFail = "ResourceUnavailable.InstanceLockFail"
        case resourceUnavailable_InstanceStatusAbnormal = "ResourceUnavailable.InstanceStatusAbnormal"
        case unauthorizedOperation_NotRealNameAccount = "UnauthorizedOperation.NotRealNameAccount"
        case unauthorizedOperation_PermissionDenied = "UnauthorizedOperation.PermissionDenied"
    }

    /// Error domains affliated to ``TCCynosdbError``.
    public static var domains: [TCErrorType.Type] {
        [
            FailedOperation.self,
            InternalError.self,
            InvalidParameter.self,
            InvalidParameterValue.self,
            LimitExceeded.self,
            OperationDenied.self,
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
    public static var authFailure: TCCynosdbError {
        TCCynosdbError(.authFailure)
    }

    /// 操作失败。
    public static var failedOperation: TCCynosdbError {
        TCCynosdbError(.failedOperation)
    }

    /// 批量查询失败。
    public static var failedOperation_BatchGetInstanceError: TCCynosdbError {
        TCCynosdbError(.failedOperation_BatchGetInstanceError)
    }

    public static var failedOperation_BindSourcePackageError: TCCynosdbError {
        TCCynosdbError(.failedOperation_BindSourcePackageError)
    }

    /// 获取权限失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_CamCheckResourceError: TCCynosdbError {
        TCCynosdbError(.failedOperation_CamCheckResourceError)
    }

    /// 鉴权失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_CamSigAndAuthError: TCCynosdbError {
        TCCynosdbError(.failedOperation_CamSigAndAuthError)
    }

    /// 创建并支付订单失败。
    public static var failedOperation_CreateOrder: TCCynosdbError {
        TCCynosdbError(.failedOperation_CreateOrder)
    }

    public static var failedOperation_CreateSourcePackageError: TCCynosdbError {
        TCCynosdbError(.failedOperation_CreateSourcePackageError)
    }

    /// 数据库访问失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_DatabaseAccessError: TCCynosdbError {
        TCCynosdbError(.failedOperation_DatabaseAccessError)
    }

    /// 修改账号权限失败。
    public static var failedOperation_DescribeAccountPrivilegesError: TCCynosdbError {
        TCCynosdbError(.failedOperation_DescribeAccountPrivilegesError)
    }

    /// 创建流程失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_FlowCreateError: TCCynosdbError {
        TCCynosdbError(.failedOperation_FlowCreateError)
    }

    /// Flow不存在。
    public static var failedOperation_FlowNotFoundError: TCCynosdbError {
        TCCynosdbError(.failedOperation_FlowNotFoundError)
    }

    /// 获取备份策略失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_GetBackupStrategyError: TCCynosdbError {
        TCCynosdbError(.failedOperation_GetBackupStrategyError)
    }

    /// 查询接入组网络信息失败。
    public static var failedOperation_GetNetServiceInfoError: TCCynosdbError {
        TCCynosdbError(.failedOperation_GetNetServiceInfoError)
    }

    /// 查询主实例详情失败。
    public static var failedOperation_GetOssInfoError: TCCynosdbError {
        TCCynosdbError(.failedOperation_GetOssInfoError)
    }

    /// 账号余额不足。
    public static var failedOperation_InsufficientBalance: TCCynosdbError {
        TCCynosdbError(.failedOperation_InsufficientBalance)
    }

    /// 操作失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_OperationFailedError: TCCynosdbError {
        TCCynosdbError(.failedOperation_OperationFailedError)
    }

    public static var failedOperation_QuerySourcePackageDetailError: TCCynosdbError {
        TCCynosdbError(.failedOperation_QuerySourcePackageDetailError)
    }

    public static var failedOperation_QuerySourcePackageError: TCCynosdbError {
        TCCynosdbError(.failedOperation_QuerySourcePackageError)
    }

    /// 规格信息查询失败。
    public static var failedOperation_QuerySpecBySpecCodeError: TCCynosdbError {
        TCCynosdbError(.failedOperation_QuerySpecBySpecCodeError)
    }

    public static var failedOperation_RefundSourcePackageError: TCCynosdbError {
        TCCynosdbError(.failedOperation_RefundSourcePackageError)
    }

    /// 创建并支付订单失败，请稍后重试。如果持续不成功，请联系客服进行处理。
    public static var failedOperation_TradeCreateOrderError: TCCynosdbError {
        TCCynosdbError(.failedOperation_TradeCreateOrderError)
    }

    public static var failedOperation_UnBindSourcePackageError: TCCynosdbError {
        TCCynosdbError(.failedOperation_UnBindSourcePackageError)
    }

    /// 内部错误。
    public static var internalError: TCCynosdbError {
        TCCynosdbError(.internalError)
    }

    /// 查询数据库失败。
    public static var internalError_DbOperationFailed: TCCynosdbError {
        TCCynosdbError(.internalError_DbOperationFailed)
    }

    /// 获取安全组信息失败。
    public static var internalError_GetSecurityGroupDetailFailed: TCCynosdbError {
        TCCynosdbError(.internalError_GetSecurityGroupDetailFailed)
    }

    /// 获取子网失败。
    public static var internalError_GetSubnetFailed: TCCynosdbError {
        TCCynosdbError(.internalError_GetSubnetFailed)
    }

    /// 获取VPC失败。
    public static var internalError_GetVpcFailed: TCCynosdbError {
        TCCynosdbError(.internalError_GetVpcFailed)
    }

    public static var internalError_HttpError: TCCynosdbError {
        TCCynosdbError(.internalError_HttpError)
    }

    /// http请求执行异常。
    public static var internalError_InternalHttpServerError: TCCynosdbError {
        TCCynosdbError(.internalError_InternalHttpServerError)
    }

    /// 安全组查询实例失败。
    public static var internalError_ListInstanceFailed: TCCynosdbError {
        TCCynosdbError(.internalError_ListInstanceFailed)
    }

    /// 操作外网失败。
    public static var internalError_OperateWanFail: TCCynosdbError {
        TCCynosdbError(.internalError_OperateWanFail)
    }

    /// 操作不支持。
    public static var internalError_OperationNotSupport: TCCynosdbError {
        TCCynosdbError(.internalError_OperationNotSupport)
    }

    /// 查询数据库失败。
    public static var internalError_QueryDatabaseFailed: TCCynosdbError {
        TCCynosdbError(.internalError_QueryDatabaseFailed)
    }

    /// 内部服务错误。
    ///
    /// 建议重试
    public static var internalError_ServiceError: TCCynosdbError {
        TCCynosdbError(.internalError_ServiceError)
    }

    /// 系统内部错误。
    public static var internalError_SystemError: TCCynosdbError {
        TCCynosdbError(.internalError_SystemError)
    }

    /// 未知的内部错误。
    public static var internalError_UnknownError: TCCynosdbError {
        TCCynosdbError(.internalError_UnknownError)
    }

    /// 参数错误。
    public static var invalidParameter: TCCynosdbError {
        TCCynosdbError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue)
    }

    /// 账号已存在。
    public static var invalidParameterValue_AccountAlreadyExistError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_AccountAlreadyExistError)
    }

    /// 账号已存在。
    public static var invalidParameterValue_AccountExist: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_AccountExist)
    }

    /// 实例不存在账号。
    public static var invalidParameterValue_AccountNotExistError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_AccountNotExistError)
    }

    /// 未查询到集群。
    public static var invalidParameterValue_ClusterNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_ClusterNotFound)
    }

    /// 不支持的实例类型。
    public static var invalidParameterValue_DBTypeNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_DBTypeNotFound)
    }

    /// 集群类型必须为serverless。
    public static var invalidParameterValue_DbModeNotServerlessError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_DbModeNotServerlessError)
    }

    /// 未查询到订单id。
    public static var invalidParameterValue_DealNameNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_DealNameNotFound)
    }

    /// 任务流ID不存在。
    public static var invalidParameterValue_FlowNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_FlowNotFound)
    }

    /// 实例名称字符非法。
    public static var invalidParameterValue_IllegalInstanceName: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_IllegalInstanceName)
    }

    /// 无效的排序字段。
    public static var invalidParameterValue_IllegalOrderBy: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_IllegalOrderBy)
    }

    /// 密码不符合要求。
    public static var invalidParameterValue_IllegalPassword: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_IllegalPassword)
    }

    /// 实例不存在。
    public static var invalidParameterValue_InstanceNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InstanceNotFound)
    }

    /// 内置账号不允许操作。
    public static var invalidParameterValue_InternalAccount: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InternalAccount)
    }

    /// 实例版本非法。
    public static var invalidParameterValue_InvalidDBVersion: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InvalidDBVersion)
    }

    /// 参数值无效。
    public static var invalidParameterValue_InvalidParameterValueError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InvalidParameterValueError)
    }

    /// 密码不合规。
    public static var invalidParameterValue_InvalidPasswordValueError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InvalidPasswordValueError)
    }

    /// 无效的地域。
    public static var invalidParameterValue_InvalidRegionIdError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InvalidRegionIdError)
    }

    /// 实例规格非法。
    public static var invalidParameterValue_InvalidSpec: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InvalidSpec)
    }

    /// 无效的可用区。
    public static var invalidParameterValue_InvalidZoneIdError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_InvalidZoneIdError)
    }

    /// 该两个参数不可以同时设定。
    public static var invalidParameterValue_ParamBothSetError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_ParamBothSetError)
    }

    /// 参数错误。
    public static var invalidParameterValue_ParamError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_ParamError)
    }

    /// 参数值无效，超过允许范围。
    public static var invalidParameterValue_ParameterOutRangeError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_ParameterOutRangeError)
    }

    /// 预付费类型不允许该操作。
    public static var invalidParameterValue_PrePayPayModeError: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_PrePayPayModeError)
    }

    public static var invalidParameterValue_ProjectIdNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_ProjectIdNotFound)
    }

    /// 所选地域和可用区不可用。
    public static var invalidParameterValue_RegionZoneUnavailable: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_RegionZoneUnavailable)
    }

    /// 未找到相关存储pool。
    public static var invalidParameterValue_StoragePoolNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_StoragePoolNotFound)
    }

    /// 找不到所选子网。
    public static var invalidParameterValue_SubnetNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_SubnetNotFound)
    }

    /// 未找到该数据。
    public static var invalidParameterValue_ValueNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_ValueNotFound)
    }

    /// 找不到所选VPC网络。
    public static var invalidParameterValue_VpcNotFound: TCCynosdbError {
        TCCynosdbError(.invalidParameterValue_VpcNotFound)
    }

    /// 未找到该接口。
    ///
    /// 请确认业务是否提供该接口
    public static var invalidParameter_ControllerNotFoundError: TCCynosdbError {
        TCCynosdbError(.invalidParameter_ControllerNotFoundError)
    }

    /// 参数传参错误。
    public static var invalidParameter_ExceptionParam: TCCynosdbError {
        TCCynosdbError(.invalidParameter_ExceptionParam)
    }

    /// 未知参数，请检查参数是否有效。
    public static var invalidParameter_InvalidParameterError: TCCynosdbError {
        TCCynosdbError(.invalidParameter_InvalidParameterError)
    }

    /// 当前实例不可隔离。
    public static var invalidParameter_IsolateNotAllowed: TCCynosdbError {
        TCCynosdbError(.invalidParameter_IsolateNotAllowed)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCCynosdbError {
        TCCynosdbError(.limitExceeded)
    }

    /// 集群中节点数超过最大限制。
    public static var limitExceeded_ClusterInstanceLimit: TCCynosdbError {
        TCCynosdbError(.limitExceeded_ClusterInstanceLimit)
    }

    /// 用户实例个数超出限制。
    public static var limitExceeded_UserInstanceLimit: TCCynosdbError {
        TCCynosdbError(.limitExceeded_UserInstanceLimit)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCCynosdbError {
        TCCynosdbError(.missingParameter)
    }

    public static var operationDenied_AuditPolicyNotExistError: TCCynosdbError {
        TCCynosdbError(.operationDenied_AuditPolicyNotExistError)
    }

    /// 权限校验失败。
    public static var operationDenied_CamDeniedError: TCCynosdbError {
        TCCynosdbError(.operationDenied_CamDeniedError)
    }

    /// 由于操作禁止，当前集群不允许该操作。
    public static var operationDenied_ClusterOpNotAllowedError: TCCynosdbError {
        TCCynosdbError(.operationDenied_ClusterOpNotAllowedError)
    }

    /// 集群当前状态不允许该操作。
    public static var operationDenied_ClusterStatusDeniedError: TCCynosdbError {
        TCCynosdbError(.operationDenied_ClusterStatusDeniedError)
    }

    /// 您没有权限操作资源。
    public static var operationDenied_InstanceAccessDeniedError: TCCynosdbError {
        TCCynosdbError(.operationDenied_InstanceAccessDeniedError)
    }

    /// 实例当前状态不允许该操作。
    public static var operationDenied_InstanceStatusDeniedError: TCCynosdbError {
        TCCynosdbError(.operationDenied_InstanceStatusDeniedError)
    }

    /// 实例未处于运行状态
    public static var operationDenied_InstanceStatusLimitError: TCCynosdbError {
        TCCynosdbError(.operationDenied_InstanceStatusLimitError)
    }

    /// 账号余额不足。
    public static var operationDenied_InsufficientBalanceError: TCCynosdbError {
        TCCynosdbError(.operationDenied_InsufficientBalanceError)
    }

    /// serverless集群当前状态不允许该操作。
    public static var operationDenied_ServerlessClusterStatusDenied: TCCynosdbError {
        TCCynosdbError(.operationDenied_ServerlessClusterStatusDenied)
    }

    /// serverless实例当前状态不允许该操作。
    public static var operationDenied_ServerlessInstanceStatusDenied: TCCynosdbError {
        TCCynosdbError(.operationDenied_ServerlessInstanceStatusDenied)
    }

    /// 任务冲突检查不通过。
    public static var operationDenied_TaskConflictError: TCCynosdbError {
        TCCynosdbError(.operationDenied_TaskConflictError)
    }

    public static var operationDenied_UnSupportSaleSpecError: TCCynosdbError {
        TCCynosdbError(.operationDenied_UnSupportSaleSpecError)
    }

    /// 用户未进行实名认证，请先进行实名认证才可购买。
    public static var operationDenied_UserNotAuthenticatedError: TCCynosdbError {
        TCCynosdbError(.operationDenied_UserNotAuthenticatedError)
    }

    /// Serverless不支持该版本。
    public static var operationDenied_VersionNotSupportError: TCCynosdbError {
        TCCynosdbError(.operationDenied_VersionNotSupportError)
    }

    /// 集群不存在。
    public static var resourceNotFound_ClusterNotFoundError: TCCynosdbError {
        TCCynosdbError(.resourceNotFound_ClusterNotFoundError)
    }

    /// 实例不存在。
    public static var resourceNotFound_InstanceNotFoundError: TCCynosdbError {
        TCCynosdbError(.resourceNotFound_InstanceNotFoundError)
    }

    /// 参数对应资源不存在。
    public static var resourceNotFound_ResourceError: TCCynosdbError {
        TCCynosdbError(.resourceNotFound_ResourceError)
    }

    /// 锁定实例失败，暂时不可操作。
    public static var resourceUnavailable_InstanceLockFail: TCCynosdbError {
        TCCynosdbError(.resourceUnavailable_InstanceLockFail)
    }

    /// 实例状态异常，暂时不可操作。
    public static var resourceUnavailable_InstanceStatusAbnormal: TCCynosdbError {
        TCCynosdbError(.resourceUnavailable_InstanceStatusAbnormal)
    }

    /// 非实名用户禁止购买。
    public static var unauthorizedOperation_NotRealNameAccount: TCCynosdbError {
        TCCynosdbError(.unauthorizedOperation_NotRealNameAccount)
    }

    /// CAM鉴权不通过。
    public static var unauthorizedOperation_PermissionDenied: TCCynosdbError {
        TCCynosdbError(.unauthorizedOperation_PermissionDenied)
    }

    public func asCynosdbError() -> TCCynosdbError {
        return self
    }
}
