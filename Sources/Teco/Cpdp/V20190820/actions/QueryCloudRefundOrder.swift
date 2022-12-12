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

extension Cpdp {
    /// QueryCloudRefundOrder请求参数结构体
    public struct QueryCloudRefundOrderRequest: TCRequestModel {
        /// 米大师分配的支付主MidasAppId
        public let midasAppId: String
        
        /// 用户Id，长度不小于5位，仅支持字母和数字的组合
        public let userId: String
        
        /// 退款订单号，仅支持数字、字母、下划线（_）、横杠字符（-）、点（.）的组合
        public let refundId: String
        
        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let midasEnvironment: String?
        
        public init (midasAppId: String, userId: String, refundId: String, midasEnvironment: String? = nil) {
            self.midasAppId = midasAppId
            self.userId = userId
            self.refundId = refundId
            self.midasEnvironment = midasEnvironment
        }
        
        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case userId = "UserId"
            case refundId = "RefundId"
            case midasEnvironment = "MidasEnvironment"
        }
    }
    
    /// QueryCloudRefundOrder返回参数结构体
    public struct QueryCloudRefundOrderResponse: TCResponseModel {
        /// 该笔退款订单对应的UnifiedOrder下单时传入的OutTradeNo
        public let outTradeNo: String
        
        /// 该笔退款订单对应的支付成功后支付机构返回的支付订单号
        public let channelExternalOrderId: String
        
        /// 该笔退款订单退款后支付机构返回的退款单号
        public let channelExternalRefundId: String
        
        /// 内部请求微信支付、银行等支付机构的订单号
        public let channelOrderId: String
        
        /// 请求退款时传的退款ID后查询退款时传的RefundId
        public let refundId: String
        
        /// 被使用的RefundId，业务可忽略该字段
        public let usedRefundId: String
        
        /// 退款总金额
        public let totalRefundAmt: Int64
        
        /// ISO货币代码
        public let currencyType: String
        
        /// 退款状态码，退款提交成功后返回
        /// 1:退款中
        /// 2:退款成功
        /// 3:退款失败
        public let state: String
        
        /// 子单退款信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subRefundList: [CloudSubRefundItem]?
        
        /// 透传字段，退款成功回调透传给应用，用于开发者透传自定义内容
        public let metadata: String
        
        /// 米大师分配的支付主MidasAppId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appId: String?
        
        /// 该笔退款订单退款后内部返回的退款单号
        public let channelRefundId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case outTradeNo = "OutTradeNo"
            case channelExternalOrderId = "ChannelExternalOrderId"
            case channelExternalRefundId = "ChannelExternalRefundId"
            case channelOrderId = "ChannelOrderId"
            case refundId = "RefundId"
            case usedRefundId = "UsedRefundId"
            case totalRefundAmt = "TotalRefundAmt"
            case currencyType = "CurrencyType"
            case state = "State"
            case subRefundList = "SubRefundList"
            case metadata = "Metadata"
            case appId = "AppId"
            case channelRefundId = "ChannelRefundId"
            case requestId = "RequestId"
        }
    }
    
    /// 聚鑫V2-查询退款
    ///
    /// 提交退款申请后，通过调用该接口查询退款状态。退款可能有一定延时，用微信零钱支付的退款约20分钟内到账，银行卡支付的退款约3个工作日后到账。
    @inlinable
    public func queryCloudRefundOrder(_ input: QueryCloudRefundOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryCloudRefundOrderResponse > {
        self.client.execute(action: "QueryCloudRefundOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 聚鑫V2-查询退款
    ///
    /// 提交退款申请后，通过调用该接口查询退款状态。退款可能有一定延时，用微信零钱支付的退款约20分钟内到账，银行卡支付的退款约3个工作日后到账。
    @inlinable
    public func queryCloudRefundOrder(_ input: QueryCloudRefundOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCloudRefundOrderResponse {
        try await self.client.execute(action: "QueryCloudRefundOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
