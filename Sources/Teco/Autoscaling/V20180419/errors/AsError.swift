public struct TCAsError: TCErrorType {
    enum Code: String {
        case accountQualificationRestrictions = "AccountQualificationRestrictions"
        case callCvmError = "CallCvmError"
        case failedOperation_NoActivityToGenerate = "FailedOperation.NoActivityToGenerate"
        case internalError = "InternalError"
        case internalError_CallCmqError = "InternalError.CallCmqError"
        case internalError_CallError = "InternalError.CallError"
        case internalError_CallLbError = "InternalError.CallLbError"
        case internalError_CallMonitorError = "InternalError.CallMonitorError"
        case internalError_CallNotificationError = "InternalError.CallNotificationError"
        case internalError_CallStsError = "InternalError.CallStsError"
        case internalError_CallTATError = "InternalError.CallTATError"
        case internalError_CallTagError = "InternalError.CallTagError"
        case internalError_CallTvpcError = "InternalError.CallTvpcError"
        case internalError_CallVpcError = "InternalError.CallVpcError"
        case internalError_CalleeError = "InternalError.CalleeError"
        case internalError_RequestError = "InternalError.RequestError"
        case invalidImageId_NotFound = "InvalidImageId.NotFound"
        case invalidLaunchConfiguration = "InvalidLaunchConfiguration"
        case invalidLaunchConfigurationId = "InvalidLaunchConfigurationId"
        case invalidParameter = "InvalidParameter"
        case invalidParameterConflict = "InvalidParameterConflict"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AccountNotSupportBandwidthPackageId = "InvalidParameterValue.AccountNotSupportBandwidthPackageId"
        case invalidParameterValue_BaseCapacityTooLarge = "InvalidParameterValue.BaseCapacityTooLarge"
        case invalidParameterValue_ClassicLb = "InvalidParameterValue.ClassicLb"
        case invalidParameterValue_ConflictNotificationTarget = "InvalidParameterValue.ConflictNotificationTarget"
        case invalidParameterValue_CronExpressionIllegal = "InvalidParameterValue.CronExpressionIllegal"
        case invalidParameterValue_CvmConfigurationError = "InvalidParameterValue.CvmConfigurationError"
        case invalidParameterValue_CvmError = "InvalidParameterValue.CvmError"
        case invalidParameterValue_DuplicatedForwardLb = "InvalidParameterValue.DuplicatedForwardLb"
        case invalidParameterValue_DuplicatedSubnet = "InvalidParameterValue.DuplicatedSubnet"
        case invalidParameterValue_EndTimeBeforeStartTime = "InvalidParameterValue.EndTimeBeforeStartTime"
        case invalidParameterValue_Filter = "InvalidParameterValue.Filter"
        case invalidParameterValue_ForwardLb = "InvalidParameterValue.ForwardLb"
        case invalidParameterValue_GroupNameDuplicated = "InvalidParameterValue.GroupNameDuplicated"
        case invalidParameterValue_HostNameIllegal = "InvalidParameterValue.HostNameIllegal"
        case invalidParameterValue_IPv6InternetChargeType = "InvalidParameterValue.IPv6InternetChargeType"
        case invalidParameterValue_ImageNotFound = "InvalidParameterValue.ImageNotFound"
        case invalidParameterValue_InstanceNameIllegal = "InvalidParameterValue.InstanceNameIllegal"
        case invalidParameterValue_InstanceTypeNotSupported = "InvalidParameterValue.InstanceTypeNotSupported"
        case invalidParameterValue_InvalidActivityId = "InvalidParameterValue.InvalidActivityId"
        case invalidParameterValue_InvalidAutoScalingGroupId = "InvalidParameterValue.InvalidAutoScalingGroupId"
        case invalidParameterValue_InvalidAutoScalingNotificationId = "InvalidParameterValue.InvalidAutoScalingNotificationId"
        case invalidParameterValue_InvalidAutoScalingPolicyId = "InvalidParameterValue.InvalidAutoScalingPolicyId"
        case invalidParameterValue_InvalidClbRegion = "InvalidParameterValue.InvalidClbRegion"
        case invalidParameterValue_InvalidFilter = "InvalidParameterValue.InvalidFilter"
        case invalidParameterValue_InvalidHpcClusterId = "InvalidParameterValue.InvalidHpcClusterId"
        case invalidParameterValue_InvalidImageId = "InvalidParameterValue.InvalidImageId"
        case invalidParameterValue_InvalidInstanceId = "InvalidParameterValue.InvalidInstanceId"
        case invalidParameterValue_InvalidInstanceType = "InvalidParameterValue.InvalidInstanceType"
        case invalidParameterValue_InvalidLaunchConfiguration = "InvalidParameterValue.InvalidLaunchConfiguration"
        case invalidParameterValue_InvalidLaunchConfigurationId = "InvalidParameterValue.InvalidLaunchConfigurationId"
        case invalidParameterValue_InvalidLifecycleHookId = "InvalidParameterValue.InvalidLifecycleHookId"
        case invalidParameterValue_InvalidNotificationUserGroupId = "InvalidParameterValue.InvalidNotificationUserGroupId"
        case invalidParameterValue_InvalidScheduledActionId = "InvalidParameterValue.InvalidScheduledActionId"
        case invalidParameterValue_InvalidScheduledActionNameIncludeIllegalChar = "InvalidParameterValue.InvalidScheduledActionNameIncludeIllegalChar"
        case invalidParameterValue_InvalidSecurityGroupId = "InvalidParameterValue.InvalidSecurityGroupId"
        case invalidParameterValue_InvalidSnapshotId = "InvalidParameterValue.InvalidSnapshotId"
        case invalidParameterValue_InvalidSubnetId = "InvalidParameterValue.InvalidSubnetId"
        case invalidParameterValue_LaunchConfigurationNameDuplicated = "InvalidParameterValue.LaunchConfigurationNameDuplicated"
        case invalidParameterValue_LaunchConfigurationNotFound = "InvalidParameterValue.LaunchConfigurationNotFound"
        case invalidParameterValue_LbProjectInconsistent = "InvalidParameterValue.LbProjectInconsistent"
        case invalidParameterValue_LifecycleHookNameDuplicated = "InvalidParameterValue.LifecycleHookNameDuplicated"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameterValue_MissingBandwidthPackageId = "InvalidParameterValue.MissingBandwidthPackageId"
        case invalidParameterValue_NoResourcePermission = "InvalidParameterValue.NoResourcePermission"
        case invalidParameterValue_NotStringTypeFloat = "InvalidParameterValue.NotStringTypeFloat"
        case invalidParameterValue_OnlyVpc = "InvalidParameterValue.OnlyVpc"
        case invalidParameterValue_ProjectIdNotFound = "InvalidParameterValue.ProjectIdNotFound"
        case invalidParameterValue_Range = "InvalidParameterValue.Range"
        case invalidParameterValue_ScalingPolicyNameDuplicate = "InvalidParameterValue.ScalingPolicyNameDuplicate"
        case invalidParameterValue_ScheduledActionNameDuplicate = "InvalidParameterValue.ScheduledActionNameDuplicate"
        case invalidParameterValue_Size = "InvalidParameterValue.Size"
        case invalidParameterValue_StartTimeBeforeCurrentTime = "InvalidParameterValue.StartTimeBeforeCurrentTime"
        case invalidParameterValue_SubnetIds = "InvalidParameterValue.SubnetIds"
        case invalidParameterValue_TargetPortDuplicated = "InvalidParameterValue.TargetPortDuplicated"
        case invalidParameterValue_ThresholdOutOfRange = "InvalidParameterValue.ThresholdOutOfRange"
        case invalidParameterValue_TimeFormat = "InvalidParameterValue.TimeFormat"
        case invalidParameterValue_TooLong = "InvalidParameterValue.TooLong"
        case invalidParameterValue_TooShort = "InvalidParameterValue.TooShort"
        case invalidParameterValue_UserDataFormatError = "InvalidParameterValue.UserDataFormatError"
        case invalidParameterValue_UserDataSizeExceeded = "InvalidParameterValue.UserDataSizeExceeded"
        case invalidParameterValue_UserGroupIdNotFound = "InvalidParameterValue.UserGroupIdNotFound"
        case invalidParameterValue_ZoneMismatchRegion = "InvalidParameterValue.ZoneMismatchRegion"
        case invalidParameter_ActionNotFound = "InvalidParameter.ActionNotFound"
        case invalidParameter_Conflict = "InvalidParameter.Conflict"
        case invalidParameter_HostNameUnavailable = "InvalidParameter.HostNameUnavailable"
        case invalidParameter_InScenario = "InvalidParameter.InScenario"
        case invalidParameter_InvalidCombination = "InvalidParameter.InvalidCombination"
        case invalidParameter_LoadBalancerNotInAutoScalingGroup = "InvalidParameter.LoadBalancerNotInAutoScalingGroup"
        case invalidParameter_MustOneParameter = "InvalidParameter.MustOneParameter"
        case invalidParameter_ParameterDeprecated = "InvalidParameter.ParameterDeprecated"
        case invalidParameter_ParameterMustBeDeleted = "InvalidParameter.ParameterMustBeDeleted"
        case invalidPermission = "InvalidPermission"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_AfterAttachLbLimitExceeded = "LimitExceeded.AfterAttachLbLimitExceeded"
        case limitExceeded_AutoScalingGroupLimitExceeded = "LimitExceeded.AutoScalingGroupLimitExceeded"
        case limitExceeded_DesiredCapacityLimitExceeded = "LimitExceeded.DesiredCapacityLimitExceeded"
        case limitExceeded_FilterValuesTooLong = "LimitExceeded.FilterValuesTooLong"
        case limitExceeded_LaunchConfigurationQuotaNotEnough = "LimitExceeded.LaunchConfigurationQuotaNotEnough"
        case limitExceeded_MaxSizeLimitExceeded = "LimitExceeded.MaxSizeLimitExceeded"
        case limitExceeded_MinSizeLimitExceeded = "LimitExceeded.MinSizeLimitExceeded"
        case limitExceeded_QuotaNotEnough = "LimitExceeded.QuotaNotEnough"
        case limitExceeded_ScheduledActionLimitExceeded = "LimitExceeded.ScheduledActionLimitExceeded"
        case missingParameter = "MissingParameter"
        case missingParameter_InScenario = "MissingParameter.InScenario"
        case missingParameter_InstanceMarketOptions = "MissingParameter.InstanceMarketOptions"
        case resourceInUse_ActivityInProgress = "ResourceInUse.ActivityInProgress"
        case resourceInUse_AutoScalingGroupNotActive = "ResourceInUse.AutoScalingGroupNotActive"
        case resourceInUse_InstanceInGroup = "ResourceInUse.InstanceInGroup"
        case resourceInUse_LaunchConfigurationIdInUse = "ResourceInUse.LaunchConfigurationIdInUse"
        case resourceInsufficient_AutoScalingGroupAboveMaxSize = "ResourceInsufficient.AutoScalingGroupAboveMaxSize"
        case resourceInsufficient_AutoScalingGroupBelowMinSize = "ResourceInsufficient.AutoScalingGroupBelowMinSize"
        case resourceInsufficient_InServiceInstanceAboveMaxSize = "ResourceInsufficient.InServiceInstanceAboveMaxSize"
        case resourceInsufficient_InServiceInstanceBelowMinSize = "ResourceInsufficient.InServiceInstanceBelowMinSize"
        case resourceNotFound_AutoScalingGroupNotFound = "ResourceNotFound.AutoScalingGroupNotFound"
        case resourceNotFound_AutoScalingNotificationNotFound = "ResourceNotFound.AutoScalingNotificationNotFound"
        case resourceNotFound_BandwidthPackageIdNotFound = "ResourceNotFound.BandwidthPackageIdNotFound"
        case resourceNotFound_CmqQueueNotFound = "ResourceNotFound.CmqQueueNotFound"
        case resourceNotFound_CommandNotFound = "ResourceNotFound.CommandNotFound"
        case resourceNotFound_InstancesNotFound = "ResourceNotFound.InstancesNotFound"
        case resourceNotFound_InstancesNotInAutoScalingGroup = "ResourceNotFound.InstancesNotInAutoScalingGroup"
        case resourceNotFound_LaunchConfigurationIdNotFound = "ResourceNotFound.LaunchConfigurationIdNotFound"
        case resourceNotFound_LifecycleHookInstanceNotFound = "ResourceNotFound.LifecycleHookInstanceNotFound"
        case resourceNotFound_LifecycleHookNotFound = "ResourceNotFound.LifecycleHookNotFound"
        case resourceNotFound_ListenerNotFound = "ResourceNotFound.ListenerNotFound"
        case resourceNotFound_LoadBalancerNotFound = "ResourceNotFound.LoadBalancerNotFound"
        case resourceNotFound_LoadBalancerNotInAutoScalingGroup = "ResourceNotFound.LoadBalancerNotInAutoScalingGroup"
        case resourceNotFound_LocationNotFound = "ResourceNotFound.LocationNotFound"
        case resourceNotFound_ScalingPolicyNotFound = "ResourceNotFound.ScalingPolicyNotFound"
        case resourceNotFound_ScheduledActionNotFound = "ResourceNotFound.ScheduledActionNotFound"
        case resourceNotFound_TDMQCMQQueueNotFound = "ResourceNotFound.TDMQCMQQueueNotFound"
        case resourceNotFound_TDMQCMQTopicNotFound = "ResourceNotFound.TDMQCMQTopicNotFound"
        case resourceUnavailable_AutoScalingGroupAbnormalStatus = "ResourceUnavailable.AutoScalingGroupAbnormalStatus"
        case resourceUnavailable_AutoScalingGroupDisabled = "ResourceUnavailable.AutoScalingGroupDisabled"
        case resourceUnavailable_AutoScalingGroupInActivity = "ResourceUnavailable.AutoScalingGroupInActivity"
        case resourceUnavailable_CmqTopicHasNoSubscriber = "ResourceUnavailable.CmqTopicHasNoSubscriber"
        case resourceUnavailable_CvmVpcInconsistent = "ResourceUnavailable.CvmVpcInconsistent"
        case resourceUnavailable_InstanceCannotAttach = "ResourceUnavailable.InstanceCannotAttach"
        case resourceUnavailable_InstanceInOperation = "ResourceUnavailable.InstanceInOperation"
        case resourceUnavailable_InstanceNotSupportStopCharging = "ResourceUnavailable.InstanceNotSupportStopCharging"
        case resourceUnavailable_InstancesAlreadyInAutoScalingGroup = "ResourceUnavailable.InstancesAlreadyInAutoScalingGroup"
        case resourceUnavailable_LaunchConfigurationStatusAbnormal = "ResourceUnavailable.LaunchConfigurationStatusAbnormal"
        case resourceUnavailable_LbBackendRegionInconsistent = "ResourceUnavailable.LbBackendRegionInconsistent"
        case resourceUnavailable_LbProjectInconsistent = "ResourceUnavailable.LbProjectInconsistent"
        case resourceUnavailable_LbVpcInconsistent = "ResourceUnavailable.LbVpcInconsistent"
        case resourceUnavailable_LifecycleActionResultHasSet = "ResourceUnavailable.LifecycleActionResultHasSet"
        case resourceUnavailable_LoadBalancerInOperation = "ResourceUnavailable.LoadBalancerInOperation"
        case resourceUnavailable_ProjectInconsistent = "ResourceUnavailable.ProjectInconsistent"
        case resourceUnavailable_StoppedInstanceNotAllowAttach = "ResourceUnavailable.StoppedInstanceNotAllowAttach"
        case resourceUnavailable_TDMQCMQTopicHasNoSubscriber = "ResourceUnavailable.TDMQCMQTopicHasNoSubscriber"
        case resourceUnavailable_ZoneUnavailable = "ResourceUnavailable.ZoneUnavailable"
        case unsupportedOperation = "UnsupportedOperation"
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
    /// Initializer used by ``TCClient`` to match an error of this type.
    ///
    /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
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
    
    /// 该请求账户未通过资格审计。
    public static var accountQualificationRestrictions: TCAsError {
        TCAsError(.accountQualificationRestrictions)
    }
    
    /// CVM接口调用失败。
    public static var callCvmError: TCAsError {
        TCAsError(.callCvmError)
    }
    
    /// 未生成伸缩活动。
    public static var failedOperation_NoActivityToGenerate: TCAsError {
        TCAsError(.failedOperation_NoActivityToGenerate)
    }
    
    /// 内部错误。
    public static var internalError: TCAsError {
        TCAsError(.internalError)
    }
    
    /// Cmq 接口调用失败。
    public static var internalError_CallCmqError: TCAsError {
        TCAsError(.internalError_CallCmqError)
    }
    
    /// 内部接口调用失败。
    public static var internalError_CallError: TCAsError {
        TCAsError(.internalError_CallError)
    }
    
    /// LB 接口调用失败。
    public static var internalError_CallLbError: TCAsError {
        TCAsError(.internalError_CallLbError)
    }
    
    /// Monitor接口调用失败。
    public static var internalError_CallMonitorError: TCAsError {
        TCAsError(.internalError_CallMonitorError)
    }
    
    /// 通知服务接口调用失败。
    public static var internalError_CallNotificationError: TCAsError {
        TCAsError(.internalError_CallNotificationError)
    }
    
    /// STS 接口调用失败。
    public static var internalError_CallStsError: TCAsError {
        TCAsError(.internalError_CallStsError)
    }
    
    public static var internalError_CallTATError: TCAsError {
        TCAsError(.internalError_CallTATError)
    }
    
    /// Tag 接口调用失败。
    public static var internalError_CallTagError: TCAsError {
        TCAsError(.internalError_CallTagError)
    }
    
    /// Tvpc 接口调用失败。
    public static var internalError_CallTvpcError: TCAsError {
        TCAsError(.internalError_CallTvpcError)
    }
    
    /// VPC接口调用失败。
    public static var internalError_CallVpcError: TCAsError {
        TCAsError(.internalError_CallVpcError)
    }
    
    /// 调用其他服务异常。
    public static var internalError_CalleeError: TCAsError {
        TCAsError(.internalError_CalleeError)
    }
    
    /// 内部请求错误。
    public static var internalError_RequestError: TCAsError {
        TCAsError(.internalError_RequestError)
    }
    
    /// 未找到该镜像。
    public static var invalidImageId_NotFound: TCAsError {
        TCAsError(.invalidImageId_NotFound)
    }
    
    /// 无效的启动配置。
    public static var invalidLaunchConfiguration: TCAsError {
        TCAsError(.invalidLaunchConfiguration)
    }
    
    /// 启动配置ID无效。
    public static var invalidLaunchConfigurationId: TCAsError {
        TCAsError(.invalidLaunchConfigurationId)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCAsError {
        TCAsError(.invalidParameter)
    }
    
    /// 指定的两个参数冲突，不能同时存在。
    public static var invalidParameterConflict: TCAsError {
        TCAsError(.invalidParameterConflict)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCAsError {
        TCAsError(.invalidParameterValue)
    }
    
    public static var invalidParameterValue_AccountNotSupportBandwidthPackageId: TCAsError {
        TCAsError(.invalidParameterValue_AccountNotSupportBandwidthPackageId)
    }
    
    /// 指定的基础容量过大，需小于等于最大实例数。
    public static var invalidParameterValue_BaseCapacityTooLarge: TCAsError {
        TCAsError(.invalidParameterValue_BaseCapacityTooLarge)
    }
    
    /// 在应当指定传统型负载均衡器的参数中，错误地指定了一个非传统型的负载均衡器。
    public static var invalidParameterValue_ClassicLb: TCAsError {
        TCAsError(.invalidParameterValue_ClassicLb)
    }
    
    /// 通知接收端类型冲突。
    ///
    /// 请根据通知接收端类型，设置匹配的接收对象。
    public static var invalidParameterValue_ConflictNotificationTarget: TCAsError {
        TCAsError(.invalidParameterValue_ConflictNotificationTarget)
    }
    
    /// 定时任务指定的Cron表达式无效。
    public static var invalidParameterValue_CronExpressionIllegal: TCAsError {
        TCAsError(.invalidParameterValue_CronExpressionIllegal)
    }
    
    /// CVM参数校验异常。
    public static var invalidParameterValue_CvmConfigurationError: TCAsError {
        TCAsError(.invalidParameterValue_CvmConfigurationError)
    }
    
    /// CVM参数校验异常。
    public static var invalidParameterValue_CvmError: TCAsError {
        TCAsError(.invalidParameterValue_CvmError)
    }
    
    /// 提供的应用型负载均衡器重复。
    public static var invalidParameterValue_DuplicatedForwardLb: TCAsError {
        TCAsError(.invalidParameterValue_DuplicatedForwardLb)
    }
    
    /// 指定的子网重复。
    public static var invalidParameterValue_DuplicatedSubnet: TCAsError {
        TCAsError(.invalidParameterValue_DuplicatedSubnet)
    }
    
    /// 定时任务设置的结束时间在开始时间。
    public static var invalidParameterValue_EndTimeBeforeStartTime: TCAsError {
        TCAsError(.invalidParameterValue_EndTimeBeforeStartTime)
    }
    
    /// 无效的过滤器。
    public static var invalidParameterValue_Filter: TCAsError {
        TCAsError(.invalidParameterValue_Filter)
    }
    
    /// 在应当指定应用型负载均衡器的参数中，错误地指定了一个非应用型的负载均衡器。
    public static var invalidParameterValue_ForwardLb: TCAsError {
        TCAsError(.invalidParameterValue_ForwardLb)
    }
    
    /// 伸缩组名称重复。
    public static var invalidParameterValue_GroupNameDuplicated: TCAsError {
        TCAsError(.invalidParameterValue_GroupNameDuplicated)
    }
    
    /// 主机名不合法。
    public static var invalidParameterValue_HostNameIllegal: TCAsError {
        TCAsError(.invalidParameterValue_HostNameIllegal)
    }
    
    public static var invalidParameterValue_IPv6InternetChargeType: TCAsError {
        TCAsError(.invalidParameterValue_IPv6InternetChargeType)
    }
    
    /// 指定的镜像不存在。
    ///
    /// 请尝试更换镜像。
    public static var invalidParameterValue_ImageNotFound: TCAsError {
        TCAsError(.invalidParameterValue_ImageNotFound)
    }
    
    /// 设置的实例名称不合法。
    public static var invalidParameterValue_InstanceNameIllegal: TCAsError {
        TCAsError(.invalidParameterValue_InstanceNameIllegal)
    }
    
    /// 实例机型不支持。
    public static var invalidParameterValue_InstanceTypeNotSupported: TCAsError {
        TCAsError(.invalidParameterValue_InstanceTypeNotSupported)
    }
    
    /// 伸缩活动ID无效。
    public static var invalidParameterValue_InvalidActivityId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidActivityId)
    }
    
    /// 伸缩组ID无效。
    public static var invalidParameterValue_InvalidAutoScalingGroupId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidAutoScalingGroupId)
    }
    
    /// 通知ID无效。
    public static var invalidParameterValue_InvalidAutoScalingNotificationId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidAutoScalingNotificationId)
    }
    
    /// 告警策略ID无效。
    public static var invalidParameterValue_InvalidAutoScalingPolicyId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidAutoScalingPolicyId)
    }
    
    /// 为CLB指定的地域不合法。
    public static var invalidParameterValue_InvalidClbRegion: TCAsError {
        TCAsError(.invalidParameterValue_InvalidClbRegion)
    }
    
    /// 过滤条件无效。
    public static var invalidParameterValue_InvalidFilter: TCAsError {
        TCAsError(.invalidParameterValue_InvalidFilter)
    }
    
    public static var invalidParameterValue_InvalidHpcClusterId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidHpcClusterId)
    }
    
    /// 镜像ID无效。
    public static var invalidParameterValue_InvalidImageId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidImageId)
    }
    
    /// 实例ID无效。
    public static var invalidParameterValue_InvalidInstanceId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidInstanceId)
    }
    
    /// 实例机型无效。
    public static var invalidParameterValue_InvalidInstanceType: TCAsError {
        TCAsError(.invalidParameterValue_InvalidInstanceType)
    }
    
    /// 输入的启动配置无效。
    ///
    /// 请确认启动配置信息的完整性及正确性。
    public static var invalidParameterValue_InvalidLaunchConfiguration: TCAsError {
        TCAsError(.invalidParameterValue_InvalidLaunchConfiguration)
    }
    
    /// 启动配置ID无效。
    public static var invalidParameterValue_InvalidLaunchConfigurationId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidLaunchConfigurationId)
    }
    
    /// 生命周期挂钩ID无效。
    public static var invalidParameterValue_InvalidLifecycleHookId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidLifecycleHookId)
    }
    
    /// 指定的通知组 ID 不是数值字符串格式。
    public static var invalidParameterValue_InvalidNotificationUserGroupId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidNotificationUserGroupId)
    }
    
    /// 定时任务ID无效。
    public static var invalidParameterValue_InvalidScheduledActionId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidScheduledActionId)
    }
    
    /// 定时任务名称包含无效字符。
    public static var invalidParameterValue_InvalidScheduledActionNameIncludeIllegalChar: TCAsError {
        TCAsError(.invalidParameterValue_InvalidScheduledActionNameIncludeIllegalChar)
    }
    
    public static var invalidParameterValue_InvalidSecurityGroupId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidSecurityGroupId)
    }
    
    /// 快照ID无效。
    public static var invalidParameterValue_InvalidSnapshotId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidSnapshotId)
    }
    
    /// 子网ID无效。
    public static var invalidParameterValue_InvalidSubnetId: TCAsError {
        TCAsError(.invalidParameterValue_InvalidSubnetId)
    }
    
    /// 启动配置名称重复。
    public static var invalidParameterValue_LaunchConfigurationNameDuplicated: TCAsError {
        TCAsError(.invalidParameterValue_LaunchConfigurationNameDuplicated)
    }
    
    /// 找不到指定启动配置。
    public static var invalidParameterValue_LaunchConfigurationNotFound: TCAsError {
        TCAsError(.invalidParameterValue_LaunchConfigurationNotFound)
    }
    
    /// 负载均衡器项目不一致。
    public static var invalidParameterValue_LbProjectInconsistent: TCAsError {
        TCAsError(.invalidParameterValue_LbProjectInconsistent)
    }
    
    /// 生命周期挂钩名称重复。
    public static var invalidParameterValue_LifecycleHookNameDuplicated: TCAsError {
        TCAsError(.invalidParameterValue_LifecycleHookNameDuplicated)
    }
    
    /// 取值超出限制。
    public static var invalidParameterValue_LimitExceeded: TCAsError {
        TCAsError(.invalidParameterValue_LimitExceeded)
    }
    
    public static var invalidParameterValue_MissingBandwidthPackageId: TCAsError {
        TCAsError(.invalidParameterValue_MissingBandwidthPackageId)
    }
    
    /// 无资源权限。
    public static var invalidParameterValue_NoResourcePermission: TCAsError {
        TCAsError(.invalidParameterValue_NoResourcePermission)
    }
    
    /// 提供的值不是浮点字符串格式。
    public static var invalidParameterValue_NotStringTypeFloat: TCAsError {
        TCAsError(.invalidParameterValue_NotStringTypeFloat)
    }
    
    /// 账号仅支持VPC网络。
    public static var invalidParameterValue_OnlyVpc: TCAsError {
        TCAsError(.invalidParameterValue_OnlyVpc)
    }
    
    /// 项目ID不存在。
    public static var invalidParameterValue_ProjectIdNotFound: TCAsError {
        TCAsError(.invalidParameterValue_ProjectIdNotFound)
    }
    
    /// 取值超出指定范围。
    public static var invalidParameterValue_Range: TCAsError {
        TCAsError(.invalidParameterValue_Range)
    }
    
    /// 告警策略名称重复。
    public static var invalidParameterValue_ScalingPolicyNameDuplicate: TCAsError {
        TCAsError(.invalidParameterValue_ScalingPolicyNameDuplicate)
    }
    
    /// 定时任务名称重复。
    public static var invalidParameterValue_ScheduledActionNameDuplicate: TCAsError {
        TCAsError(.invalidParameterValue_ScheduledActionNameDuplicate)
    }
    
    /// 伸缩组最大数量、最小数量、期望实例数取值不合法。
    public static var invalidParameterValue_Size: TCAsError {
        TCAsError(.invalidParameterValue_Size)
    }
    
    /// 定时任务设置的开始时间在当前时间之前。
    public static var invalidParameterValue_StartTimeBeforeCurrentTime: TCAsError {
        TCAsError(.invalidParameterValue_StartTimeBeforeCurrentTime)
    }
    
    /// 子网信息不合法。
    public static var invalidParameterValue_SubnetIds: TCAsError {
        TCAsError(.invalidParameterValue_SubnetIds)
    }
    
    /// 负载均衡器四层监听器的后端端口重复。
    public static var invalidParameterValue_TargetPortDuplicated: TCAsError {
        TCAsError(.invalidParameterValue_TargetPortDuplicated)
    }
    
    /// 指定的阈值不在有效范围。
    public static var invalidParameterValue_ThresholdOutOfRange: TCAsError {
        TCAsError(.invalidParameterValue_ThresholdOutOfRange)
    }
    
    /// 时间格式错误。
    public static var invalidParameterValue_TimeFormat: TCAsError {
        TCAsError(.invalidParameterValue_TimeFormat)
    }
    
    /// 取值过多。
    public static var invalidParameterValue_TooLong: TCAsError {
        TCAsError(.invalidParameterValue_TooLong)
    }
    
    /// 输入参数值的长度小于最小值。
    public static var invalidParameterValue_TooShort: TCAsError {
        TCAsError(.invalidParameterValue_TooShort)
    }
    
    /// UserData格式错误。
    public static var invalidParameterValue_UserDataFormatError: TCAsError {
        TCAsError(.invalidParameterValue_UserDataFormatError)
    }
    
    /// UserData长度过长。
    public static var invalidParameterValue_UserDataSizeExceeded: TCAsError {
        TCAsError(.invalidParameterValue_UserDataSizeExceeded)
    }
    
    /// 用户组不存在。
    public static var invalidParameterValue_UserGroupIdNotFound: TCAsError {
        TCAsError(.invalidParameterValue_UserGroupIdNotFound)
    }
    
    /// 指定的可用区与地域不匹配。
    public static var invalidParameterValue_ZoneMismatchRegion: TCAsError {
        TCAsError(.invalidParameterValue_ZoneMismatchRegion)
    }
    
    /// 请检查Action参数是否正确。
    public static var invalidParameter_ActionNotFound: TCAsError {
        TCAsError(.invalidParameter_ActionNotFound)
    }
    
    /// 参数冲突，指定的多个参数冲突，不能同时存在。
    public static var invalidParameter_Conflict: TCAsError {
        TCAsError(.invalidParameter_Conflict)
    }
    
    /// 主机名参数不适用于该镜像。
    public static var invalidParameter_HostNameUnavailable: TCAsError {
        TCAsError(.invalidParameter_HostNameUnavailable)
    }
    
    /// 在特定场景下的不合法参数。
    public static var invalidParameter_InScenario: TCAsError {
        TCAsError(.invalidParameter_InScenario)
    }
    
    /// 无效的参数组合。
    public static var invalidParameter_InvalidCombination: TCAsError {
        TCAsError(.invalidParameter_InvalidCombination)
    }
    
    /// 指定的负载均衡器在当前伸缩组中没有找到。
    public static var invalidParameter_LoadBalancerNotInAutoScalingGroup: TCAsError {
        TCAsError(.invalidParameter_LoadBalancerNotInAutoScalingGroup)
    }
    
    /// 参数缺失，两种参数之中必须指定其中一个。
    public static var invalidParameter_MustOneParameter: TCAsError {
        TCAsError(.invalidParameter_MustOneParameter)
    }
    
    public static var invalidParameter_ParameterDeprecated: TCAsError {
        TCAsError(.invalidParameter_ParameterDeprecated)
    }
    
    /// 部分参数存在互斥应该删掉。
    public static var invalidParameter_ParameterMustBeDeleted: TCAsError {
        TCAsError(.invalidParameter_ParameterMustBeDeleted)
    }
    
    /// 账户不支持该操作。
    public static var invalidPermission: TCAsError {
        TCAsError(.invalidPermission)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCAsError {
        TCAsError(.limitExceeded)
    }
    
    /// 绑定指定的负载均衡器后，伸缩组绑定的负载均衡器总数超过了最大值。
    public static var limitExceeded_AfterAttachLbLimitExceeded: TCAsError {
        TCAsError(.limitExceeded_AfterAttachLbLimitExceeded)
    }
    
    /// 伸缩组数量超过限制。
    public static var limitExceeded_AutoScalingGroupLimitExceeded: TCAsError {
        TCAsError(.limitExceeded_AutoScalingGroupLimitExceeded)
    }
    
    /// 期望实例数超出限制。
    public static var limitExceeded_DesiredCapacityLimitExceeded: TCAsError {
        TCAsError(.limitExceeded_DesiredCapacityLimitExceeded)
    }
    
    /// 特定过滤器的值过多。
    public static var limitExceeded_FilterValuesTooLong: TCAsError {
        TCAsError(.limitExceeded_FilterValuesTooLong)
    }
    
    /// 启动配置配额不足。
    ///
    /// 如需提升配额，请提工单。
    public static var limitExceeded_LaunchConfigurationQuotaNotEnough: TCAsError {
        TCAsError(.limitExceeded_LaunchConfigurationQuotaNotEnough)
    }
    
    /// 最大实例数大于限制。
    public static var limitExceeded_MaxSizeLimitExceeded: TCAsError {
        TCAsError(.limitExceeded_MaxSizeLimitExceeded)
    }
    
    /// 最小实例数低于限制。
    public static var limitExceeded_MinSizeLimitExceeded: TCAsError {
        TCAsError(.limitExceeded_MinSizeLimitExceeded)
    }
    
    /// 当前剩余配额不足。
    public static var limitExceeded_QuotaNotEnough: TCAsError {
        TCAsError(.limitExceeded_QuotaNotEnough)
    }
    
    /// 定时任务数量超过限制。
    public static var limitExceeded_ScheduledActionLimitExceeded: TCAsError {
        TCAsError(.limitExceeded_ScheduledActionLimitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCAsError {
        TCAsError(.missingParameter)
    }
    
    /// 在特定场景下缺少参数。
    public static var missingParameter_InScenario: TCAsError {
        TCAsError(.missingParameter_InScenario)
    }
    
    /// 竞价计费类型缺少对应的 InstanceMarketOptions 参数。
    public static var missingParameter_InstanceMarketOptions: TCAsError {
        TCAsError(.missingParameter_InstanceMarketOptions)
    }
    
    /// 伸缩组正在执行伸缩活动。
    public static var resourceInUse_ActivityInProgress: TCAsError {
        TCAsError(.resourceInUse_ActivityInProgress)
    }
    
    /// 伸缩组处于禁用状态。
    public static var resourceInUse_AutoScalingGroupNotActive: TCAsError {
        TCAsError(.resourceInUse_AutoScalingGroupNotActive)
    }
    
    /// 伸缩组内尚有正常实例。
    public static var resourceInUse_InstanceInGroup: TCAsError {
        TCAsError(.resourceInUse_InstanceInGroup)
    }
    
    /// 指定的启动配置仍在伸缩组中使用。
    public static var resourceInUse_LaunchConfigurationIdInUse: TCAsError {
        TCAsError(.resourceInUse_LaunchConfigurationIdInUse)
    }
    
    /// 超过伸缩组最大实例数。
    public static var resourceInsufficient_AutoScalingGroupAboveMaxSize: TCAsError {
        TCAsError(.resourceInsufficient_AutoScalingGroupAboveMaxSize)
    }
    
    /// 少于伸缩组最小实例数。
    public static var resourceInsufficient_AutoScalingGroupBelowMinSize: TCAsError {
        TCAsError(.resourceInsufficient_AutoScalingGroupBelowMinSize)
    }
    
    /// 伸缩组内实例数超过最大实例数。
    public static var resourceInsufficient_InServiceInstanceAboveMaxSize: TCAsError {
        TCAsError(.resourceInsufficient_InServiceInstanceAboveMaxSize)
    }
    
    /// 伸缩组内实例数低于最小实例数。
    public static var resourceInsufficient_InServiceInstanceBelowMinSize: TCAsError {
        TCAsError(.resourceInsufficient_InServiceInstanceBelowMinSize)
    }
    
    /// 伸缩组不存在。
    public static var resourceNotFound_AutoScalingGroupNotFound: TCAsError {
        TCAsError(.resourceNotFound_AutoScalingGroupNotFound)
    }
    
    /// 通知不存在。
    public static var resourceNotFound_AutoScalingNotificationNotFound: TCAsError {
        TCAsError(.resourceNotFound_AutoScalingNotificationNotFound)
    }
    
    public static var resourceNotFound_BandwidthPackageIdNotFound: TCAsError {
        TCAsError(.resourceNotFound_BandwidthPackageIdNotFound)
    }
    
    /// 指定的 CMQ queue 不存在。
    ///
    /// 请核实您提供的 queue。
    public static var resourceNotFound_CmqQueueNotFound: TCAsError {
        TCAsError(.resourceNotFound_CmqQueueNotFound)
    }
    
    public static var resourceNotFound_CommandNotFound: TCAsError {
        TCAsError(.resourceNotFound_CommandNotFound)
    }
    
    /// 指定的实例不存在。
    public static var resourceNotFound_InstancesNotFound: TCAsError {
        TCAsError(.resourceNotFound_InstancesNotFound)
    }
    
    /// 目标实例不在伸缩组内。
    public static var resourceNotFound_InstancesNotInAutoScalingGroup: TCAsError {
        TCAsError(.resourceNotFound_InstancesNotInAutoScalingGroup)
    }
    
    /// 指定的启动配置不存在。
    public static var resourceNotFound_LaunchConfigurationIdNotFound: TCAsError {
        TCAsError(.resourceNotFound_LaunchConfigurationIdNotFound)
    }
    
    /// 生命周期挂钩对应实例不存在。
    public static var resourceNotFound_LifecycleHookInstanceNotFound: TCAsError {
        TCAsError(.resourceNotFound_LifecycleHookInstanceNotFound)
    }
    
    /// 无法找到指定生命周期挂钩。
    public static var resourceNotFound_LifecycleHookNotFound: TCAsError {
        TCAsError(.resourceNotFound_LifecycleHookNotFound)
    }
    
    /// 指定的Listener不存在。
    public static var resourceNotFound_ListenerNotFound: TCAsError {
        TCAsError(.resourceNotFound_ListenerNotFound)
    }
    
    /// 找不到指定负载均衡器。
    public static var resourceNotFound_LoadBalancerNotFound: TCAsError {
        TCAsError(.resourceNotFound_LoadBalancerNotFound)
    }
    
    /// 指定的负载均衡器在当前伸缩组中没有找到。
    public static var resourceNotFound_LoadBalancerNotInAutoScalingGroup: TCAsError {
        TCAsError(.resourceNotFound_LoadBalancerNotInAutoScalingGroup)
    }
    
    /// 指定的Location不存在。
    public static var resourceNotFound_LocationNotFound: TCAsError {
        TCAsError(.resourceNotFound_LocationNotFound)
    }
    
    /// 告警策略不存在。
    public static var resourceNotFound_ScalingPolicyNotFound: TCAsError {
        TCAsError(.resourceNotFound_ScalingPolicyNotFound)
    }
    
    /// 指定的定时任务不存在。
    public static var resourceNotFound_ScheduledActionNotFound: TCAsError {
        TCAsError(.resourceNotFound_ScheduledActionNotFound)
    }
    
    /// TDMQ-CMQ 队列不存在。
    public static var resourceNotFound_TDMQCMQQueueNotFound: TCAsError {
        TCAsError(.resourceNotFound_TDMQCMQQueueNotFound)
    }
    
    /// TDMQ-CMQ 主题不存在。
    public static var resourceNotFound_TDMQCMQTopicNotFound: TCAsError {
        TCAsError(.resourceNotFound_TDMQCMQTopicNotFound)
    }
    
    /// 伸缩组状态异常。
    public static var resourceUnavailable_AutoScalingGroupAbnormalStatus: TCAsError {
        TCAsError(.resourceUnavailable_AutoScalingGroupAbnormalStatus)
    }
    
    /// 伸缩组被停用。
    public static var resourceUnavailable_AutoScalingGroupDisabled: TCAsError {
        TCAsError(.resourceUnavailable_AutoScalingGroupDisabled)
    }
    
    /// 伸缩组正在活动中。
    public static var resourceUnavailable_AutoScalingGroupInActivity: TCAsError {
        TCAsError(.resourceUnavailable_AutoScalingGroupInActivity)
    }
    
    /// 指定的 CMQ Topic 无订阅者。
    ///
    /// 请核实您的 Topic。
    public static var resourceUnavailable_CmqTopicHasNoSubscriber: TCAsError {
        TCAsError(.resourceUnavailable_CmqTopicHasNoSubscriber)
    }
    
    /// 实例和伸缩组Vpc不一致。
    public static var resourceUnavailable_CvmVpcInconsistent: TCAsError {
        TCAsError(.resourceUnavailable_CvmVpcInconsistent)
    }
    
    public static var resourceUnavailable_InstanceCannotAttach: TCAsError {
        TCAsError(.resourceUnavailable_InstanceCannotAttach)
    }
    
    /// 指定的实例正在活动中。
    public static var resourceUnavailable_InstanceInOperation: TCAsError {
        TCAsError(.resourceUnavailable_InstanceInOperation)
    }
    
    /// 实例不支持关机不收费。
    public static var resourceUnavailable_InstanceNotSupportStopCharging: TCAsError {
        TCAsError(.resourceUnavailable_InstanceNotSupportStopCharging)
    }
    
    /// 实例已存在于伸缩组中。
    public static var resourceUnavailable_InstancesAlreadyInAutoScalingGroup: TCAsError {
        TCAsError(.resourceUnavailable_InstancesAlreadyInAutoScalingGroup)
    }
    
    /// 启动配置状态异常。
    public static var resourceUnavailable_LaunchConfigurationStatusAbnormal: TCAsError {
        TCAsError(.resourceUnavailable_LaunchConfigurationStatusAbnormal)
    }
    
    /// CLB实例的后端地域与AS服务所在地域不一致。
    public static var resourceUnavailable_LbBackendRegionInconsistent: TCAsError {
        TCAsError(.resourceUnavailable_LbBackendRegionInconsistent)
    }
    
    /// 负载均衡器项目不一致。
    public static var resourceUnavailable_LbProjectInconsistent: TCAsError {
        TCAsError(.resourceUnavailable_LbProjectInconsistent)
    }
    
    /// 负载均衡器VPC与伸缩组不一致。
    public static var resourceUnavailable_LbVpcInconsistent: TCAsError {
        TCAsError(.resourceUnavailable_LbVpcInconsistent)
    }
    
    /// 生命周期动作已经被设置。
    public static var resourceUnavailable_LifecycleActionResultHasSet: TCAsError {
        TCAsError(.resourceUnavailable_LifecycleActionResultHasSet)
    }
    
    /// LB 在指定的伸缩组内处于活动中。
    public static var resourceUnavailable_LoadBalancerInOperation: TCAsError {
        TCAsError(.resourceUnavailable_LoadBalancerInOperation)
    }
    
    /// 项目不一致。
    public static var resourceUnavailable_ProjectInconsistent: TCAsError {
        TCAsError(.resourceUnavailable_ProjectInconsistent)
    }
    
    /// 关机实例不允许添加到伸缩组。
    public static var resourceUnavailable_StoppedInstanceNotAllowAttach: TCAsError {
        TCAsError(.resourceUnavailable_StoppedInstanceNotAllowAttach)
    }
    
    /// TDMQ-CMQ 主题无订阅者。
    public static var resourceUnavailable_TDMQCMQTopicHasNoSubscriber: TCAsError {
        TCAsError(.resourceUnavailable_TDMQCMQTopicHasNoSubscriber)
    }
    
    /// 指定的可用区不可用。
    public static var resourceUnavailable_ZoneUnavailable: TCAsError {
        TCAsError(.resourceUnavailable_ZoneUnavailable)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCAsError {
        TCAsError(.unsupportedOperation)
    }
}

extension TCAsError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidImageId.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, ResourceInUse.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self]
    }
}

extension TCAsError: Equatable {
    public static func == (lhs: TCAsError, rhs: TCAsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAsError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
