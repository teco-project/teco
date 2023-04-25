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

/// Service error type returned by `Tem`.
public protocol TCTemErrorType: TCServiceErrorType {
    /// Get the service error as ``TCTemError``.
    ///
    /// - Returns: ``TCTemError`` that holds the same error code and context.
    func asTemError() -> TCTemError
}

public struct TCTemError: TCTemErrorType {
    enum Code: String {
        case failedOperation_ActionReadTimeout = "FailedOperation.ActionReadTimeout"
        case failedOperation_CreateServiceError = "FailedOperation.CreateServiceError"
        case failedOperation_DefaultInternalError = "FailedOperation.DefaultInternalError"
        case failedOperation_DeleteServiceError = "FailedOperation.DeleteServiceError"
        case failedOperation_DescribeIngressListError = "FailedOperation.DescribeIngressListError"
        case failedOperation_DescribeRunPodListError = "FailedOperation.DescribeRunPodListError"
        case failedOperation_DescribeServiceError = "FailedOperation.DescribeServiceError"
        case failedOperation_DescribeServiceListError = "FailedOperation.DescribeServiceListError"
        case failedOperation_UpdateIngressError = "FailedOperation.UpdateIngressError"
        case internalError_ActionReadTimeout = "InternalError.ActionReadTimeout"
        case internalError_AddNewNodeError = "InternalError.AddNewNodeError"
        case internalError_CreateApmResourceError = "InternalError.CreateApmResourceError"
        case internalError_CreateConfigDataError = "InternalError.CreateConfigDataError"
        case internalError_CreateEksClusterError = "InternalError.CreateEksClusterError"
        case internalError_CreateLogConfigError = "InternalError.CreateLogConfigError"
        case internalError_CreateServiceError = "InternalError.CreateServiceError"
        case internalError_DefaultInternalError = "InternalError.DefaultInternalError"
        case internalError_DeleteIngressError = "InternalError.DeleteIngressError"
        case internalError_DeleteLogConfigError = "InternalError.DeleteLogConfigError"
        case internalError_DeleteServiceError = "InternalError.DeleteServiceError"
        case internalError_DeployVersionError = "InternalError.DeployVersionError"
        case internalError_DescribeConfigDataError = "InternalError.DescribeConfigDataError"
        case internalError_DescribeConfigDataListError = "InternalError.DescribeConfigDataListError"
        case internalError_DescribeIngressError = "InternalError.DescribeIngressError"
        case internalError_DescribeIngressListError = "InternalError.DescribeIngressListError"
        case internalError_DescribeLogConfigError = "InternalError.DescribeLogConfigError"
        case internalError_DescribeLogConfigListError = "InternalError.DescribeLogConfigListError"
        case internalError_DescribeRunPodListError = "InternalError.DescribeRunPodListError"
        case internalError_DescribeServiceError = "InternalError.DescribeServiceError"
        case internalError_DescribeServiceIngressError = "InternalError.DescribeServiceIngressError"
        case internalError_DescribeServiceListError = "InternalError.DescribeServiceListError"
        case internalError_ModifyConfigDataError = "InternalError.ModifyConfigDataError"
        case internalError_ModifyLogConfigError = "InternalError.ModifyLogConfigError"
        case internalError_RestartApplicationError = "InternalError.RestartApplicationError"
        case internalError_StopApplicationError = "InternalError.StopApplicationError"
        case internalError_TagInterfaceError = "InternalError.TagInterfaceError"
        case internalError_UpdateIngressError = "InternalError.UpdateIngressError"
        case invalidParameterValue_ApmNotBind = "InvalidParameterValue.ApmNotBind"
        case invalidParameterValue_ApplicationAccessServiceReachMaximum = "InvalidParameterValue.ApplicationAccessServiceReachMaximum"
        case invalidParameterValue_ApplicationServiceAlreadyExist = "InvalidParameterValue.ApplicationServiceAlreadyExist"
        case invalidParameterValue_ApplicationServiceNotFound = "InvalidParameterValue.ApplicationServiceNotFound"
        case invalidParameterValue_AtLeastOneScalerRuleShouldBeApplied = "InvalidParameterValue.AtLeastOneScalerRuleShouldBeApplied"
        case invalidParameterValue_AutoScalerLargerThanOne = "InvalidParameterValue.AutoScalerLargerThanOne"
        case invalidParameterValue_CannotOverWriteOtherApplicationService = "InvalidParameterValue.CannotOverWriteOtherApplicationService"
        case invalidParameterValue_CannotUpdateServiceByBothMethods = "InvalidParameterValue.CannotUpdateServiceByBothMethods"
        case invalidParameterValue_ConfigDataAlreadyExist = "InvalidParameterValue.ConfigDataAlreadyExist"
        case invalidParameterValue_ConfigDataInvalid = "InvalidParameterValue.ConfigDataInvalid"
        case invalidParameterValue_CronHpaReplicasInvalid = "InvalidParameterValue.CronHpaReplicasInvalid"
        case invalidParameterValue_DailyCreateNamespaceReachMaximum = "InvalidParameterValue.DailyCreateNamespaceReachMaximum"
        case invalidParameterValue_DisableScalerBeforeDelete = "InvalidParameterValue.DisableScalerBeforeDelete"
        case invalidParameterValue_EnvironmentNameImmutable = "InvalidParameterValue.EnvironmentNameImmutable"
        case invalidParameterValue_HpaMetricsInvalid = "InvalidParameterValue.HpaMetricsInvalid"
        case invalidParameterValue_HpaMinMaxInvalid = "InvalidParameterValue.HpaMinMaxInvalid"
        case invalidParameterValue_HpaThresholdInvalid = "InvalidParameterValue.HpaThresholdInvalid"
        case invalidParameterValue_IngressRewriteRequiredHttpsEnable = "InvalidParameterValue.IngressRewriteRequiredHttpsEnable"
        case invalidParameterValue_InvalidCronScalerPeriod = "InvalidParameterValue.InvalidCronScalerPeriod"
        case invalidParameterValue_InvalidDeployVersion = "InvalidParameterValue.InvalidDeployVersion"
        case invalidParameterValue_InvalidEksServiceType = "InvalidParameterValue.InvalidEksServiceType"
        case invalidParameterValue_InvalidEnvName = "InvalidParameterValue.InvalidEnvName"
        case invalidParameterValue_InvalidEnvValue = "InvalidParameterValue.InvalidEnvValue"
        case invalidParameterValue_InvalidMountPath = "InvalidParameterValue.InvalidMountPath"
        case invalidParameterValue_InvalidServiceName = "InvalidParameterValue.InvalidServiceName"
        case invalidParameterValue_InvalidTenantInfo = "InvalidParameterValue.InvalidTenantInfo"
        case invalidParameterValue_JdkVersionRequired = "InvalidParameterValue.JdkVersionRequired"
        case invalidParameterValue_LogConfigAlreadyExist = "InvalidParameterValue.LogConfigAlreadyExist"
        case invalidParameterValue_MustProvidePortMappingRules = "InvalidParameterValue.MustProvidePortMappingRules"
        case invalidParameterValue_NamespaceDuplicateError = "InvalidParameterValue.NamespaceDuplicateError"
        case invalidParameterValue_NamespaceNotBelongToAppid = "InvalidParameterValue.NamespaceNotBelongToAppid"
        case invalidParameterValue_NamespaceNotFound = "InvalidParameterValue.NamespaceNotFound"
        case invalidParameterValue_NamespaceReachMaximum = "InvalidParameterValue.NamespaceReachMaximum"
        case invalidParameterValue_NamespaceResourceReachMaximum = "InvalidParameterValue.NamespaceResourceReachMaximum"
        case invalidParameterValue_OsNotSupport = "InvalidParameterValue.OsNotSupport"
        case invalidParameterValue_PortDuplicateError = "InvalidParameterValue.PortDuplicateError"
        case invalidParameterValue_PortIsReserved = "InvalidParameterValue.PortIsReserved"
        case invalidParameterValue_PostStartNotValid = "InvalidParameterValue.PostStartNotValid"
        case invalidParameterValue_PublicRepoTypeParameterError = "InvalidParameterValue.PublicRepoTypeParameterError"
        case invalidParameterValue_RegistryNotBind = "InvalidParameterValue.RegistryNotBind"
        case invalidParameterValue_ScalerNameDuplicated = "InvalidParameterValue.ScalerNameDuplicated"
        case invalidParameterValue_ServiceFoundRunningVersion = "InvalidParameterValue.ServiceFoundRunningVersion"
        case invalidParameterValue_ServiceLowerCase = "InvalidParameterValue.ServiceLowerCase"
        case invalidParameterValue_ServiceNameDuplicateError = "InvalidParameterValue.ServiceNameDuplicateError"
        case invalidParameterValue_ServiceNotBelongToAppid = "InvalidParameterValue.ServiceNotBelongToAppid"
        case invalidParameterValue_ServicePodReachMaximum = "InvalidParameterValue.ServicePodReachMaximum"
        case invalidParameterValue_ServiceReachMaximum = "InvalidParameterValue.ServiceReachMaximum"
        case invalidParameterValue_ServiceUseReserveSuffix = "InvalidParameterValue.ServiceUseReserveSuffix"
        case invalidParameterValue_TcrEntInstanceNameNotValid = "InvalidParameterValue.TcrEntInstanceNameNotValid"
        case invalidParameterValue_TemIdInvalid = "InvalidParameterValue.TemIdInvalid"
        case invalidParameterValue_TraitsTracingNotSupported = "InvalidParameterValue.TraitsTracingNotSupported"
        case invalidParameterValue_VersionLengthLimit = "InvalidParameterValue.VersionLengthLimit"
        case invalidParameterValue_VersionLowerCase = "InvalidParameterValue.VersionLowerCase"
        case invalidParameterValue_VersionRouteRateNotZero = "InvalidParameterValue.VersionRouteRateNotZero"
        case invalidParameterValue_VpcInvalid = "InvalidParameterValue.VpcInvalid"
        case invalidParameter_ApplicationAccessServiceReachMaximum = "InvalidParameter.ApplicationAccessServiceReachMaximum"
        case invalidParameter_LBServiceCannotSupportTcpUdpSameTime = "InvalidParameter.LBServiceCannotSupportTcpUdpSameTime"
        case invalidParameter_MustProvidePortMappingRules = "InvalidParameter.MustProvidePortMappingRules"
        case invalidParameter_ServiceNameNotValid = "InvalidParameter.ServiceNameNotValid"
        case invalidParameter_ServiceUseReserveSuffix = "InvalidParameter.ServiceUseReserveSuffix"
        case invalidParameter_TooManyPortMappingRules = "InvalidParameter.TooManyPortMappingRules"
        case invalidParameter_UnauthorizedOrMissingRole = "InvalidParameter.UnauthorizedOrMissingRole"
        case invalidParameter_VpcOverQuota = "InvalidParameter.VpcOverQuota"
        case missingParameter_AutoScalerNameNull = "MissingParameter.AutoScalerNameNull"
        case missingParameter_DeployModeNull = "MissingParameter.DeployModeNull"
        case missingParameter_DeployVersionNull = "MissingParameter.DeployVersionNull"
        case missingParameter_EnvironmentNameNull = "MissingParameter.EnvironmentNameNull"
        case missingParameter_ImgRepoNull = "MissingParameter.ImgRepoNull"
        case missingParameter_LogsetOrTopicNull = "MissingParameter.LogsetOrTopicNull"
        case missingParameter_MinMaxNumNull = "MissingParameter.MinMaxNumNull"
        case missingParameter_NamespaceIdNull = "MissingParameter.NamespaceIdNull"
        case missingParameter_PkgNameNull = "MissingParameter.PkgNameNull"
        case missingParameter_ScalerIdNull = "MissingParameter.ScalerIdNull"
        case missingParameter_ServiceIdNull = "MissingParameter.ServiceIdNull"
        case missingParameter_SvcRepoNotReady = "MissingParameter.SvcRepoNotReady"
        case missingParameter_TcrEntInstanceNameNull = "MissingParameter.TcrEntInstanceNameNull"
        case missingParameter_VpcServiceSubnetNull = "MissingParameter.VpcServiceSubnetNull"
        case operationDenied_BalanceNotEnough = "OperationDenied.BalanceNotEnough"
        case operationDenied_ResourceIsolated = "OperationDenied.ResourceIsolated"
        case resourceInUse_EnvironmentAlreadyLocked = "ResourceInUse.EnvironmentAlreadyLocked"
        case resourceInUse_ResourceAlreadyLocked = "ResourceInUse.ResourceAlreadyLocked"
        case resourceInUse_ResourceAlreadyUsed = "ResourceInUse.ResourceAlreadyUsed"
        case resourceInUse_ServiceDeploying = "ResourceInUse.ServiceDeploying"
        case resourceNotFound_ConfigDataNotFound = "ResourceNotFound.ConfigDataNotFound"
        case resourceNotFound_InterfaceNotFound = "ResourceNotFound.InterfaceNotFound"
        case resourceNotFound_LogConfigNotFound = "ResourceNotFound.LogConfigNotFound"
        case resourceNotFound_MicroserviceOffline = "ResourceNotFound.MicroserviceOffline"
        case resourceNotFound_NamespaceNotFound = "ResourceNotFound.NamespaceNotFound"
        case resourceNotFound_ServiceNotFound = "ResourceNotFound.ServiceNotFound"
        case resourceNotFound_ServiceRunningVersionNotFound = "ResourceNotFound.ServiceRunningVersionNotFound"
        case resourceNotFound_VersionNamespaceNotFound = "ResourceNotFound.VersionNamespaceNotFound"
        case resourceNotFound_VersionServiceNotFound = "ResourceNotFound.VersionServiceNotFound"
        case resourceUnavailable_ApplicationNotDeletable = "ResourceUnavailable.ApplicationNotDeletable"
        case resourceUnavailable_ApplicationStopped = "ResourceUnavailable.ApplicationStopped"
        case resourceUnavailable_WaitForKruise = "ResourceUnavailable.WaitForKruise"
        case unauthorizedOperation_MissingEksLogRole = "UnauthorizedOperation.MissingEksLogRole"
        case unauthorizedOperation_UnauthorizedOperation = "UnauthorizedOperation.UnauthorizedOperation"
        case unsupportedOperation_UnsupportAction = "UnsupportedOperation.UnsupportAction"
    }

