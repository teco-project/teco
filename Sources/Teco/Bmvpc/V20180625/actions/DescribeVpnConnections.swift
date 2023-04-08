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

extension Bmvpc {
    /// DescribeVpnConnections请求参数结构体
    public struct DescribeVpnConnectionsRequest: TCPaginatedRequest {
        /// VPN通道实例ID。形如：bmvpnx-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpnConnectionIds和Filters。
        public let vpnConnectionIds: [String]?

        /// 过滤条件，详见下表：实例过滤条件表。每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定VpnConnectionIds和Filters。
        /// <li>vpc-id - String - （过滤条件）VPC实例ID形如：vpc-f49l6u0z。</li>
        /// <li>state - String - （过滤条件 VPN状态：creating，available，createfailed，changing，changefailed，deleting，deletefailed。</li>
        /// <li>zone - String - （过滤条件）VPN所在可用区，形如：ap-guangzhou-2。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// VPN网关实例ID
        public let vpnGatewayId: String?

        /// VPN通道名称
        public let vpnConnectionName: String?

        /// 排序字段, 支持"CreateTime"排序
        public let orderField: String?

        /// 排序方向, “asc”、“desc”
        public let orderDirection: String?

        public init(vpnConnectionIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, vpnGatewayId: String? = nil, vpnConnectionName: String? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.vpnConnectionIds = vpnConnectionIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.vpnGatewayId = vpnGatewayId
            self.vpnConnectionName = vpnConnectionName
            self.orderField = orderField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case vpnConnectionIds = "VpnConnectionIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case vpnGatewayId = "VpnGatewayId"
            case vpnConnectionName = "VpnConnectionName"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVpnConnectionsResponse) -> DescribeVpnConnectionsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVpnConnectionsRequest(vpnConnectionIds: self.vpnConnectionIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, vpnGatewayId: self.vpnGatewayId, vpnConnectionName: self.vpnConnectionName, orderField: self.orderField, orderDirection: self.orderDirection)
        }
    }

    /// DescribeVpnConnections返回参数结构体
    public struct DescribeVpnConnectionsResponse: TCPaginatedResponse {
        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// VPN通道实例。
        public let vpnConnectionSet: [VpnConnection]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case vpnConnectionSet = "VpnConnectionSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VpnConnection] {
            self.vpnConnectionSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询VPN通道列表
    ///
    /// 本接口（DescribeVpnConnections）查询VPN通道列表。
    @inlinable
    public func describeVpnConnections(_ input: DescribeVpnConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnConnectionsResponse> {
        self.client.execute(action: "DescribeVpnConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询VPN通道列表
    ///
    /// 本接口（DescribeVpnConnections）查询VPN通道列表。
    @inlinable
    public func describeVpnConnections(_ input: DescribeVpnConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnConnectionsResponse {
        try await self.client.execute(action: "DescribeVpnConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询VPN通道列表
    ///
    /// 本接口（DescribeVpnConnections）查询VPN通道列表。
    @inlinable
    public func describeVpnConnections(vpnConnectionIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, vpnGatewayId: String? = nil, vpnConnectionName: String? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnConnectionsResponse> {
        self.describeVpnConnections(.init(vpnConnectionIds: vpnConnectionIds, filters: filters, offset: offset, limit: limit, vpnGatewayId: vpnGatewayId, vpnConnectionName: vpnConnectionName, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPN通道列表
    ///
    /// 本接口（DescribeVpnConnections）查询VPN通道列表。
    @inlinable
    public func describeVpnConnections(vpnConnectionIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, vpnGatewayId: String? = nil, vpnConnectionName: String? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnConnectionsResponse {
        try await self.describeVpnConnections(.init(vpnConnectionIds: vpnConnectionIds, filters: filters, offset: offset, limit: limit, vpnGatewayId: vpnGatewayId, vpnConnectionName: vpnConnectionName, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPN通道列表
    ///
    /// 本接口（DescribeVpnConnections）查询VPN通道列表。
    @inlinable
    public func describeVpnConnectionsPaginated(_ input: DescribeVpnConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [VpnConnection])> {
        self.client.paginate(input: input, region: region, command: self.describeVpnConnections, logger: logger, on: eventLoop)
    }

    /// 查询VPN通道列表
    ///
    /// 本接口（DescribeVpnConnections）查询VPN通道列表。
    @inlinable @discardableResult
    public func describeVpnConnectionsPaginated(_ input: DescribeVpnConnectionsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVpnConnectionsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVpnConnections, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询VPN通道列表
    ///
    /// 本接口（DescribeVpnConnections）查询VPN通道列表。
    ///
    /// - Returns: `AsyncSequence`s of `VpnConnection` and `DescribeVpnConnectionsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVpnConnectionsPaginator(_ input: DescribeVpnConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVpnConnectionsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVpnConnections, logger: logger, on: eventLoop)
    }
}
