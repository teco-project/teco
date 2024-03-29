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

extension TCAsError {
    public struct InvalidParameterValue: TCAsErrorType {
        enum Code: String {
            case accountNotSupportBandwidthPackageId = "InvalidParameterValue.AccountNotSupportBandwidthPackageId"
            case baseCapacityTooLarge = "InvalidParameterValue.BaseCapacityTooLarge"
            case batchNumberTooLarge = "InvalidParameterValue.BatchNumberTooLarge"
            case classicLb = "InvalidParameterValue.ClassicLb"
            case conflictNotificationTarget = "InvalidParameterValue.ConflictNotificationTarget"
            case cronExpressionIllegal = "InvalidParameterValue.CronExpressionIllegal"
            case cvmConfigurationError = "InvalidParameterValue.CvmConfigurationError"
            case cvmError = "InvalidParameterValue.CvmError"
            case duplicatedForwardLb = "InvalidParameterValue.DuplicatedForwardLb"
            case duplicatedSubnet = "InvalidParameterValue.DuplicatedSubnet"
            case endTimeBeforeStartTime = "InvalidParameterValue.EndTimeBeforeStartTime"
            case filter = "InvalidParameterValue.Filter"
            case forwardLb = "InvalidParameterValue.ForwardLb"
            case groupNameDuplicated = "InvalidParameterValue.GroupNameDuplicated"
            case hostNameIllegal = "InvalidParameterValue.HostNameIllegal"
            case iPv6InternetChargeType = "InvalidParameterValue.IPv6InternetChargeType"
            case imageNotFound = "InvalidParameterValue.ImageNotFound"
            case instanceNameIllegal = "InvalidParameterValue.InstanceNameIllegal"
            case instanceTypeNotSupported = "InvalidParameterValue.InstanceTypeNotSupported"
            case invalidActivityId = "InvalidParameterValue.InvalidActivityId"
            case invalidAutoScalingGroupId = "InvalidParameterValue.InvalidAutoScalingGroupId"
            case invalidAutoScalingNotificationId = "InvalidParameterValue.InvalidAutoScalingNotificationId"
            case invalidAutoScalingPolicyId = "InvalidParameterValue.InvalidAutoScalingPolicyId"
            case invalidClbRegion = "InvalidParameterValue.InvalidClbRegion"
            case invalidDisasterRecoverGroupId = "InvalidParameterValue.InvalidDisasterRecoverGroupId"
            case invalidFilter = "InvalidParameterValue.InvalidFilter"
            case invalidHpcClusterId = "InvalidParameterValue.InvalidHpcClusterId"
            case invalidImageId = "InvalidParameterValue.InvalidImageId"
            case invalidInstanceId = "InvalidParameterValue.InvalidInstanceId"
            case invalidInstanceType = "InvalidParameterValue.InvalidInstanceType"
            case invalidLaunchConfiguration = "InvalidParameterValue.InvalidLaunchConfiguration"
            case invalidLaunchConfigurationId = "InvalidParameterValue.InvalidLaunchConfigurationId"
            case invalidLifecycleHookId = "InvalidParameterValue.InvalidLifecycleHookId"
            case invalidNotificationUserGroupId = "InvalidParameterValue.InvalidNotificationUserGroupId"
            case invalidScheduledActionId = "InvalidParameterValue.InvalidScheduledActionId"
            case invalidScheduledActionNameIncludeIllegalChar = "InvalidParameterValue.InvalidScheduledActionNameIncludeIllegalChar"
            case invalidSecurityGroupId = "InvalidParameterValue.InvalidSecurityGroupId"
            case invalidSnapshotId = "InvalidParameterValue.InvalidSnapshotId"
            case invalidSubnetId = "InvalidParameterValue.InvalidSubnetId"
            case launchConfigurationNameDuplicated = "InvalidParameterValue.LaunchConfigurationNameDuplicated"
            case launchConfigurationNotFound = "InvalidParameterValue.LaunchConfigurationNotFound"
            case lbProjectInconsistent = "InvalidParameterValue.LbProjectInconsistent"
            case lifecycleHookNameDuplicated = "InvalidParameterValue.LifecycleHookNameDuplicated"
            case limitExceeded = "InvalidParameterValue.LimitExceeded"
            case listenerTargetTypeNotSupported = "InvalidParameterValue.ListenerTargetTypeNotSupported"
            case missingBandwidthPackageId = "InvalidParameterValue.MissingBandwidthPackageId"
            case noResourcePermission = "InvalidParameterValue.NoResourcePermission"
            case notStringTypeFloat = "InvalidParameterValue.NotStringTypeFloat"
            case onlyVpc = "InvalidParameterValue.OnlyVpc"
            case projectIdNotFound = "InvalidParameterValue.ProjectIdNotFound"
            case range = "InvalidParameterValue.Range"
            case scalingPolicyNameDuplicate = "InvalidParameterValue.ScalingPolicyNameDuplicate"
            case scheduledActionNameDuplicate = "InvalidParameterValue.ScheduledActionNameDuplicate"
            case size = "InvalidParameterValue.Size"
            case startTimeBeforeCurrentTime = "InvalidParameterValue.StartTimeBeforeCurrentTime"
            case subnetIds = "InvalidParameterValue.SubnetIds"
            case targetPortDuplicated = "InvalidParameterValue.TargetPortDuplicated"
            case targetTrackingScalingPolicy = "InvalidParameterValue.TargetTrackingScalingPolicy"
            case thresholdOutOfRange = "InvalidParameterValue.ThresholdOutOfRange"
            case timeFormat = "InvalidParameterValue.TimeFormat"
            case tooLong = "InvalidParameterValue.TooLong"
            case tooShort = "InvalidParameterValue.TooShort"
            case userDataFormatError = "InvalidParameterValue.UserDataFormatError"
            case userDataSizeExceeded = "InvalidParameterValue.UserDataSizeExceeded"
            case userGroupIdNotFound = "InvalidParameterValue.UserGroupIdNotFound"
            case zoneMismatchRegion = "InvalidParameterValue.ZoneMismatchRegion"
            case other = "InvalidParameterValue"
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

