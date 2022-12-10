//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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

extension Partners {
    /// 代理商缓存订单查询接口（禁止接入）
    ///
    /// 【该接口已下线，请使用升级版本DescribeAgentDealsByCache】代理商拉取缓存的全量客户订单
    @inlinable
    public func describeAgentDealsCache(_ input: DescribeAgentDealsCacheRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAgentDealsCacheResponse > {
        self.client.execute(action: "DescribeAgentDealsCache", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 代理商缓存订单查询接口（禁止接入）
    ///
    /// 【该接口已下线，请使用升级版本DescribeAgentDealsByCache】代理商拉取缓存的全量客户订单
    @inlinable
    public func describeAgentDealsCache(_ input: DescribeAgentDealsCacheRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentDealsCacheResponse {
        try await self.client.execute(action: "DescribeAgentDealsCache", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAgentDealsCache请求参数结构体
    public struct DescribeAgentDealsCacheRequest: TCRequestModel {
        /// 偏移量
        public let offset: UInt64
        
        /// 限制数目 最大200
        public let limit: UInt64
        
        /// 下单时间范围起始点【请保持时间范围最大90天】
        public let creatTimeRangeStart: Date?
        
        /// 下单时间范围终止点【请保持时间范围最大90天】
        public let creatTimeRangeEnd: Date?
        
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
        
        public init (offset: UInt64, limit: UInt64, creatTimeRangeStart: Date?, creatTimeRangeEnd: Date?, order: UInt64?, status: UInt64?, ownerUins: [String]?, dealNames: [String]?, payerMode: UInt64?) {
            self.offset = offset
            self.limit = limit
            self.creatTimeRangeStart = creatTimeRangeStart
            self.creatTimeRangeEnd = creatTimeRangeEnd
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
    }
    
    /// DescribeAgentDealsCache返回参数结构体
    public struct DescribeAgentDealsCacheResponse: TCResponseModel {
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
    }
}
