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

extension Teo {
    /// DescribeApplicationProxy请求参数结构体
    public struct DescribeApplicationProxyRequest: TCPaginatedRequest {
        /// 站点ID。
        public let zoneId: String?

        /// 分页查询偏移量，默认为0。
        public let offset: Int64?

        /// 分页查询限制数目，默认为10，最大可设置为1000。
        public let limit: Int64?

        /// 代理ID。
        /// 当ProxyId为空时，表示查询站点下所有应用代理的列表。
        public let proxyId: String?

        public init(zoneId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, proxyId: String? = nil) {
            self.zoneId = zoneId
            self.offset = offset
            self.limit = limit
            self.proxyId = proxyId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case offset = "Offset"
            case limit = "Limit"
            case proxyId = "ProxyId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeApplicationProxyResponse) -> DescribeApplicationProxyRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeApplicationProxyRequest(zoneId: self.zoneId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, proxyId: self.proxyId)
        }
    }

    /// DescribeApplicationProxy返回参数结构体
    public struct DescribeApplicationProxyResponse: TCPaginatedResponse {
        /// 应用代理列表。
        public let data: [ApplicationProxy]

        /// 记录总数。
        public let totalCount: UInt64

        /// 字段已废弃。
        public let quota: Int64

        /// 当ProxyId为空时，表示套餐内PlatType为ip的Anycast IP的实例数量。
        public let ipCount: UInt64

        /// 当ProxyId为空时，表示套餐内PlatType为domain的CNAME的实例数量。
        public let domainCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case quota = "Quota"
            case ipCount = "IpCount"
            case domainCount = "DomainCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApplicationProxy] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取应用代理列表
    @inlinable
    public func describeApplicationProxy(_ input: DescribeApplicationProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationProxyResponse> {
        self.client.execute(action: "DescribeApplicationProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用代理列表
    @inlinable
    public func describeApplicationProxy(_ input: DescribeApplicationProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationProxyResponse {
        try await self.client.execute(action: "DescribeApplicationProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用代理列表
    @inlinable
    public func describeApplicationProxy(zoneId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, proxyId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationProxyResponse> {
        let input = DescribeApplicationProxyRequest(zoneId: zoneId, offset: offset, limit: limit, proxyId: proxyId)
        return self.client.execute(action: "DescribeApplicationProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用代理列表
    @inlinable
    public func describeApplicationProxy(zoneId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, proxyId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationProxyResponse {
        let input = DescribeApplicationProxyRequest(zoneId: zoneId, offset: offset, limit: limit, proxyId: proxyId)
        return try await self.client.execute(action: "DescribeApplicationProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
