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
    /// DescribeVpnGatewaySslServers请求参数结构体
    public struct DescribeVpnGatewaySslServersRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64?

        /// 请求对象个数
        public let limit: UInt64?

        /// SSL-VPN-SERVER实例ID。形如：vpngwSslServer-12345678。每次请求的实例的上限为100。参数不支持同时指定SslVpnServerIds和Filters。
        public let sslVpnServerIds: [String]?

        /// 过滤条件，参数不支持同时指定SslVpnServerIds和Filters。
        /// <li>vpc-id - String - （过滤条件）VPC实例ID形如：vpc-f49l6u0z。</li>
        /// <li>vpn-gateway-id - String - （过滤条件）VPN实例ID形如：vpngw-5aluhh9t。</li>
        /// <li>vpn-gateway-name - String - （过滤条件）VPN实例名称。</li>
        /// <li>ssl-vpn-server-name - String - （过滤条件）SSL-VPN-SERVER实例名称。</li>
        /// <li>ssl-vpn-server-id - String - （过滤条件）SSL-VPN-SERVER实例ID形如：vpngwSslServer-123456。</li>
        public let filters: [FilterObject]?

        /// vpn门户使用。 默认Flase
        public let isVpnPortal: Bool?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, sslVpnServerIds: [String]? = nil, filters: [FilterObject]? = nil, isVpnPortal: Bool? = nil) {
            self.offset = offset
            self.limit = limit
            self.sslVpnServerIds = sslVpnServerIds
            self.filters = filters
            self.isVpnPortal = isVpnPortal
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case sslVpnServerIds = "SslVpnServerIds"
            case filters = "Filters"
            case isVpnPortal = "IsVpnPortal"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeVpnGatewaySslServersResponse) -> DescribeVpnGatewaySslServersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVpnGatewaySslServersRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, sslVpnServerIds: self.sslVpnServerIds, filters: self.filters, isVpnPortal: self.isVpnPortal)
        }
    }

    /// DescribeVpnGatewaySslServers返回参数结构体
    public struct DescribeVpnGatewaySslServersResponse: TCPaginatedResponse {
        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// SSL-VPN-SERVER 实例详细信息列表。
        public let sslVpnSeverSet: [SslVpnSever]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case sslVpnSeverSet = "SslVpnSeverSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SslVpnSever] {
            self.sslVpnSeverSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询SSL-VPN SERVER 列表
    ///
    /// 查询SSL-VPN SERVER 列表信息
    @inlinable
    public func describeVpnGatewaySslServers(_ input: DescribeVpnGatewaySslServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnGatewaySslServersResponse> {
        self.client.execute(action: "DescribeVpnGatewaySslServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询SSL-VPN SERVER 列表
    ///
    /// 查询SSL-VPN SERVER 列表信息
    @inlinable
    public func describeVpnGatewaySslServers(_ input: DescribeVpnGatewaySslServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnGatewaySslServersResponse {
        try await self.client.execute(action: "DescribeVpnGatewaySslServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询SSL-VPN SERVER 列表
    ///
    /// 查询SSL-VPN SERVER 列表信息
    @inlinable
    public func describeVpnGatewaySslServers(offset: UInt64? = nil, limit: UInt64? = nil, sslVpnServerIds: [String]? = nil, filters: [FilterObject]? = nil, isVpnPortal: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpnGatewaySslServersResponse> {
        let input = DescribeVpnGatewaySslServersRequest(offset: offset, limit: limit, sslVpnServerIds: sslVpnServerIds, filters: filters, isVpnPortal: isVpnPortal)
        return self.client.execute(action: "DescribeVpnGatewaySslServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询SSL-VPN SERVER 列表
    ///
    /// 查询SSL-VPN SERVER 列表信息
    @inlinable
    public func describeVpnGatewaySslServers(offset: UInt64? = nil, limit: UInt64? = nil, sslVpnServerIds: [String]? = nil, filters: [FilterObject]? = nil, isVpnPortal: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpnGatewaySslServersResponse {
        let input = DescribeVpnGatewaySslServersRequest(offset: offset, limit: limit, sslVpnServerIds: sslVpnServerIds, filters: filters, isVpnPortal: isVpnPortal)
        return try await self.client.execute(action: "DescribeVpnGatewaySslServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询SSL-VPN SERVER 列表
    ///
    /// 查询SSL-VPN SERVER 列表信息
    @inlinable
    public func describeVpnGatewaySslServersPaginated(_ input: DescribeVpnGatewaySslServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SslVpnSever])> {
        self.client.paginate(input: input, region: region, command: self.describeVpnGatewaySslServers, logger: logger, on: eventLoop)
    }

    /// 查询SSL-VPN SERVER 列表
    ///
    /// 查询SSL-VPN SERVER 列表信息
    @inlinable @discardableResult
    public func describeVpnGatewaySslServersPaginated(_ input: DescribeVpnGatewaySslServersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVpnGatewaySslServersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVpnGatewaySslServers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询SSL-VPN SERVER 列表
    ///
    /// 查询SSL-VPN SERVER 列表信息
    @inlinable
    public func describeVpnGatewaySslServersPaginator(_ input: DescribeVpnGatewaySslServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVpnGatewaySslServersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVpnGatewaySslServers, logger: logger, on: eventLoop)
    }
}
