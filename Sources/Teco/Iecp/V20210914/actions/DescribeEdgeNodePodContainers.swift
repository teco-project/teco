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

extension Iecp {
    /// DescribeEdgeNodePodContainers请求参数结构体
    public struct DescribeEdgeNodePodContainersRequest: TCRequest {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// 节点ID
        public let nodeId: UInt64

        /// Pod名称
        public let podName: String

        /// 命名空间
        public let namespace: String?

        public init(edgeUnitId: UInt64, nodeId: UInt64, podName: String, namespace: String? = nil) {
            self.edgeUnitId = edgeUnitId
            self.nodeId = nodeId
            self.podName = podName
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodeId = "NodeId"
            case podName = "PodName"
            case namespace = "Namespace"
        }
    }

    /// DescribeEdgeNodePodContainers返回参数结构体
    public struct DescribeEdgeNodePodContainersResponse: TCResponse {
        /// Pod容器列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let containerSet: [EdgeNodePodContainerInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case containerSet = "ContainerSet"
            case requestId = "RequestId"
        }
    }

    /// 查询节点Pod内的容器列表
    @inlinable
    public func describeEdgeNodePodContainers(_ input: DescribeEdgeNodePodContainersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeNodePodContainersResponse> {
        self.client.execute(action: "DescribeEdgeNodePodContainers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询节点Pod内的容器列表
    @inlinable
    public func describeEdgeNodePodContainers(_ input: DescribeEdgeNodePodContainersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeNodePodContainersResponse {
        try await self.client.execute(action: "DescribeEdgeNodePodContainers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询节点Pod内的容器列表
    @inlinable
    public func describeEdgeNodePodContainers(edgeUnitId: UInt64, nodeId: UInt64, podName: String, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeNodePodContainersResponse> {
        self.describeEdgeNodePodContainers(.init(edgeUnitId: edgeUnitId, nodeId: nodeId, podName: podName, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 查询节点Pod内的容器列表
    @inlinable
    public func describeEdgeNodePodContainers(edgeUnitId: UInt64, nodeId: UInt64, podName: String, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeNodePodContainersResponse {
        try await self.describeEdgeNodePodContainers(.init(edgeUnitId: edgeUnitId, nodeId: nodeId, podName: podName, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }
}
