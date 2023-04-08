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

import TecoPaginationHelpers

extension Vpc {
    /// DescribeVpnGateways请求参数结构体
    public struct DescribeVpnGatewaysRequest: TCPaginatedRequest {
        /// VPN网关实例ID。形如：vpngw-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpnGatewayIds和Filters。
        public let vpnGatewayIds: [String]?

        /// 过滤条件，参数不支持同时指定VpnGatewayIds和Filters。
        /// <li>vpc-id - String - （过滤条件）VPC实例ID形如：vpc-f49l6u0z。</li>
        /// <li>vpn-gateway-id - String - （过滤条件）VPN实例ID形如：vpngw-5aluhh9t。</li>
        /// <li>vpn-gateway-name - String - （过滤条件）VPN实例名称。</li>
        /// <li>type - String - （过滤条件）VPN网关类型：'IPSEC', 'SSL'。</li>
        /// <li>public-ip-address- String - （过滤条件）公网IP。</li>
        /// <li>renew-flag - String - （过滤条件）网关续费类型，手动续费：'NOTIFY_AND_MANUAL_RENEW'、自动续费：'NOTIFY_AND_AUTO_RENEW'。</li>
        /// <li>zone - String - （过滤条件）VPN所在可用区，形如：ap-guangzhou-2。</li>
        public let filters: [FilterObject]?

        /// 偏移量
        public let offset: UInt64?

        /// 请求对象个数
        public let limit: UInt64?

        public init(vpnGatewayIds: [String]? = nil, filters: [FilterObject]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.vpnGatewayIds = vpnGatewayIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case vpnGatewayIds = "VpnGatewayIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVpnGatewaysResponse) -> DescribeVpnGatewaysRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVpnGatewaysRequest(vpnGatewayIds: self.vpnGatewayIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeVpnGateways返回参数结构体
    public struct DescribeVpnGatewaysResponse: TCPaginatedResponse {
        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// VPN网关实例详细信息列表。
        public let vpnGatewaySet: [VpnGateway]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case vpnGatewaySet = "VpnGatewaySet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VpnGateway] {
            self.vpnGatewaySet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询VPN网关
    ///
    /// 本接口（DescribeVpnGateways）用于查询VPN网关列表。
    @inlinable
    public func describeVpnGateways(_ input: DescribeVpnGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnGatewaysResponse> {
        self.client.execute(action: "DescribeVpnGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关
    ///
    /// 本接口（DescribeVpnGateways）用于查询VPN网关列表。
    @inlinable
    public func describeVpnGateways(_ input: DescribeVpnGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnGatewaysResponse {
        try await self.client.execute(action: "DescribeVpnGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询VPN网关
    ///
    /// 本接口（DescribeVpnGateways）用于查询VPN网关列表。
    @inlinable
    public func describeVpnGateways(vpnGatewayIds: [String]? = nil, filters: [FilterObject]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnGatewaysResponse> {
        self.describeVpnGateways(.init(vpnGatewayIds: vpnGatewayIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关
    ///
    /// 本接口（DescribeVpnGateways）用于查询VPN网关列表。
    @inlinable
    public func describeVpnGateways(vpnGatewayIds: [String]? = nil, filters: [FilterObject]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnGatewaysResponse {
        try await self.describeVpnGateways(.init(vpnGatewayIds: vpnGatewayIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关
    ///
    /// 本接口（DescribeVpnGateways）用于查询VPN网关列表。
    @inlinable
    public func describeVpnGatewaysPaginated(_ input: DescribeVpnGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [VpnGateway])> {
        self.client.paginate(input: input, region: region, command: self.describeVpnGateways, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关
    ///
    /// 本接口（DescribeVpnGateways）用于查询VPN网关列表。
    @inlinable @discardableResult
    public func describeVpnGatewaysPaginated(_ input: DescribeVpnGatewaysRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVpnGatewaysResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVpnGateways, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关
    ///
    /// 本接口（DescribeVpnGateways）用于查询VPN网关列表。
    ///
    /// - Returns: `AsyncSequence`s of `VpnGateway` and `DescribeVpnGatewaysResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVpnGatewaysPaginator(_ input: DescribeVpnGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVpnGatewaysRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVpnGateways, logger: logger, on: eventLoop)
    }
}
