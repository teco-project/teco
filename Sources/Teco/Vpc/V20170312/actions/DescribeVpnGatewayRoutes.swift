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

extension Vpc {
    /// DescribeVpnGatewayRoutes请求参数结构体
    public struct DescribeVpnGatewayRoutesRequest: TCPaginatedRequest {
        /// VPN网关实例ID。
        public let vpnGatewayId: String

        /// 过滤条件,  条件包括(DestinationCidr, InstanceId,InstanceType)。
        public let filters: [Filter]?

        /// 偏移量, 默认0。
        public let offset: Int64?

        /// 单页个数, 默认20, 最大值100。
        public let limit: Int64?

        public init(vpnGatewayId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.vpnGatewayId = vpnGatewayId
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVpnGatewayRoutesResponse) -> DescribeVpnGatewayRoutesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVpnGatewayRoutesRequest(vpnGatewayId: self.vpnGatewayId, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeVpnGatewayRoutes返回参数结构体
    public struct DescribeVpnGatewayRoutesResponse: TCPaginatedResponse {
        /// VPN网关目的路由。
        public let routes: [VpnGatewayRoute]

        /// 路由条数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case routes = "Routes"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VpnGatewayRoute] {
            self.routes
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询VPN网关路由
    ///
    /// 本接口（DescribeVpnGatewayRoutes）用于查询VPN网关路由。
    @inlinable
    public func describeVpnGatewayRoutes(_ input: DescribeVpnGatewayRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnGatewayRoutesResponse> {
        self.client.execute(action: "DescribeVpnGatewayRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关路由
    ///
    /// 本接口（DescribeVpnGatewayRoutes）用于查询VPN网关路由。
    @inlinable
    public func describeVpnGatewayRoutes(_ input: DescribeVpnGatewayRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnGatewayRoutesResponse {
        try await self.client.execute(action: "DescribeVpnGatewayRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询VPN网关路由
    ///
    /// 本接口（DescribeVpnGatewayRoutes）用于查询VPN网关路由。
    @inlinable
    public func describeVpnGatewayRoutes(vpnGatewayId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnGatewayRoutesResponse> {
        self.describeVpnGatewayRoutes(.init(vpnGatewayId: vpnGatewayId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关路由
    ///
    /// 本接口（DescribeVpnGatewayRoutes）用于查询VPN网关路由。
    @inlinable
    public func describeVpnGatewayRoutes(vpnGatewayId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnGatewayRoutesResponse {
        try await self.describeVpnGatewayRoutes(.init(vpnGatewayId: vpnGatewayId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关路由
    ///
    /// 本接口（DescribeVpnGatewayRoutes）用于查询VPN网关路由。
    @inlinable
    public func describeVpnGatewayRoutesPaginated(_ input: DescribeVpnGatewayRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [VpnGatewayRoute])> {
        self.client.paginate(input: input, region: region, command: self.describeVpnGatewayRoutes, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关路由
    ///
    /// 本接口（DescribeVpnGatewayRoutes）用于查询VPN网关路由。
    @inlinable @discardableResult
    public func describeVpnGatewayRoutesPaginated(_ input: DescribeVpnGatewayRoutesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVpnGatewayRoutesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVpnGatewayRoutes, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关路由
    ///
    /// 本接口（DescribeVpnGatewayRoutes）用于查询VPN网关路由。
    ///
    /// - Returns: `AsyncSequence`s of `VpnGatewayRoute` and `DescribeVpnGatewayRoutesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVpnGatewayRoutesPaginator(_ input: DescribeVpnGatewayRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVpnGatewayRoutesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVpnGatewayRoutes, logger: logger, on: eventLoop)
    }
}
