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

extension Cpdp {
    /// 云鉴-消费订单发起接口
    ///
    /// 云鉴-消费订单发起的接口
    @inlinable
    public func createOrder(_ input: CreateOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateOrderResponse > {
        self.client.execute(action: "CreateOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云鉴-消费订单发起接口
    ///
    /// 云鉴-消费订单发起的接口
    @inlinable
    public func createOrder(_ input: CreateOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrderResponse {
        try await self.client.execute(action: "CreateOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateOrder请求参数结构体
    public struct CreateOrderRequest: TCRequestModel {
        /// 渠道编号。ZSB2B：招商银行B2B。
        public let channelCode: String
        
        /// 进件成功后返给商户方的 AppId。
        public let merchantAppId: String
        
        /// 交易金额。单位：元
        public let amount: String
        
        /// 商户流水号。商户唯一订单号由字母或数字组成。
        public let traceNo: String
        
        /// 通知地址。商户接收交易结果的通知地址。
        public let notifyUrl: String
        
        /// 返回地址。支付成功后，页面将跳 转返回到商户的该地址。
        public let returnUrl: String
        
        public init (channelCode: String, merchantAppId: String, amount: String, traceNo: String, notifyUrl: String, returnUrl: String) {
            self.channelCode = channelCode
            self.merchantAppId = merchantAppId
            self.amount = amount
            self.traceNo = traceNo
            self.notifyUrl = notifyUrl
            self.returnUrl = returnUrl
        }
        
        enum CodingKeys: String, CodingKey {
            case channelCode = "ChannelCode"
            case merchantAppId = "MerchantAppId"
            case amount = "Amount"
            case traceNo = "TraceNo"
            case notifyUrl = "NotifyUrl"
            case returnUrl = "ReturnUrl"
        }
    }
    
    /// CreateOrder返回参数结构体
    public struct CreateOrderResponse: TCResponseModel {
        /// 进件成功后返给商户方的AppId。
        public let merchantAppId: String
        
        /// 商户流水号，商户唯一订单号由字母或数字组成。
        public let traceNo: String
        
        /// 平台流水号，若下单成功则返回。
        public let orderNo: String
        
        /// 支付页面跳转地址，若下单成功则返回。
        public let payUrl: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case merchantAppId = "MerchantAppId"
            case traceNo = "TraceNo"
            case orderNo = "OrderNo"
            case payUrl = "PayUrl"
            case requestId = "RequestId"
        }
    }
}