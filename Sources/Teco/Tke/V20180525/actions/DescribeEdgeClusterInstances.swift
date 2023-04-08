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

import TecoCore

extension Tke {
    /// DescribeEdgeClusterInstances请求参数结构体
    public struct DescribeEdgeClusterInstancesRequest: TCRequestModel {
        /// 集群id
        public let clusterID: String

        /// 查询总数
        public let limit: Int64

        /// 偏移量
        public let offset: Int64

        /// 过滤条件，仅支持NodeName过滤
        public let filters: [Filter]?

        public init(clusterID: String, limit: Int64, offset: Int64, filters: [Filter]? = nil) {
            self.clusterID = clusterID
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case clusterID = "ClusterID"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }

    /// DescribeEdgeClusterInstances返回参数结构体
    public struct DescribeEdgeClusterInstancesResponse: TCResponseModel {
        /// 该集群总数
        public let totalCount: Int64

        /// 节点信息集合
        public let instanceInfoSet: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceInfoSet = "InstanceInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 查询边缘计算集群的节点信息
    @inlinable
    public func describeEdgeClusterInstances(_ input: DescribeEdgeClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeClusterInstancesResponse> {
        self.client.execute(action: "DescribeEdgeClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘计算集群的节点信息
    @inlinable
    public func describeEdgeClusterInstances(_ input: DescribeEdgeClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeClusterInstancesResponse {
        try await self.client.execute(action: "DescribeEdgeClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘计算集群的节点信息
    @inlinable
    public func describeEdgeClusterInstances(clusterID: String, limit: Int64, offset: Int64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeClusterInstancesResponse> {
        self.describeEdgeClusterInstances(.init(clusterID: clusterID, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘计算集群的节点信息
    @inlinable
    public func describeEdgeClusterInstances(clusterID: String, limit: Int64, offset: Int64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeClusterInstancesResponse {
        try await self.describeEdgeClusterInstances(.init(clusterID: clusterID, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
