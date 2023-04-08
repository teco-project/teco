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
    /// DescribeClusterNodePools请求参数结构体
    public struct DescribeClusterNodePoolsRequest: TCRequestModel {
        /// ClusterId（集群id）
        public let clusterId: String

        /// ·  NodePoolsName
        ///     按照【节点池名】进行过滤。
        ///     类型：String
        ///     必选：否
        ///
        /// ·  NodePoolsId
        ///     按照【节点池id】进行过滤。
        ///     类型：String
        ///     必选：否
        ///
        /// ·  tags
        ///     按照【标签键值对】进行过滤。
        ///     类型：String
        ///     必选：否
        ///
        /// ·  tag:tag-key
        ///     按照【标签键值对】进行过滤。
        ///     类型：String
        ///     必选：否
        public let filters: [Filter]?

        public init(clusterId: String, filters: [Filter]? = nil) {
            self.clusterId = clusterId
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case filters = "Filters"
        }
    }

    /// DescribeClusterNodePools返回参数结构体
    public struct DescribeClusterNodePoolsResponse: TCResponseModel {
        /// NodePools（节点池列表）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodePoolSet: [NodePool]?

        /// 资源总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodePoolSet = "NodePoolSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询节点池列表
    @inlinable
    public func describeClusterNodePools(_ input: DescribeClusterNodePoolsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterNodePoolsResponse> {
        self.client.execute(action: "DescribeClusterNodePools", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询节点池列表
    @inlinable
    public func describeClusterNodePools(_ input: DescribeClusterNodePoolsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterNodePoolsResponse {
        try await self.client.execute(action: "DescribeClusterNodePools", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询节点池列表
    @inlinable
    public func describeClusterNodePools(clusterId: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterNodePoolsResponse> {
        self.describeClusterNodePools(.init(clusterId: clusterId, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询节点池列表
    @inlinable
    public func describeClusterNodePools(clusterId: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterNodePoolsResponse {
        try await self.describeClusterNodePools(.init(clusterId: clusterId, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