        /// 当前账户不支持带宽包ID参数。
        public static var accountNotSupportBandwidthPackageId: InvalidParameterValue {
            InvalidParameterValue(.accountNotSupportBandwidthPackageId)
        }

        /// 指定的基础容量过大，需小于等于最大实例数。
        public static var baseCapacityTooLarge: InvalidParameterValue {
            InvalidParameterValue(.baseCapacityTooLarge)
        }

        /// 减小批次数，使得批次数小于待刷新实例总数。
        public static var batchNumberTooLarge: InvalidParameterValue {
            InvalidParameterValue(.batchNumberTooLarge)
        }

        /// 在应当指定传统型负载均衡器的参数中，错误地指定了一个非传统型的负载均衡器。
        public static var classicLb: InvalidParameterValue {
            InvalidParameterValue(.classicLb)
        }

        /// 通知接收端类型冲突。
        ///
        /// 请根据通知接收端类型，设置匹配的接收对象。
        public static var conflictNotificationTarget: InvalidParameterValue {
            InvalidParameterValue(.conflictNotificationTarget)
        }

        /// 定时任务指定的Cron表达式无效。
        public static var cronExpressionIllegal: InvalidParameterValue {
            InvalidParameterValue(.cronExpressionIllegal)
        }

        /// CVM参数校验异常。
        public static var cvmConfigurationError: InvalidParameterValue {
            InvalidParameterValue(.cvmConfigurationError)
        }

        /// CVM参数校验异常。
        public static var cvmError: InvalidParameterValue {
            InvalidParameterValue(.cvmError)
        }

        /// 提供的应用型负载均衡器重复。
        public static var duplicatedForwardLb: InvalidParameterValue {
            InvalidParameterValue(.duplicatedForwardLb)
        }

        /// 指定的子网重复。
        public static var duplicatedSubnet: InvalidParameterValue {
            InvalidParameterValue(.duplicatedSubnet)
        }

