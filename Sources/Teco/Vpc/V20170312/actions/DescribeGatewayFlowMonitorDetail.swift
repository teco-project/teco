//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Vpc {
    /// DescribeGatewayFlowMonitorDetail请求参数结构体
    public struct DescribeGatewayFlowMonitorDetailRequest: TCRequestModel {
        /// 时间点。表示要查询这分钟内的明细。如：`2019-02-28 18:15:20`，将查询 `18:15` 这一分钟内的明细。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var timePoint: Date

        /// VPN网关实例ID，形如：`vpn-ltjahce6`。
        public let vpnId: String?

        /// 专线网关实例ID，形如：`dcg-ltjahce6`。
        public let directConnectGatewayId: String?

        /// 对等连接实例ID，形如：`pcx-ltjahce6`。
        public let peeringConnectionId: String?

        /// NAT网关实例ID，形如：`nat-ltjahce6`。
        public let natId: String?

        /// 偏移量。
        public let offset: UInt64?

        /// 返回数量。
        public let limit: UInt64?

        /// 排序字段。支持 `InPkg` `OutPkg` `InTraffic` `OutTraffic`。
        public let orderField: String?

        /// 排序方法。顺序：`ASC`，倒序：`DESC`。
        public let orderDirection: String?

        public init(timePoint: Date, vpnId: String? = nil, directConnectGatewayId: String? = nil, peeringConnectionId: String? = nil, natId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.timePoint = timePoint
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
    }

    /// DescribeGatewayFlowMonitorDetail返回参数结构体
    public struct DescribeGatewayFlowMonitorDetailResponse: TCResponseModel {
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
    }

    /// 查询网关流量监控明细
    ///
    /// 本接口（DescribeGatewayFlowMonitorDetail）用于查询网关流量监控明细。
    /// * 只支持单个网关实例查询。即入参 `VpnId`、 `DirectConnectGatewayId`、 `PeeringConnectionId`、 `NatId` 最多只支持传一个，且必须传一个。
    /// * 如果网关有流量，但调用本接口没有返回数据，请在控制台对应网关详情页确认是否开启网关流量监控。
    @inlinable
    public func describeGatewayFlowMonitorDetail(_ input: DescribeGatewayFlowMonitorDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGatewayFlowMonitorDetailResponse > {
        self.client.execute(action: "DescribeGatewayFlowMonitorDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网关流量监控明细
    ///
    /// 本接口（DescribeGatewayFlowMonitorDetail）用于查询网关流量监控明细。
    /// * 只支持单个网关实例查询。即入参 `VpnId`、 `DirectConnectGatewayId`、 `PeeringConnectionId`、 `NatId` 最多只支持传一个，且必须传一个。
    /// * 如果网关有流量，但调用本接口没有返回数据，请在控制台对应网关详情页确认是否开启网关流量监控。
    @inlinable
    public func describeGatewayFlowMonitorDetail(_ input: DescribeGatewayFlowMonitorDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayFlowMonitorDetailResponse {
        try await self.client.execute(action: "DescribeGatewayFlowMonitorDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网关流量监控明细
    ///
    /// 本接口（DescribeGatewayFlowMonitorDetail）用于查询网关流量监控明细。
    /// * 只支持单个网关实例查询。即入参 `VpnId`、 `DirectConnectGatewayId`、 `PeeringConnectionId`、 `NatId` 最多只支持传一个，且必须传一个。
    /// * 如果网关有流量，但调用本接口没有返回数据，请在控制台对应网关详情页确认是否开启网关流量监控。
    @inlinable
    public func describeGatewayFlowMonitorDetail(timePoint: Date, vpnId: String? = nil, directConnectGatewayId: String? = nil, peeringConnectionId: String? = nil, natId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGatewayFlowMonitorDetailResponse > {
        self.describeGatewayFlowMonitorDetail(DescribeGatewayFlowMonitorDetailRequest(timePoint: timePoint, vpnId: vpnId, directConnectGatewayId: directConnectGatewayId, peeringConnectionId: peeringConnectionId, natId: natId, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection), logger: logger, on: eventLoop)
    }

    /// 查询网关流量监控明细
    ///
    /// 本接口（DescribeGatewayFlowMonitorDetail）用于查询网关流量监控明细。
    /// * 只支持单个网关实例查询。即入参 `VpnId`、 `DirectConnectGatewayId`、 `PeeringConnectionId`、 `NatId` 最多只支持传一个，且必须传一个。
    /// * 如果网关有流量，但调用本接口没有返回数据，请在控制台对应网关详情页确认是否开启网关流量监控。
    @inlinable
    public func describeGatewayFlowMonitorDetail(timePoint: Date, vpnId: String? = nil, directConnectGatewayId: String? = nil, peeringConnectionId: String? = nil, natId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayFlowMonitorDetailResponse {
        try await self.describeGatewayFlowMonitorDetail(DescribeGatewayFlowMonitorDetailRequest(timePoint: timePoint, vpnId: vpnId, directConnectGatewayId: directConnectGatewayId, peeringConnectionId: peeringConnectionId, natId: natId, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection), logger: logger, on: eventLoop)
    }
}
