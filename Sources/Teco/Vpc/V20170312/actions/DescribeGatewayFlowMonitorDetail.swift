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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Vpc {
    /// DescribeGatewayFlowMonitorDetail请求参数结构体
    public struct DescribeGatewayFlowMonitorDetailRequest: TCPaginatedRequest {
        /// 时间点。表示要查询这分钟内的明细。如：`2019-02-28 18:15:20`，将查询 `18:15` 这一分钟内的明细。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$timePoint`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var timePoint: Date

        /// VPN网关实例ID，形如：`vpn-ltjahce6`。
        public let vpnId: String?

        /// 专线网关实例ID，形如：`dcg-ltjahce6`。
        public let directConnectGatewayId: String?

        /// 对等连接实例ID，形如：`pcx-ltjahce6`。
        public let peeringConnectionId: String?

        /// NAT网关实例ID，形如：`nat-ltjahce6`。
        public let natId: String?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// 排序字段。支持 `InPkg` `OutPkg` `InTraffic` `OutTraffic`。默认值`OutTraffic`。
        public let orderField: String?

        /// 排序方法。顺序：`ASC`，倒序：`DESC`。默认值`DESC`。
        public let orderDirection: String?

        public init(timePoint: Date, vpnId: String? = nil, directConnectGatewayId: String? = nil, peeringConnectionId: String? = nil, natId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self._timePoint = .init(wrappedValue: timePoint)
            self.vpnId = vpnId
            self.directConnectGatewayId = directConnectGatewayId
            self.peeringConnectionId = peeringConnectionId
            self.natId = natId
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case timePoint = "TimePoint"
            case vpnId = "VpnId"
            case directConnectGatewayId = "DirectConnectGatewayId"
            case peeringConnectionId = "PeeringConnectionId"
            case natId = "NatId"
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGatewayFlowMonitorDetailResponse) -> DescribeGatewayFlowMonitorDetailRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(timePoint: self.timePoint, vpnId: self.vpnId, directConnectGatewayId: self.directConnectGatewayId, peeringConnectionId: self.peeringConnectionId, natId: self.natId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderField: self.orderField, orderDirection: self.orderDirection)
        }
    }

    /// DescribeGatewayFlowMonitorDetail返回参数结构体
    public struct DescribeGatewayFlowMonitorDetailResponse: TCPaginatedResponse {
        /// 符合条件的对象数。
        public let totalCount: UInt64

        /// 网关流量监控明细。
        public let gatewayFlowMonitorDetailSet: [GatewayFlowMonitorDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case gatewayFlowMonitorDetailSet = "GatewayFlowMonitorDetailSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``GatewayFlowMonitorDetail`` list from the paginated response.
        public func getItems() -> [GatewayFlowMonitorDetail] {
            self.gatewayFlowMonitorDetailSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询网关流量监控明细
    ///
    /// 本接口（DescribeGatewayFlowMonitorDetail）用于查询网关流量监控明细。
    /// * 只支持单个网关实例查询。即入参 `VpnId`、 `DirectConnectGatewayId`、 `PeeringConnectionId`、 `NatId` 最多只支持传一个，且必须传一个。
    /// * 如果网关有流量，但调用本接口没有返回数据，请在控制台对应网关详情页确认是否开启网关流量监控。
    @inlinable
    public func describeGatewayFlowMonitorDetail(_ input: DescribeGatewayFlowMonitorDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayFlowMonitorDetailResponse> {
        self.client.execute(action: "DescribeGatewayFlowMonitorDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网关流量监控明细
    ///
    /// 本接口（DescribeGatewayFlowMonitorDetail）用于查询网关流量监控明细。
    /// * 只支持单个网关实例查询。即入参 `VpnId`、 `DirectConnectGatewayId`、 `PeeringConnectionId`、 `NatId` 最多只支持传一个，且必须传一个。
    /// * 如果网关有流量，但调用本接口没有返回数据，请在控制台对应网关详情页确认是否开启网关流量监控。
    @inlinable
    public func describeGatewayFlowMonitorDetail(_ input: DescribeGatewayFlowMonitorDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayFlowMonitorDetailResponse {
        try await self.client.execute(action: "DescribeGatewayFlowMonitorDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网关流量监控明细
    ///
    /// 本接口（DescribeGatewayFlowMonitorDetail）用于查询网关流量监控明细。
    /// * 只支持单个网关实例查询。即入参 `VpnId`、 `DirectConnectGatewayId`、 `PeeringConnectionId`、 `NatId` 最多只支持传一个，且必须传一个。
    /// * 如果网关有流量，但调用本接口没有返回数据，请在控制台对应网关详情页确认是否开启网关流量监控。
    @inlinable
    public func describeGatewayFlowMonitorDetail(timePoint: Date, vpnId: String? = nil, directConnectGatewayId: String? = nil, peeringConnectionId: String? = nil, natId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayFlowMonitorDetailResponse> {
        self.describeGatewayFlowMonitorDetail(.init(timePoint: timePoint, vpnId: vpnId, directConnectGatewayId: directConnectGatewayId, peeringConnectionId: peeringConnectionId, natId: natId, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网关流量监控明细
    ///
    /// 本接口（DescribeGatewayFlowMonitorDetail）用于查询网关流量监控明细。
    /// * 只支持单个网关实例查询。即入参 `VpnId`、 `DirectConnectGatewayId`、 `PeeringConnectionId`、 `NatId` 最多只支持传一个，且必须传一个。
    /// * 如果网关有流量，但调用本接口没有返回数据，请在控制台对应网关详情页确认是否开启网关流量监控。
    @inlinable
    public func describeGatewayFlowMonitorDetail(timePoint: Date, vpnId: String? = nil, directConnectGatewayId: String? = nil, peeringConnectionId: String? = nil, natId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayFlowMonitorDetailResponse {
        try await self.describeGatewayFlowMonitorDetail(.init(timePoint: timePoint, vpnId: vpnId, directConnectGatewayId: directConnectGatewayId, peeringConnectionId: peeringConnectionId, natId: natId, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网关流量监控明细
    ///
    /// 本接口（DescribeGatewayFlowMonitorDetail）用于查询网关流量监控明细。
    /// * 只支持单个网关实例查询。即入参 `VpnId`、 `DirectConnectGatewayId`、 `PeeringConnectionId`、 `NatId` 最多只支持传一个，且必须传一个。
    /// * 如果网关有流量，但调用本接口没有返回数据，请在控制台对应网关详情页确认是否开启网关流量监控。
    @inlinable
    public func describeGatewayFlowMonitorDetailPaginated(_ input: DescribeGatewayFlowMonitorDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [GatewayFlowMonitorDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeGatewayFlowMonitorDetail, logger: logger, on: eventLoop)
    }

    /// 查询网关流量监控明细
    ///
    /// 本接口（DescribeGatewayFlowMonitorDetail）用于查询网关流量监控明细。
    /// * 只支持单个网关实例查询。即入参 `VpnId`、 `DirectConnectGatewayId`、 `PeeringConnectionId`、 `NatId` 最多只支持传一个，且必须传一个。
    /// * 如果网关有流量，但调用本接口没有返回数据，请在控制台对应网关详情页确认是否开启网关流量监控。
    @inlinable @discardableResult
    public func describeGatewayFlowMonitorDetailPaginated(_ input: DescribeGatewayFlowMonitorDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGatewayFlowMonitorDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGatewayFlowMonitorDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询网关流量监控明细
    ///
    /// 本接口（DescribeGatewayFlowMonitorDetail）用于查询网关流量监控明细。
    /// * 只支持单个网关实例查询。即入参 `VpnId`、 `DirectConnectGatewayId`、 `PeeringConnectionId`、 `NatId` 最多只支持传一个，且必须传一个。
    /// * 如果网关有流量，但调用本接口没有返回数据，请在控制台对应网关详情页确认是否开启网关流量监控。
    ///
    /// - Returns: `AsyncSequence`s of ``GatewayFlowMonitorDetail`` and ``DescribeGatewayFlowMonitorDetailResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGatewayFlowMonitorDetailPaginator(_ input: DescribeGatewayFlowMonitorDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGatewayFlowMonitorDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGatewayFlowMonitorDetail, logger: logger, on: eventLoop)
    }
}