    /// Error domains affliated to ``TCTemError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, MissingParameter.self, OperationDenied.self, ResourceInUse.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
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

    /// 请求响应超时。
    public static var failedOperation_ActionReadTimeout: TCTemError {
        TCTemError(.failedOperation_ActionReadTimeout)
    }

    /// 创建服务失败。
    public static var failedOperation_CreateServiceError: TCTemError {
        TCTemError(.failedOperation_CreateServiceError)
    }

    /// 服务器繁忙,请稍后再试。
    public static var failedOperation_DefaultInternalError: TCTemError {
        TCTemError(.failedOperation_DefaultInternalError)
    }

    /// 删除应用失败。
    public static var failedOperation_DeleteServiceError: TCTemError {
        TCTemError(.failedOperation_DeleteServiceError)
    }

    /// 查询 ingress 列表失败。
    public static var failedOperation_DescribeIngressListError: TCTemError {
        TCTemError(.failedOperation_DescribeIngressListError)
    }

    /// 查询实例信息失败。
    public static var failedOperation_DescribeRunPodListError: TCTemError {
        TCTemError(.failedOperation_DescribeRunPodListError)
    }

    /// 查询service失败。
    public static var failedOperation_DescribeServiceError: TCTemError {
        TCTemError(.failedOperation_DescribeServiceError)
    }

