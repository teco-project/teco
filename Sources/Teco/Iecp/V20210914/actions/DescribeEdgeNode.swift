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
    /// DescribeEdgeNode请求参数结构体
    public struct DescribeEdgeNodeRequest: TCRequest {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// IECP边缘节点ID
        public let nodeId: UInt64

        public init(edgeUnitId: UInt64, nodeId: UInt64) {
            self.edgeUnitId = edgeUnitId
            self.nodeId = nodeId
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodeId = "NodeId"
        }
    }

    /// DescribeEdgeNode返回参数结构体
    public struct DescribeEdgeNodeResponse: TCResponse {
        /// 节点ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: UInt64?

        /// 节点类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let kind: String?

        /// 节点名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 节点状态 （1健康｜2异常｜3离线｜4未激活）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: UInt64?

        /// CPU体系结构
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cpuArchitecture: String?

        /// AI处理器体系结构
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let aiChipArchitecture: String?

        /// IP地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ip: String?

        /// 节点标签列表
        public let labels: [EdgeNodeLabel]

        /// 节点资源信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resource: EdgeNodeResourceInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case kind = "Kind"
            case name = "Name"
            case status = "Status"
            case cpuArchitecture = "CpuArchitecture"
            case aiChipArchitecture = "AiChipArchitecture"
            case ip = "Ip"
            case labels = "Labels"
            case resource = "Resource"
            case requestId = "RequestId"
        }
    }

    /// 获取边缘节点信息
    @inlinable
    public func describeEdgeNode(_ input: DescribeEdgeNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeNodeResponse> {
        self.client.execute(action: "DescribeEdgeNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取边缘节点信息
    @inlinable
    public func describeEdgeNode(_ input: DescribeEdgeNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeNodeResponse {
        try await self.client.execute(action: "DescribeEdgeNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取边缘节点信息
    @inlinable
    public func describeEdgeNode(edgeUnitId: UInt64, nodeId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeNodeResponse> {
        self.describeEdgeNode(.init(edgeUnitId: edgeUnitId, nodeId: nodeId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取边缘节点信息
    @inlinable
    public func describeEdgeNode(edgeUnitId: UInt64, nodeId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeNodeResponse {
        try await self.describeEdgeNode(.init(edgeUnitId: edgeUnitId, nodeId: nodeId), region: region, logger: logger, on: eventLoop)
    }
}
