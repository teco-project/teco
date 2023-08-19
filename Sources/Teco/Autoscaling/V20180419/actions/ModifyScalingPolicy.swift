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

import Logging
import NIOCore
import TecoCore

extension As {
    /// ModifyScalingPolicy请求参数结构体
    public struct ModifyScalingPolicyRequest: TCRequest {
        /// 告警策略ID。
        public let autoScalingPolicyId: String

        /// 告警策略名称。
        public let scalingPolicyName: String?

        /// 告警触发后，期望实例数修改方式，仅适用于简单策略。取值范围：
        ///
        /// - CHANGE_IN_CAPACITY：增加或减少若干期望实例数
        /// - EXACT_CAPACITY：调整至指定期望实例数
        /// - PERCENT_CHANGE_IN_CAPACITY：按百分比调整期望实例数
        public let adjustmentType: String?

        /// 告警触发后，期望实例数的调整值，仅适用于简单策略。
        ///
        /// - 当 AdjustmentType 为 CHANGE_IN_CAPACITY 时，AdjustmentValue 为正数表示告警触发后增加实例，为负数表示告警触发后减少实例
        /// - 当 AdjustmentType 为 EXACT_CAPACITY 时，AdjustmentValue 的值即为告警触发后新的期望实例数，需要大于或等于0
        /// - 当 AdjustmentType 为 PERCENT_CHANGE_IN_CAPACITY 时，AdjusmentValue 为正数表示告警触发后按百分比增加实例，为负数表示告警触发后按百分比减少实例，单位是：%。
        public let adjustmentValue: Int64?

        /// 冷却时间，仅适用于简单策略，单位为秒。
        public let cooldown: UInt64?

        /// 告警监控指标，仅适用于简单策略。
        public let metricAlarm: MetricAlarm?

        /// 预定义监控项，仅适用于目标追踪策略。取值范围：
        ///
        /// - ASG_AVG_CPU_UTILIZATION：平均CPU使用率
        /// - ASG_AVG_LAN_TRAFFIC_OUT：平均内网出带宽
        /// - ASG_AVG_LAN_TRAFFIC_IN：平均内网入带宽
        /// - ASG_AVG_WAN_TRAFFIC_OUT：平均外网出带宽
        /// - ASG_AVG_WAN_TRAFFIC_IN：平均外网出带宽
        public let predefinedMetricType: String?

        /// 目标值，仅适用于目标追踪策略。
        ///
        /// - ASG_AVG_CPU_UTILIZATION：[1, 100)，单位：%
        /// - ASG_AVG_LAN_TRAFFIC_OUT：>0，单位：Mbps
        /// - ASG_AVG_LAN_TRAFFIC_IN：>0，单位：Mbps
        /// - ASG_AVG_WAN_TRAFFIC_OUT：>0，单位：Mbps
        /// - ASG_AVG_WAN_TRAFFIC_IN：>0，单位：Mbps
        public let targetValue: UInt64?

        /// 实例预热时间，单位为秒，仅适用于目标追踪策略。取值范围为0-3600。
        public let estimatedInstanceWarmup: UInt64?

        /// 是否禁用缩容，仅适用于目标追踪策略。取值范围：
        ///
        /// - true：目标追踪策略仅触发扩容
        /// - false：目标追踪策略触发扩容和缩容
        public let disableScaleIn: Bool?

        /// 此参数已不再生效，请使用[创建通知](https://cloud.tencent.com/document/api/377/33185)。
        /// 通知组ID，即为用户组ID集合。
        public let notificationUserGroupIds: [String]?

