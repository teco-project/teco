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

extension Thpc {
    /// DescribeAutoScalingConfiguration请求参数结构体
    public struct DescribeAutoScalingConfigurationRequest: TCRequest {
        /// 集群ID。
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeAutoScalingConfiguration返回参数结构体
    public struct DescribeAutoScalingConfigurationResponse: TCResponse {
        /// 集群ID。
        public let clusterId: String

        /// 任务连续等待时间，队列的任务处于连续等待的时间。单位秒。
        public let expansionBusyTime: Int64

        /// 节点连续空闲（未运行作业）时间，一个节点连续处于空闲状态时间。
        public let shrinkIdleTime: Int64

        /// 扩容队列配置概览列表。
        public let queueConfigs: [QueueConfigOverview]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case expansionBusyTime = "ExpansionBusyTime"
            case shrinkIdleTime = "ShrinkIdleTime"
            case queueConfigs = "QueueConfigs"
            case requestId = "RequestId"
        }
    }

    /// 查询弹性伸缩配置信息
    ///
    /// 本接口(DescribeAutoScalingConfiguration)用于查询集群弹性伸缩配置信息。本接口仅适用于弹性伸缩类型为THPC_AS的集群。
    @inlinable
    public func describeAutoScalingConfiguration(_ input: DescribeAutoScalingConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoScalingConfigurationResponse> {
        self.client.execute(action: "DescribeAutoScalingConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询弹性伸缩配置信息
    ///
    /// 本接口(DescribeAutoScalingConfiguration)用于查询集群弹性伸缩配置信息。本接口仅适用于弹性伸缩类型为THPC_AS的集群。
    @inlinable
    public func describeAutoScalingConfiguration(_ input: DescribeAutoScalingConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoScalingConfigurationResponse {
        try await self.client.execute(action: "DescribeAutoScalingConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询弹性伸缩配置信息
    ///
    /// 本接口(DescribeAutoScalingConfiguration)用于查询集群弹性伸缩配置信息。本接口仅适用于弹性伸缩类型为THPC_AS的集群。
    @inlinable
    public func describeAutoScalingConfiguration(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoScalingConfigurationResponse> {
        self.describeAutoScalingConfiguration(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询弹性伸缩配置信息
    ///
    /// 本接口(DescribeAutoScalingConfiguration)用于查询集群弹性伸缩配置信息。本接口仅适用于弹性伸缩类型为THPC_AS的集群。
    @inlinable
    public func describeAutoScalingConfiguration(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoScalingConfigurationResponse {
        try await self.describeAutoScalingConfiguration(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