    /// 查询service列表失败。
    public static var failedOperation_DescribeServiceListError: TCTemError {
        TCTemError(.failedOperation_DescribeServiceListError)
    }

    /// 更新 ingress 失败。
    public static var failedOperation_UpdateIngressError: TCTemError {
        TCTemError(.failedOperation_UpdateIngressError)
    }

    /// 请求响应超时。
    public static var internalError_ActionReadTimeout: TCTemError {
        TCTemError(.internalError_ActionReadTimeout)
    }

    /// 添加子网/虚拟节点异常。
    public static var internalError_AddNewNodeError: TCTemError {
        TCTemError(.internalError_AddNewNodeError)
    }

    /// 创建apm资源失败。
    public static var internalError_CreateApmResourceError: TCTemError {
        TCTemError(.internalError_CreateApmResourceError)
    }

    /// 创建配置失败。
    public static var internalError_CreateConfigDataError: TCTemError {
        TCTemError(.internalError_CreateConfigDataError)
    }

    /// 底层集群创建失败。
    public static var internalError_CreateEksClusterError: TCTemError {
        TCTemError(.internalError_CreateEksClusterError)
    }

    /// 创建 LogConfig 错误。
    public static var internalError_CreateLogConfigError: TCTemError {
        TCTemError(.internalError_CreateLogConfigError)
    }

