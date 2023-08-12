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
import TecoPaginationHelpers

extension Tke {
    /// DescribeEKSClusters请求参数结构体
    public struct DescribeEKSClustersRequest: TCPaginatedRequest {
        /// 集群ID列表(为空时，
        /// 表示获取账号下所有集群)
        public let clusterIds: [String]?

        /// 偏移量,默认0
        public let offset: UInt64?

        /// 最大输出条数，默认20
        public let limit: UInt64?

        /// 过滤条件,当前只支持按照单个条件ClusterName进行过滤
        public let filters: [Filter]?

        public init(clusterIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.clusterIds = clusterIds
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case clusterIds = "ClusterIds"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeEKSClustersResponse) -> DescribeEKSClustersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeEKSClustersRequest(clusterIds: self.clusterIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeEKSClusters返回参数结构体
    public struct DescribeEKSClustersResponse: TCPaginatedResponse {
        /// 集群总个数
        public let totalCount: UInt64

        /// 集群信息列表
        public let clusters: [EksCluster]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusters = "Clusters"
            case requestId = "RequestId"
        }

        /// Extract the returned ``EksCluster`` list from the paginated response.
        public func getItems() -> [EksCluster] {
            self.clusters
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询弹性集群列表
    @inlinable
    public func describeEKSClusters(_ input: DescribeEKSClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEKSClustersResponse> {
        self.client.execute(action: "DescribeEKSClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询弹性集群列表
    @inlinable
    public func describeEKSClusters(_ input: DescribeEKSClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEKSClustersResponse {
        try await self.client.execute(action: "DescribeEKSClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询弹性集群列表
    @inlinable
    public func describeEKSClusters(clusterIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEKSClustersResponse> {
        self.describeEKSClusters(.init(clusterIds: clusterIds, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询弹性集群列表
    @inlinable
    public func describeEKSClusters(clusterIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEKSClustersResponse {
        try await self.describeEKSClusters(.init(clusterIds: clusterIds, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询弹性集群列表
    @inlinable
    public func describeEKSClustersPaginated(_ input: DescribeEKSClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [EksCluster])> {
        self.client.paginate(input: input, region: region, command: self.describeEKSClusters, logger: logger, on: eventLoop)
    }

    /// 查询弹性集群列表
    @inlinable @discardableResult
    public func describeEKSClustersPaginated(_ input: DescribeEKSClustersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEKSClustersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEKSClusters, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询弹性集群列表
    ///
    /// - Returns: `AsyncSequence`s of `EksCluster` and `DescribeEKSClustersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeEKSClustersPaginator(_ input: DescribeEKSClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEKSClustersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEKSClusters, logger: logger, on: eventLoop)
    }
}
