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
    /// DescribeVpnGatewaySslClients请求参数结构体
    public struct DescribeVpnGatewaySslClientsRequest: TCRequestModel {
        /// 过滤条件，参数不支持同时指定SslVpnClientIds和Filters。
        /// <li>vpc-id - String - （过滤条件）VPC实例ID形如：vpc-f49l6u0z。</li>
        /// <li>vpn-gateway-id - String - （过滤条件）VPN实例ID形如：vpngw-5aluhh9t。</li>
        /// <li>ssl-vpn-server-id - String - （过滤条件）SSL-VPN-SERVER实例ID形如：vpngwSslServer-123456。</li>
        /// <li>ssl-vpn-client-id - String - （过滤条件）SSL-VPN-CLIENT实例ID形如：vpngwSslClient-123456。</li>
        /// <li>ssl-vpn-client-name - String - （过滤条件）SSL-VPN-CLIENT实例名称。</li>
        public let filters: [Filter]?

        /// 偏移量
        public let offset: UInt64?

        /// 请求对象个数
        public let limit: UInt64?

        /// SSL-VPN-CLIENT实例ID。形如：vpngwSslClient-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定SslVpnClientIds和Filters。
        public let sslVpnClientIds: [String]?

        /// VPN门户网站使用。默认是False。
        public let isVpnPortal: Bool?

        public init(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, sslVpnClientIds: [String]? = nil, isVpnPortal: Bool? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.sslVpnClientIds = sslVpnClientIds
            self.isVpnPortal = isVpnPortal
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case sslVpnClientIds = "SslVpnClientIds"
            case isVpnPortal = "IsVpnPortal"
        }
    }

    /// DescribeVpnGatewaySslClients返回参数结构体
    public struct DescribeVpnGatewaySslClientsResponse: TCResponseModel {
        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 符合条件的实例个数。
        public let sslVpnClientSet: [SslVpnClient]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case sslVpnClientSet = "SslVpnClientSet"
            case requestId = "RequestId"
        }
    }

    /// 查询SSL-VPN-CLIENT 列表
    @inlinable
    public func describeVpnGatewaySslClients(_ input: DescribeVpnGatewaySslClientsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnGatewaySslClientsResponse> {
        self.client.execute(action: "DescribeVpnGatewaySslClients", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询SSL-VPN-CLIENT 列表
    @inlinable
    public func describeVpnGatewaySslClients(_ input: DescribeVpnGatewaySslClientsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnGatewaySslClientsResponse {
        try await self.client.execute(action: "DescribeVpnGatewaySslClients", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询SSL-VPN-CLIENT 列表
    @inlinable
    public func describeVpnGatewaySslClients(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, sslVpnClientIds: [String]? = nil, isVpnPortal: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnGatewaySslClientsResponse> {
        self.describeVpnGatewaySslClients(DescribeVpnGatewaySslClientsRequest(filters: filters, offset: offset, limit: limit, sslVpnClientIds: sslVpnClientIds, isVpnPortal: isVpnPortal), region: region, logger: logger, on: eventLoop)
    }

    /// 查询SSL-VPN-CLIENT 列表
    @inlinable
    public func describeVpnGatewaySslClients(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, sslVpnClientIds: [String]? = nil, isVpnPortal: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnGatewaySslClientsResponse {
        try await self.describeVpnGatewaySslClients(DescribeVpnGatewaySslClientsRequest(filters: filters, offset: offset, limit: limit, sslVpnClientIds: sslVpnClientIds, isVpnPortal: isVpnPortal), region: region, logger: logger, on: eventLoop)
    }
}
