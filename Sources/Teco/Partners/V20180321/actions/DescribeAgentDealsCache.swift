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

@_exported import struct Foundation.Date
import TecoDateHelpers
import TecoPaginationHelpers

extension Partners {
    /// DescribeAgentDealsCache请求参数结构体
    public struct DescribeAgentDealsCacheRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64

        /// 限制数目 最大200
        public let limit: UInt64

        /// 下单时间范围起始点【请保持时间范围最大90天】
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var creatTimeRangeStart: Date?

        /// 下单时间范围终止点【请保持时间范围最大90天】
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var creatTimeRangeEnd: Date?

        /// 0:下单时间降序；其他：下单时间升序
        public let order: UInt64?

        /// 订单的状态(1：未支付;2：已支付;3：发货中;4：已发货;5：发货失败;6：已退款;7：已关单;8：订单过期;9：订单已失效;10：产品已失效;11：代付拒绝;12：支付中)
        public let status: UInt64?

        /// 下单人账号ID列表
        public let ownerUins: [String]?

        /// 订单号列表
        public let dealNames: [String]?

        /// 支付方式，0：自付；1：代付
        public let payerMode: UInt64?

        public init(offset: UInt64, limit: UInt64, creatTimeRangeStart: Date? = nil, creatTimeRangeEnd: Date? = nil, order: UInt64? = nil, status: UInt64? = nil, ownerUins: [String]? = nil, dealNames: [String]? = nil, payerMode: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
            self._creatTimeRangeStart = .init(wrappedValue: creatTimeRangeStart)
            self._creatTimeRangeEnd = .init(wrappedValue: creatTimeRangeEnd)
            self.order = order
            self.status = status
            self.ownerUins = ownerUins
            self.dealNames = dealNames
            self.payerMode = payerMode
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case creatTimeRangeStart = "CreatTimeRangeStart"
            case creatTimeRangeEnd = "CreatTimeRangeEnd"
            case order = "Order"
            case status = "Status"
            case ownerUins = "OwnerUins"
            case dealNames = "DealNames"
            case payerMode = "PayerMode"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAgentDealsCacheResponse) -> DescribeAgentDealsCacheRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAgentDealsCacheRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, creatTimeRangeStart: self.creatTimeRangeStart, creatTimeRangeEnd: self.creatTimeRangeEnd, order: self.order, status: self.status, ownerUins: self.ownerUins, dealNames: self.dealNames, payerMode: self.payerMode)
        }
    }

    /// DescribeAgentDealsCache返回参数结构体
    public struct DescribeAgentDealsCacheResponse: TCPaginatedResponse {
        /// 订单数组
        public let agentDealSet: [AgentDealElem]

        /// 符合条件的订单总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case agentDealSet = "AgentDealSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AgentDealElem] {
            self.agentDealSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 代理商缓存订单查询接口（禁止接入）
    ///
    /// 【该接口已下线，请使用升级版本DescribeAgentDealsByCache】代理商拉取缓存的全量客户订单
    @inlinable
    public func describeAgentDealsCache(_ input: DescribeAgentDealsCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentDealsCacheResponse> {
        self.client.execute(action: "DescribeAgentDealsCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 代理商缓存订单查询接口（禁止接入）
    ///
    /// 【该接口已下线，请使用升级版本DescribeAgentDealsByCache】代理商拉取缓存的全量客户订单
    @inlinable
    public func describeAgentDealsCache(_ input: DescribeAgentDealsCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentDealsCacheResponse {
        try await self.client.execute(action: "DescribeAgentDealsCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 代理商缓存订单查询接口（禁止接入）
    ///
    /// 【该接口已下线，请使用升级版本DescribeAgentDealsByCache】代理商拉取缓存的全量客户订单
    @inlinable
    public func describeAgentDealsCache(offset: UInt64, limit: UInt64, creatTimeRangeStart: Date? = nil, creatTimeRangeEnd: Date? = nil, order: UInt64? = nil, status: UInt64? = nil, ownerUins: [String]? = nil, dealNames: [String]? = nil, payerMode: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentDealsCacheResponse> {
        let input = DescribeAgentDealsCacheRequest(offset: offset, limit: limit, creatTimeRangeStart: creatTimeRangeStart, creatTimeRangeEnd: creatTimeRangeEnd, order: order, status: status, ownerUins: ownerUins, dealNames: dealNames, payerMode: payerMode)
        return self.client.execute(action: "DescribeAgentDealsCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 代理商缓存订单查询接口（禁止接入）
    ///
    /// 【该接口已下线，请使用升级版本DescribeAgentDealsByCache】代理商拉取缓存的全量客户订单
    @inlinable
    public func describeAgentDealsCache(offset: UInt64, limit: UInt64, creatTimeRangeStart: Date? = nil, creatTimeRangeEnd: Date? = nil, order: UInt64? = nil, status: UInt64? = nil, ownerUins: [String]? = nil, dealNames: [String]? = nil, payerMode: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentDealsCacheResponse {
        let input = DescribeAgentDealsCacheRequest(offset: offset, limit: limit, creatTimeRangeStart: creatTimeRangeStart, creatTimeRangeEnd: creatTimeRangeEnd, order: order, status: status, ownerUins: ownerUins, dealNames: dealNames, payerMode: payerMode)
        return try await self.client.execute(action: "DescribeAgentDealsCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 代理商缓存订单查询接口（禁止接入）
    ///
    /// 【该接口已下线，请使用升级版本DescribeAgentDealsByCache】代理商拉取缓存的全量客户订单
    @inlinable
    public func describeAgentDealsCachePaginated(_ input: DescribeAgentDealsCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AgentDealElem])> {
        self.client.paginate(input: input, region: region, command: self.describeAgentDealsCache, logger: logger, on: eventLoop)
    }

    /// 代理商缓存订单查询接口（禁止接入）
    ///
    /// 【该接口已下线，请使用升级版本DescribeAgentDealsByCache】代理商拉取缓存的全量客户订单
    @inlinable
    public func describeAgentDealsCachePaginated(_ input: DescribeAgentDealsCacheRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAgentDealsCacheResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAgentDealsCache, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 代理商缓存订单查询接口（禁止接入）
    ///
    /// 【该接口已下线，请使用升级版本DescribeAgentDealsByCache】代理商拉取缓存的全量客户订单
    @inlinable
    public func describeAgentDealsCachePaginator(_ input: DescribeAgentDealsCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeAgentDealsCacheRequest, DescribeAgentDealsCacheResponse>.ResultSequence, responses: TCClient.Paginator<DescribeAgentDealsCacheRequest, DescribeAgentDealsCacheResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeAgentDealsCacheRequest, DescribeAgentDealsCacheResponse>.ResultSequence(input: input, region: region, command: self.describeAgentDealsCache, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeAgentDealsCacheRequest, DescribeAgentDealsCacheResponse>.ResponseSequence(input: input, region: region, command: self.describeAgentDealsCache, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
