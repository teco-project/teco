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

extension Vpc {
    /// DescribeVpnGatewayCcnRoutes请求参数结构体
    public struct DescribeVpnGatewayCcnRoutesRequest: TCPaginatedRequest {
        /// VPN网关实例ID。
        public let vpnGatewayId: String

        /// 偏移量。默认值：0
        public let offset: UInt64?

        /// 返回数量。默认值：20
        public let limit: UInt64?

        public init(vpnGatewayId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.vpnGatewayId = vpnGatewayId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVpnGatewayCcnRoutesResponse) -> DescribeVpnGatewayCcnRoutesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(vpnGatewayId: self.vpnGatewayId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeVpnGatewayCcnRoutes返回参数结构体
    public struct DescribeVpnGatewayCcnRoutesResponse: TCPaginatedResponse {
        /// 云联网路由（IDC网段）列表。
        public let routeSet: [VpngwCcnRoutes]

        /// 符合条件的对象数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case routeSet = "RouteSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``VpngwCcnRoutes`` list from the paginated response.
        public func getItems() -> [VpngwCcnRoutes] {
            self.routeSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询VPN网关云联网路由
    ///
    /// 本接口（DescribeVpnGatewayCcnRoutes）用于查询VPN网关云联网路由。
    @inlinable
    public func describeVpnGatewayCcnRoutes(_ input: DescribeVpnGatewayCcnRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnGatewayCcnRoutesResponse> {
        self.client.execute(action: "DescribeVpnGatewayCcnRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关云联网路由
    ///
    /// 本接口（DescribeVpnGatewayCcnRoutes）用于查询VPN网关云联网路由。
    @inlinable
    public func describeVpnGatewayCcnRoutes(_ input: DescribeVpnGatewayCcnRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnGatewayCcnRoutesResponse {
        try await self.client.execute(action: "DescribeVpnGatewayCcnRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询VPN网关云联网路由
    ///
    /// 本接口（DescribeVpnGatewayCcnRoutes）用于查询VPN网关云联网路由。
    @inlinable
    public func describeVpnGatewayCcnRoutes(vpnGatewayId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnGatewayCcnRoutesResponse> {
        self.describeVpnGatewayCcnRoutes(.init(vpnGatewayId: vpnGatewayId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关云联网路由
    ///
    /// 本接口（DescribeVpnGatewayCcnRoutes）用于查询VPN网关云联网路由。
    @inlinable
    public func describeVpnGatewayCcnRoutes(vpnGatewayId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnGatewayCcnRoutesResponse {
        try await self.describeVpnGatewayCcnRoutes(.init(vpnGatewayId: vpnGatewayId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关云联网路由
    ///
    /// 本接口（DescribeVpnGatewayCcnRoutes）用于查询VPN网关云联网路由。
    @inlinable
    public func describeVpnGatewayCcnRoutesPaginated(_ input: DescribeVpnGatewayCcnRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [VpngwCcnRoutes])> {
        self.client.paginate(input: input, region: region, command: self.describeVpnGatewayCcnRoutes, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关云联网路由
    ///
    /// 本接口（DescribeVpnGatewayCcnRoutes）用于查询VPN网关云联网路由。
    @inlinable @discardableResult
    public func describeVpnGatewayCcnRoutesPaginated(_ input: DescribeVpnGatewayCcnRoutesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVpnGatewayCcnRoutesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVpnGatewayCcnRoutes, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关云联网路由
    ///
    /// 本接口（DescribeVpnGatewayCcnRoutes）用于查询VPN网关云联网路由。
    ///
    /// - Returns: `AsyncSequence`s of ``VpngwCcnRoutes`` and ``DescribeVpnGatewayCcnRoutesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVpnGatewayCcnRoutesPaginator(_ input: DescribeVpnGatewayCcnRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVpnGatewayCcnRoutesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVpnGatewayCcnRoutes, logger: logger, on: eventLoop)
    }
}
