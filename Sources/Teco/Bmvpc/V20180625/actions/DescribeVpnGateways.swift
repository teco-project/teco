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

extension Bmvpc {
    /// DescribeVpnGateways请求参数结构体
    public struct DescribeVpnGatewaysRequest: TCPaginatedRequest {
        /// VPN网关实例ID。形如：bmvpngw-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpnGatewayIds和Filters。
        public let vpnGatewayIds: [String]?

        /// 过滤条件，参数不支持同时指定VpnGatewayIds和Filters。
        /// <li>vpc-id - String - （过滤条件）VPC实例ID形如：vpc-f49l6u0z。</li>
        /// <li>state - String - （过滤条件 VPN状态：creating，available，createfailed，changing，changefailed，deleting，deletefailed。</li>
        /// <li>zone - String - （过滤条件）VPN所在可用区，形如：ap-guangzhou-2。</li>
        /// <li>vpngw-name - String - （过滤条件）vpn网关名称。</li>
        public let filters: [Filter]?

        /// 偏移量
        public let offset: UInt64?

        /// 请求对象个数
        public let limit: UInt64?

        /// 排序字段, 支持"CreateTime"排序
        public let orderField: String?

        /// 排序方向, “asc”、“desc”
        public let orderDirection: String?

        public init(vpnGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.vpnGatewayIds = vpnGatewayIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case vpnGatewayIds = "VpnGatewayIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeVpnGatewaysResponse) -> DescribeVpnGatewaysRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVpnGatewaysRequest(vpnGatewayIds: self.vpnGatewayIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderField: self.orderField, orderDirection: self.orderDirection)
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
    public func describeVpnGateways(vpnGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnGatewaysResponse> {
        let input = DescribeVpnGatewaysRequest(vpnGatewayIds: vpnGatewayIds, filters: filters, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection)
        return self.client.execute(action: "DescribeVpnGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询VPN网关
    ///
    /// 本接口（DescribeVpnGateways）用于查询VPN网关列表。
    @inlinable
    public func describeVpnGateways(vpnGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnGatewaysResponse {
        let input = DescribeVpnGatewaysRequest(vpnGatewayIds: vpnGatewayIds, filters: filters, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection)
        return try await self.client.execute(action: "DescribeVpnGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
