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
    /// 云企付-创建充值订单
    @inlinable
    public func createOpenBankRechargeOrder(_ input: CreateOpenBankRechargeOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateOpenBankRechargeOrderResponse > {
        self.client.execute(action: "CreateOpenBankRechargeOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云企付-创建充值订单
    @inlinable
    public func createOpenBankRechargeOrder(_ input: CreateOpenBankRechargeOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenBankRechargeOrderResponse {
        try await self.client.execute(action: "CreateOpenBankRechargeOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateOpenBankRechargeOrder请求参数结构体
    public struct CreateOpenBankRechargeOrderRequest: TCRequestModel {
        /// 云企付渠道商户号。外部接入平台入驻云企付平台后下发。
        public let channelMerchantId: String
        
        /// 外部订单号,只能是数字、大小写字母，且在同一个接入平台下唯一，限定长度40位。
        public let outOrderId: String
        
        /// 付款金额，单位分。
        public let totalAmount: Int64
        
        /// 固定值CNY。
        public let currency: String
        
        /// 订单过期时间，yyyy-MM-dd HH:mm:ss格式。
        public let expireTime: String
        
        /// 渠道名称。
        /// __TENPAY__: 商企付
        /// __WECHAT__: 微信支付
        /// __ALIPAY__: 支付宝
        public let channelName: String
        
        /// 渠道名称。
        /// __TENPAY__: 商企付
        /// __WECHAT__: 微信支付
        /// __ALIPAY__: 支付宝
        public let paymentMethod: String
        
        /// 收款方信息。
        public let payeeInfo: OpenBankRechargePayeeInfo
        
        /// 渠道子商户号
        public let channelSubMerchantId: String
        
        /// 通知地址，如www.test.com。
        public let notifyUrl: String?
        
        /// 备注信息。限制200个字符。
        public let remark: String?
        
        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?
        
        public init (channelMerchantId: String, outOrderId: String, totalAmount: Int64, currency: String, expireTime: String, channelName: String, paymentMethod: String, payeeInfo: OpenBankRechargePayeeInfo, channelSubMerchantId: String, notifyUrl: String?, remark: String?, environment: String?) {
            self.channelMerchantId = channelMerchantId
            self.outOrderId = outOrderId
            self.totalAmount = totalAmount
            self.currency = currency
            self.expireTime = expireTime
            self.channelName = channelName
            self.paymentMethod = paymentMethod
            self.payeeInfo = payeeInfo
            self.channelSubMerchantId = channelSubMerchantId
            self.notifyUrl = notifyUrl
            self.remark = remark
            self.environment = environment
        }
        
        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case outOrderId = "OutOrderId"
            case totalAmount = "TotalAmount"
            case currency = "Currency"
            case expireTime = "ExpireTime"
            case channelName = "ChannelName"
            case paymentMethod = "PaymentMethod"
            case payeeInfo = "PayeeInfo"
            case channelSubMerchantId = "ChannelSubMerchantId"
            case notifyUrl = "NotifyUrl"
            case remark = "Remark"
            case environment = "Environment"
        }
    }
    
    /// CreateOpenBankRechargeOrder返回参数结构体
    public struct CreateOpenBankRechargeOrderResponse: TCResponseModel {
        /// 业务系统返回码，SUCCESS表示成功，其他表示失败。
        public let errCode: String
        
        /// 业务系统返回消息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?
        
        /// 充值响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: CreateOpenBankOrderRechargeResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
