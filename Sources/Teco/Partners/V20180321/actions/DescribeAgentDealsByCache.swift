//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Partners {
    /// DescribeAgentDealsByCache请求参数结构体
    public struct DescribeAgentDealsByCacheRequest: TCRequestModel {
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

        /// 子订单号列表
        public let dealNames: [String]?

        /// 大订单号列表
        public let bigDealIds: [String]?

        /// 支付方式，0：自付；1：代付
        public let payerMode: UInt64?

        public init(offset: UInt64, limit: UInt64, creatTimeRangeStart: Date? = nil, creatTimeRangeEnd: Date? = nil, order: UInt64? = nil, status: UInt64? = nil, ownerUins: [String]? = nil, dealNames: [String]? = nil, bigDealIds: [String]? = nil, payerMode: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
            self._creatTimeRangeStart = .init(wrappedValue: creatTimeRangeStart)
            self._creatTimeRangeEnd = .init(wrappedValue: creatTimeRangeEnd)
            self.order = order
            self.status = status
            self.ownerUins = ownerUins
            self.dealNames = dealNames
            self.bigDealIds = bigDealIds
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
            case bigDealIds = "BigDealIds"
            case payerMode = "PayerMode"
        }
    }

    /// DescribeAgentDealsByCache返回参数结构体
    public struct DescribeAgentDealsByCacheResponse: TCResponseModel {
        /// 订单数组
        public let agentDealSet: [AgentDealNewElem]

        /// 符合条件的订单总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case agentDealSet = "AgentDealSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 代理商缓存订单查询接口（预付费）
    ///
    /// 供代理商拉取缓存的全量预付费客户订单
    @inlinable
    public func describeAgentDealsByCache(_ input: DescribeAgentDealsByCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentDealsByCacheResponse> {
        self.client.execute(action: "DescribeAgentDealsByCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 代理商缓存订单查询接口（预付费）
    ///
    /// 供代理商拉取缓存的全量预付费客户订单
    @inlinable
    public func describeAgentDealsByCache(_ input: DescribeAgentDealsByCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentDealsByCacheResponse {
        try await self.client.execute(action: "DescribeAgentDealsByCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 代理商缓存订单查询接口（预付费）
    ///
    /// 供代理商拉取缓存的全量预付费客户订单
    @inlinable
    public func describeAgentDealsByCache(offset: UInt64, limit: UInt64, creatTimeRangeStart: Date? = nil, creatTimeRangeEnd: Date? = nil, order: UInt64? = nil, status: UInt64? = nil, ownerUins: [String]? = nil, dealNames: [String]? = nil, bigDealIds: [String]? = nil, payerMode: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentDealsByCacheResponse> {
        self.describeAgentDealsByCache(DescribeAgentDealsByCacheRequest(offset: offset, limit: limit, creatTimeRangeStart: creatTimeRangeStart, creatTimeRangeEnd: creatTimeRangeEnd, order: order, status: status, ownerUins: ownerUins, dealNames: dealNames, bigDealIds: bigDealIds, payerMode: payerMode), region: region, logger: logger, on: eventLoop)
    }

    /// 代理商缓存订单查询接口（预付费）
    ///
    /// 供代理商拉取缓存的全量预付费客户订单
    @inlinable
    public func describeAgentDealsByCache(offset: UInt64, limit: UInt64, creatTimeRangeStart: Date? = nil, creatTimeRangeEnd: Date? = nil, order: UInt64? = nil, status: UInt64? = nil, ownerUins: [String]? = nil, dealNames: [String]? = nil, bigDealIds: [String]? = nil, payerMode: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentDealsByCacheResponse {
        try await self.describeAgentDealsByCache(DescribeAgentDealsByCacheRequest(offset: offset, limit: limit, creatTimeRangeStart: creatTimeRangeStart, creatTimeRangeEnd: creatTimeRangeEnd, order: order, status: status, ownerUins: ownerUins, dealNames: dealNames, bigDealIds: bigDealIds, payerMode: payerMode), region: region, logger: logger, on: eventLoop)
    }
}
