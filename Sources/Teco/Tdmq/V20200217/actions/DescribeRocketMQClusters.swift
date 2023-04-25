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
import TecoPaginationHelpers

extension Tdmq {
    /// DescribeRocketMQClusters请求参数结构体
    public struct DescribeRocketMQClustersRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64

        /// 限制数目
        public let limit: UInt64

        /// 按照集群ID关键字搜索
        public let idKeyword: String?

        /// 按照集群名称关键字搜索
        public let nameKeyword: String?

        /// 集群ID列表过滤
        public let clusterIdList: [String]?

        /// 标签过滤查找时，需要设置为true
        public let isTagFilter: Bool?

        /// 过滤器。目前支持标签过滤。
        public let filters: [Filter]?

        public init(offset: UInt64, limit: UInt64, idKeyword: String? = nil, nameKeyword: String? = nil, clusterIdList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.idKeyword = idKeyword
            self.nameKeyword = nameKeyword
            self.clusterIdList = clusterIdList
            self.isTagFilter = isTagFilter
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case idKeyword = "IdKeyword"
            case nameKeyword = "NameKeyword"
            case clusterIdList = "ClusterIdList"
            case isTagFilter = "IsTagFilter"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRocketMQClustersResponse) -> DescribeRocketMQClustersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRocketMQClustersRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, idKeyword: self.idKeyword, nameKeyword: self.nameKeyword, clusterIdList: self.clusterIdList, isTagFilter: self.isTagFilter, filters: self.filters)
        }
    }

    /// DescribeRocketMQClusters返回参数结构体
    public struct DescribeRocketMQClustersResponse: TCPaginatedResponse {
        /// 集群信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterList: [RocketMQClusterDetail]?

        /// 总条数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterList = "ClusterList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RocketMQClusterDetail] {
            self.clusterList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取RocketMQ集群列表
    @inlinable
    public func describeRocketMQClusters(_ input: DescribeRocketMQClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQClustersResponse> {
        self.client.execute(action: "DescribeRocketMQClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ集群列表
    @inlinable
    public func describeRocketMQClusters(_ input: DescribeRocketMQClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQClustersResponse {
        try await self.client.execute(action: "DescribeRocketMQClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取RocketMQ集群列表
    @inlinable
    public func describeRocketMQClusters(offset: UInt64, limit: UInt64, idKeyword: String? = nil, nameKeyword: String? = nil, clusterIdList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQClustersResponse> {
        self.describeRocketMQClusters(.init(offset: offset, limit: limit, idKeyword: idKeyword, nameKeyword: nameKeyword, clusterIdList: clusterIdList, isTagFilter: isTagFilter, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ集群列表
    @inlinable
    public func describeRocketMQClusters(offset: UInt64, limit: UInt64, idKeyword: String? = nil, nameKeyword: String? = nil, clusterIdList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQClustersResponse {
        try await self.describeRocketMQClusters(.init(offset: offset, limit: limit, idKeyword: idKeyword, nameKeyword: nameKeyword, clusterIdList: clusterIdList, isTagFilter: isTagFilter, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ集群列表
    @inlinable
    public func describeRocketMQClustersPaginated(_ input: DescribeRocketMQClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RocketMQClusterDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeRocketMQClusters, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ集群列表
    @inlinable @discardableResult
    public func describeRocketMQClustersPaginated(_ input: DescribeRocketMQClustersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRocketMQClustersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRocketMQClusters, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取RocketMQ集群列表
    ///
    /// - Returns: `AsyncSequence`s of `RocketMQClusterDetail` and `DescribeRocketMQClustersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRocketMQClustersPaginator(_ input: DescribeRocketMQClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRocketMQClustersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRocketMQClusters, logger: logger, on: eventLoop)
    }
}