    /// 创建服务失败。
    public static var internalError_CreateServiceError: TCTemError {
        TCTemError(.internalError_CreateServiceError)
    }

    /// 服务器繁忙,请稍后再试。
    public static var internalError_DefaultInternalError: TCTemError {
        TCTemError(.internalError_DefaultInternalError)
    }

    /// 删除 ingress 失败。
    public static var internalError_DeleteIngressError: TCTemError {
        TCTemError(.internalError_DeleteIngressError)
    }

    /// 删除 LogConfig 错误。
    public static var internalError_DeleteLogConfigError: TCTemError {
        TCTemError(.internalError_DeleteLogConfigError)
    }

    /// 删除应用失败。
    public static var internalError_DeleteServiceError: TCTemError {
        TCTemError(.internalError_DeleteServiceError)
    }

    /// 版本部署调用失败。
    public static var internalError_DeployVersionError: TCTemError {
        TCTemError(.internalError_DeployVersionError)
    }

    /// 查询配置详情失败。
    public static var internalError_DescribeConfigDataError: TCTemError {
        TCTemError(.internalError_DescribeConfigDataError)
    }

    /// 查询配置列表失败。
    public static var internalError_DescribeConfigDataListError: TCTemError {
        TCTemError(.internalError_DescribeConfigDataListError)
    }

    /// 查询 ingress 失败。
    public static var internalError_DescribeIngressError: TCTemError {
        TCTemError(.internalError_DescribeIngressError)
    }

    /// 查询 ingress 列表失败。
    public static var internalError_DescribeIngressListError: TCTemError {
        TCTemError(.internalError_DescribeIngressListError)
    }

    /// 查询 LogConfig 错误。
    public static var internalError_DescribeLogConfigError: TCTemError {
        TCTemError(.internalError_DescribeLogConfigError)
    }

    /// 查询 LogConfig 列表错误。
    public static var internalError_DescribeLogConfigListError: TCTemError {
        TCTemError(.internalError_DescribeLogConfigListError)
    }

    /// 查询实例信息失败。
    public static var internalError_DescribeRunPodListError: TCTemError {
        TCTemError(.internalError_DescribeRunPodListError)
    }

    /// 查询service失败。
    public static var internalError_DescribeServiceError: TCTemError {
        TCTemError(.internalError_DescribeServiceError)
    }

    /// 查询服务关联的 ingress 失败。
    public static var internalError_DescribeServiceIngressError: TCTemError {
        TCTemError(.internalError_DescribeServiceIngressError)
    }

    /// 查询service列表失败。
    public static var internalError_DescribeServiceListError: TCTemError {
        TCTemError(.internalError_DescribeServiceListError)
    }

    /// 修改配置失败。
    public static var internalError_ModifyConfigDataError: TCTemError {
        TCTemError(.internalError_ModifyConfigDataError)
    }

    /// 修改 LogConfig 错误。
    public static var internalError_ModifyLogConfigError: TCTemError {
        TCTemError(.internalError_ModifyLogConfigError)
    }

    /// 重启失败。
    public static var internalError_RestartApplicationError: TCTemError {
        TCTemError(.internalError_RestartApplicationError)
    }

