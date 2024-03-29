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

extension Bmvpc {
    /// DescribeRouteTables请求参数结构体
    public struct DescribeRouteTablesRequest: TCPaginatedRequest {
        /// 路由表实例ID，例如：rtb-azd4dt1c。
        public let routeTableIds: [String]?

        /// 过滤条件，参数不支持同时指定RouteTableIds和Filters。
        /// route-table-id - String - （过滤条件）路由表实例ID。
        /// route-table-name - String - （过滤条件）路由表名称。
        /// route-table-id-like - String - （模糊过滤条件）路由表实例ID。
        /// route-table-name-like - String - （模糊过滤条件）路由表名称。
        /// vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        /// zone - String - （过滤条件）可用区。
        public let filters: [Filter]?

        /// 初始行的偏移量，默认为0。
        public let offset: UInt64?

        /// 每页行数，默认为20。
        public let limit: UInt64?

        /// 排序字段, 支持按“RouteTableId”，“VpcId”, "RouteTableName", "CreateTime"
        public let orderField: String?

        /// 排序方向, “asc”、“desc”
        public let orderDirection: String?

        public init(routeTableIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.routeTableIds = routeTableIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case routeTableIds = "RouteTableIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRouteTablesResponse) -> DescribeRouteTablesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(routeTableIds: self.routeTableIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderField: self.orderField, orderDirection: self.orderDirection)
        }
    }

    /// DescribeRouteTables返回参数结构体
    public struct DescribeRouteTablesResponse: TCPaginatedResponse {
        /// 路由表个数
        public let totalCount: UInt64

        /// 路由表列表
        public let routeTableSet: [RouteTable]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case routeTableSet = "RouteTableSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RouteTable`` list from the paginated response.
        public func getItems() -> [RouteTable] {
            self.routeTableSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询路由表
    ///
    /// 本接口（DescribeRouteTables）用于查询路由表。
    @inlinable
    public func describeRouteTables(_ input: DescribeRouteTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRouteTablesResponse> {
        self.client.execute(action: "DescribeRouteTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询路由表
    ///
    /// 本接口（DescribeRouteTables）用于查询路由表。
    @inlinable
    public func describeRouteTables(_ input: DescribeRouteTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRouteTablesResponse {
        try await self.client.execute(action: "DescribeRouteTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询路由表
    ///
    /// 本接口（DescribeRouteTables）用于查询路由表。
    @inlinable
    public func describeRouteTables(routeTableIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRouteTablesResponse> {
        self.describeRouteTables(.init(routeTableIds: routeTableIds, filters: filters, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询路由表
    ///
    /// 本接口（DescribeRouteTables）用于查询路由表。
    @inlinable
    public func describeRouteTables(routeTableIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRouteTablesResponse {
        try await self.describeRouteTables(.init(routeTableIds: routeTableIds, filters: filters, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询路由表
    ///
    /// 本接口（DescribeRouteTables）用于查询路由表。
    @inlinable
    public func describeRouteTablesPaginated(_ input: DescribeRouteTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RouteTable])> {
        self.client.paginate(input: input, region: region, command: self.describeRouteTables, logger: logger, on: eventLoop)
    }

    /// 查询路由表
    ///
    /// 本接口（DescribeRouteTables）用于查询路由表。
    @inlinable @discardableResult
    public func describeRouteTablesPaginated(_ input: DescribeRouteTablesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRouteTablesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRouteTables, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询路由表
    ///
    /// 本接口（DescribeRouteTables）用于查询路由表。
    ///
    /// - Returns: `AsyncSequence`s of ``RouteTable`` and ``DescribeRouteTablesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRouteTablesPaginator(_ input: DescribeRouteTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRouteTablesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRouteTables, logger: logger, on: eventLoop)
    }
}
