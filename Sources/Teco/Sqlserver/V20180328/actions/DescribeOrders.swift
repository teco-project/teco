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

extension Sqlserver {
    /// DescribeOrders请求参数结构体
    public struct DescribeOrdersRequest: TCRequestModel {
        /// 订单数组。发货时会返回订单名字，利用该订单名字调用DescribeOrders接口查询发货情况
        public let dealNames: [String]
        
        public init (dealNames: [String]) {
            self.dealNames = dealNames
        }
        
        enum CodingKeys: String, CodingKey {
            case dealNames = "DealNames"
        }
    }
    
    /// DescribeOrders返回参数结构体
    public struct DescribeOrdersResponse: TCResponseModel {
        /// 订单信息数组
        public let deals: [DealInfo]
        
        /// 返回多少个订单的信息
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case deals = "Deals"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询订单信息
    ///
    /// 本接口（DescribeOrders）用于查询订单信息
    @inlinable
    public func describeOrders(_ input: DescribeOrdersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOrdersResponse > {
        self.client.execute(action: "DescribeOrders", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询订单信息
    ///
    /// 本接口（DescribeOrders）用于查询订单信息
    @inlinable
    public func describeOrders(_ input: DescribeOrdersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrdersResponse {
        try await self.client.execute(action: "DescribeOrders", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
