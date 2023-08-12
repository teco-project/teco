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

extension Tdmq {
    /// DescribePublishers请求参数结构体
    public struct DescribePublishersRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 命名空间名称
        public let namespace: String

        /// 主题名称
        public let topic: String

        /// 参数过滤器，支持ProducerName，Address字段
        public let filters: [Filter]?

        /// 查询偏移量，默认为0
        public let offset: Int64?

        /// 查询条数，默认为20
        public let limit: Int64?

        /// 排序器
        public let sort: Sort?

        public init(clusterId: String, namespace: String, topic: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, sort: Sort? = nil) {
            self.clusterId = clusterId
            self.namespace = namespace
            self.topic = topic
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.sort = sort
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case namespace = "Namespace"
            case topic = "Topic"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case sort = "Sort"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePublishersResponse) -> DescribePublishersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePublishersRequest(clusterId: self.clusterId, namespace: self.namespace, topic: self.topic, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, sort: self.sort)
        }
    }

    /// DescribePublishers返回参数结构体
    public struct DescribePublishersResponse: TCPaginatedResponse {
        /// 总条数
        public let totalCount: Int64

        /// 生产者信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publishers: [Publisher]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case publishers = "Publishers"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Publisher`` list from the paginated response.
        public func getItems() -> [Publisher] {
            self.publishers ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取生产者信息
    ///
    /// 获取生产者信息列表
    @inlinable
    public func describePublishers(_ input: DescribePublishersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublishersResponse> {
        self.client.execute(action: "DescribePublishers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取生产者信息
    ///
    /// 获取生产者信息列表
    @inlinable
    public func describePublishers(_ input: DescribePublishersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublishersResponse {
        try await self.client.execute(action: "DescribePublishers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取生产者信息
    ///
    /// 获取生产者信息列表
    @inlinable
    public func describePublishers(clusterId: String, namespace: String, topic: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, sort: Sort? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublishersResponse> {
        self.describePublishers(.init(clusterId: clusterId, namespace: namespace, topic: topic, filters: filters, offset: offset, limit: limit, sort: sort), region: region, logger: logger, on: eventLoop)
    }

    /// 获取生产者信息
    ///
    /// 获取生产者信息列表
    @inlinable
    public func describePublishers(clusterId: String, namespace: String, topic: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, sort: Sort? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublishersResponse {
        try await self.describePublishers(.init(clusterId: clusterId, namespace: namespace, topic: topic, filters: filters, offset: offset, limit: limit, sort: sort), region: region, logger: logger, on: eventLoop)
    }

    /// 获取生产者信息
    ///
    /// 获取生产者信息列表
    @inlinable
    public func describePublishersPaginated(_ input: DescribePublishersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Publisher])> {
        self.client.paginate(input: input, region: region, command: self.describePublishers, logger: logger, on: eventLoop)
    }

    /// 获取生产者信息
    ///
    /// 获取生产者信息列表
    @inlinable @discardableResult
    public func describePublishersPaginated(_ input: DescribePublishersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePublishersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePublishers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取生产者信息
    ///
    /// 获取生产者信息列表
    ///
    /// - Returns: `AsyncSequence`s of `Publisher` and `DescribePublishersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePublishersPaginator(_ input: DescribePublishersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePublishersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePublishers, logger: logger, on: eventLoop)
    }
}
