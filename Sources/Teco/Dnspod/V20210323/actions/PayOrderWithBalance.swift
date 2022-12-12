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

extension Dnspod {
    /// PayOrderWithBalance请求参数结构体
    public struct PayOrderWithBalanceRequest: TCRequestModel {
        /// 需要支付的大订单号数组
        public let bigDealIdList: [String]
        
        /// 代金券ID数组。可以从控制台查到拥有的代金券
        public let voucherIdList: [String]?
        
        public init (bigDealIdList: [String], voucherIdList: [String]? = nil) {
            self.bigDealIdList = bigDealIdList
            self.voucherIdList = voucherIdList
        }
        
        enum CodingKeys: String, CodingKey {
            case bigDealIdList = "BigDealIdList"
            case voucherIdList = "VoucherIdList"
        }
    }
    
    /// PayOrderWithBalance返回参数结构体
    public struct PayOrderWithBalanceResponse: TCResponseModel {
        /// 此次操作支付成功的订单id数组
        public let dealIdList: [String]
        
        /// 此次操作支付成功的大订单号数组
        public let bigDealIdList: [String]
        
        /// 此次操作支付成功的订单号数组
        public let dealNameList: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dealIdList = "DealIdList"
            case bigDealIdList = "BigDealIdList"
            case dealNameList = "DealNameList"
            case requestId = "RequestId"
        }
    }
    
    /// DNSPod商品余额支付
    @inlinable
    public func payOrderWithBalance(_ input: PayOrderWithBalanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < PayOrderWithBalanceResponse > {
        self.client.execute(action: "PayOrderWithBalance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// DNSPod商品余额支付
    @inlinable
    public func payOrderWithBalance(_ input: PayOrderWithBalanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PayOrderWithBalanceResponse {
        try await self.client.execute(action: "PayOrderWithBalance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
