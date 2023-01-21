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

extension Vpc {
    /// DescribeVpnConnections请求参数结构体
    public struct DescribeVpnConnectionsRequest: TCRequestModel {
        /// VPN通道实例ID。形如：vpnx-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpnConnectionIds和Filters。
        public let vpnConnectionIds: [String]?

        /// 过滤条件。每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定VpnConnectionIds和Filters。
        /// <li>vpc-id - String - VPC实例ID，形如：`vpc-0a36uwkr`。</li>
        /// <li>vpn-gateway-id - String - VPN网关实例ID，形如：`vpngw-p4lmqawn`。</li>
        /// <li>customer-gateway-id - String - 对端网关实例ID，形如：`cgw-l4rblw63`。</li>
        /// <li>vpn-connection-name - String - 通道名称，形如：`test-vpn`。</li>
        /// <li>vpn-connection-id - String - 通道实例ID，形如：`vpnx-5p7vkch8"`。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        public init(vpnConnectionIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.vpnConnectionIds = vpnConnectionIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case vpnConnectionIds = "VpnConnectionIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeVpnConnections返回参数结构体
    public struct DescribeVpnConnectionsResponse: TCResponseModel {
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
    }

    /// 查询VPN通道列表
    ///
    ///  本接口（DescribeVpnConnections）查询VPN通道列表。
    @inlinable
    public func describeVpnConnections(_ input: DescribeVpnConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnConnectionsResponse> {
        self.client.execute(action: "DescribeVpnConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询VPN通道列表
    ///
    ///  本接口（DescribeVpnConnections）查询VPN通道列表。
    @inlinable
    public func describeVpnConnections(_ input: DescribeVpnConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnConnectionsResponse {
        try await self.client.execute(action: "DescribeVpnConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询VPN通道列表
    ///
    ///  本接口（DescribeVpnConnections）查询VPN通道列表。
    @inlinable
    public func describeVpnConnections(vpnConnectionIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnConnectionsResponse> {
        self.describeVpnConnections(DescribeVpnConnectionsRequest(vpnConnectionIds: vpnConnectionIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPN通道列表
    ///
    ///  本接口（DescribeVpnConnections）查询VPN通道列表。
    @inlinable
    public func describeVpnConnections(vpnConnectionIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnConnectionsResponse {
        try await self.describeVpnConnections(DescribeVpnConnectionsRequest(vpnConnectionIds: vpnConnectionIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
