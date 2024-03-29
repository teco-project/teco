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

extension Dbbrain {
    /// DescribeProxyProcessStatistics请求参数结构体
    public struct DescribeProxyProcessStatisticsRequest: TCPaginatedRequest {
        /// 实例 ID 。
        public let instanceId: String

        /// 该实例下需要查询的某一个 ProxyID 。
        public let instanceProxyId: String

        /// 返回数量。
        public let limit: Int64

        /// 服务产品类型，支持值包括： "redis" - 云数据库 Redis。
        public let product: String

        /// 偏移量，默认0。
        public let offset: Int64?

        /// 按照某字断排序。支持值包括："AllConn"，"ActiveConn"，"Ip"。
        public let sortBy: String?

        /// 排序方向。支持值包括："DESC"，"ASC"。
        public let orderDirection: String?

        public init(instanceId: String, instanceProxyId: String, limit: Int64, product: String, offset: Int64? = nil, sortBy: String? = nil, orderDirection: String? = nil) {
            self.instanceId = instanceId
            self.instanceProxyId = instanceProxyId
            self.limit = limit
            self.product = product
            self.offset = offset
            self.sortBy = sortBy
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceProxyId = "InstanceProxyId"
            case limit = "Limit"
            case product = "Product"
            case offset = "Offset"
            case sortBy = "SortBy"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProxyProcessStatisticsResponse) -> DescribeProxyProcessStatisticsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(instanceId: self.instanceId, instanceProxyId: self.instanceProxyId, limit: self.limit, product: self.product, offset: (self.offset ?? 0) + .init(response.getItems().count), sortBy: self.sortBy, orderDirection: self.orderDirection)
        }
    }

    /// DescribeProxyProcessStatistics返回参数结构体
    public struct DescribeProxyProcessStatisticsResponse: TCPaginatedResponse {
        /// 实时会话统计详情。
        public let processStatistics: ProcessStatistic

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case processStatistics = "ProcessStatistics"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SessionItem`` list from the paginated response.
        public func getItems() -> [SessionItem] {
            self.processStatistics.items
        }
    }

    /// 获取单个proxy实时会话统计详情
    ///
    /// 获取当前实例下的单个proxy的会话统计详情信息， 返回数据为单个 proxy 的会话统计信息。【注意】该接口仅限部分环境调用。
    @inlinable
    public func describeProxyProcessStatistics(_ input: DescribeProxyProcessStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxyProcessStatisticsResponse> {
        self.client.execute(action: "DescribeProxyProcessStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取单个proxy实时会话统计详情
    ///
    /// 获取当前实例下的单个proxy的会话统计详情信息， 返回数据为单个 proxy 的会话统计信息。【注意】该接口仅限部分环境调用。
    @inlinable
    public func describeProxyProcessStatistics(_ input: DescribeProxyProcessStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxyProcessStatisticsResponse {
        try await self.client.execute(action: "DescribeProxyProcessStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取单个proxy实时会话统计详情
    ///
    /// 获取当前实例下的单个proxy的会话统计详情信息， 返回数据为单个 proxy 的会话统计信息。【注意】该接口仅限部分环境调用。
    @inlinable
    public func describeProxyProcessStatistics(instanceId: String, instanceProxyId: String, limit: Int64, product: String, offset: Int64? = nil, sortBy: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxyProcessStatisticsResponse> {
        self.describeProxyProcessStatistics(.init(instanceId: instanceId, instanceProxyId: instanceProxyId, limit: limit, product: product, offset: offset, sortBy: sortBy, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 获取单个proxy实时会话统计详情
    ///
    /// 获取当前实例下的单个proxy的会话统计详情信息， 返回数据为单个 proxy 的会话统计信息。【注意】该接口仅限部分环境调用。
    @inlinable
    public func describeProxyProcessStatistics(instanceId: String, instanceProxyId: String, limit: Int64, product: String, offset: Int64? = nil, sortBy: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxyProcessStatisticsResponse {
        try await self.describeProxyProcessStatistics(.init(instanceId: instanceId, instanceProxyId: instanceProxyId, limit: limit, product: product, offset: offset, sortBy: sortBy, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 获取单个proxy实时会话统计详情
    ///
    /// 获取当前实例下的单个proxy的会话统计详情信息， 返回数据为单个 proxy 的会话统计信息。【注意】该接口仅限部分环境调用。
    @inlinable
    public func describeProxyProcessStatisticsPaginated(_ input: DescribeProxyProcessStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [SessionItem])> {
        self.client.paginate(input: input, region: region, command: self.describeProxyProcessStatistics, logger: logger, on: eventLoop)
    }

    /// 获取单个proxy实时会话统计详情
    ///
    /// 获取当前实例下的单个proxy的会话统计详情信息， 返回数据为单个 proxy 的会话统计信息。【注意】该接口仅限部分环境调用。
    @inlinable @discardableResult
    public func describeProxyProcessStatisticsPaginated(_ input: DescribeProxyProcessStatisticsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProxyProcessStatisticsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProxyProcessStatistics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取单个proxy实时会话统计详情
    ///
    /// 获取当前实例下的单个proxy的会话统计详情信息， 返回数据为单个 proxy 的会话统计信息。【注意】该接口仅限部分环境调用。
    ///
    /// - Returns: `AsyncSequence`s of ``SessionItem`` and ``DescribeProxyProcessStatisticsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProxyProcessStatisticsPaginator(_ input: DescribeProxyProcessStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProxyProcessStatisticsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProxyProcessStatistics, logger: logger, on: eventLoop)
    }
}
