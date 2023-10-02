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

extension Tke {
    /// DescribePostNodeResources请求参数结构体
    public struct DescribePostNodeResourcesRequest: TCRequest {
        /// 集群 ID
        public let clusterId: String

        /// 节点名称
        public let nodeName: String?

        public init(clusterId: String, nodeName: String? = nil) {
            self.clusterId = clusterId
            self.nodeName = nodeName
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case nodeName = "NodeName"
        }
    }

    /// DescribePostNodeResources返回参数结构体
    public struct DescribePostNodeResourcesResponse: TCResponse {
        /// Pod详情
        public let podSet: [SuperNodeResource]?

        /// 预留券详情
        public let reservedInstanceSet: [SuperNodeResource]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case podSet = "PodSet"
            case reservedInstanceSet = "ReservedInstanceSet"
            case requestId = "RequestId"
        }
    }

    /// 查询按量计费超级节点上的资源详情
    ///
    /// 包括 Pod 资源统计和绑定的预留券资源统计。
    @inlinable
    public func describePostNodeResources(_ input: DescribePostNodeResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePostNodeResourcesResponse> {
        self.client.execute(action: "DescribePostNodeResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询按量计费超级节点上的资源详情
    ///
    /// 包括 Pod 资源统计和绑定的预留券资源统计。
    @inlinable
    public func describePostNodeResources(_ input: DescribePostNodeResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePostNodeResourcesResponse {
        try await self.client.execute(action: "DescribePostNodeResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询按量计费超级节点上的资源详情
    ///
    /// 包括 Pod 资源统计和绑定的预留券资源统计。
    @inlinable
    public func describePostNodeResources(clusterId: String, nodeName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePostNodeResourcesResponse> {
        self.describePostNodeResources(.init(clusterId: clusterId, nodeName: nodeName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询按量计费超级节点上的资源详情
    ///
    /// 包括 Pod 资源统计和绑定的预留券资源统计。
    @inlinable
    public func describePostNodeResources(clusterId: String, nodeName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePostNodeResourcesResponse {
        try await self.describePostNodeResources(.init(clusterId: clusterId, nodeName: nodeName), region: region, logger: logger, on: eventLoop)
    }
}