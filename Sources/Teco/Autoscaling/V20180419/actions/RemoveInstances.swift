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

extension As {
    /// RemoveInstances请求参数结构体
    public struct RemoveInstancesRequest: TCRequestModel {
        /// 伸缩组ID
        public let autoScalingGroupId: String

        /// CVM实例ID列表
        public let instanceIds: [String]

        public init(autoScalingGroupId: String, instanceIds: [String]) {
            self.autoScalingGroupId = autoScalingGroupId
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case instanceIds = "InstanceIds"
        }
    }

    /// RemoveInstances返回参数结构体
    public struct RemoveInstancesResponse: TCResponseModel {
        /// 伸缩活动ID
        public let activityId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case requestId = "RequestId"
        }
    }

    /// 从伸缩组中删除 CVM 实例
    ///
    /// 本接口（RemoveInstances）用于从伸缩组删除 CVM 实例。根据当前的产品逻辑，如果实例由弹性伸缩自动创建，则实例会被销毁；如果实例系创建后加入伸缩组的，则会从伸缩组中移除，保留实例。
    /// * 如果删除指定实例后，伸缩组内处于`IN_SERVICE`状态的实例数量小于伸缩组最小值，接口将报错
    /// * 如果伸缩组处于`DISABLED`状态，删除操作不校验`IN_SERVICE`实例数量和最小值的关系
    /// * 对于伸缩组配置的 CLB，实例在离开伸缩组时，AS 会进行解挂载动作
    @inlinable
    public func removeInstances(_ input: RemoveInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveInstancesResponse> {
        self.client.execute(action: "RemoveInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 从伸缩组中删除 CVM 实例
    ///
    /// 本接口（RemoveInstances）用于从伸缩组删除 CVM 实例。根据当前的产品逻辑，如果实例由弹性伸缩自动创建，则实例会被销毁；如果实例系创建后加入伸缩组的，则会从伸缩组中移除，保留实例。
    /// * 如果删除指定实例后，伸缩组内处于`IN_SERVICE`状态的实例数量小于伸缩组最小值，接口将报错
    /// * 如果伸缩组处于`DISABLED`状态，删除操作不校验`IN_SERVICE`实例数量和最小值的关系
    /// * 对于伸缩组配置的 CLB，实例在离开伸缩组时，AS 会进行解挂载动作
    @inlinable
    public func removeInstances(_ input: RemoveInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveInstancesResponse {
        try await self.client.execute(action: "RemoveInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 从伸缩组中删除 CVM 实例
    ///
    /// 本接口（RemoveInstances）用于从伸缩组删除 CVM 实例。根据当前的产品逻辑，如果实例由弹性伸缩自动创建，则实例会被销毁；如果实例系创建后加入伸缩组的，则会从伸缩组中移除，保留实例。
    /// * 如果删除指定实例后，伸缩组内处于`IN_SERVICE`状态的实例数量小于伸缩组最小值，接口将报错
    /// * 如果伸缩组处于`DISABLED`状态，删除操作不校验`IN_SERVICE`实例数量和最小值的关系
    /// * 对于伸缩组配置的 CLB，实例在离开伸缩组时，AS 会进行解挂载动作
    @inlinable
    public func removeInstances(autoScalingGroupId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveInstancesResponse> {
        self.removeInstances(.init(autoScalingGroupId: autoScalingGroupId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 从伸缩组中删除 CVM 实例
    ///
    /// 本接口（RemoveInstances）用于从伸缩组删除 CVM 实例。根据当前的产品逻辑，如果实例由弹性伸缩自动创建，则实例会被销毁；如果实例系创建后加入伸缩组的，则会从伸缩组中移除，保留实例。
    /// * 如果删除指定实例后，伸缩组内处于`IN_SERVICE`状态的实例数量小于伸缩组最小值，接口将报错
    /// * 如果伸缩组处于`DISABLED`状态，删除操作不校验`IN_SERVICE`实例数量和最小值的关系
    /// * 对于伸缩组配置的 CLB，实例在离开伸缩组时，AS 会进行解挂载动作
    @inlinable
    public func removeInstances(autoScalingGroupId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveInstancesResponse {
        try await self.removeInstances(.init(autoScalingGroupId: autoScalingGroupId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