    /// 停止应用失败。
    public static var internalError_StopApplicationError: TCTemError {
        TCTemError(.internalError_StopApplicationError)
    }

    /// 调用标签接口异常。
    public static var internalError_TagInterfaceError: TCTemError {
        TCTemError(.internalError_TagInterfaceError)
    }

    /// 更新 ingress 失败。
    public static var internalError_UpdateIngressError: TCTemError {
        TCTemError(.internalError_UpdateIngressError)
    }

    /// APM 没有与当前环境绑定。
    public static var invalidParameterValue_ApmNotBind: TCTemError {
        TCTemError(.invalidParameterValue_ApmNotBind)
    }

    /// 应用访问配置服务数量达到上限。
    public static var invalidParameterValue_ApplicationAccessServiceReachMaximum: TCTemError {
        TCTemError(.invalidParameterValue_ApplicationAccessServiceReachMaximum)
    }

    /// 已存在同名访问方式。
    public static var invalidParameterValue_ApplicationServiceAlreadyExist: TCTemError {
        TCTemError(.invalidParameterValue_ApplicationServiceAlreadyExist)
    }

    /// 没有找到该访问方式。
    public static var invalidParameterValue_ApplicationServiceNotFound: TCTemError {
        TCTemError(.invalidParameterValue_ApplicationServiceNotFound)
    }

    /// 请至少启用一种弹性规则。
    public static var invalidParameterValue_AtLeastOneScalerRuleShouldBeApplied: TCTemError {
        TCTemError(.invalidParameterValue_AtLeastOneScalerRuleShouldBeApplied)
    }

    /// 只支持绑定一种弹性伸缩。
    public static var invalidParameterValue_AutoScalerLargerThanOne: TCTemError {
        TCTemError(.invalidParameterValue_AutoScalerLargerThanOne)
    }

    /// 不能覆盖其他应用的访问方式。
    public static var invalidParameterValue_CannotOverWriteOtherApplicationService: TCTemError {
        TCTemError(.invalidParameterValue_CannotOverWriteOtherApplicationService)
    }

    /// 不能同时使用全量以及单条更新。
    public static var invalidParameterValue_CannotUpdateServiceByBothMethods: TCTemError {
        TCTemError(.invalidParameterValue_CannotUpdateServiceByBothMethods)
    }

    /// 配置已存在。
    public static var invalidParameterValue_ConfigDataAlreadyExist: TCTemError {
        TCTemError(.invalidParameterValue_ConfigDataAlreadyExist)
    }

    /// 配置不合法。
    public static var invalidParameterValue_ConfigDataInvalid: TCTemError {
        TCTemError(.invalidParameterValue_ConfigDataInvalid)
    }

    /// 定时弹性伸缩目标实例数不合法。
    public static var invalidParameterValue_CronHpaReplicasInvalid: TCTemError {
        TCTemError(.invalidParameterValue_CronHpaReplicasInvalid)
    }

    /// 每日环境创建次数超过上限。
    public static var invalidParameterValue_DailyCreateNamespaceReachMaximum: TCTemError {
        TCTemError(.invalidParameterValue_DailyCreateNamespaceReachMaximum)
    }

    /// 弹性伸缩启用中，请停用后再删除。
    public static var invalidParameterValue_DisableScalerBeforeDelete: TCTemError {
        TCTemError(.invalidParameterValue_DisableScalerBeforeDelete)
    }

    /// 环境名称不可变。
    public static var invalidParameterValue_EnvironmentNameImmutable: TCTemError {
        TCTemError(.invalidParameterValue_EnvironmentNameImmutable)
    }

    /// 弹性伸缩指标不合法。
    public static var invalidParameterValue_HpaMetricsInvalid: TCTemError {
        TCTemError(.invalidParameterValue_HpaMetricsInvalid)
    }

    /// 弹性伸缩最小值/最大值不合法。
    public static var invalidParameterValue_HpaMinMaxInvalid: TCTemError {
        TCTemError(.invalidParameterValue_HpaMinMaxInvalid)
    }

    /// 弹性伸缩阈值不合法。
    public static var invalidParameterValue_HpaThresholdInvalid: TCTemError {
        TCTemError(.invalidParameterValue_HpaThresholdInvalid)
    }

    /// 访问配置重定向需要启用 HTTPS。
    public static var invalidParameterValue_IngressRewriteRequiredHttpsEnable: TCTemError {
        TCTemError(.invalidParameterValue_IngressRewriteRequiredHttpsEnable)
    }

    /// 无效的定时伸缩周期。
    public static var invalidParameterValue_InvalidCronScalerPeriod: TCTemError {
        TCTemError(.invalidParameterValue_InvalidCronScalerPeriod)
    }

    /// 版本号格式非法。
    public static var invalidParameterValue_InvalidDeployVersion: TCTemError {
        TCTemError(.invalidParameterValue_InvalidDeployVersion)
    }

    /// 访问类型不支持。
    public static var invalidParameterValue_InvalidEksServiceType: TCTemError {
        TCTemError(.invalidParameterValue_InvalidEksServiceType)
    }

