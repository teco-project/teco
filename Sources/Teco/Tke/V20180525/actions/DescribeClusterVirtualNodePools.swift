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
    /// DescribeClusterVirtualNodePools请求参数结构体
    public struct DescribeClusterVirtualNodePoolsRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeClusterVirtualNodePools返回参数结构体
    public struct DescribeClusterVirtualNodePoolsResponse: TCResponseModel {
        /// 节点池总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 虚拟节点池列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodePoolSet: [VirtualNodePool]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case nodePoolSet = "NodePoolSet"
            case requestId = "RequestId"
        }
    }

    /// 查看虚拟节点池列表
    @inlinable
    public func describeClusterVirtualNodePools(_ input: DescribeClusterVirtualNodePoolsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterVirtualNodePoolsResponse> {
        self.client.execute(action: "DescribeClusterVirtualNodePools", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看虚拟节点池列表
    @inlinable
    public func describeClusterVirtualNodePools(_ input: DescribeClusterVirtualNodePoolsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterVirtualNodePoolsResponse {
        try await self.client.execute(action: "DescribeClusterVirtualNodePools", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看虚拟节点池列表
    @inlinable
    public func describeClusterVirtualNodePools(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterVirtualNodePoolsResponse> {
        self.describeClusterVirtualNodePools(DescribeClusterVirtualNodePoolsRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 查看虚拟节点池列表
    @inlinable
    public func describeClusterVirtualNodePools(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterVirtualNodePoolsResponse {
        try await self.describeClusterVirtualNodePools(DescribeClusterVirtualNodePoolsRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
