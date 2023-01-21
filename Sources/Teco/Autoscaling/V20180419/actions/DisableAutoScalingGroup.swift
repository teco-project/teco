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
    /// DisableAutoScalingGroup请求参数结构体
    public struct DisableAutoScalingGroupRequest: TCRequestModel {
        /// 伸缩组ID
        public let autoScalingGroupId: String

        public init(autoScalingGroupId: String) {
            self.autoScalingGroupId = autoScalingGroupId
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
        }
    }

    /// DisableAutoScalingGroup返回参数结构体
    public struct DisableAutoScalingGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停用伸缩组
    ///
    /// 本接口（DisableAutoScalingGroup）用于停用指定伸缩组。
    /// * 停用伸缩组后，自动触发的伸缩活动不再进行，包括：
    ///     - 告警策略触发的伸缩活动
    ///     - 匹配期望实例数的伸缩活动
    ///     - 不健康实例替换活动
    ///     - 定时任务
    /// * 停用伸缩组后，手动触发的伸缩活动允许进行，包括：
    ///     - 指定数量扩容实例（ScaleOutInstances）
    ///     - 指定数量缩容实例（ScaleInInstances）
    ///     - 从伸缩组中移出 CVM 实例（DetachInstances）
    ///     - 从伸缩组中删除 CVM 实例（RemoveInstances）
    ///     - 添加 CVM 实例到伸缩组（AttachInstances）
    ///     - 关闭伸缩组内 CVM 实例（StopAutoScalingInstances）
    ///     - 开启伸缩组内 CVM 实例（StartAutoScalingInstances）
    @inlinable @discardableResult
    public func disableAutoScalingGroup(_ input: DisableAutoScalingGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableAutoScalingGroupResponse> {
        self.client.execute(action: "DisableAutoScalingGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停用伸缩组
    ///
    /// 本接口（DisableAutoScalingGroup）用于停用指定伸缩组。
    /// * 停用伸缩组后，自动触发的伸缩活动不再进行，包括：
    ///     - 告警策略触发的伸缩活动
    ///     - 匹配期望实例数的伸缩活动
    ///     - 不健康实例替换活动
    ///     - 定时任务
    /// * 停用伸缩组后，手动触发的伸缩活动允许进行，包括：
    ///     - 指定数量扩容实例（ScaleOutInstances）
    ///     - 指定数量缩容实例（ScaleInInstances）
    ///     - 从伸缩组中移出 CVM 实例（DetachInstances）
    ///     - 从伸缩组中删除 CVM 实例（RemoveInstances）
    ///     - 添加 CVM 实例到伸缩组（AttachInstances）
    ///     - 关闭伸缩组内 CVM 实例（StopAutoScalingInstances）
    ///     - 开启伸缩组内 CVM 实例（StartAutoScalingInstances）
    @inlinable @discardableResult
    public func disableAutoScalingGroup(_ input: DisableAutoScalingGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableAutoScalingGroupResponse {
        try await self.client.execute(action: "DisableAutoScalingGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停用伸缩组
    ///
    /// 本接口（DisableAutoScalingGroup）用于停用指定伸缩组。
    /// * 停用伸缩组后，自动触发的伸缩活动不再进行，包括：
    ///     - 告警策略触发的伸缩活动
    ///     - 匹配期望实例数的伸缩活动
    ///     - 不健康实例替换活动
    ///     - 定时任务
    /// * 停用伸缩组后，手动触发的伸缩活动允许进行，包括：
    ///     - 指定数量扩容实例（ScaleOutInstances）
    ///     - 指定数量缩容实例（ScaleInInstances）
    ///     - 从伸缩组中移出 CVM 实例（DetachInstances）
    ///     - 从伸缩组中删除 CVM 实例（RemoveInstances）
    ///     - 添加 CVM 实例到伸缩组（AttachInstances）
    ///     - 关闭伸缩组内 CVM 实例（StopAutoScalingInstances）
    ///     - 开启伸缩组内 CVM 实例（StartAutoScalingInstances）
    @inlinable @discardableResult
    public func disableAutoScalingGroup(autoScalingGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableAutoScalingGroupResponse> {
        self.disableAutoScalingGroup(DisableAutoScalingGroupRequest(autoScalingGroupId: autoScalingGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 停用伸缩组
    ///
    /// 本接口（DisableAutoScalingGroup）用于停用指定伸缩组。
    /// * 停用伸缩组后，自动触发的伸缩活动不再进行，包括：
    ///     - 告警策略触发的伸缩活动
    ///     - 匹配期望实例数的伸缩活动
    ///     - 不健康实例替换活动
    ///     - 定时任务
    /// * 停用伸缩组后，手动触发的伸缩活动允许进行，包括：
    ///     - 指定数量扩容实例（ScaleOutInstances）
    ///     - 指定数量缩容实例（ScaleInInstances）
    ///     - 从伸缩组中移出 CVM 实例（DetachInstances）
    ///     - 从伸缩组中删除 CVM 实例（RemoveInstances）
    ///     - 添加 CVM 实例到伸缩组（AttachInstances）
    ///     - 关闭伸缩组内 CVM 实例（StopAutoScalingInstances）
    ///     - 开启伸缩组内 CVM 实例（StartAutoScalingInstances）
    @inlinable @discardableResult
    public func disableAutoScalingGroup(autoScalingGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableAutoScalingGroupResponse {
        try await self.disableAutoScalingGroup(DisableAutoScalingGroupRequest(autoScalingGroupId: autoScalingGroupId), region: region, logger: logger, on: eventLoop)
    }
}
