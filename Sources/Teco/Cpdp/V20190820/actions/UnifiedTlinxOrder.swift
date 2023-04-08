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
    /// UnifiedTlinxOrder请求参数结构体
    public struct UnifiedTlinxOrderRequest: TCRequestModel {
        /// 使用门店OpenId
        public let openId: String

        /// 使用门店OpenKey
        public let openKey: String

        /// 开发者流水号
        public let developerNo: String

        /// 支付标签
        public let payTag: String

        /// 实际交易金额（以分为单位，没有小数点）
        public let tradeAmount: String

        /// 交易结果异步通知url地址
        public let notifyUrl: String

        /// 付款方式名称(当PayTag为Diy时，PayName不能为空)
        public let payName: String?

        /// 公众号支付时，支付成功后跳转url地址
        public let jumpUrl: String?

        /// 订单名称（描述）
        public let orderName: String?

        /// 原始交易金额（以分为单位，没有小数点）
        public let originalAmount: String?

        /// 抹零金额（以分为单位，没有小数点）
        public let ignoreAmount: String?

        /// 折扣金额（以分为单位，没有小数点）
        public let discountAmount: String?

        /// 交易帐号（银行卡号）
        public let tradeAccount: String?

        /// 交易号（收单机构交易号）
        public let tradeNo: String?

        /// 条码支付的授权码（条码抢扫手机扫到的一串数字）
        public let authCode: String?

        /// 订单标记，订单附加数据。
        public let tag: String?

        /// 订单备注
        public let remark: String?

        /// 收单机构原始交易报文，请转换为json
        public let tradeResult: String?

        /// 0-不分账，1-需分账。为1时标记为待分账订单，待分账订单不会进行清算。不传默认为不分账。
        public let royalty: String?

        /// 小程序支付参数：填默认值 1
        public let jsapi: String?

        /// 小程序支付参数：
        /// 当前调起支付的小程序APPID
        public let subAppId: String?

        /// 小程序支付参数:
        /// 用户在子商户appid下的唯一标识。
        public let subOpenId: String?

        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?

        public init(openId: String, openKey: String, developerNo: String, payTag: String, tradeAmount: String, notifyUrl: String, payName: String? = nil, jumpUrl: String? = nil, orderName: String? = nil, originalAmount: String? = nil, ignoreAmount: String? = nil, discountAmount: String? = nil, tradeAccount: String? = nil, tradeNo: String? = nil, authCode: String? = nil, tag: String? = nil, remark: String? = nil, tradeResult: String? = nil, royalty: String? = nil, jsapi: String? = nil, subAppId: String? = nil, subOpenId: String? = nil, profile: String? = nil) {
            self.openId = openId
            self.openKey = openKey
            self.developerNo = developerNo
            self.payTag = payTag
            self.tradeAmount = tradeAmount
            self.notifyUrl = notifyUrl
            self.payName = payName
            self.jumpUrl = jumpUrl
            self.orderName = orderName
            self.originalAmount = originalAmount
            self.ignoreAmount = ignoreAmount
            self.discountAmount = discountAmount
            self.tradeAccount = tradeAccount
            self.tradeNo = tradeNo
            self.authCode = authCode
            self.tag = tag
            self.remark = remark
            self.tradeResult = tradeResult
            self.royalty = royalty
            self.jsapi = jsapi
            self.subAppId = subAppId
            self.subOpenId = subOpenId
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case developerNo = "DeveloperNo"
            case payTag = "PayTag"
            case tradeAmount = "TradeAmount"
            case notifyUrl = "NotifyUrl"
            case payName = "PayName"
            case jumpUrl = "JumpUrl"
            case orderName = "OrderName"
            case originalAmount = "OriginalAmount"
            case ignoreAmount = "IgnoreAmount"
            case discountAmount = "DiscountAmount"
            case tradeAccount = "TradeAccount"
            case tradeNo = "TradeNo"
            case authCode = "AuthCode"
            case tag = "Tag"
            case remark = "Remark"
            case tradeResult = "TradeResult"
            case royalty = "Royalty"
            case jsapi = "Jsapi"
            case subAppId = "SubAppId"
            case subOpenId = "SubOpenId"
            case profile = "Profile"
        }
    }

    /// UnifiedTlinxOrder返回参数结构体
    public struct UnifiedTlinxOrderResponse: TCResponseModel {
        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 业务系统返回码，0表示成功，其他表示失败。
        public let errCode: String

        /// 统一下单响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: PayOrderResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errMessage = "ErrMessage"
            case errCode = "ErrCode"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云支付-统一下单接口
    @inlinable
    public func unifiedTlinxOrder(_ input: UnifiedTlinxOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnifiedTlinxOrderResponse> {
        self.client.execute(action: "UnifiedTlinxOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云支付-统一下单接口
    @inlinable
    public func unifiedTlinxOrder(_ input: UnifiedTlinxOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnifiedTlinxOrderResponse {
        try await self.client.execute(action: "UnifiedTlinxOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云支付-统一下单接口
    @inlinable
    public func unifiedTlinxOrder(openId: String, openKey: String, developerNo: String, payTag: String, tradeAmount: String, notifyUrl: String, payName: String? = nil, jumpUrl: String? = nil, orderName: String? = nil, originalAmount: String? = nil, ignoreAmount: String? = nil, discountAmount: String? = nil, tradeAccount: String? = nil, tradeNo: String? = nil, authCode: String? = nil, tag: String? = nil, remark: String? = nil, tradeResult: String? = nil, royalty: String? = nil, jsapi: String? = nil, subAppId: String? = nil, subOpenId: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnifiedTlinxOrderResponse> {
        self.unifiedTlinxOrder(.init(openId: openId, openKey: openKey, developerNo: developerNo, payTag: payTag, tradeAmount: tradeAmount, notifyUrl: notifyUrl, payName: payName, jumpUrl: jumpUrl, orderName: orderName, originalAmount: originalAmount, ignoreAmount: ignoreAmount, discountAmount: discountAmount, tradeAccount: tradeAccount, tradeNo: tradeNo, authCode: authCode, tag: tag, remark: remark, tradeResult: tradeResult, royalty: royalty, jsapi: jsapi, subAppId: subAppId, subOpenId: subOpenId, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云支付-统一下单接口
    @inlinable
    public func unifiedTlinxOrder(openId: String, openKey: String, developerNo: String, payTag: String, tradeAmount: String, notifyUrl: String, payName: String? = nil, jumpUrl: String? = nil, orderName: String? = nil, originalAmount: String? = nil, ignoreAmount: String? = nil, discountAmount: String? = nil, tradeAccount: String? = nil, tradeNo: String? = nil, authCode: String? = nil, tag: String? = nil, remark: String? = nil, tradeResult: String? = nil, royalty: String? = nil, jsapi: String? = nil, subAppId: String? = nil, subOpenId: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnifiedTlinxOrderResponse {
        try await self.unifiedTlinxOrder(.init(openId: openId, openKey: openKey, developerNo: developerNo, payTag: payTag, tradeAmount: tradeAmount, notifyUrl: notifyUrl, payName: payName, jumpUrl: jumpUrl, orderName: orderName, originalAmount: originalAmount, ignoreAmount: ignoreAmount, discountAmount: discountAmount, tradeAccount: tradeAccount, tradeNo: tradeNo, authCode: authCode, tag: tag, remark: remark, tradeResult: tradeResult, royalty: royalty, jsapi: jsapi, subAppId: subAppId, subOpenId: subOpenId, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
