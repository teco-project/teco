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
    /// DescribeCCPrecisionPlyList请求参数结构体
    public struct DescribeCCPrecisionPlyListRequest: TCPaginatedRequest {
        /// DDoS防护子产品代号（bgpip-multip：表示高防包；bgpip：表示高防IP）
        public let business: String

        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 一页条数
        public let limit: UInt64

        /// 指定特定实例Id
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
        public func makeNextRequest(with response: DescribeCCPrecisionPlyListResponse) -> DescribeCCPrecisionPlyListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(business: self.business, offset: self.offset + .init(response.getItems().count), limit: self.limit, instanceId: self.instanceId, ip: self.ip, domain: self.domain, protocol: self.protocol)
        }
    }

    /// DescribeCCPrecisionPlyList返回参数结构体
    public struct DescribeCCPrecisionPlyListResponse: TCPaginatedResponse {
        /// 策略列表总数
        public let total: UInt64

        /// 策略列表详情
        public let precisionPolicyList: [CCPrecisionPolicy]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case precisionPolicyList = "PrecisionPolicyList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CCPrecisionPolicy`` list from the paginated response.
        public func getItems() -> [CCPrecisionPolicy] {
            self.precisionPolicyList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取CC精准防护列表
    @inlinable
    public func describeCCPrecisionPlyList(_ input: DescribeCCPrecisionPlyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCPrecisionPlyListResponse> {
        self.client.execute(action: "DescribeCCPrecisionPlyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CC精准防护列表
    @inlinable
    public func describeCCPrecisionPlyList(_ input: DescribeCCPrecisionPlyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCPrecisionPlyListResponse {
        try await self.client.execute(action: "DescribeCCPrecisionPlyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取CC精准防护列表
    @inlinable
    public func describeCCPrecisionPlyList(business: String, offset: UInt64, limit: UInt64, instanceId: String? = nil, ip: String? = nil, domain: String? = nil, protocol: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCPrecisionPlyListResponse> {
        self.describeCCPrecisionPlyList(.init(business: business, offset: offset, limit: limit, instanceId: instanceId, ip: ip, domain: domain, protocol: `protocol`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取CC精准防护列表
    @inlinable
    public func describeCCPrecisionPlyList(business: String, offset: UInt64, limit: UInt64, instanceId: String? = nil, ip: String? = nil, domain: String? = nil, protocol: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCPrecisionPlyListResponse {
        try await self.describeCCPrecisionPlyList(.init(business: business, offset: offset, limit: limit, instanceId: instanceId, ip: ip, domain: domain, protocol: `protocol`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取CC精准防护列表
    @inlinable
    public func describeCCPrecisionPlyListPaginated(_ input: DescribeCCPrecisionPlyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CCPrecisionPolicy])> {
        self.client.paginate(input: input, region: region, command: self.describeCCPrecisionPlyList, logger: logger, on: eventLoop)
    }

    /// 获取CC精准防护列表
    @inlinable @discardableResult
    public func describeCCPrecisionPlyListPaginated(_ input: DescribeCCPrecisionPlyListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCCPrecisionPlyListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCCPrecisionPlyList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取CC精准防护列表
    ///
    /// - Returns: `AsyncSequence`s of ``CCPrecisionPolicy`` and ``DescribeCCPrecisionPlyListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCCPrecisionPlyListPaginator(_ input: DescribeCCPrecisionPlyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCCPrecisionPlyListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCCPrecisionPlyList, logger: logger, on: eventLoop)
    }
}
