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

extension Antiddos {
    /// DescribeCcBlackWhiteIpList请求参数结构体
    public struct DescribeCcBlackWhiteIpListRequest: TCPaginatedRequest {
        /// 大禹子产品代号（bgp-multip：表示高防包；bgpip：表示高防IP）
        public let business: String

        /// 指定特定实例Id
        public let instanceId: String

        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 一页条数
        public let limit: UInt64

        /// IP地址，普通高防IP要传该字段
        public let ip: String?

        /// 域名，普通高防IP要传该字段
        public let domain: String?

        /// 协议，普通高防IP要传该字段
        public let `protocol`: String?

        /// 筛选IP，需要筛选黑白名单IP时传该字段
        public let filterIp: String?

        /// 黑白名单筛选字段，需要筛选黑白名单列表时传该字段
        public let filterType: String?

        public init(business: String, instanceId: String, offset: UInt64, limit: UInt64, ip: String? = nil, domain: String? = nil, protocol: String? = nil, filterIp: String? = nil, filterType: String? = nil) {
            self.business = business
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self.ip = ip
            self.domain = domain
            self.protocol = `protocol`
            self.filterIp = filterIp
            self.filterType = filterType
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case ip = "Ip"
            case domain = "Domain"
            case `protocol` = "Protocol"
            case filterIp = "FilterIp"
            case filterType = "FilterType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeCcBlackWhiteIpListResponse) -> DescribeCcBlackWhiteIpListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCcBlackWhiteIpListRequest(business: self.business, instanceId: self.instanceId, offset: self.offset + .init(response.getItems().count), limit: self.limit, ip: self.ip, domain: self.domain, protocol: self.protocol, filterIp: self.filterIp, filterType: self.filterType)
        }
    }

    /// DescribeCcBlackWhiteIpList返回参数结构体
    public struct DescribeCcBlackWhiteIpListResponse: TCPaginatedResponse {
        /// CC四层黑白名单策略列表总数
        public let total: UInt64

        /// CC四层黑白名单策略列表详情
        public let ccBlackWhiteIpList: [CcBlackWhiteIpPolicy]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case ccBlackWhiteIpList = "CcBlackWhiteIpList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CcBlackWhiteIpPolicy] {
            self.ccBlackWhiteIpList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取CC四层黑白名单列表
    @inlinable
    public func describeCcBlackWhiteIpList(_ input: DescribeCcBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcBlackWhiteIpListResponse> {
        self.client.execute(action: "DescribeCcBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CC四层黑白名单列表
    @inlinable
    public func describeCcBlackWhiteIpList(_ input: DescribeCcBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcBlackWhiteIpListResponse {
        try await self.client.execute(action: "DescribeCcBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取CC四层黑白名单列表
    @inlinable
    public func describeCcBlackWhiteIpList(business: String, instanceId: String, offset: UInt64, limit: UInt64, ip: String? = nil, domain: String? = nil, protocol: String? = nil, filterIp: String? = nil, filterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcBlackWhiteIpListResponse> {
        let input = DescribeCcBlackWhiteIpListRequest(business: business, instanceId: instanceId, offset: offset, limit: limit, ip: ip, domain: domain, protocol: `protocol`, filterIp: filterIp, filterType: filterType)
        return self.client.execute(action: "DescribeCcBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CC四层黑白名单列表
    @inlinable
    public func describeCcBlackWhiteIpList(business: String, instanceId: String, offset: UInt64, limit: UInt64, ip: String? = nil, domain: String? = nil, protocol: String? = nil, filterIp: String? = nil, filterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcBlackWhiteIpListResponse {
        let input = DescribeCcBlackWhiteIpListRequest(business: business, instanceId: instanceId, offset: offset, limit: limit, ip: ip, domain: domain, protocol: `protocol`, filterIp: filterIp, filterType: filterType)
        return try await self.client.execute(action: "DescribeCcBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
