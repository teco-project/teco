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

extension As {
    /// ExecuteScalingPolicy请求参数结构体
    public struct ExecuteScalingPolicyRequest: TCRequestModel {
        /// 告警伸缩策略ID
        public let autoScalingPolicyId: String

        /// 是否检查伸缩组活动处于冷却时间内，默认值为false
        public let honorCooldown: Bool?

        /// 执行伸缩策略的触发来源，取值包括 API 和 CLOUD_MONITOR，默认值为 API。CLOUD_MONITOR 专门供云监控触发调用。
        public let triggerSource: String?

        public init(autoScalingPolicyId: String, honorCooldown: Bool? = nil, triggerSource: String? = nil) {
            self.autoScalingPolicyId = autoScalingPolicyId
            self.honorCooldown = honorCooldown
            self.triggerSource = triggerSource
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingPolicyId = "AutoScalingPolicyId"
            case honorCooldown = "HonorCooldown"
            case triggerSource = "TriggerSource"
        }
    }

    /// ExecuteScalingPolicy返回参数结构体
    public struct ExecuteScalingPolicyResponse: TCResponseModel {
        /// 伸缩活动ID
        public let activityId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case requestId = "RequestId"
        }
    }

    /// 触发伸缩策略
    ///
    /// 本接口（ExecuteScalingPolicy）用于执行伸缩策略。
    ///
    /// * 可以根据伸缩策略ID执行伸缩策略。
    /// * 伸缩策略所属伸缩组处于伸缩活动时，会拒绝执行伸缩策略。
    @inlinable
    public func executeScalingPolicy(_ input: ExecuteScalingPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteScalingPolicyResponse> {
        self.client.execute(action: "ExecuteScalingPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 触发伸缩策略
    ///
    /// 本接口（ExecuteScalingPolicy）用于执行伸缩策略。
    ///
    /// * 可以根据伸缩策略ID执行伸缩策略。
    /// * 伸缩策略所属伸缩组处于伸缩活动时，会拒绝执行伸缩策略。
    @inlinable
    public func executeScalingPolicy(_ input: ExecuteScalingPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteScalingPolicyResponse {
        try await self.client.execute(action: "ExecuteScalingPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 触发伸缩策略
    ///
    /// 本接口（ExecuteScalingPolicy）用于执行伸缩策略。
    ///
    /// * 可以根据伸缩策略ID执行伸缩策略。
    /// * 伸缩策略所属伸缩组处于伸缩活动时，会拒绝执行伸缩策略。
    @inlinable
    public func executeScalingPolicy(autoScalingPolicyId: String, honorCooldown: Bool? = nil, triggerSource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteScalingPolicyResponse> {
        let input = ExecuteScalingPolicyRequest(autoScalingPolicyId: autoScalingPolicyId, honorCooldown: honorCooldown, triggerSource: triggerSource)
        return self.client.execute(action: "ExecuteScalingPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 触发伸缩策略
    ///
    /// 本接口（ExecuteScalingPolicy）用于执行伸缩策略。
    ///
    /// * 可以根据伸缩策略ID执行伸缩策略。
    /// * 伸缩策略所属伸缩组处于伸缩活动时，会拒绝执行伸缩策略。
    @inlinable
    public func executeScalingPolicy(autoScalingPolicyId: String, honorCooldown: Bool? = nil, triggerSource: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteScalingPolicyResponse {
        let input = ExecuteScalingPolicyRequest(autoScalingPolicyId: autoScalingPolicyId, honorCooldown: honorCooldown, triggerSource: triggerSource)
        return try await self.client.execute(action: "ExecuteScalingPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
