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
    /// 聚鑫V2-退款申请
    ///
    /// 如交易订单需退款，可以通过本接口将支付款全部或部分退还给付款方，聚鑫将在收到退款请求并且验证成功之后，按照退款规则将支付款按原路退回到支付帐号。最长支持1年的订单退款。在订单包含多个子订单的情况下，如果使用本接口传入OutTradeNo或TransactionId退款，则只支持全单退款；如果需要部分退款，请通过传入子订单的方式来指定部分金额退款。 
    @inlinable
    public func refundCloudOrder(_ input: RefundCloudOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RefundCloudOrderResponse > {
        self.client.execute(action: "RefundCloudOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 聚鑫V2-退款申请
    ///
    /// 如交易订单需退款，可以通过本接口将支付款全部或部分退还给付款方，聚鑫将在收到退款请求并且验证成功之后，按照退款规则将支付款按原路退回到支付帐号。最长支持1年的订单退款。在订单包含多个子订单的情况下，如果使用本接口传入OutTradeNo或TransactionId退款，则只支持全单退款；如果需要部分退款，请通过传入子订单的方式来指定部分金额退款。 
    @inlinable
    public func refundCloudOrder(_ input: RefundCloudOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefundCloudOrderResponse {
        try await self.client.execute(action: "RefundCloudOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RefundCloudOrder请求参数结构体
    public struct RefundCloudOrderRequest: TCRequestModel {
        /// 米大师分配的支付主MidasAppId
        public let midasAppId: String
        
        /// 用户Id，长度不小于5位，仅支持字母和数字的组合
        public let userId: String
        
        /// 退款订单号，仅支持数字、字母、下划线（_）、横杠字符（-）、点（.）的组合
        public let refundId: String
        
        /// 退款金额，单位：分
        /// 当该字段为空或者为0时，系统会默认使用订单当实付金额作为退款金额
        public let totalRefundAmt: Int64
        
        /// 商品订单，仅支持数字、字母、下划线（_）、横杠字符（-）、点（.）的组合
        public let outTradeNo: String
        
        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let midasEnvironment: String?
        
        /// 平台应收金额，单位：分
        public let platformRefundAmt: Int64?
        
        /// 结算应收金额，单位：分
        public let mchRefundAmt: Int64?
        
        /// 支持多个子订单批量退款单个子订单退款支持传SubOutTradeNo
        /// 也支持传SubOrderRefundList，都传的时候以SubOrderRefundList为准。
        /// 如果传了子单退款细节，外部不需要再传退款金额，平台应退，商户应退金额
        public let subOrderRefundList: [CloudSubOrderRefund]?
        
        /// 渠道订单号，当出现重复支付时，可以将重复支付订单的渠道订单号传入，以进行退款（注意：目前该重复支付订单的渠道订单号仅能通过米大师内部获取），更多重复支付订单退款说明，请参考[重复支付订单退款说明](https://dev.tke.midas.qq.com/juxin-doc-next/apidocs/receive-order/Refund.html#%E9%87%8D%E5%A4%8D%E6%94%AF%E4%BB%98%E8%AE%A2%E5%8D%95%E9%80%80%E6%AC%BE%E8%AF%B4%E6%98%8E)
        public let channelOrderId: String?
        
        /// 通知地址
        public let refundNotifyUrl: String?
        
        /// 透传字段，退款成功回调透传给应用，用于开发者透传自定义内容
        public let metadata: String?
        
        /// 渠道扩展退款促销列表，可将各个渠道的退款促销信息放于该列表
        public let externalRefundPromptGroupList: String?
        
        public init (midasAppId: String, userId: String, refundId: String, totalRefundAmt: Int64, outTradeNo: String, midasEnvironment: String?, platformRefundAmt: Int64?, mchRefundAmt: Int64?, subOrderRefundList: [CloudSubOrderRefund]?, channelOrderId: String?, refundNotifyUrl: String?, metadata: String?, externalRefundPromptGroupList: String?) {
            self.midasAppId = midasAppId
            self.userId = userId
            self.refundId = refundId
            self.totalRefundAmt = totalRefundAmt
            self.outTradeNo = outTradeNo
            self.midasEnvironment = midasEnvironment
            self.platformRefundAmt = platformRefundAmt
            self.mchRefundAmt = mchRefundAmt
            self.subOrderRefundList = subOrderRefundList
            self.channelOrderId = channelOrderId
            self.refundNotifyUrl = refundNotifyUrl
            self.metadata = metadata
            self.externalRefundPromptGroupList = externalRefundPromptGroupList
        }
        
        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case userId = "UserId"
            case refundId = "RefundId"
            case totalRefundAmt = "TotalRefundAmt"
            case outTradeNo = "OutTradeNo"
            case midasEnvironment = "MidasEnvironment"
            case platformRefundAmt = "PlatformRefundAmt"
            case mchRefundAmt = "MchRefundAmt"
            case subOrderRefundList = "SubOrderRefundList"
            case channelOrderId = "ChannelOrderId"
            case refundNotifyUrl = "RefundNotifyUrl"
            case metadata = "Metadata"
            case externalRefundPromptGroupList = "ExternalRefundPromptGroupList"
        }
    }
    
    /// RefundCloudOrder返回参数结构体
    public struct RefundCloudOrderResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}