    /// 环境变量名非法，要求有由字母、数字，"."，"_" 和 "-" 组成，不能由数字开头。
    public static var invalidParameterValue_InvalidEnvName: TCTemError {
        TCTemError(.invalidParameterValue_InvalidEnvName)
    }

    /// 环境变量长度不能超过1000。
    public static var invalidParameterValue_InvalidEnvValue: TCTemError {
        TCTemError(.invalidParameterValue_InvalidEnvValue)
    }

    /// 挂载路径不合法，不能为 /app。
    public static var invalidParameterValue_InvalidMountPath: TCTemError {
        TCTemError(.invalidParameterValue_InvalidMountPath)
    }

    /// 应用名格式非法。
    public static var invalidParameterValue_InvalidServiceName: TCTemError {
        TCTemError(.invalidParameterValue_InvalidServiceName)
    }

    /// 无法识别租户信息。
    public static var invalidParameterValue_InvalidTenantInfo: TCTemError {
        TCTemError(.invalidParameterValue_InvalidTenantInfo)
    }

    /// JDK 版本不能为空。
    public static var invalidParameterValue_JdkVersionRequired: TCTemError {
        TCTemError(.invalidParameterValue_JdkVersionRequired)
    }

    /// LogConfig 配置已存在。
    public static var invalidParameterValue_LogConfigAlreadyExist: TCTemError {
        TCTemError(.invalidParameterValue_LogConfigAlreadyExist)
    }

    /// 必须提供PortMapping规则。
    public static var invalidParameterValue_MustProvidePortMappingRules: TCTemError {
        TCTemError(.invalidParameterValue_MustProvidePortMappingRules)
    }

    /// 环境重复。
    public static var invalidParameterValue_NamespaceDuplicateError: TCTemError {
        TCTemError(.invalidParameterValue_NamespaceDuplicateError)
    }

    /// 命名空间不属于用户。
    public static var invalidParameterValue_NamespaceNotBelongToAppid: TCTemError {
        TCTemError(.invalidParameterValue_NamespaceNotBelongToAppid)
    }

    /// 环境不存在。
    public static var invalidParameterValue_NamespaceNotFound: TCTemError {
        TCTemError(.invalidParameterValue_NamespaceNotFound)
    }

    /// 环境创建失败，达到上限。
    public static var invalidParameterValue_NamespaceReachMaximum: TCTemError {
        TCTemError(.invalidParameterValue_NamespaceReachMaximum)
    }

    /// 环境资源创建失败，达到上限。
    public static var invalidParameterValue_NamespaceResourceReachMaximum: TCTemError {
        TCTemError(.invalidParameterValue_NamespaceResourceReachMaximum)
    }

    /// 操作系统不支持。
    public static var invalidParameterValue_OsNotSupport: TCTemError {
        TCTemError(.invalidParameterValue_OsNotSupport)
    }

    /// 服务端口映射重复。
    public static var invalidParameterValue_PortDuplicateError: TCTemError {
        TCTemError(.invalidParameterValue_PortDuplicateError)
    }

    /// 服务端口是保留端口。
    public static var invalidParameterValue_PortIsReserved: TCTemError {
        TCTemError(.invalidParameterValue_PortIsReserved)
    }

    /// post start 不合法。
    public static var invalidParameterValue_PostStartNotValid: TCTemError {
        TCTemError(.invalidParameterValue_PostStartNotValid)
    }

    /// 公有镜像参数错误。
    public static var invalidParameterValue_PublicRepoTypeParameterError: TCTemError {
        TCTemError(.invalidParameterValue_PublicRepoTypeParameterError)
    }

    /// 注册中心没有与当前环境绑定。
    public static var invalidParameterValue_RegistryNotBind: TCTemError {
        TCTemError(.invalidParameterValue_RegistryNotBind)
    }

    /// 弹性伸缩名称已存在。
    public static var invalidParameterValue_ScalerNameDuplicated: TCTemError {
        TCTemError(.invalidParameterValue_ScalerNameDuplicated)
    }

    /// 应用存在正在运行的实例。
    public static var invalidParameterValue_ServiceFoundRunningVersion: TCTemError {
        TCTemError(.invalidParameterValue_ServiceFoundRunningVersion)
    }

    /// 服务名必须小写。
    public static var invalidParameterValue_ServiceLowerCase: TCTemError {
        TCTemError(.invalidParameterValue_ServiceLowerCase)
    }

    /// 应用名已存在。
    public static var invalidParameterValue_ServiceNameDuplicateError: TCTemError {
        TCTemError(.invalidParameterValue_ServiceNameDuplicateError)
    }

    /// 应用不属于此账户。
    public static var invalidParameterValue_ServiceNotBelongToAppid: TCTemError {
        TCTemError(.invalidParameterValue_ServiceNotBelongToAppid)
    }

    /// 实例创建失败，达到上限。
    public static var invalidParameterValue_ServicePodReachMaximum: TCTemError {
        TCTemError(.invalidParameterValue_ServicePodReachMaximum)
    }

