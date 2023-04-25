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

import Logging
import NIOCore
import TecoCore

extension As {
    /// DetachInstances请求参数结构体
    public struct DetachInstancesRequest: TCRequestModel {
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

    /// DetachInstances返回参数结构体
    public struct DetachInstancesResponse: TCResponseModel {
        /// 伸缩活动ID
        public let activityId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case requestId = "RequestId"
        }
    }

    /// 从伸缩组移出 CVM 实例
    ///
    /// 本接口（DetachInstances）用于从伸缩组移出 CVM 实例，本接口不会销毁实例。
    /// * 如果移出指定实例后，伸缩组内处于`IN_SERVICE`状态的实例数量小于伸缩组最小值，接口将报错
    /// * 如果伸缩组处于`DISABLED`状态，移出操作不校验`IN_SERVICE`实例数量和最小值的关系
    /// * 对于伸缩组配置的 CLB，实例在离开伸缩组时，AS 会进行解挂载动作
    @inlinable
    public func detachInstances(_ input: DetachInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachInstancesResponse> {
        self.client.execute(action: "DetachInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 从伸缩组移出 CVM 实例
    ///
    /// 本接口（DetachInstances）用于从伸缩组移出 CVM 实例，本接口不会销毁实例。
    /// * 如果移出指定实例后，伸缩组内处于`IN_SERVICE`状态的实例数量小于伸缩组最小值，接口将报错
    /// * 如果伸缩组处于`DISABLED`状态，移出操作不校验`IN_SERVICE`实例数量和最小值的关系
    /// * 对于伸缩组配置的 CLB，实例在离开伸缩组时，AS 会进行解挂载动作
    @inlinable
    public func detachInstances(_ input: DetachInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachInstancesResponse {
        try await self.client.execute(action: "DetachInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 从伸缩组移出 CVM 实例
    ///
    /// 本接口（DetachInstances）用于从伸缩组移出 CVM 实例，本接口不会销毁实例。
    /// * 如果移出指定实例后，伸缩组内处于`IN_SERVICE`状态的实例数量小于伸缩组最小值，接口将报错
    /// * 如果伸缩组处于`DISABLED`状态，移出操作不校验`IN_SERVICE`实例数量和最小值的关系
    /// * 对于伸缩组配置的 CLB，实例在离开伸缩组时，AS 会进行解挂载动作
    @inlinable
    public func detachInstances(autoScalingGroupId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachInstancesResponse> {
        self.detachInstances(.init(autoScalingGroupId: autoScalingGroupId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 从伸缩组移出 CVM 实例
    ///
    /// 本接口（DetachInstances）用于从伸缩组移出 CVM 实例，本接口不会销毁实例。
    /// * 如果移出指定实例后，伸缩组内处于`IN_SERVICE`状态的实例数量小于伸缩组最小值，接口将报错
    /// * 如果伸缩组处于`DISABLED`状态，移出操作不校验`IN_SERVICE`实例数量和最小值的关系
    /// * 对于伸缩组配置的 CLB，实例在离开伸缩组时，AS 会进行解挂载动作
    @inlinable
    public func detachInstances(autoScalingGroupId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachInstancesResponse {
        try await self.detachInstances(.init(autoScalingGroupId: autoScalingGroupId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
