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

extension Tdmq {
    /// DescribeAMQPClusters请求参数结构体
    public struct DescribeAMQPClustersRequest: TCPaginatedRequest {
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

        /// 过滤器。目前支持按标签过滤。
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
        public func makeNextRequest(with response: DescribeAMQPClustersResponse) -> DescribeAMQPClustersRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: self.offset + .init(response.getItems().count), limit: self.limit, idKeyword: self.idKeyword, nameKeyword: self.nameKeyword, clusterIdList: self.clusterIdList, isTagFilter: self.isTagFilter, filters: self.filters)
        }
    }

    /// DescribeAMQPClusters返回参数结构体
    public struct DescribeAMQPClustersResponse: TCPaginatedResponse {
        /// 集群信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterList: [AMQPClusterDetail]?

        /// 总条数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterList = "ClusterList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AMQPClusterDetail`` list from the paginated response.
        public func getItems() -> [AMQPClusterDetail] {
            self.clusterList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取amqp集群列表
    @inlinable
    public func describeAMQPClusters(_ input: DescribeAMQPClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAMQPClustersResponse> {
        self.client.execute(action: "DescribeAMQPClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取amqp集群列表
    @inlinable
    public func describeAMQPClusters(_ input: DescribeAMQPClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAMQPClustersResponse {
        try await self.client.execute(action: "DescribeAMQPClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取amqp集群列表
    @inlinable
    public func describeAMQPClusters(offset: UInt64, limit: UInt64, idKeyword: String? = nil, nameKeyword: String? = nil, clusterIdList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAMQPClustersResponse> {
        self.describeAMQPClusters(.init(offset: offset, limit: limit, idKeyword: idKeyword, nameKeyword: nameKeyword, clusterIdList: clusterIdList, isTagFilter: isTagFilter, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取amqp集群列表
    @inlinable
    public func describeAMQPClusters(offset: UInt64, limit: UInt64, idKeyword: String? = nil, nameKeyword: String? = nil, clusterIdList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAMQPClustersResponse {
        try await self.describeAMQPClusters(.init(offset: offset, limit: limit, idKeyword: idKeyword, nameKeyword: nameKeyword, clusterIdList: clusterIdList, isTagFilter: isTagFilter, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取amqp集群列表
    @inlinable
    public func describeAMQPClustersPaginated(_ input: DescribeAMQPClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AMQPClusterDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeAMQPClusters, logger: logger, on: eventLoop)
    }

    /// 获取amqp集群列表
    @inlinable @discardableResult
    public func describeAMQPClustersPaginated(_ input: DescribeAMQPClustersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAMQPClustersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAMQPClusters, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取amqp集群列表
    ///
    /// - Returns: `AsyncSequence`s of ``AMQPClusterDetail`` and ``DescribeAMQPClustersResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAMQPClustersPaginator(_ input: DescribeAMQPClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAMQPClustersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAMQPClusters, logger: logger, on: eventLoop)
    }
}
