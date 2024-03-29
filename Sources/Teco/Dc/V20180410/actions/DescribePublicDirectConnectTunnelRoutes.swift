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

extension Dc {
    /// DescribePublicDirectConnectTunnelRoutes请求参数结构体
    public struct DescribePublicDirectConnectTunnelRoutesRequest: TCPaginatedRequest {
        /// 专用通道ID
        public let directConnectTunnelId: String

        /// 过滤条件：
        /// route-type：路由类型，取值：BGP/STATIC
        /// route-subnet：路由cidr，取值如：192.68.1.0/24
        public let filters: [Filter]?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100
        public let limit: Int64?

        public init(directConnectTunnelId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.directConnectTunnelId = directConnectTunnelId
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case directConnectTunnelId = "DirectConnectTunnelId"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePublicDirectConnectTunnelRoutesResponse) -> DescribePublicDirectConnectTunnelRoutesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(directConnectTunnelId: self.directConnectTunnelId, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePublicDirectConnectTunnelRoutes返回参数结构体
    public struct DescribePublicDirectConnectTunnelRoutesResponse: TCPaginatedResponse {
        /// 互联网通道路由列表
        public let routes: [DirectConnectTunnelRoute]

        /// 记录总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case routes = "Routes"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DirectConnectTunnelRoute`` list from the paginated response.
        public func getItems() -> [DirectConnectTunnelRoute] {
            self.routes
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询互联网通道路由列表
    ///
    /// 本接口（DescribePublicDirectConnectTunnelRoutes）用于查询互联网通道路由列表
    @inlinable
    public func describePublicDirectConnectTunnelRoutes(_ input: DescribePublicDirectConnectTunnelRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublicDirectConnectTunnelRoutesResponse> {
        self.client.execute(action: "DescribePublicDirectConnectTunnelRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询互联网通道路由列表
    ///
    /// 本接口（DescribePublicDirectConnectTunnelRoutes）用于查询互联网通道路由列表
    @inlinable
    public func describePublicDirectConnectTunnelRoutes(_ input: DescribePublicDirectConnectTunnelRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublicDirectConnectTunnelRoutesResponse {
        try await self.client.execute(action: "DescribePublicDirectConnectTunnelRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询互联网通道路由列表
    ///
    /// 本接口（DescribePublicDirectConnectTunnelRoutes）用于查询互联网通道路由列表
    @inlinable
    public func describePublicDirectConnectTunnelRoutes(directConnectTunnelId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublicDirectConnectTunnelRoutesResponse> {
        self.describePublicDirectConnectTunnelRoutes(.init(directConnectTunnelId: directConnectTunnelId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询互联网通道路由列表
    ///
    /// 本接口（DescribePublicDirectConnectTunnelRoutes）用于查询互联网通道路由列表
    @inlinable
    public func describePublicDirectConnectTunnelRoutes(directConnectTunnelId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublicDirectConnectTunnelRoutesResponse {
        try await self.describePublicDirectConnectTunnelRoutes(.init(directConnectTunnelId: directConnectTunnelId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询互联网通道路由列表
    ///
    /// 本接口（DescribePublicDirectConnectTunnelRoutes）用于查询互联网通道路由列表
    @inlinable
    public func describePublicDirectConnectTunnelRoutesPaginated(_ input: DescribePublicDirectConnectTunnelRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DirectConnectTunnelRoute])> {
        self.client.paginate(input: input, region: region, command: self.describePublicDirectConnectTunnelRoutes, logger: logger, on: eventLoop)
    }

    /// 查询互联网通道路由列表
    ///
    /// 本接口（DescribePublicDirectConnectTunnelRoutes）用于查询互联网通道路由列表
    @inlinable @discardableResult
    public func describePublicDirectConnectTunnelRoutesPaginated(_ input: DescribePublicDirectConnectTunnelRoutesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePublicDirectConnectTunnelRoutesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePublicDirectConnectTunnelRoutes, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询互联网通道路由列表
    ///
    /// 本接口（DescribePublicDirectConnectTunnelRoutes）用于查询互联网通道路由列表
    ///
    /// - Returns: `AsyncSequence`s of ``DirectConnectTunnelRoute`` and ``DescribePublicDirectConnectTunnelRoutesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePublicDirectConnectTunnelRoutesPaginator(_ input: DescribePublicDirectConnectTunnelRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePublicDirectConnectTunnelRoutesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePublicDirectConnectTunnelRoutes, logger: logger, on: eventLoop)
    }
}
