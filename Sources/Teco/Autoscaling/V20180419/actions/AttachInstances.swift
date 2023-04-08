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
    /// AttachInstances请求参数结构体
    public struct AttachInstancesRequest: TCRequestModel {
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

    /// AttachInstances返回参数结构体
    public struct AttachInstancesResponse: TCResponseModel {
        /// 伸缩活动ID
        public let activityId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case requestId = "RequestId"
        }
    }

    /// 添加 CVM 实例到伸缩组
    ///
    /// 本接口（AttachInstances）用于将 CVM 实例添加到伸缩组。
    /// * 仅支持添加处于`RUNNING`（运行中）或`STOPPED`（已关机）状态的 CVM 实例
    /// * 添加的 CVM 实例需要和伸缩组 VPC 网络一致
    @inlinable
    public func attachInstances(_ input: AttachInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachInstancesResponse> {
        self.client.execute(action: "AttachInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加 CVM 实例到伸缩组
    ///
    /// 本接口（AttachInstances）用于将 CVM 实例添加到伸缩组。
    /// * 仅支持添加处于`RUNNING`（运行中）或`STOPPED`（已关机）状态的 CVM 实例
    /// * 添加的 CVM 实例需要和伸缩组 VPC 网络一致
    @inlinable
    public func attachInstances(_ input: AttachInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachInstancesResponse {
        try await self.client.execute(action: "AttachInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加 CVM 实例到伸缩组
    ///
    /// 本接口（AttachInstances）用于将 CVM 实例添加到伸缩组。
    /// * 仅支持添加处于`RUNNING`（运行中）或`STOPPED`（已关机）状态的 CVM 实例
    /// * 添加的 CVM 实例需要和伸缩组 VPC 网络一致
    @inlinable
    public func attachInstances(autoScalingGroupId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachInstancesResponse> {
        self.attachInstances(.init(autoScalingGroupId: autoScalingGroupId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 添加 CVM 实例到伸缩组
    ///
    /// 本接口（AttachInstances）用于将 CVM 实例添加到伸缩组。
    /// * 仅支持添加处于`RUNNING`（运行中）或`STOPPED`（已关机）状态的 CVM 实例
    /// * 添加的 CVM 实例需要和伸缩组 VPC 网络一致
    @inlinable
    public func attachInstances(autoScalingGroupId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachInstancesResponse {
        try await self.attachInstances(.init(autoScalingGroupId: autoScalingGroupId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