        /// 定时任务设置的结束时间在开始时间。
        public static var endTimeBeforeStartTime: InvalidParameterValue {
            InvalidParameterValue(.endTimeBeforeStartTime)
        }

        /// 无效的过滤器。
        public static var filter: InvalidParameterValue {
            InvalidParameterValue(.filter)
        }

        /// 在应当指定应用型负载均衡器的参数中，错误地指定了一个非应用型的负载均衡器。
        public static var forwardLb: InvalidParameterValue {
            InvalidParameterValue(.forwardLb)
        }

        /// 伸缩组名称重复。
        public static var groupNameDuplicated: InvalidParameterValue {
            InvalidParameterValue(.groupNameDuplicated)
        }

        /// 主机名不合法。
        public static var hostNameIllegal: InvalidParameterValue {
            InvalidParameterValue(.hostNameIllegal)
        }

        /// 指定的IPv6公网带宽计费模式不合法。
        public static var iPv6InternetChargeType: InvalidParameterValue {
            InvalidParameterValue(.iPv6InternetChargeType)
        }

        /// 指定的镜像不存在。
        ///
        /// 请尝试更换镜像。
        public static var imageNotFound: InvalidParameterValue {
            InvalidParameterValue(.imageNotFound)
        }

        /// 设置的实例名称不合法。
        public static var instanceNameIllegal: InvalidParameterValue {
            InvalidParameterValue(.instanceNameIllegal)
        }

        /// 实例机型不支持。
        public static var instanceTypeNotSupported: InvalidParameterValue {
            InvalidParameterValue(.instanceTypeNotSupported)
        }

        /// 伸缩活动ID无效。
        public static var invalidActivityId: InvalidParameterValue {
            InvalidParameterValue(.invalidActivityId)
        }

        /// 伸缩组ID无效。
        public static var invalidAutoScalingGroupId: InvalidParameterValue {
            InvalidParameterValue(.invalidAutoScalingGroupId)
        }

        /// 通知ID无效。
        public static var invalidAutoScalingNotificationId: InvalidParameterValue {
            InvalidParameterValue(.invalidAutoScalingNotificationId)
        }

        /// 告警策略ID无效。
        public static var invalidAutoScalingPolicyId: InvalidParameterValue {
            InvalidParameterValue(.invalidAutoScalingPolicyId)
        }

        /// 为CLB指定的地域不合法。
        public static var invalidClbRegion: InvalidParameterValue {
            InvalidParameterValue(.invalidClbRegion)
        }

        /// 指定的置放群组ID格式不正确。
        ///
        /// 请提供规范的置放群组ID，类似ps-xxxxxxxx，字母x代表小写字符或者数字。
        public static var invalidDisasterRecoverGroupId: InvalidParameterValue {
            InvalidParameterValue(.invalidDisasterRecoverGroupId)
        }

        /// 过滤条件无效。
        public static var invalidFilter: InvalidParameterValue {
            InvalidParameterValue(.invalidFilter)
        }

        /// 高性能计算集群ID无效。
        public static var invalidHpcClusterId: InvalidParameterValue {
            InvalidParameterValue(.invalidHpcClusterId)
        }

        /// 镜像ID无效。
        public static var invalidImageId: InvalidParameterValue {
            InvalidParameterValue(.invalidImageId)
        }

        /// 实例ID无效。
        public static var invalidInstanceId: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceId)
        }

