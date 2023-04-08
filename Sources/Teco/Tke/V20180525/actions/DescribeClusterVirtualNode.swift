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

extension Tke {
    /// DescribeClusterVirtualNode请求参数结构体
    public struct DescribeClusterVirtualNodeRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 节点池ID
        public let nodePoolId: String?

        /// 节点名称
        public let nodeNames: [String]?

        public init(clusterId: String, nodePoolId: String? = nil, nodeNames: [String]? = nil) {
            self.clusterId = clusterId
            self.nodePoolId = nodePoolId
            self.nodeNames = nodeNames
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case nodePoolId = "NodePoolId"
            case nodeNames = "NodeNames"
        }
    }

    /// DescribeClusterVirtualNode返回参数结构体
    public struct DescribeClusterVirtualNodeResponse: TCResponseModel {
        /// 节点列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodes: [VirtualNode]?

        /// 节点总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodes = "Nodes"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查看虚拟节点列表
    @inlinable
    public func describeClusterVirtualNode(_ input: DescribeClusterVirtualNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterVirtualNodeResponse> {
        self.client.execute(action: "DescribeClusterVirtualNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看虚拟节点列表
    @inlinable
    public func describeClusterVirtualNode(_ input: DescribeClusterVirtualNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterVirtualNodeResponse {
        try await self.client.execute(action: "DescribeClusterVirtualNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看虚拟节点列表
    @inlinable
    public func describeClusterVirtualNode(clusterId: String, nodePoolId: String? = nil, nodeNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterVirtualNodeResponse> {
        self.describeClusterVirtualNode(.init(clusterId: clusterId, nodePoolId: nodePoolId, nodeNames: nodeNames), region: region, logger: logger, on: eventLoop)
    }

    /// 查看虚拟节点列表
    @inlinable
    public func describeClusterVirtualNode(clusterId: String, nodePoolId: String? = nil, nodeNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterVirtualNodeResponse {
        try await self.describeClusterVirtualNode(.init(clusterId: clusterId, nodePoolId: nodePoolId, nodeNames: nodeNames), region: region, logger: logger, on: eventLoop)
    }
}