    /// 应用创建失败，达到上限。
    public static var invalidParameterValue_ServiceReachMaximum: TCTemError {
        TCTemError(.invalidParameterValue_ServiceReachMaximum)
    }

    /// 服务名使用了保留后缀。
    public static var invalidParameterValue_ServiceUseReserveSuffix: TCTemError {
        TCTemError(.invalidParameterValue_ServiceUseReserveSuffix)
    }

    /// 企业版 TCR 实例名称不合法。
    public static var invalidParameterValue_TcrEntInstanceNameNotValid: TCTemError {
        TCTemError(.invalidParameterValue_TcrEntInstanceNameNotValid)
    }

    /// 不是合法的TEM ID。
    public static var invalidParameterValue_TemIdInvalid: TCTemError {
        TCTemError(.invalidParameterValue_TemIdInvalid)
    }

    /// 非 JAVA 应用不支持链路追踪特性。
    public static var invalidParameterValue_TraitsTracingNotSupported: TCTemError {
        TCTemError(.invalidParameterValue_TraitsTracingNotSupported)
    }

    /// version 不能超过128位。
    public static var invalidParameterValue_VersionLengthLimit: TCTemError {
        TCTemError(.invalidParameterValue_VersionLengthLimit)
    }

    /// 版本必须小写。
    public static var invalidParameterValue_VersionLowerCase: TCTemError {
        TCTemError(.invalidParameterValue_VersionLowerCase)
    }

    /// 版本的路由流量不为0。
    public static var invalidParameterValue_VersionRouteRateNotZero: TCTemError {
        TCTemError(.invalidParameterValue_VersionRouteRateNotZero)
    }

    /// vpc错误, 与环境vpc不一致。
    public static var invalidParameterValue_VpcInvalid: TCTemError {
        TCTemError(.invalidParameterValue_VpcInvalid)
    }

    /// 应用访问配置服务数量达到上限。
    public static var invalidParameter_ApplicationAccessServiceReachMaximum: TCTemError {
        TCTemError(.invalidParameter_ApplicationAccessServiceReachMaximum)
    }

    /// LB类型服务不能同时支持TCP和UDP。
    public static var invalidParameter_LBServiceCannotSupportTcpUdpSameTime: TCTemError {
        TCTemError(.invalidParameter_LBServiceCannotSupportTcpUdpSameTime)
    }

    /// 必须提供PortMapping规则。
    public static var invalidParameter_MustProvidePortMappingRules: TCTemError {
        TCTemError(.invalidParameter_MustProvidePortMappingRules)
    }

    /// 服务名不符合规范。
    public static var invalidParameter_ServiceNameNotValid: TCTemError {
        TCTemError(.invalidParameter_ServiceNameNotValid)
    }

    /// 服务名使用了保留后缀。
    public static var invalidParameter_ServiceUseReserveSuffix: TCTemError {
        TCTemError(.invalidParameter_ServiceUseReserveSuffix)
    }

    /// PortMapping规则数量超过限制。
    public static var invalidParameter_TooManyPortMappingRules: TCTemError {
        TCTemError(.invalidParameter_TooManyPortMappingRules)
    }

    /// 权限不足或缺少相关角色
    public static var invalidParameter_UnauthorizedOrMissingRole: TCTemError {
        TCTemError(.invalidParameter_UnauthorizedOrMissingRole)
    }

    /// 自动创建将超过 vpc 限额。
    public static var invalidParameter_VpcOverQuota: TCTemError {
        TCTemError(.invalidParameter_VpcOverQuota)
    }

    /// 弹性规则名称不能为空。
    public static var missingParameter_AutoScalerNameNull: TCTemError {
        TCTemError(.missingParameter_AutoScalerNameNull)
    }

    /// 部署方式不能为空。
    public static var missingParameter_DeployModeNull: TCTemError {
        TCTemError(.missingParameter_DeployModeNull)
    }

    /// 部署版本不能为空。
    public static var missingParameter_DeployVersionNull: TCTemError {
        TCTemError(.missingParameter_DeployVersionNull)
    }

    /// 环境名称不能为空。
    public static var missingParameter_EnvironmentNameNull: TCTemError {
        TCTemError(.missingParameter_EnvironmentNameNull)
    }

    /// 镜像仓库不能为空。
    public static var missingParameter_ImgRepoNull: TCTemError {
        TCTemError(.missingParameter_ImgRepoNull)
    }

    /// logset 和 topic 不能为空。
    public static var missingParameter_LogsetOrTopicNull: TCTemError {
        TCTemError(.missingParameter_LogsetOrTopicNull)
    }

    /// 弹性伸缩配置最大值/最小值不能为空。
    public static var missingParameter_MinMaxNumNull: TCTemError {
        TCTemError(.missingParameter_MinMaxNumNull)
    }

    /// 环境ID不能为空。
    public static var missingParameter_NamespaceIdNull: TCTemError {
        TCTemError(.missingParameter_NamespaceIdNull)
    }

    /// 包名不能为空。
    public static var missingParameter_PkgNameNull: TCTemError {
        TCTemError(.missingParameter_PkgNameNull)
    }