        public init(autoScalingPolicyId: String, scalingPolicyName: String? = nil, adjustmentType: String? = nil, adjustmentValue: Int64? = nil, cooldown: UInt64? = nil, metricAlarm: MetricAlarm? = nil, predefinedMetricType: String? = nil, targetValue: UInt64? = nil, estimatedInstanceWarmup: UInt64? = nil, disableScaleIn: Bool? = nil, notificationUserGroupIds: [String]? = nil) {
            self.autoScalingPolicyId = autoScalingPolicyId
            self.scalingPolicyName = scalingPolicyName
            self.adjustmentType = adjustmentType
            self.adjustmentValue = adjustmentValue
            self.cooldown = cooldown
            self.metricAlarm = metricAlarm
            self.predefinedMetricType = predefinedMetricType
            self.targetValue = targetValue
            self.estimatedInstanceWarmup = estimatedInstanceWarmup
            self.disableScaleIn = disableScaleIn
            self.notificationUserGroupIds = notificationUserGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingPolicyId = "AutoScalingPolicyId"
            case scalingPolicyName = "ScalingPolicyName"
            case adjustmentType = "AdjustmentType"
            case adjustmentValue = "AdjustmentValue"
            case cooldown = "Cooldown"
            case metricAlarm = "MetricAlarm"
            case predefinedMetricType = "PredefinedMetricType"
            case targetValue = "TargetValue"
            case estimatedInstanceWarmup = "EstimatedInstanceWarmup"
            case disableScaleIn = "DisableScaleIn"
            case notificationUserGroupIds = "NotificationUserGroupIds"
        }
    }

    /// ModifyScalingPolicy返回参数结构体
    public struct ModifyScalingPolicyResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改告警触发策略
    ///
    /// 本接口（ModifyScalingPolicy）用于修改告警触发策略。
    @inlinable @discardableResult
    public func modifyScalingPolicy(_ input: ModifyScalingPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyScalingPolicyResponse> {
        self.client.execute(action: "ModifyScalingPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改告警触发策略
    ///
    /// 本接口（ModifyScalingPolicy）用于修改告警触发策略。
    @inlinable @discardableResult
    public func modifyScalingPolicy(_ input: ModifyScalingPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyScalingPolicyResponse {
        try await self.client.execute(action: "ModifyScalingPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改告警触发策略
    ///
    /// 本接口（ModifyScalingPolicy）用于修改告警触发策略。
    @inlinable @discardableResult
    public func modifyScalingPolicy(autoScalingPolicyId: String, scalingPolicyName: String? = nil, adjustmentType: String? = nil, adjustmentValue: Int64? = nil, cooldown: UInt64? = nil, metricAlarm: MetricAlarm? = nil, predefinedMetricType: String? = nil, targetValue: UInt64? = nil, estimatedInstanceWarmup: UInt64? = nil, disableScaleIn: Bool? = nil, notificationUserGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyScalingPolicyResponse> {
        self.modifyScalingPolicy(.init(autoScalingPolicyId: autoScalingPolicyId, scalingPolicyName: scalingPolicyName, adjustmentType: adjustmentType, adjustmentValue: adjustmentValue, cooldown: cooldown, metricAlarm: metricAlarm, predefinedMetricType: predefinedMetricType, targetValue: targetValue, estimatedInstanceWarmup: estimatedInstanceWarmup, disableScaleIn: disableScaleIn, notificationUserGroupIds: notificationUserGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 修改告警触发策略
    ///
    /// 本接口（ModifyScalingPolicy）用于修改告警触发策略。
    @inlinable @discardableResult
    public func modifyScalingPolicy(autoScalingPolicyId: String, scalingPolicyName: String? = nil, adjustmentType: String? = nil, adjustmentValue: Int64? = nil, cooldown: UInt64? = nil, metricAlarm: MetricAlarm? = nil, predefinedMetricType: String? = nil, targetValue: UInt64? = nil, estimatedInstanceWarmup: UInt64? = nil, disableScaleIn: Bool? = nil, notificationUserGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyScalingPolicyResponse {
        try await self.modifyScalingPolicy(.init(autoScalingPolicyId: autoScalingPolicyId, scalingPolicyName: scalingPolicyName, adjustmentType: adjustmentType, adjustmentValue: adjustmentValue, cooldown: cooldown, metricAlarm: metricAlarm, predefinedMetricType: predefinedMetricType, targetValue: targetValue, estimatedInstanceWarmup: estimatedInstanceWarmup, disableScaleIn: disableScaleIn, notificationUserGroupIds: notificationUserGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
