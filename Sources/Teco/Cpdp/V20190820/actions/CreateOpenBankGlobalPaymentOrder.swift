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

import Logging
import NIOCore
import TecoCore

extension Cpdp {
    /// CreateOpenBankGlobalPaymentOrder请求参数结构体
    public struct CreateOpenBankGlobalPaymentOrderRequest: TCRequestModel {
        /// 渠道商户号
        public let channelMerchantId: String

        /// 渠道名称
        public let channelName: String

        /// 付款方式
        public let payType: String

        /// 外部商户订单号,只能是数字、大小写字母，且在同一个接入平台下唯一
        public let outOrderId: String

        /// 付款金额，单位分
        public let totalAmount: Int64

        /// 支付币种，参考附录：货币代码
        public let currency: String

        /// 渠道子商户号
        public let channelSubMerchantId: String?

        /// 支付成功回调地址。
        public let notifyUrl: String?

        /// 前端跳转地址。通联支付成功后，支付网关跳回商户的地址
        public let frontUrl: String?

        /// 网站语言。收银台显示语言，见附录网站语言
        public let frontLanguage: String?

        /// 付款备注
        public let remark: String?

        /// 第三方拓展信息信息
        public let externalPaymentData: String?

        /// 商品信息
        public let goodsInfos: [OpenBankGoodsInfo]?

        /// 邮寄信息
        public let shippingInfo: OpenBankShippingInfo?

        /// 账单信息
        public let billingInfo: OpenBankBillingInfo?

        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// 缺省默认为生产环境
        public let environment: String?

        public init(channelMerchantId: String, channelName: String, payType: String, outOrderId: String, totalAmount: Int64, currency: String, channelSubMerchantId: String? = nil, notifyUrl: String? = nil, frontUrl: String? = nil, frontLanguage: String? = nil, remark: String? = nil, externalPaymentData: String? = nil, goodsInfos: [OpenBankGoodsInfo]? = nil, shippingInfo: OpenBankShippingInfo? = nil, billingInfo: OpenBankBillingInfo? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.channelName = channelName
            self.payType = payType
            self.outOrderId = outOrderId
            self.totalAmount = totalAmount
            self.currency = currency
            self.channelSubMerchantId = channelSubMerchantId
            self.notifyUrl = notifyUrl
            self.frontUrl = frontUrl
            self.frontLanguage = frontLanguage
            self.remark = remark
            self.externalPaymentData = externalPaymentData
            self.goodsInfos = goodsInfos
            self.shippingInfo = shippingInfo
            self.billingInfo = billingInfo
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case channelName = "ChannelName"
            case payType = "PayType"
            case outOrderId = "OutOrderId"
            case totalAmount = "TotalAmount"
            case currency = "Currency"
            case channelSubMerchantId = "ChannelSubMerchantId"
            case notifyUrl = "NotifyUrl"
            case frontUrl = "FrontUrl"
            case frontLanguage = "FrontLanguage"
            case remark = "Remark"
            case externalPaymentData = "ExternalPaymentData"
            case goodsInfos = "GoodsInfos"
            case shippingInfo = "ShippingInfo"
            case billingInfo = "BillingInfo"
            case environment = "Environment"
        }
    }

    /// CreateOpenBankGlobalPaymentOrder返回参数结构体
    public struct CreateOpenBankGlobalPaymentOrderResponse: TCResponseModel {
        /// 业务系统返回码，SUCCESS表示成功，其他表示失败。
        public let errCode: String

        /// 业务系统返回消息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 统一下单响应对象。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: CreateOpenBankUnifiedOrderPaymentResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-跨境支付下单
    @inlinable
    public func createOpenBankGlobalPaymentOrder(_ input: CreateOpenBankGlobalPaymentOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOpenBankGlobalPaymentOrderResponse> {
        self.client.execute(action: "CreateOpenBankGlobalPaymentOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-跨境支付下单
    @inlinable
    public func createOpenBankGlobalPaymentOrder(_ input: CreateOpenBankGlobalPaymentOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenBankGlobalPaymentOrderResponse {
        try await self.client.execute(action: "CreateOpenBankGlobalPaymentOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-跨境支付下单
    @inlinable
    public func createOpenBankGlobalPaymentOrder(channelMerchantId: String, channelName: String, payType: String, outOrderId: String, totalAmount: Int64, currency: String, channelSubMerchantId: String? = nil, notifyUrl: String? = nil, frontUrl: String? = nil, frontLanguage: String? = nil, remark: String? = nil, externalPaymentData: String? = nil, goodsInfos: [OpenBankGoodsInfo]? = nil, shippingInfo: OpenBankShippingInfo? = nil, billingInfo: OpenBankBillingInfo? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOpenBankGlobalPaymentOrderResponse> {
        self.createOpenBankGlobalPaymentOrder(.init(channelMerchantId: channelMerchantId, channelName: channelName, payType: payType, outOrderId: outOrderId, totalAmount: totalAmount, currency: currency, channelSubMerchantId: channelSubMerchantId, notifyUrl: notifyUrl, frontUrl: frontUrl, frontLanguage: frontLanguage, remark: remark, externalPaymentData: externalPaymentData, goodsInfos: goodsInfos, shippingInfo: shippingInfo, billingInfo: billingInfo, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-跨境支付下单
    @inlinable
    public func createOpenBankGlobalPaymentOrder(channelMerchantId: String, channelName: String, payType: String, outOrderId: String, totalAmount: Int64, currency: String, channelSubMerchantId: String? = nil, notifyUrl: String? = nil, frontUrl: String? = nil, frontLanguage: String? = nil, remark: String? = nil, externalPaymentData: String? = nil, goodsInfos: [OpenBankGoodsInfo]? = nil, shippingInfo: OpenBankShippingInfo? = nil, billingInfo: OpenBankBillingInfo? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenBankGlobalPaymentOrderResponse {
        try await self.createOpenBankGlobalPaymentOrder(.init(channelMerchantId: channelMerchantId, channelName: channelName, payType: payType, outOrderId: outOrderId, totalAmount: totalAmount, currency: currency, channelSubMerchantId: channelSubMerchantId, notifyUrl: notifyUrl, frontUrl: frontUrl, frontLanguage: frontLanguage, remark: remark, externalPaymentData: externalPaymentData, goodsInfos: goodsInfos, shippingInfo: shippingInfo, billingInfo: billingInfo, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
