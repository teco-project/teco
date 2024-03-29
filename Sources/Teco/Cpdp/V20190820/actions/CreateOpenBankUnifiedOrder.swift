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
    /// CreateOpenBankUnifiedOrder请求参数结构体
    public struct CreateOpenBankUnifiedOrderRequest: TCRequest {
        /// 渠道商户号。
        public let channelMerchantId: String

        /// 渠道名称。
        public let channelName: String

        /// 支付产品类型。
        /// 被扫（扫码）：SWIPE, 主扫（刷卡）：SCAN,
        /// H5：WAP, 公众号：PUBLIC,
        /// APP-SDK：SDK, 小程序：MINI_PROGRAM,
        /// 快捷支付：QUICK, 网银支付：ONLINE_BANK。
        public let payType: String

        /// 外部商户订单号。
        /// 只能是数字、大小写字母，且在同一个接入平台下唯一。
        public let outOrderId: String

        /// 交易金额，单位分。
        public let totalAmount: Int64

        /// 币种。固定：CNY。
        public let currency: String

        /// 渠道子商户号。
        public let channelSubMerchantId: String?

        /// 实际支付渠道。没有则无需填写。如
        /// 支付宝 ALIPAY
        /// 微信支付 WXPAY
        /// 银联 UNIONPAY
        /// 一般在间连模式下使用。
        public let payChannel: String?

        /// 设备信息。
        public let sceneInfo: OpenBankSceneInfo?

        /// 分账信息列表。
        public let profitShareInfoList: [OpenBankProfitShareInfo]?

        /// 订单标题。
        public let orderSubject: String?

        /// 商品信息。
        public let goodsDetail: String?

        /// 超时时间。
        public let expireTime: String?

        /// 支付成功回调地址。
        public let notifyUrl: String?

        /// 支付成功前端跳转URL。
        public let frontUrl: String?

        /// 订单附加信息，查询或者回调的时候原样返回。
        public let attachment: String?

        /// 第三方渠道扩展字段。见附录-复杂类型。
        /// 未作特殊说明，则无需传入。
        public let externalPaymentData: String?

        /// 备注。
        public let remark: String?

        /// 门店信息。
        public let storeInfo: OpenBankStoreInfo?

        /// 支付限制。
        public let payLimitInfo: OpenBankPayLimitInfo?

        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?

        public init(channelMerchantId: String, channelName: String, payType: String, outOrderId: String, totalAmount: Int64, currency: String, channelSubMerchantId: String? = nil, payChannel: String? = nil, sceneInfo: OpenBankSceneInfo? = nil, profitShareInfoList: [OpenBankProfitShareInfo]? = nil, orderSubject: String? = nil, goodsDetail: String? = nil, expireTime: String? = nil, notifyUrl: String? = nil, frontUrl: String? = nil, attachment: String? = nil, externalPaymentData: String? = nil, remark: String? = nil, storeInfo: OpenBankStoreInfo? = nil, payLimitInfo: OpenBankPayLimitInfo? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.channelName = channelName
            self.payType = payType
            self.outOrderId = outOrderId
            self.totalAmount = totalAmount
            self.currency = currency
            self.channelSubMerchantId = channelSubMerchantId
            self.payChannel = payChannel
            self.sceneInfo = sceneInfo
            self.profitShareInfoList = profitShareInfoList
            self.orderSubject = orderSubject
            self.goodsDetail = goodsDetail
            self.expireTime = expireTime
            self.notifyUrl = notifyUrl
            self.frontUrl = frontUrl
            self.attachment = attachment
            self.externalPaymentData = externalPaymentData
            self.remark = remark
            self.storeInfo = storeInfo
            self.payLimitInfo = payLimitInfo
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
            case payChannel = "PayChannel"
            case sceneInfo = "SceneInfo"
            case profitShareInfoList = "ProfitShareInfoList"
            case orderSubject = "OrderSubject"
            case goodsDetail = "GoodsDetail"
            case expireTime = "ExpireTime"
            case notifyUrl = "NotifyUrl"
            case frontUrl = "FrontUrl"
            case attachment = "Attachment"
            case externalPaymentData = "ExternalPaymentData"
            case remark = "Remark"
            case storeInfo = "StoreInfo"
            case payLimitInfo = "PayLimitInfo"
            case environment = "Environment"
        }
    }

    /// CreateOpenBankUnifiedOrder返回参数结构体
    public struct CreateOpenBankUnifiedOrderResponse: TCResponse {
        /// 业务系统返回码，SUCCESS表示成功，其他表示失败。
        public let errCode: String

        /// 业务系统返回消息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 统一下单响应对象。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: CreateOpenBankOrderPaymentResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-聚合下单
    @inlinable
    public func createOpenBankUnifiedOrder(_ input: CreateOpenBankUnifiedOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOpenBankUnifiedOrderResponse> {
        self.client.execute(action: "CreateOpenBankUnifiedOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-聚合下单
    @inlinable
    public func createOpenBankUnifiedOrder(_ input: CreateOpenBankUnifiedOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenBankUnifiedOrderResponse {
        try await self.client.execute(action: "CreateOpenBankUnifiedOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-聚合下单
    @inlinable
    public func createOpenBankUnifiedOrder(channelMerchantId: String, channelName: String, payType: String, outOrderId: String, totalAmount: Int64, currency: String, channelSubMerchantId: String? = nil, payChannel: String? = nil, sceneInfo: OpenBankSceneInfo? = nil, profitShareInfoList: [OpenBankProfitShareInfo]? = nil, orderSubject: String? = nil, goodsDetail: String? = nil, expireTime: String? = nil, notifyUrl: String? = nil, frontUrl: String? = nil, attachment: String? = nil, externalPaymentData: String? = nil, remark: String? = nil, storeInfo: OpenBankStoreInfo? = nil, payLimitInfo: OpenBankPayLimitInfo? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOpenBankUnifiedOrderResponse> {
        self.createOpenBankUnifiedOrder(.init(channelMerchantId: channelMerchantId, channelName: channelName, payType: payType, outOrderId: outOrderId, totalAmount: totalAmount, currency: currency, channelSubMerchantId: channelSubMerchantId, payChannel: payChannel, sceneInfo: sceneInfo, profitShareInfoList: profitShareInfoList, orderSubject: orderSubject, goodsDetail: goodsDetail, expireTime: expireTime, notifyUrl: notifyUrl, frontUrl: frontUrl, attachment: attachment, externalPaymentData: externalPaymentData, remark: remark, storeInfo: storeInfo, payLimitInfo: payLimitInfo, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-聚合下单
    @inlinable
    public func createOpenBankUnifiedOrder(channelMerchantId: String, channelName: String, payType: String, outOrderId: String, totalAmount: Int64, currency: String, channelSubMerchantId: String? = nil, payChannel: String? = nil, sceneInfo: OpenBankSceneInfo? = nil, profitShareInfoList: [OpenBankProfitShareInfo]? = nil, orderSubject: String? = nil, goodsDetail: String? = nil, expireTime: String? = nil, notifyUrl: String? = nil, frontUrl: String? = nil, attachment: String? = nil, externalPaymentData: String? = nil, remark: String? = nil, storeInfo: OpenBankStoreInfo? = nil, payLimitInfo: OpenBankPayLimitInfo? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenBankUnifiedOrderResponse {
        try await self.createOpenBankUnifiedOrder(.init(channelMerchantId: channelMerchantId, channelName: channelName, payType: payType, outOrderId: outOrderId, totalAmount: totalAmount, currency: currency, channelSubMerchantId: channelSubMerchantId, payChannel: payChannel, sceneInfo: sceneInfo, profitShareInfoList: profitShareInfoList, orderSubject: orderSubject, goodsDetail: goodsDetail, expireTime: expireTime, notifyUrl: notifyUrl, frontUrl: frontUrl, attachment: attachment, externalPaymentData: externalPaymentData, remark: remark, storeInfo: storeInfo, payLimitInfo: payLimitInfo, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
