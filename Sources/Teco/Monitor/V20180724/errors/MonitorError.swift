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

/// Service error type returned by `Monitor`.
public protocol TCMonitorErrorType: TCServiceErrorType {
    /// Get the service error as ``TCMonitorError``.
    ///
    /// - Returns: ``TCMonitorError`` that holds the same error code and context.
    func asMonitorError() -> TCMonitorError
}

public struct TCMonitorError: TCMonitorErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_AccessCAMFail = "AuthFailure.AccessCAMFail"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_AccessSTSFail = "FailedOperation.AccessSTSFail"
        case failedOperation_AccessTKEFail = "FailedOperation.AccessTKEFail"
        case failedOperation_AccessTagFail = "FailedOperation.AccessTagFail"
        case failedOperation_AgentNotAllowed = "FailedOperation.AgentNotAllowed"
        case failedOperation_AgentVersionNotSupported = "FailedOperation.AgentVersionNotSupported"
        case failedOperation_AgentsNotInUninstallStage = "FailedOperation.AgentsNotInUninstallStage"
        case failedOperation_AlertFilterRuleDeleteFailed = "FailedOperation.AlertFilterRuleDeleteFailed"
        case failedOperation_AlertPolicyCreateFailed = "FailedOperation.AlertPolicyCreateFailed"
        case failedOperation_AlertPolicyDeleteFailed = "FailedOperation.AlertPolicyDeleteFailed"
        case failedOperation_AlertPolicyDescribeFailed = "FailedOperation.AlertPolicyDescribeFailed"
        case failedOperation_AlertPolicyModifyFailed = "FailedOperation.AlertPolicyModifyFailed"
        case failedOperation_AlertTriggerRuleDeleteFailed = "FailedOperation.AlertTriggerRuleDeleteFailed"
        case failedOperation_BadYamlFormat = "FailedOperation.BadYamlFormat"
        case failedOperation_ComponentClientCommon = "FailedOperation.ComponentClientCommon"
        case failedOperation_ComponentClientHttp = "FailedOperation.ComponentClientHttp"
        case failedOperation_ComponentClientUnpack = "FailedOperation.ComponentClientUnpack"
        case failedOperation_CreateInstance = "FailedOperation.CreateInstance"
        case failedOperation_CreateInstanceLimited = "FailedOperation.CreateInstanceLimited"
        case failedOperation_DataColumnNotFound = "FailedOperation.DataColumnNotFound"
        case failedOperation_DataQueryFailed = "FailedOperation.DataQueryFailed"
        case failedOperation_DataTableNotFound = "FailedOperation.DataTableNotFound"
        case failedOperation_Db = "FailedOperation.Db"
        case failedOperation_DbQueryFailed = "FailedOperation.DbQueryFailed"
        case failedOperation_DbRecordCreateFailed = "FailedOperation.DbRecordCreateFailed"
        case failedOperation_DbRecordDeleteFailed = "FailedOperation.DbRecordDeleteFailed"
        case failedOperation_DbRecordNotFound = "FailedOperation.DbRecordNotFound"
        case failedOperation_DbRecordUpdateFailed = "FailedOperation.DbRecordUpdateFailed"
        case failedOperation_DbTransactionBeginFailed = "FailedOperation.DbTransactionBeginFailed"
        case failedOperation_DbTransactionCommitFailed = "FailedOperation.DbTransactionCommitFailed"
        case failedOperation_DimQueryRequestFailed = "FailedOperation.DimQueryRequestFailed"
        case failedOperation_DivisionByZero = "FailedOperation.DivisionByZero"
        case failedOperation_DoHTTPTransferFailed = "FailedOperation.DoHTTPTransferFailed"
        case failedOperation_DruidQueryFailed = "FailedOperation.DruidQueryFailed"
        case failedOperation_DruidTableNotFound = "FailedOperation.DruidTableNotFound"
        case failedOperation_DuplicateName = "FailedOperation.DuplicateName"
        case failedOperation_ErrNotOpen = "FailedOperation.ErrNotOpen"
        case failedOperation_ErrOwed = "FailedOperation.ErrOwed"
        case failedOperation_GenerateInstanceIDFailed = "FailedOperation.GenerateInstanceIDFailed"
        case failedOperation_InstanceNotFound = "FailedOperation.InstanceNotFound"
        case failedOperation_InstanceNotRunning = "FailedOperation.InstanceNotRunning"
        case failedOperation_InternalError = "FailedOperation.InternalError"
        case failedOperation_KubeClientConf = "FailedOperation.KubeClientConf"
        case failedOperation_KubeCommon = "FailedOperation.KubeCommon"
        case failedOperation_RegionUnavailable = "FailedOperation.RegionUnavailable"
        case failedOperation_ResourceExist = "FailedOperation.ResourceExist"
        case failedOperation_ResourceNotFound = "FailedOperation.ResourceNotFound"
        case failedOperation_ResourceOperating = "FailedOperation.ResourceOperating"
        case failedOperation_SendRequest = "FailedOperation.SendRequest"
        case failedOperation_ServiceNotEnabled = "FailedOperation.ServiceNotEnabled"
        case failedOperation_TKEClientAuthFail = "FailedOperation.TKEClientAuthFail"
        case failedOperation_TKEEndpointStatusError = "FailedOperation.TKEEndpointStatusError"
        case failedOperation_TKEResourceConflict = "FailedOperation.TKEResourceConflict"
        case failedOperation_ZoneUnavailable = "FailedOperation.ZoneUnavailable"
        case internalError = "InternalError"
        case internalError_CallbackFail = "InternalError.CallbackFail"
        case internalError_Db = "InternalError.Db"
        case internalError_DbRecordNotFound = "InternalError.DbRecordNotFound"
        case internalError_DependsApi = "InternalError.DependsApi"
        case internalError_DependsDb = "InternalError.DependsDb"
        case internalError_DependsMq = "InternalError.DependsMq"
        case internalError_ExeTimeout = "InternalError.ExeTimeout"
        case internalError_Param = "InternalError.Param"
        case internalError_System = "InternalError.System"
        case internalError_TaskNotFound = "InternalError.TaskNotFound"
        case internalError_TaskResultFormat = "InternalError.TaskResultFormat"
        case internalError_UnexpectedInternal = "InternalError.UnexpectedInternal"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_DashboardNameExists = "InvalidParameterValue.DashboardNameExists"
        case invalidParameterValue_VersionMismatch = "InvalidParameterValue.VersionMismatch"
        case invalidParameter_ClusterNotFound = "InvalidParameter.ClusterNotFound"
        case invalidParameter_DupTask = "InvalidParameter.DupTask"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case invalidParameter_InvalidParameterParam = "InvalidParameter.InvalidParameterParam"
        case invalidParameter_MissAKSK = "InvalidParameter.MissAKSK"
        case invalidParameter_Param = "InvalidParameter.Param"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case invalidParameter_PromClusterNotFound = "InvalidParameter.PromClusterNotFound"
        case invalidParameter_PromInstanceNotFound = "InvalidParameter.PromInstanceNotFound"
        case invalidParameter_ResourceNotFound = "InvalidParameter.ResourceNotFound"
        case invalidParameter_SecretIdOrSecretKeyError = "InvalidParameter.SecretIdOrSecretKeyError"
        case invalidParameter_UnsupportedProduct = "InvalidParameter.UnsupportedProduct"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_MetricQuotaExceeded = "LimitExceeded.MetricQuotaExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInUse_ResourceExistAlready = "ResourceInUse.ResourceExistAlready"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_NotExistTask = "ResourceNotFound.NotExistTask"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
    }

    /// Error domains affliated to ``TCMonitorError``.
    public static var domains: [TCErrorType.Type] {
        [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceInUse.self, ResourceNotFound.self]
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
    public static var authFailure: TCMonitorError {
        TCMonitorError(.authFailure)
    }

    /// 访问鉴权失败。
    public static var authFailure_AccessCAMFail: TCMonitorError {
        TCMonitorError(.authFailure_AccessCAMFail)
    }

    /// 请求未授权。请参考 CAM 文档对鉴权的说明。
    public static var authFailure_UnauthorizedOperation: TCMonitorError {
        TCMonitorError(.authFailure_UnauthorizedOperation)
    }

    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCMonitorError {
        TCMonitorError(.dryRunOperation)
    }

    /// 操作失败。
    public static var failedOperation: TCMonitorError {
        TCMonitorError(.failedOperation)
    }

    /// 访问STS失败。
    public static var failedOperation_AccessSTSFail: TCMonitorError {
        TCMonitorError(.failedOperation_AccessSTSFail)
    }

    /// 访问用户TKE集群失败。
    public static var failedOperation_AccessTKEFail: TCMonitorError {
        TCMonitorError(.failedOperation_AccessTKEFail)
    }

    /// 访问标签服务失败。
    public static var failedOperation_AccessTagFail: TCMonitorError {
        TCMonitorError(.failedOperation_AccessTagFail)
    }

    /// agent当前状态不允许该操作。
    public static var failedOperation_AgentNotAllowed: TCMonitorError {
        TCMonitorError(.failedOperation_AgentNotAllowed)
    }

    /// Agent版本不支持该操作，请升级Agent。
    public static var failedOperation_AgentVersionNotSupported: TCMonitorError {
        TCMonitorError(.failedOperation_AgentVersionNotSupported)
    }

    /// 该实例上有正在运行的Agent。
    public static var failedOperation_AgentsNotInUninstallStage: TCMonitorError {
        TCMonitorError(.failedOperation_AgentsNotInUninstallStage)
    }

    /// 删除过滤条件失败。
    public static var failedOperation_AlertFilterRuleDeleteFailed: TCMonitorError {
        TCMonitorError(.failedOperation_AlertFilterRuleDeleteFailed)
    }

    /// 创建告警策略失败。
    public static var failedOperation_AlertPolicyCreateFailed: TCMonitorError {
        TCMonitorError(.failedOperation_AlertPolicyCreateFailed)
    }

    /// 告警策略删除失败。
    public static var failedOperation_AlertPolicyDeleteFailed: TCMonitorError {
        TCMonitorError(.failedOperation_AlertPolicyDeleteFailed)
    }

    /// 告警策略查询失败。
    public static var failedOperation_AlertPolicyDescribeFailed: TCMonitorError {
        TCMonitorError(.failedOperation_AlertPolicyDescribeFailed)
    }

    /// 告警策略修改失败。
    public static var failedOperation_AlertPolicyModifyFailed: TCMonitorError {
        TCMonitorError(.failedOperation_AlertPolicyModifyFailed)
    }

    /// 删除触发条件失败。
    public static var failedOperation_AlertTriggerRuleDeleteFailed: TCMonitorError {
        TCMonitorError(.failedOperation_AlertTriggerRuleDeleteFailed)
    }

    /// Yaml 格式不正确。
    ///
    /// 修改您输入的 Yaml 数据
    public static var failedOperation_BadYamlFormat: TCMonitorError {
        TCMonitorError(.failedOperation_BadYamlFormat)
    }

    /// FailedOperation.ComponentClientCommon
    public static var failedOperation_ComponentClientCommon: TCMonitorError {
        TCMonitorError(.failedOperation_ComponentClientCommon)
    }

    /// FailedOperation.ComponentClientHttp
    public static var failedOperation_ComponentClientHttp: TCMonitorError {
        TCMonitorError(.failedOperation_ComponentClientHttp)
    }

    /// FailedOperation.ComponentClientUnpack
    public static var failedOperation_ComponentClientUnpack: TCMonitorError {
        TCMonitorError(.failedOperation_ComponentClientUnpack)
    }

    /// 创建实例失败。
    public static var failedOperation_CreateInstance: TCMonitorError {
        TCMonitorError(.failedOperation_CreateInstance)
    }

    /// 该账号创建实例被限制。
    public static var failedOperation_CreateInstanceLimited: TCMonitorError {
        TCMonitorError(.failedOperation_CreateInstanceLimited)
    }

    /// 数据表字段不存在。
    public static var failedOperation_DataColumnNotFound: TCMonitorError {
        TCMonitorError(.failedOperation_DataColumnNotFound)
    }

    /// 数据查询失败。
    public static var failedOperation_DataQueryFailed: TCMonitorError {
        TCMonitorError(.failedOperation_DataQueryFailed)
    }

    /// 数据表不存在。
    public static var failedOperation_DataTableNotFound: TCMonitorError {
        TCMonitorError(.failedOperation_DataTableNotFound)
    }

    /// FailedOperation.Db
    public static var failedOperation_Db: TCMonitorError {
        TCMonitorError(.failedOperation_Db)
    }

    /// 数据库查询失败。
    public static var failedOperation_DbQueryFailed: TCMonitorError {
        TCMonitorError(.failedOperation_DbQueryFailed)
    }

    /// 创建数据库记录失败。
    public static var failedOperation_DbRecordCreateFailed: TCMonitorError {
        TCMonitorError(.failedOperation_DbRecordCreateFailed)
    }

    /// 数据库记录删除失败。
    public static var failedOperation_DbRecordDeleteFailed: TCMonitorError {
        TCMonitorError(.failedOperation_DbRecordDeleteFailed)
    }

    /// FailedOperation.DbRecordNotFound
    public static var failedOperation_DbRecordNotFound: TCMonitorError {
        TCMonitorError(.failedOperation_DbRecordNotFound)
    }

    /// 数据库记录更新失败。
    public static var failedOperation_DbRecordUpdateFailed: TCMonitorError {
        TCMonitorError(.failedOperation_DbRecordUpdateFailed)
    }

    /// 数据库事务开始失败。
    public static var failedOperation_DbTransactionBeginFailed: TCMonitorError {
        TCMonitorError(.failedOperation_DbTransactionBeginFailed)
    }

    /// 数据库事务提交失败。
    public static var failedOperation_DbTransactionCommitFailed: TCMonitorError {
        TCMonitorError(.failedOperation_DbTransactionCommitFailed)
    }

    /// 请求维度查询服务失败。
    public static var failedOperation_DimQueryRequestFailed: TCMonitorError {
        TCMonitorError(.failedOperation_DimQueryRequestFailed)
    }

    /// 被除数为0。
    public static var failedOperation_DivisionByZero: TCMonitorError {
        TCMonitorError(.failedOperation_DivisionByZero)
    }

    /// 后端服务超时
    public static var failedOperation_DoHTTPTransferFailed: TCMonitorError {
        TCMonitorError(.failedOperation_DoHTTPTransferFailed)
    }

    /// 查询分析数据失败。
    public static var failedOperation_DruidQueryFailed: TCMonitorError {
        TCMonitorError(.failedOperation_DruidQueryFailed)
    }

    /// druid表不存在。
    public static var failedOperation_DruidTableNotFound: TCMonitorError {
        TCMonitorError(.failedOperation_DruidTableNotFound)
    }

    /// 名字重复。
    public static var failedOperation_DuplicateName: TCMonitorError {
        TCMonitorError(.failedOperation_DuplicateName)
    }

    /// 未开通。
    public static var failedOperation_ErrNotOpen: TCMonitorError {
        TCMonitorError(.failedOperation_ErrNotOpen)
    }

    /// 欠费。
    public static var failedOperation_ErrOwed: TCMonitorError {
        TCMonitorError(.failedOperation_ErrOwed)
    }

    /// 生成资源ID错误。
    public static var failedOperation_GenerateInstanceIDFailed: TCMonitorError {
        TCMonitorError(.failedOperation_GenerateInstanceIDFailed)
    }

    /// 实例不存在。
    public static var failedOperation_InstanceNotFound: TCMonitorError {
        TCMonitorError(.failedOperation_InstanceNotFound)
    }

    /// 实例没有运行。
    public static var failedOperation_InstanceNotRunning: TCMonitorError {
        TCMonitorError(.failedOperation_InstanceNotRunning)
    }

    /// 内部服务错误。
    public static var failedOperation_InternalError: TCMonitorError {
        TCMonitorError(.failedOperation_InternalError)
    }

    /// FailedOperation.KubeClientConf
    public static var failedOperation_KubeClientConf: TCMonitorError {
        TCMonitorError(.failedOperation_KubeClientConf)
    }

    /// FailedOperation.KubeCommon
    public static var failedOperation_KubeCommon: TCMonitorError {
        TCMonitorError(.failedOperation_KubeCommon)
    }

    /// 地区不可用。
    public static var failedOperation_RegionUnavailable: TCMonitorError {
        TCMonitorError(.failedOperation_RegionUnavailable)
    }

    /// 资源已经存在。
    public static var failedOperation_ResourceExist: TCMonitorError {
        TCMonitorError(.failedOperation_ResourceExist)
    }

    /// 资源不存在。
    public static var failedOperation_ResourceNotFound: TCMonitorError {
        TCMonitorError(.failedOperation_ResourceNotFound)
    }

    /// 资源正在被操作。
    public static var failedOperation_ResourceOperating: TCMonitorError {
        TCMonitorError(.failedOperation_ResourceOperating)
    }

    /// 发送授权请求失败。
    public static var failedOperation_SendRequest: TCMonitorError {
        TCMonitorError(.failedOperation_SendRequest)
    }

    /// 服务未启用，开通服务后方可使用。
    public static var failedOperation_ServiceNotEnabled: TCMonitorError {
        TCMonitorError(.failedOperation_ServiceNotEnabled)
    }

    /// 没有访问TKE权限。
    public static var failedOperation_TKEClientAuthFail: TCMonitorError {
        TCMonitorError(.failedOperation_TKEClientAuthFail)
    }

    /// TKE的endpoint不可访问。
    public static var failedOperation_TKEEndpointStatusError: TCMonitorError {
        TCMonitorError(.failedOperation_TKEEndpointStatusError)
    }

    /// 更新TKE资源时出现冲突。
    public static var failedOperation_TKEResourceConflict: TCMonitorError {
        TCMonitorError(.failedOperation_TKEResourceConflict)
    }

    /// 可用区不可用。
    public static var failedOperation_ZoneUnavailable: TCMonitorError {
        TCMonitorError(.failedOperation_ZoneUnavailable)
    }

    /// 内部错误。
    public static var internalError: TCMonitorError {
        TCMonitorError(.internalError)
    }

    /// 回调出错。
    public static var internalError_CallbackFail: TCMonitorError {
        TCMonitorError(.internalError_CallbackFail)
    }

    /// InternalError.Db
    public static var internalError_Db: TCMonitorError {
        TCMonitorError(.internalError_Db)
    }

    /// InternalError.DbRecordNotFound
    public static var internalError_DbRecordNotFound: TCMonitorError {
        TCMonitorError(.internalError_DbRecordNotFound)
    }

    /// 依赖的其他api出错。
    public static var internalError_DependsApi: TCMonitorError {
        TCMonitorError(.internalError_DependsApi)
    }

    /// 依赖的db出错。
    public static var internalError_DependsDb: TCMonitorError {
        TCMonitorError(.internalError_DependsDb)
    }

    /// 依赖的mq出错。
    public static var internalError_DependsMq: TCMonitorError {
        TCMonitorError(.internalError_DependsMq)
    }

    /// 执行超时。
    public static var internalError_ExeTimeout: TCMonitorError {
        TCMonitorError(.internalError_ExeTimeout)
    }

    /// InternalError.Param
    public static var internalError_Param: TCMonitorError {
        TCMonitorError(.internalError_Param)
    }

    /// 系统错误。
    public static var internalError_System: TCMonitorError {
        TCMonitorError(.internalError_System)
    }

    /// InternalError.TaskNotFound
    public static var internalError_TaskNotFound: TCMonitorError {
        TCMonitorError(.internalError_TaskNotFound)
    }

    /// 任务结果解析错误。
    public static var internalError_TaskResultFormat: TCMonitorError {
        TCMonitorError(.internalError_TaskResultFormat)
    }

    /// InternalError.UnexpectedInternal
    public static var internalError_UnexpectedInternal: TCMonitorError {
        TCMonitorError(.internalError_UnexpectedInternal)
    }

    /// 参数错误。
    public static var invalidParameter: TCMonitorError {
        TCMonitorError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCMonitorError {
        TCMonitorError(.invalidParameterValue)
    }

    /// dashboard 名重复。
    public static var invalidParameterValue_DashboardNameExists: TCMonitorError {
        TCMonitorError(.invalidParameterValue_DashboardNameExists)
    }

    /// 版本不匹配。
    public static var invalidParameterValue_VersionMismatch: TCMonitorError {
        TCMonitorError(.invalidParameterValue_VersionMismatch)
    }

    /// InvalidParameter.ClusterNotFound
    public static var invalidParameter_ClusterNotFound: TCMonitorError {
        TCMonitorError(.invalidParameter_ClusterNotFound)
    }

    /// 重复提交任务。
    public static var invalidParameter_DupTask: TCMonitorError {
        TCMonitorError(.invalidParameter_DupTask)
    }

    /// 参数错误。
    public static var invalidParameter_InvalidParameter: TCMonitorError {
        TCMonitorError(.invalidParameter_InvalidParameter)
    }

    /// 参数错误。
    public static var invalidParameter_InvalidParameterParam: TCMonitorError {
        TCMonitorError(.invalidParameter_InvalidParameterParam)
    }

    /// 缺少平台配置。
    public static var invalidParameter_MissAKSK: TCMonitorError {
        TCMonitorError(.invalidParameter_MissAKSK)
    }

    /// InvalidParameter.Param
    public static var invalidParameter_Param: TCMonitorError {
        TCMonitorError(.invalidParameter_Param)
    }

    /// 参数错误。
    public static var invalidParameter_ParamError: TCMonitorError {
        TCMonitorError(.invalidParameter_ParamError)
    }

    /// InvalidParameter.PromClusterNotFound
    public static var invalidParameter_PromClusterNotFound: TCMonitorError {
        TCMonitorError(.invalidParameter_PromClusterNotFound)
    }

    /// InvalidParameter.PromInstanceNotFound
    public static var invalidParameter_PromInstanceNotFound: TCMonitorError {
        TCMonitorError(.invalidParameter_PromInstanceNotFound)
    }

    /// InvalidParameter.ResourceNotFound
    public static var invalidParameter_ResourceNotFound: TCMonitorError {
        TCMonitorError(.invalidParameter_ResourceNotFound)
    }

    /// 平台配置错误。
    public static var invalidParameter_SecretIdOrSecretKeyError: TCMonitorError {
        TCMonitorError(.invalidParameter_SecretIdOrSecretKeyError)
    }

    /// 这个产品还不支持扫描。
    public static var invalidParameter_UnsupportedProduct: TCMonitorError {
        TCMonitorError(.invalidParameter_UnsupportedProduct)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCMonitorError {
        TCMonitorError(.limitExceeded)
    }

    /// 指标数量达到配额限制，禁止含有未注册指标的请求。
    public static var limitExceeded_MetricQuotaExceeded: TCMonitorError {
        TCMonitorError(.limitExceeded_MetricQuotaExceeded)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCMonitorError {
        TCMonitorError(.missingParameter)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCMonitorError {
        TCMonitorError(.operationDenied)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCMonitorError {
        TCMonitorError(.requestLimitExceeded)
    }

    /// 资源被占用。
    public static var resourceInUse: TCMonitorError {
        TCMonitorError(.resourceInUse)
    }

    /// ResourceInUse.ResourceExistAlready
    public static var resourceInUse_ResourceExistAlready: TCMonitorError {
        TCMonitorError(.resourceInUse_ResourceExistAlready)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCMonitorError {
        TCMonitorError(.resourceInsufficient)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCMonitorError {
        TCMonitorError(.resourceNotFound)
    }

    /// 任务不存在。
    public static var resourceNotFound_NotExistTask: TCMonitorError {
        TCMonitorError(.resourceNotFound_NotExistTask)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCMonitorError {
        TCMonitorError(.resourceUnavailable)
    }

    /// 资源售罄。
    public static var resourcesSoldOut: TCMonitorError {
        TCMonitorError(.resourcesSoldOut)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCMonitorError {
        TCMonitorError(.unauthorizedOperation)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCMonitorError {
        TCMonitorError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCMonitorError {
        TCMonitorError(.unsupportedOperation)
    }

    public func asMonitorError() -> TCMonitorError {
        return self
    }
}