    /// 弹性规则ID不能为空。
    public static var missingParameter_ScalerIdNull: TCTemError {
        TCTemError(.missingParameter_ScalerIdNull)
    }

    /// 服务ID不能为空。
    public static var missingParameter_ServiceIdNull: TCTemError {
        TCTemError(.missingParameter_ServiceIdNull)
    }

    /// 镜像仓库还未就绪。
    ///
    /// 请等待镜像仓库就绪
    public static var missingParameter_SvcRepoNotReady: TCTemError {
        TCTemError(.missingParameter_SvcRepoNotReady)
    }

    /// 企业版 TCR 实例名称不能为空。
    public static var missingParameter_TcrEntInstanceNameNull: TCTemError {
        TCTemError(.missingParameter_TcrEntInstanceNameNull)
    }

    /// vpc内访问类型子网ID不能为空。
    public static var missingParameter_VpcServiceSubnetNull: TCTemError {
        TCTemError(.missingParameter_VpcServiceSubnetNull)
    }

    /// 账户余额不足。
    public static var operationDenied_BalanceNotEnough: TCTemError {
        TCTemError(.operationDenied_BalanceNotEnough)
    }

    /// 账号欠费状态下不支持该操作，请冲正后重试。
    ///
    /// 账户欠费，请充值。
    public static var operationDenied_ResourceIsolated: TCTemError {
        TCTemError(.operationDenied_ResourceIsolated)
    }

    /// 环境已锁定。
    public static var resourceInUse_EnvironmentAlreadyLocked: TCTemError {
        TCTemError(.resourceInUse_EnvironmentAlreadyLocked)
    }

    /// 你操作的资源已被其他操作占用，请稍后重试。
    public static var resourceInUse_ResourceAlreadyLocked: TCTemError {
        TCTemError(.resourceInUse_ResourceAlreadyLocked)
    }

    /// 资源已绑定。
    public static var resourceInUse_ResourceAlreadyUsed: TCTemError {
        TCTemError(.resourceInUse_ResourceAlreadyUsed)
    }

    /// 服务部署中。
    public static var resourceInUse_ServiceDeploying: TCTemError {
        TCTemError(.resourceInUse_ServiceDeploying)
    }

    /// 配置不存在。
    public static var resourceNotFound_ConfigDataNotFound: TCTemError {
        TCTemError(.resourceNotFound_ConfigDataNotFound)
    }

    /// 未提供该接口。
    public static var resourceNotFound_InterfaceNotFound: TCTemError {
        TCTemError(.resourceNotFound_InterfaceNotFound)
    }

    /// 日志配置不存在。
    public static var resourceNotFound_LogConfigNotFound: TCTemError {
        TCTemError(.resourceNotFound_LogConfigNotFound)
    }

    /// 目标微服务已离线。
    public static var resourceNotFound_MicroserviceOffline: TCTemError {
        TCTemError(.resourceNotFound_MicroserviceOffline)
    }

    /// 环境不存在。
    public static var resourceNotFound_NamespaceNotFound: TCTemError {
        TCTemError(.resourceNotFound_NamespaceNotFound)
    }

    /// 找不到应用。
    public static var resourceNotFound_ServiceNotFound: TCTemError {
        TCTemError(.resourceNotFound_ServiceNotFound)
    }

    /// 找不到运行的服务实例。
    public static var resourceNotFound_ServiceRunningVersionNotFound: TCTemError {
        TCTemError(.resourceNotFound_ServiceRunningVersionNotFound)
    }

    /// 找不到版本对应的环境。
    public static var resourceNotFound_VersionNamespaceNotFound: TCTemError {
        TCTemError(.resourceNotFound_VersionNamespaceNotFound)
    }

    /// 找不到版本对应的应用。
    public static var resourceNotFound_VersionServiceNotFound: TCTemError {
        TCTemError(.resourceNotFound_VersionServiceNotFound)
    }

    /// 有资源依赖，无法直接删除应用。
    public static var resourceUnavailable_ApplicationNotDeletable: TCTemError {
        TCTemError(.resourceUnavailable_ApplicationNotDeletable)
    }

    /// 应用已停止。
    public static var resourceUnavailable_ApplicationStopped: TCTemError {
        TCTemError(.resourceUnavailable_ApplicationStopped)
    }

    /// 等待组件安装。
    public static var resourceUnavailable_WaitForKruise: TCTemError {
        TCTemError(.resourceUnavailable_WaitForKruise)
    }

    /// 缺少容器服务的 CLS 日志角色，请打开控制台授权。
    public static var unauthorizedOperation_MissingEksLogRole: TCTemError {
        TCTemError(.unauthorizedOperation_MissingEksLogRole)
    }

    /// 未授权。
    public static var unauthorizedOperation_UnauthorizedOperation: TCTemError {
        TCTemError(.unauthorizedOperation_UnauthorizedOperation)
    }

    /// 不支持的ACTION。
    public static var unsupportedOperation_UnsupportAction: TCTemError {
        TCTemError(.unsupportedOperation_UnsupportAction)
    }

    public func asTemError() -> TCTemError {
        return self
    }
}
