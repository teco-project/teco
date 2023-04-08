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

extension Cpdp {
    /// CreateOpenBankPaymentOrder请求参数结构体
    public struct CreateOpenBankPaymentOrderRequest: TCRequestModel {
        /// 云企付渠道商户号。外部接入平台入驻云企付平台后下发。
        public let channelMerchantId: String

        /// 渠道名称。详见附录-云企付枚举类说明-ChannelName。
        /// __TENPAY__: 商企付
        /// __WECHAT__: 微信支付
        /// __ALIPAY__: 支付宝
        /// __HUIFU__: 汇付斗拱
        public let channelName: String

        /// 付款方式。详见附录-云企付枚举类说明-PaymentMethod。
        /// __EBANK_PAYMENT__:B2B EBank付款
        /// __OPENBANK_PAYMENT__:B2C  openbank付款
        /// __SAFT_ISV__:支付宝安心发
        /// __TRANS_TO_CHANGE__: 微信支付转账到零钱v2
        /// __TRANS_TO_CHANGE_V3__: 微信支付转账到零钱v3
        /// __ONLINEBANK__: 汇付网银
        public let paymentMethod: String

        /// 付款模式。默认直接支付，如
        /// __DIRECT__:直接支付
        /// __FREEZE__:担保支付
        public let paymentMode: String

        /// 外部订单号,只能是数字、大小写字母，且在同一个接入平台下唯一，限定长度40位。
        public let outOrderId: String

        /// 付款金额，单位分。
        public let totalAmount: Int64

        /// 固定值CNY。
        public let currency: String

        /// 付款方信息。
        public let payerInfo: OpenBankPayerInfo

        /// 收款方信息。
        public let payeeInfo: OpenBankPayeeInfo

        /// 通知地址，如www.test.com。
        public let notifyUrl: String?

        /// 订单过期时间，yyyy-MM-dd HH:mm:ss格式。
        public let expireTime: String?

        /// 前端成功回调URL。条件可选。
        public let frontUrl: String?

        /// 前端刷新 URL。条件可选。
        public let refreshUrl: String?

        /// 设备信息，条件可选。
        public let sceneInfo: OpenBankSceneInfo?

        /// 商品信息，条件可选。
        public let goodsInfo: OpenBankGoodsInfo?

        /// 附加信息，查询时原样返回。
        public let attachment: String?

        /// 若不上传，即使用默认值无需分润
        /// __NO_NEED_SHARE__：无需分润；
        /// __SHARE_BY_INFO__：分润时指定金额，此时如果分润信息 ProfitShareInfo为空，只冻结，不分账给其他商户；需要调用解冻接口。
        /// __SHARE_BY_API__：后续调用分润接口决定分润金额
        public let profitShareFlag: String?

        /// 分润信息，配合ProfitShareFlag使用。
        public let profitShareInfoList: [OpenBankProfitShareInfo]?

        /// 商企付-担保支付（PaymentMode为 FREEZE ）时需设置该参数
        public let settlementRulesInfo: OpenBankSettlementRulesInfo?

        /// 底层支付渠道特殊字段，若无特殊说明时，可以为空
        public let externalPaymentData: String?

        /// 备注信息。
        public let remark: String?

        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// 缺省默认为生产环境
        public let environment: String?

        public init(channelMerchantId: String, channelName: String, paymentMethod: String, paymentMode: String, outOrderId: String, totalAmount: Int64, currency: String, payerInfo: OpenBankPayerInfo, payeeInfo: OpenBankPayeeInfo, notifyUrl: String? = nil, expireTime: String? = nil, frontUrl: String? = nil, refreshUrl: String? = nil, sceneInfo: OpenBankSceneInfo? = nil, goodsInfo: OpenBankGoodsInfo? = nil, attachment: String? = nil, profitShareFlag: String? = nil, profitShareInfoList: [OpenBankProfitShareInfo]? = nil, settlementRulesInfo: OpenBankSettlementRulesInfo? = nil, externalPaymentData: String? = nil, remark: String? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.channelName = channelName
            self.paymentMethod = paymentMethod
            self.paymentMode = paymentMode
            self.outOrderId = outOrderId
            self.totalAmount = totalAmount
            self.currency = currency
            self.payerInfo = payerInfo
            self.payeeInfo = payeeInfo
            self.notifyUrl = notifyUrl
            self.expireTime = expireTime
            self.frontUrl = frontUrl
            self.refreshUrl = refreshUrl
            self.sceneInfo = sceneInfo
            self.goodsInfo = goodsInfo
            self.attachment = attachment
            self.profitShareFlag = profitShareFlag
            self.profitShareInfoList = profitShareInfoList
            self.settlementRulesInfo = settlementRulesInfo
            self.externalPaymentData = externalPaymentData
            self.remark = remark
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case channelName = "ChannelName"
            case paymentMethod = "PaymentMethod"
            case paymentMode = "PaymentMode"
            case outOrderId = "OutOrderId"
            case totalAmount = "TotalAmount"
            case currency = "Currency"
            case payerInfo = "PayerInfo"
            case payeeInfo = "PayeeInfo"
            case notifyUrl = "NotifyUrl"
            case expireTime = "ExpireTime"
            case frontUrl = "FrontUrl"
            case refreshUrl = "RefreshUrl"
            case sceneInfo = "SceneInfo"
            case goodsInfo = "GoodsInfo"
            case attachment = "Attachment"
            case profitShareFlag = "ProfitShareFlag"
            case profitShareInfoList = "ProfitShareInfoList"
            case settlementRulesInfo = "SettlementRulesInfo"
            case externalPaymentData = "ExternalPaymentData"
            case remark = "Remark"
            case environment = "Environment"
        }
    }

