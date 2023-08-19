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
    /// DescribeEdgeNodePods请求参数结构体
    public struct DescribeEdgeNodePodsRequest: TCRequest {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// 节点ID
        public let nodeId: UInt64

        /// 命名空间
        public let namespace: String?

        /// Pod名称过滤串
        public let podNamePattern: String?

        public init(edgeUnitId: UInt64, nodeId: UInt64, namespace: String? = nil, podNamePattern: String? = nil) {
            self.edgeUnitId = edgeUnitId
            self.nodeId = nodeId
            self.namespace = namespace
            self.podNamePattern = podNamePattern
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodeId = "NodeId"
            case namespace = "Namespace"
            case podNamePattern = "PodNamePattern"
        }
    }

    /// DescribeEdgeNodePods返回参数结构体
    public struct DescribeEdgeNodePodsResponse: TCResponse {
        /// Pod列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let podSet: [EdgeNodePodInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case podSet = "PodSet"
            case requestId = "RequestId"
        }
    }

    /// 查询节点Pod列表
    @inlinable
    public func describeEdgeNodePods(_ input: DescribeEdgeNodePodsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeNodePodsResponse> {
        self.client.execute(action: "DescribeEdgeNodePods", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询节点Pod列表
    @inlinable
    public func describeEdgeNodePods(_ input: DescribeEdgeNodePodsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeNodePodsResponse {
        try await self.client.execute(action: "DescribeEdgeNodePods", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询节点Pod列表
    @inlinable
    public func describeEdgeNodePods(edgeUnitId: UInt64, nodeId: UInt64, namespace: String? = nil, podNamePattern: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeNodePodsResponse> {
        self.describeEdgeNodePods(.init(edgeUnitId: edgeUnitId, nodeId: nodeId, namespace: namespace, podNamePattern: podNamePattern), region: region, logger: logger, on: eventLoop)
    }

    /// 查询节点Pod列表
    @inlinable
    public func describeEdgeNodePods(edgeUnitId: UInt64, nodeId: UInt64, namespace: String? = nil, podNamePattern: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeNodePodsResponse {
        try await self.describeEdgeNodePods(.init(edgeUnitId: edgeUnitId, nodeId: nodeId, namespace: namespace, podNamePattern: podNamePattern), region: region, logger: logger, on: eventLoop)
    }
}
