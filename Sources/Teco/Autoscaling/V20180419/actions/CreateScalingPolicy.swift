//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension As {
    /// CreateScalingPolicy请求参数结构体
    public struct CreateScalingPolicyRequest: TCRequestModel {
        /// 伸缩组ID。
        public let autoScalingGroupId: String

        /// 告警触发策略名称。
        public let scalingPolicyName: String

        /// 告警触发后，期望实例数修改方式。取值 ：<br><li>CHANGE_IN_CAPACITY：增加或减少若干期望实例数</li><li>EXACT_CAPACITY：调整至指定期望实例数</li> <li>PERCENT_CHANGE_IN_CAPACITY：按百分比调整期望实例数</li>
        public let adjustmentType: String

        /// 告警触发后，期望实例数的调整值。取值：<br><li>当 AdjustmentType 为 CHANGE_IN_CAPACITY 时，AdjustmentValue 为正数表示告警触发后增加实例，为负数表示告警触发后减少实例 </li> <li> 当 AdjustmentType 为 EXACT_CAPACITY 时，AdjustmentValue 的值即为告警触发后新的期望实例数，需要大于或等于0 </li> <li> 当 AdjustmentType 为 PERCENT_CHANGE_IN_CAPACITY 时，AdjusmentValue 为正数表示告警触发后按百分比增加实例，为负数表示告警触发后按百分比减少实例，单位是：%。
        public let adjustmentValue: Int64

        /// 告警监控指标。
        public let metricAlarm: MetricAlarm

        /// 冷却时间，单位为秒。默认冷却时间300秒。
        public let cooldown: UInt64?

        /// 此参数已不再生效，请使用[创建通知](https://cloud.tencent.com/document/api/377/33185)。
        /// 通知组ID，即为用户组ID集合。
        public let notificationUserGroupIds: [String]?

        public init(autoScalingGroupId: String, scalingPolicyName: String, adjustmentType: String, adjustmentValue: Int64, metricAlarm: MetricAlarm, cooldown: UInt64? = nil, notificationUserGroupIds: [String]? = nil) {
            self.autoScalingGroupId = autoScalingGroupId
            self.scalingPolicyName = scalingPolicyName
            self.adjustmentType = adjustmentType
            self.adjustmentValue = adjustmentValue
            self.metricAlarm = metricAlarm
            self.cooldown = cooldown
            self.notificationUserGroupIds = notificationUserGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case scalingPolicyName = "ScalingPolicyName"
            case adjustmentType = "AdjustmentType"
            case adjustmentValue = "AdjustmentValue"
            case metricAlarm = "MetricAlarm"
            case cooldown = "Cooldown"
            case notificationUserGroupIds = "NotificationUserGroupIds"
        }
    }

    /// CreateScalingPolicy返回参数结构体
    public struct CreateScalingPolicyResponse: TCResponseModel {
        /// 告警触发策略ID。
        public let autoScalingPolicyId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case autoScalingPolicyId = "AutoScalingPolicyId"
            case requestId = "RequestId"
        }
    }

    /// 创建告警触发策略
    ///
    /// 本接口（CreateScalingPolicy）用于创建告警触发策略。
    @inlinable
    public func createScalingPolicy(_ input: CreateScalingPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateScalingPolicyResponse> {
        self.client.execute(action: "CreateScalingPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建告警触发策略
    ///
    /// 本接口（CreateScalingPolicy）用于创建告警触发策略。
    @inlinable
    public func createScalingPolicy(_ input: CreateScalingPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScalingPolicyResponse {
        try await self.client.execute(action: "CreateScalingPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建告警触发策略
    ///
    /// 本接口（CreateScalingPolicy）用于创建告警触发策略。
    @inlinable
    public func createScalingPolicy(autoScalingGroupId: String, scalingPolicyName: String, adjustmentType: String, adjustmentValue: Int64, metricAlarm: MetricAlarm, cooldown: UInt64? = nil, notificationUserGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateScalingPolicyResponse> {
        self.createScalingPolicy(CreateScalingPolicyRequest(autoScalingGroupId: autoScalingGroupId, scalingPolicyName: scalingPolicyName, adjustmentType: adjustmentType, adjustmentValue: adjustmentValue, metricAlarm: metricAlarm, cooldown: cooldown, notificationUserGroupIds: notificationUserGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 创建告警触发策略
    ///
    /// 本接口（CreateScalingPolicy）用于创建告警触发策略。
    @inlinable
    public func createScalingPolicy(autoScalingGroupId: String, scalingPolicyName: String, adjustmentType: String, adjustmentValue: Int64, metricAlarm: MetricAlarm, cooldown: UInt64? = nil, notificationUserGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScalingPolicyResponse {
        try await self.createScalingPolicy(CreateScalingPolicyRequest(autoScalingGroupId: autoScalingGroupId, scalingPolicyName: scalingPolicyName, adjustmentType: adjustmentType, adjustmentValue: adjustmentValue, metricAlarm: metricAlarm, cooldown: cooldown, notificationUserGroupIds: notificationUserGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