    /// CreateOpenBankPaymentOrder返回参数结构体
    public struct CreateOpenBankPaymentOrderResponse: TCResponseModel {
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

    /// 云企付-创建支付订单
    ///
    /// 云企付-创建支付订单。支持B2B网关支付，B2C转账下单。
    @inlinable
    public func createOpenBankPaymentOrder(_ input: CreateOpenBankPaymentOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOpenBankPaymentOrderResponse> {
        self.client.execute(action: "CreateOpenBankPaymentOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-创建支付订单
    ///
    /// 云企付-创建支付订单。支持B2B网关支付，B2C转账下单。
    @inlinable
    public func createOpenBankPaymentOrder(_ input: CreateOpenBankPaymentOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenBankPaymentOrderResponse {
        try await self.client.execute(action: "CreateOpenBankPaymentOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-创建支付订单
    ///
    /// 云企付-创建支付订单。支持B2B网关支付，B2C转账下单。
    @inlinable
    public func createOpenBankPaymentOrder(channelMerchantId: String, channelName: String, paymentMethod: String, paymentMode: String, outOrderId: String, totalAmount: Int64, currency: String, payerInfo: OpenBankPayerInfo, payeeInfo: OpenBankPayeeInfo, notifyUrl: String? = nil, expireTime: String? = nil, frontUrl: String? = nil, refreshUrl: String? = nil, sceneInfo: OpenBankSceneInfo? = nil, goodsInfo: OpenBankGoodsInfo? = nil, attachment: String? = nil, profitShareFlag: String? = nil, profitShareInfoList: [OpenBankProfitShareInfo]? = nil, settlementRulesInfo: OpenBankSettlementRulesInfo? = nil, externalPaymentData: String? = nil, remark: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOpenBankPaymentOrderResponse> {
        self.createOpenBankPaymentOrder(.init(channelMerchantId: channelMerchantId, channelName: channelName, paymentMethod: paymentMethod, paymentMode: paymentMode, outOrderId: outOrderId, totalAmount: totalAmount, currency: currency, payerInfo: payerInfo, payeeInfo: payeeInfo, notifyUrl: notifyUrl, expireTime: expireTime, frontUrl: frontUrl, refreshUrl: refreshUrl, sceneInfo: sceneInfo, goodsInfo: goodsInfo, attachment: attachment, profitShareFlag: profitShareFlag, profitShareInfoList: profitShareInfoList, settlementRulesInfo: settlementRulesInfo, externalPaymentData: externalPaymentData, remark: remark, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-创建支付订单
    ///
    /// 云企付-创建支付订单。支持B2B网关支付，B2C转账下单。
    @inlinable
    public func createOpenBankPaymentOrder(channelMerchantId: String, channelName: String, paymentMethod: String, paymentMode: String, outOrderId: String, totalAmount: Int64, currency: String, payerInfo: OpenBankPayerInfo, payeeInfo: OpenBankPayeeInfo, notifyUrl: String? = nil, expireTime: String? = nil, frontUrl: String? = nil, refreshUrl: String? = nil, sceneInfo: OpenBankSceneInfo? = nil, goodsInfo: OpenBankGoodsInfo? = nil, attachment: String? = nil, profitShareFlag: String? = nil, profitShareInfoList: [OpenBankProfitShareInfo]? = nil, settlementRulesInfo: OpenBankSettlementRulesInfo? = nil, externalPaymentData: String? = nil, remark: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenBankPaymentOrderResponse {
        try await self.createOpenBankPaymentOrder(.init(channelMerchantId: channelMerchantId, channelName: channelName, paymentMethod: paymentMethod, paymentMode: paymentMode, outOrderId: outOrderId, totalAmount: totalAmount, currency: currency, payerInfo: payerInfo, payeeInfo: payeeInfo, notifyUrl: notifyUrl, expireTime: expireTime, frontUrl: frontUrl, refreshUrl: refreshUrl, sceneInfo: sceneInfo, goodsInfo: goodsInfo, attachment: attachment, profitShareFlag: profitShareFlag, profitShareInfoList: profitShareInfoList, settlementRulesInfo: settlementRulesInfo, externalPaymentData: externalPaymentData, remark: remark, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
