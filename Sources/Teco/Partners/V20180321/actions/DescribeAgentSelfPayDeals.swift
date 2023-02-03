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

extension Partners {
    /// DescribeAgentSelfPayDeals请求参数结构体
    public struct DescribeAgentSelfPayDealsRequest: TCRequestModel {
        /// 下单人账号ID
        public let ownerUin: String

        /// 偏移量
        public let offset: UInt64

        /// 限制数目 最大100
        public let limit: UInt64

        /// 下单时间范围起始点(不传时会默认查15天内订单，传值时需要传15天内的起始时间)
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var creatTimeRangeStart: Date?

        /// 下单时间范围终止点
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var creatTimeRangeEnd: Date?

        /// 0:下单时间降序；其他：下单时间升序
        public let order: UInt64?

        /// 订单的状态(1：未支付;2：已支付;3：发货中;4：已发货;5：发货失败;6：已退款;7：已关单;8：订单过期;9：订单已失效;10：产品已失效;11：代付拒绝;12：支付中)
        public let status: UInt64?

        /// 订单号列表
        public let dealNames: [String]?

        public init(ownerUin: String, offset: UInt64, limit: UInt64, creatTimeRangeStart: Date? = nil, creatTimeRangeEnd: Date? = nil, order: UInt64? = nil, status: UInt64? = nil, dealNames: [String]? = nil) {
            self.ownerUin = ownerUin
            self.offset = offset
            self.limit = limit
            self._creatTimeRangeStart = .init(wrappedValue: creatTimeRangeStart)
            self._creatTimeRangeEnd = .init(wrappedValue: creatTimeRangeEnd)
            self.order = order
            self.status = status
            self.dealNames = dealNames
        }

        enum CodingKeys: String, CodingKey {
            case ownerUin = "OwnerUin"
            case offset = "Offset"
            case limit = "Limit"
            case creatTimeRangeStart = "CreatTimeRangeStart"
            case creatTimeRangeEnd = "CreatTimeRangeEnd"
            case order = "Order"
            case status = "Status"
            case dealNames = "DealNames"
        }
    }

    /// DescribeAgentSelfPayDeals返回参数结构体
    public struct DescribeAgentSelfPayDealsResponse: TCResponseModel {
        /// 订单数组
        public let agentPayDealSet: [AgentDealElem]

        /// 符合条件的订单总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case agentPayDealSet = "AgentPayDealSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 代理商自付订单查询接口（禁止接入）
    ///
    /// 【该接口已下线，请切换使用升级版本DescribeAgentSelfPayDealsV2】可以查询代理商下指定客户的自付订单
    @inlinable
    public func describeAgentSelfPayDeals(_ input: DescribeAgentSelfPayDealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentSelfPayDealsResponse> {
        self.client.execute(action: "DescribeAgentSelfPayDeals", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 代理商自付订单查询接口（禁止接入）
    ///
    /// 【该接口已下线，请切换使用升级版本DescribeAgentSelfPayDealsV2】可以查询代理商下指定客户的自付订单
    @inlinable
    public func describeAgentSelfPayDeals(_ input: DescribeAgentSelfPayDealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentSelfPayDealsResponse {
        try await self.client.execute(action: "DescribeAgentSelfPayDeals", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 代理商自付订单查询接口（禁止接入）
    ///
    /// 【该接口已下线，请切换使用升级版本DescribeAgentSelfPayDealsV2】可以查询代理商下指定客户的自付订单
    @inlinable
    public func describeAgentSelfPayDeals(ownerUin: String, offset: UInt64, limit: UInt64, creatTimeRangeStart: Date? = nil, creatTimeRangeEnd: Date? = nil, order: UInt64? = nil, status: UInt64? = nil, dealNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentSelfPayDealsResponse> {
        let input = DescribeAgentSelfPayDealsRequest(ownerUin: ownerUin, offset: offset, limit: limit, creatTimeRangeStart: creatTimeRangeStart, creatTimeRangeEnd: creatTimeRangeEnd, order: order, status: status, dealNames: dealNames)
        return self.client.execute(action: "DescribeAgentSelfPayDeals", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 代理商自付订单查询接口（禁止接入）
    ///
    /// 【该接口已下线，请切换使用升级版本DescribeAgentSelfPayDealsV2】可以查询代理商下指定客户的自付订单
    @inlinable
    public func describeAgentSelfPayDeals(ownerUin: String, offset: UInt64, limit: UInt64, creatTimeRangeStart: Date? = nil, creatTimeRangeEnd: Date? = nil, order: UInt64? = nil, status: UInt64? = nil, dealNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentSelfPayDealsResponse {
        let input = DescribeAgentSelfPayDealsRequest(ownerUin: ownerUin, offset: offset, limit: limit, creatTimeRangeStart: creatTimeRangeStart, creatTimeRangeEnd: creatTimeRangeEnd, order: order, status: status, dealNames: dealNames)
        return try await self.client.execute(action: "DescribeAgentSelfPayDeals", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
