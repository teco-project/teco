//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date

extension Billing {
    /// 查询订单数据
    ///
    /// 查询订单
    @inlinable
    public func describeDealsByCond(_ input: DescribeDealsByCondRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDealsByCondResponse > {
        self.client.execute(action: "DescribeDealsByCond", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询订单数据
    ///
    /// 查询订单
    @inlinable
    public func describeDealsByCond(_ input: DescribeDealsByCondRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDealsByCondResponse {
        try await self.client.execute(action: "DescribeDealsByCond", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDealsByCond请求参数结构体
    public struct DescribeDealsByCondRequest: TCRequestModel {
        /// 开始时间
        // FIXME: Codable support not implemented for datetime yet.
        public let startTime: Date
        
        /// 结束时间
        // FIXME: Codable support not implemented for datetime yet.
        public let endTime: Date
        
        /// 一页多少条数据，默认是20条，最大不超过1000
        public let limit: Int64
        
        /// 第多少页，从0开始，默认是0
        public let offset: Int64?
        
        /// 订单状态,默认为4（成功的订单）
        /// 订单的状态
        /// 1：未支付
        /// 2：已支付3：发货中
        /// 4：已发货
        /// 5：发货失败
        /// 6：已退款
        /// 7：已关单
        /// 8：订单过期
        /// 9：订单已失效
        /// 10：产品已失效
        /// 11：代付拒绝
        /// 12：支付中
        public let status: Int64?
        
        /// 订单号
        public let orderId: String?
        
        /// 大订单号
        public let bigDealId: String?
        
        /// 资源id
        public let resourceId: String?
        
        public init (startTime: Date, endTime: Date, limit: Int64, offset: Int64?, status: Int64?, orderId: String?, bigDealId: String?, resourceId: String?) {
            self.startTime = startTime
            self.endTime = endTime
            self.limit = limit
            self.offset = offset
            self.status = status
            self.orderId = orderId
            self.bigDealId = bigDealId
            self.resourceId = resourceId
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
            case status = "Status"
            case orderId = "OrderId"
            case bigDealId = "BigDealId"
            case resourceId = "ResourceId"
        }
    }
    
    /// DescribeDealsByCond返回参数结构体
    public struct DescribeDealsByCondResponse: TCResponseModel {
        /// 订单列表
        public let deals: [Deal]
        
        /// 订单总数
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case deals = "Deals"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}