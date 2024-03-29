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

extension Antiddos {
    /// DescribeCCReqLimitPolicyList请求参数结构体
    public struct DescribeCCReqLimitPolicyListRequest: TCPaginatedRequest {
        /// DDoS防护子产品代号（bgp-multip表示高防包，bgpip表示高防IP）
        public let business: String

        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 一页条数
        public let limit: UInt64

        /// 指定实例Id
        public let instanceId: String?

        /// IP地址，普通高防IP要传该字段
        public let ip: String?

        /// 域名，普通高防IP要传该字段
        public let domain: String?

        /// 协议，普通高防IP要传该字段
        public let `protocol`: String?

        public init(business: String, offset: UInt64, limit: UInt64, instanceId: String? = nil, ip: String? = nil, domain: String? = nil, protocol: String? = nil) {
            self.business = business
            self.offset = offset
            self.limit = limit
            self.instanceId = instanceId
            self.ip = ip
            self.domain = domain
            self.protocol = `protocol`
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case offset = "Offset"
            case limit = "Limit"
            case instanceId = "InstanceId"
            case ip = "Ip"
            case domain = "Domain"
            case `protocol` = "Protocol"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCCReqLimitPolicyListResponse) -> DescribeCCReqLimitPolicyListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(business: self.business, offset: self.offset + .init(response.getItems().count), limit: self.limit, instanceId: self.instanceId, ip: self.ip, domain: self.domain, protocol: self.protocol)
        }
    }

    /// DescribeCCReqLimitPolicyList返回参数结构体
    public struct DescribeCCReqLimitPolicyListResponse: TCPaginatedResponse {
        /// 频率限制列表总数
        public let total: UInt64

        /// 频率限制列表详情
        public let requestLimitPolicyList: [CCReqLimitPolicy]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case requestLimitPolicyList = "RequestLimitPolicyList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CCReqLimitPolicy`` list from the paginated response.
        public func getItems() -> [CCReqLimitPolicy] {
            self.requestLimitPolicyList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取CC频率限制策略列表
    @inlinable
    public func describeCCReqLimitPolicyList(_ input: DescribeCCReqLimitPolicyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCReqLimitPolicyListResponse> {
        self.client.execute(action: "DescribeCCReqLimitPolicyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CC频率限制策略列表
    @inlinable
    public func describeCCReqLimitPolicyList(_ input: DescribeCCReqLimitPolicyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCReqLimitPolicyListResponse {
        try await self.client.execute(action: "DescribeCCReqLimitPolicyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取CC频率限制策略列表
    @inlinable
    public func describeCCReqLimitPolicyList(business: String, offset: UInt64, limit: UInt64, instanceId: String? = nil, ip: String? = nil, domain: String? = nil, protocol: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCReqLimitPolicyListResponse> {
        self.describeCCReqLimitPolicyList(.init(business: business, offset: offset, limit: limit, instanceId: instanceId, ip: ip, domain: domain, protocol: `protocol`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取CC频率限制策略列表
    @inlinable
    public func describeCCReqLimitPolicyList(business: String, offset: UInt64, limit: UInt64, instanceId: String? = nil, ip: String? = nil, domain: String? = nil, protocol: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCReqLimitPolicyListResponse {
        try await self.describeCCReqLimitPolicyList(.init(business: business, offset: offset, limit: limit, instanceId: instanceId, ip: ip, domain: domain, protocol: `protocol`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取CC频率限制策略列表
    @inlinable
    public func describeCCReqLimitPolicyListPaginated(_ input: DescribeCCReqLimitPolicyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CCReqLimitPolicy])> {
        self.client.paginate(input: input, region: region, command: self.describeCCReqLimitPolicyList, logger: logger, on: eventLoop)
    }

    /// 获取CC频率限制策略列表
    @inlinable @discardableResult
    public func describeCCReqLimitPolicyListPaginated(_ input: DescribeCCReqLimitPolicyListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCCReqLimitPolicyListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCCReqLimitPolicyList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取CC频率限制策略列表
    ///
    /// - Returns: `AsyncSequence`s of ``CCReqLimitPolicy`` and ``DescribeCCReqLimitPolicyListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCCReqLimitPolicyListPaginator(_ input: DescribeCCReqLimitPolicyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCCReqLimitPolicyListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCCReqLimitPolicyList, logger: logger, on: eventLoop)
    }
}