        /// 实例机型无效。
        public static var invalidInstanceType: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceType)
        }

        /// 输入的启动配置无效。
        ///
        /// 请确认启动配置信息的完整性及正确性。
        public static var invalidLaunchConfiguration: InvalidParameterValue {
            InvalidParameterValue(.invalidLaunchConfiguration)
        }

        /// 启动配置ID无效。
        public static var invalidLaunchConfigurationId: InvalidParameterValue {
            InvalidParameterValue(.invalidLaunchConfigurationId)
        }

        /// 生命周期挂钩ID无效。
        public static var invalidLifecycleHookId: InvalidParameterValue {
            InvalidParameterValue(.invalidLifecycleHookId)
        }

        /// 指定的通知组 ID 不是数值字符串格式。
        public static var invalidNotificationUserGroupId: InvalidParameterValue {
            InvalidParameterValue(.invalidNotificationUserGroupId)
        }

        /// 定时任务ID无效。
        public static var invalidScheduledActionId: InvalidParameterValue {
            InvalidParameterValue(.invalidScheduledActionId)
        }

        /// 定时任务名称包含无效字符。
        public static var invalidScheduledActionNameIncludeIllegalChar: InvalidParameterValue {
            InvalidParameterValue(.invalidScheduledActionNameIncludeIllegalChar)
        }

        /// 安全组ID无效。
        public static var invalidSecurityGroupId: InvalidParameterValue {
            InvalidParameterValue(.invalidSecurityGroupId)
        }

        /// 快照ID无效。
        public static var invalidSnapshotId: InvalidParameterValue {
            InvalidParameterValue(.invalidSnapshotId)
        }

        /// 子网ID无效。
        public static var invalidSubnetId: InvalidParameterValue {
            InvalidParameterValue(.invalidSubnetId)
        }

        /// 启动配置名称重复。
        public static var launchConfigurationNameDuplicated: InvalidParameterValue {
            InvalidParameterValue(.launchConfigurationNameDuplicated)
        }

        /// 找不到指定启动配置。
        public static var launchConfigurationNotFound: InvalidParameterValue {
            InvalidParameterValue(.launchConfigurationNotFound)
        }

        /// 负载均衡器项目不一致。
        public static var lbProjectInconsistent: InvalidParameterValue {
            InvalidParameterValue(.lbProjectInconsistent)
        }

        /// 生命周期挂钩名称重复。
        public static var lifecycleHookNameDuplicated: InvalidParameterValue {
            InvalidParameterValue(.lifecycleHookNameDuplicated)
        }

        /// 取值超出限制。
        public static var limitExceeded: InvalidParameterValue {
            InvalidParameterValue(.limitExceeded)
        }

        /// 不支持目标组类型的监听器。
        public static var listenerTargetTypeNotSupported: InvalidParameterValue {
            InvalidParameterValue(.listenerTargetTypeNotSupported)
        }

        /// 当前账户在带宽包模式中必须填写带宽包ID参数。
        public static var missingBandwidthPackageId: InvalidParameterValue {
            InvalidParameterValue(.missingBandwidthPackageId)
        }

        /// 无资源权限。
        public static var noResourcePermission: InvalidParameterValue {
            InvalidParameterValue(.noResourcePermission)
        }

        /// 提供的值不是浮点字符串格式。
        public static var notStringTypeFloat: InvalidParameterValue {
            InvalidParameterValue(.notStringTypeFloat)
        }

        /// 账号仅支持VPC网络。
        public static var onlyVpc: InvalidParameterValue {
            InvalidParameterValue(.onlyVpc)
        }

        /// 项目ID不存在。
        public static var projectIdNotFound: InvalidParameterValue {
            InvalidParameterValue(.projectIdNotFound)
        }

        /// 取值超出指定范围。
        public static var range: InvalidParameterValue {
            InvalidParameterValue(.range)
        }

        /// 告警策略名称重复。
        public static var scalingPolicyNameDuplicate: InvalidParameterValue {
            InvalidParameterValue(.scalingPolicyNameDuplicate)
        }

        /// 定时任务名称重复。
        public static var scheduledActionNameDuplicate: InvalidParameterValue {
            InvalidParameterValue(.scheduledActionNameDuplicate)
        }

        /// 伸缩组最大数量、最小数量、期望实例数取值不合法。
        public static var size: InvalidParameterValue {
            InvalidParameterValue(.size)
        }

        /// 定时任务设置的开始时间在当前时间之前。
        public static var startTimeBeforeCurrentTime: InvalidParameterValue {
            InvalidParameterValue(.startTimeBeforeCurrentTime)
        }

        /// 子网信息不合法。
        public static var subnetIds: InvalidParameterValue {
            InvalidParameterValue(.subnetIds)
        }

        /// 负载均衡器四层监听器的后端端口重复。
        public static var targetPortDuplicated: InvalidParameterValue {
            InvalidParameterValue(.targetPortDuplicated)
        }

        /// 不支持执行目标追踪策略。
        public static var targetTrackingScalingPolicy: InvalidParameterValue {
            InvalidParameterValue(.targetTrackingScalingPolicy)
        }

        /// 指定的阈值不在有效范围。
        public static var thresholdOutOfRange: InvalidParameterValue {
            InvalidParameterValue(.thresholdOutOfRange)
        }

        /// 时间格式错误。
        public static var timeFormat: InvalidParameterValue {
            InvalidParameterValue(.timeFormat)
        }

        /// 取值过多。
        public static var tooLong: InvalidParameterValue {
            InvalidParameterValue(.tooLong)
        }

        /// 输入参数值的长度小于最小值。
        public static var tooShort: InvalidParameterValue {
            InvalidParameterValue(.tooShort)
        }

        /// UserData格式错误。
        public static var userDataFormatError: InvalidParameterValue {
            InvalidParameterValue(.userDataFormatError)
        }

        /// UserData长度过长。
        public static var userDataSizeExceeded: InvalidParameterValue {
            InvalidParameterValue(.userDataSizeExceeded)
        }

        /// 用户组不存在。
        public static var userGroupIdNotFound: InvalidParameterValue {
            InvalidParameterValue(.userGroupIdNotFound)
        }

        /// 指定的可用区与地域不匹配。
        public static var zoneMismatchRegion: InvalidParameterValue {
            InvalidParameterValue(.zoneMismatchRegion)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asAsError() -> TCAsError {
            let code: TCAsError.Code
            switch self.error {
            case .accountNotSupportBandwidthPackageId:
                code = .invalidParameterValue_AccountNotSupportBandwidthPackageId
            case .baseCapacityTooLarge:
                code = .invalidParameterValue_BaseCapacityTooLarge
            case .batchNumberTooLarge:
                code = .invalidParameterValue_BatchNumberTooLarge
            case .classicLb:
                code = .invalidParameterValue_ClassicLb
            case .conflictNotificationTarget:
                code = .invalidParameterValue_ConflictNotificationTarget
            case .cronExpressionIllegal:
                code = .invalidParameterValue_CronExpressionIllegal
            case .cvmConfigurationError:
                code = .invalidParameterValue_CvmConfigurationError
            case .cvmError:
                code = .invalidParameterValue_CvmError
            case .duplicatedForwardLb:
                code = .invalidParameterValue_DuplicatedForwardLb
            case .duplicatedSubnet:
                code = .invalidParameterValue_DuplicatedSubnet
            case .endTimeBeforeStartTime:
                code = .invalidParameterValue_EndTimeBeforeStartTime
            case .filter:
                code = .invalidParameterValue_Filter
            case .forwardLb:
                code = .invalidParameterValue_ForwardLb
            case .groupNameDuplicated:
                code = .invalidParameterValue_GroupNameDuplicated
            case .hostNameIllegal:
                code = .invalidParameterValue_HostNameIllegal
            case .iPv6InternetChargeType:
                code = .invalidParameterValue_IPv6InternetChargeType
            case .imageNotFound:
                code = .invalidParameterValue_ImageNotFound
            case .instanceNameIllegal:
                code = .invalidParameterValue_InstanceNameIllegal
            case .instanceTypeNotSupported:
                code = .invalidParameterValue_InstanceTypeNotSupported
            case .invalidActivityId:
                code = .invalidParameterValue_InvalidActivityId
            case .invalidAutoScalingGroupId:
                code = .invalidParameterValue_InvalidAutoScalingGroupId
            case .invalidAutoScalingNotificationId:
                code = .invalidParameterValue_InvalidAutoScalingNotificationId
            case .invalidAutoScalingPolicyId:
                code = .invalidParameterValue_InvalidAutoScalingPolicyId
            case .invalidClbRegion:
                code = .invalidParameterValue_InvalidClbRegion
            case .invalidDisasterRecoverGroupId:
                code = .invalidParameterValue_InvalidDisasterRecoverGroupId
            case .invalidFilter:
                code = .invalidParameterValue_InvalidFilter
            case .invalidHpcClusterId:
                code = .invalidParameterValue_InvalidHpcClusterId
            case .invalidImageId:
                code = .invalidParameterValue_InvalidImageId
            case .invalidInstanceId:
                code = .invalidParameterValue_InvalidInstanceId
            case .invalidInstanceType:
                code = .invalidParameterValue_InvalidInstanceType
            case .invalidLaunchConfiguration:
                code = .invalidParameterValue_InvalidLaunchConfiguration
            case .invalidLaunchConfigurationId:
                code = .invalidParameterValue_InvalidLaunchConfigurationId
            case .invalidLifecycleHookId:
                code = .invalidParameterValue_InvalidLifecycleHookId
            case .invalidNotificationUserGroupId:
                code = .invalidParameterValue_InvalidNotificationUserGroupId
            case .invalidScheduledActionId:
                code = .invalidParameterValue_InvalidScheduledActionId
            case .invalidScheduledActionNameIncludeIllegalChar:
                code = .invalidParameterValue_InvalidScheduledActionNameIncludeIllegalChar
            case .invalidSecurityGroupId:
                code = .invalidParameterValue_InvalidSecurityGroupId
            case .invalidSnapshotId:
                code = .invalidParameterValue_InvalidSnapshotId
            case .invalidSubnetId:
                code = .invalidParameterValue_InvalidSubnetId
            case .launchConfigurationNameDuplicated:
                code = .invalidParameterValue_LaunchConfigurationNameDuplicated
            case .launchConfigurationNotFound:
                code = .invalidParameterValue_LaunchConfigurationNotFound
            case .lbProjectInconsistent:
                code = .invalidParameterValue_LbProjectInconsistent
            case .lifecycleHookNameDuplicated:
                code = .invalidParameterValue_LifecycleHookNameDuplicated
            case .limitExceeded:
                code = .invalidParameterValue_LimitExceeded
            case .listenerTargetTypeNotSupported:
                code = .invalidParameterValue_ListenerTargetTypeNotSupported
            case .missingBandwidthPackageId:
                code = .invalidParameterValue_MissingBandwidthPackageId
            case .noResourcePermission:
                code = .invalidParameterValue_NoResourcePermission
            case .notStringTypeFloat:
                code = .invalidParameterValue_NotStringTypeFloat
            case .onlyVpc:
                code = .invalidParameterValue_OnlyVpc
            case .projectIdNotFound:
                code = .invalidParameterValue_ProjectIdNotFound
            case .range:
                code = .invalidParameterValue_Range
            case .scalingPolicyNameDuplicate:
                code = .invalidParameterValue_ScalingPolicyNameDuplicate
            case .scheduledActionNameDuplicate:
                code = .invalidParameterValue_ScheduledActionNameDuplicate
            case .size:
                code = .invalidParameterValue_Size
            case .startTimeBeforeCurrentTime:
                code = .invalidParameterValue_StartTimeBeforeCurrentTime
            case .subnetIds:
                code = .invalidParameterValue_SubnetIds
            case .targetPortDuplicated:
                code = .invalidParameterValue_TargetPortDuplicated
            case .targetTrackingScalingPolicy:
                code = .invalidParameterValue_TargetTrackingScalingPolicy
            case .thresholdOutOfRange:
                code = .invalidParameterValue_ThresholdOutOfRange
            case .timeFormat:
                code = .invalidParameterValue_TimeFormat
            case .tooLong:
                code = .invalidParameterValue_TooLong
            case .tooShort:
                code = .invalidParameterValue_TooShort
            case .userDataFormatError:
                code = .invalidParameterValue_UserDataFormatError
            case .userDataSizeExceeded:
                code = .invalidParameterValue_UserDataSizeExceeded
            case .userGroupIdNotFound:
                code = .invalidParameterValue_UserGroupIdNotFound
            case .zoneMismatchRegion:
                code = .invalidParameterValue_ZoneMismatchRegion
            case .other:
                code = .invalidParameterValue
            }
            return TCAsError(code, context: self.context)
        }
    }
}
