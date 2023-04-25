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

extension Monitor {
    /// DescribePrometheusAgentInstances请求参数结构体
    public struct DescribePrometheusAgentInstancesRequest: TCRequestModel {
        /// 集群id
        /// 可以是tke, eks, edge的集群id
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribePrometheusAgentInstances返回参数结构体
    public struct DescribePrometheusAgentInstancesResponse: TCResponseModel {
        /// 关联该集群的实例列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instances: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instances = "Instances"
            case requestId = "RequestId"
        }
    }

    /// 获取关联目标集群的实例列表
    @inlinable
    public func describePrometheusAgentInstances(_ input: DescribePrometheusAgentInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusAgentInstancesResponse> {
        self.client.execute(action: "DescribePrometheusAgentInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取关联目标集群的实例列表
    @inlinable
    public func describePrometheusAgentInstances(_ input: DescribePrometheusAgentInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusAgentInstancesResponse {
        try await self.client.execute(action: "DescribePrometheusAgentInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取关联目标集群的实例列表
    @inlinable
    public func describePrometheusAgentInstances(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusAgentInstancesResponse> {
        self.describePrometheusAgentInstances(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取关联目标集群的实例列表
    @inlinable
    public func describePrometheusAgentInstances(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusAgentInstancesResponse {
        try await self.describePrometheusAgentInstances(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
