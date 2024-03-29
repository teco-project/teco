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
    /// ApplyTrade请求参数结构体
    public struct ApplyTradeRequest: TCRequest {
        /// 贸易材料流水号
        public let tradeFileId: String

        /// 贸易材料订单号
        public let tradeOrderId: String

        /// 付款人ID
        public let payerId: String

        /// 收款人姓名
        public let payeeName: String

        /// 收款人常驻国家或地区编码 (见常见问题)
        public let payeeCountryCode: String

        /// 贸易类型 (GOODS: 商品, SERVICE: 服务)
        public let tradeType: String

        /// 交易时间 (格式: yyyyMMdd)
        public let tradeTime: String

        /// 交易币种
        public let tradeCurrency: String

        /// 交易金额
        public let tradeAmount: Float

        /// 交易名称
        /// (TradeType=GOODS时填写物品名称，可填写多个，格式无要求；
        /// TradeType=SERVICE时填写贸易类别，见常见问题-贸易类别)
        public let tradeName: String

        /// 交易数量 (TradeType=GOODS 填写物品数量, TradeType=SERVICE填写服务次数)
        public let tradeCount: Int64

        /// 货贸承运人 (TradeType=GOODS 必填)
        public let goodsCarrier: String?

        /// 服贸交易细节 (TradeType=GOODS 必填, 见常见问题-交易细节)
        public let serviceDetail: String?

        /// 服贸服务时间 (TradeType=GOODS 必填, 见常见问题-服务时间)
        public let serviceTime: String?

        /// 接入环境。沙箱环境填sandbox
        public let profile: String?

        public init(tradeFileId: String, tradeOrderId: String, payerId: String, payeeName: String, payeeCountryCode: String, tradeType: String, tradeTime: String, tradeCurrency: String, tradeAmount: Float, tradeName: String, tradeCount: Int64, goodsCarrier: String? = nil, serviceDetail: String? = nil, serviceTime: String? = nil, profile: String? = nil) {
            self.tradeFileId = tradeFileId
            self.tradeOrderId = tradeOrderId
            self.payerId = payerId
            self.payeeName = payeeName
            self.payeeCountryCode = payeeCountryCode
            self.tradeType = tradeType
            self.tradeTime = tradeTime
            self.tradeCurrency = tradeCurrency
            self.tradeAmount = tradeAmount
            self.tradeName = tradeName
            self.tradeCount = tradeCount
            self.goodsCarrier = goodsCarrier
            self.serviceDetail = serviceDetail
            self.serviceTime = serviceTime
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case tradeFileId = "TradeFileId"
            case tradeOrderId = "TradeOrderId"
            case payerId = "PayerId"
            case payeeName = "PayeeName"
            case payeeCountryCode = "PayeeCountryCode"
            case tradeType = "TradeType"
            case tradeTime = "TradeTime"
            case tradeCurrency = "TradeCurrency"
            case tradeAmount = "TradeAmount"
            case tradeName = "TradeName"
            case tradeCount = "TradeCount"
            case goodsCarrier = "GoodsCarrier"
            case serviceDetail = "ServiceDetail"
            case serviceTime = "ServiceTime"
            case profile = "Profile"
        }
    }

    /// ApplyTrade返回参数结构体
    public struct ApplyTradeResponse: TCResponse {
        /// 提交贸易材料结果
        public let result: ApplyTradeResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 跨境-提交贸易材料
    ///
    /// 跨境-提交贸易材料。通过提交贸易材料接口可为对接方累计贸易额度，在额度范围内可发起汇兑汇出交易。
    @inlinable
    public func applyTrade(_ input: ApplyTradeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyTradeResponse> {
        self.client.execute(action: "ApplyTrade", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 跨境-提交贸易材料
    ///
    /// 跨境-提交贸易材料。通过提交贸易材料接口可为对接方累计贸易额度，在额度范围内可发起汇兑汇出交易。
    @inlinable
    public func applyTrade(_ input: ApplyTradeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyTradeResponse {
        try await self.client.execute(action: "ApplyTrade", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 跨境-提交贸易材料
    ///
    /// 跨境-提交贸易材料。通过提交贸易材料接口可为对接方累计贸易额度，在额度范围内可发起汇兑汇出交易。
    @inlinable
    public func applyTrade(tradeFileId: String, tradeOrderId: String, payerId: String, payeeName: String, payeeCountryCode: String, tradeType: String, tradeTime: String, tradeCurrency: String, tradeAmount: Float, tradeName: String, tradeCount: Int64, goodsCarrier: String? = nil, serviceDetail: String? = nil, serviceTime: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyTradeResponse> {
        self.applyTrade(.init(tradeFileId: tradeFileId, tradeOrderId: tradeOrderId, payerId: payerId, payeeName: payeeName, payeeCountryCode: payeeCountryCode, tradeType: tradeType, tradeTime: tradeTime, tradeCurrency: tradeCurrency, tradeAmount: tradeAmount, tradeName: tradeName, tradeCount: tradeCount, goodsCarrier: goodsCarrier, serviceDetail: serviceDetail, serviceTime: serviceTime, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 跨境-提交贸易材料
    ///
    /// 跨境-提交贸易材料。通过提交贸易材料接口可为对接方累计贸易额度，在额度范围内可发起汇兑汇出交易。
    @inlinable
    public func applyTrade(tradeFileId: String, tradeOrderId: String, payerId: String, payeeName: String, payeeCountryCode: String, tradeType: String, tradeTime: String, tradeCurrency: String, tradeAmount: Float, tradeName: String, tradeCount: Int64, goodsCarrier: String? = nil, serviceDetail: String? = nil, serviceTime: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyTradeResponse {
        try await self.applyTrade(.init(tradeFileId: tradeFileId, tradeOrderId: tradeOrderId, payerId: payerId, payeeName: payeeName, payeeCountryCode: payeeCountryCode, tradeType: tradeType, tradeTime: tradeTime, tradeCurrency: tradeCurrency, tradeAmount: tradeAmount, tradeName: tradeName, tradeCount: tradeCount, goodsCarrier: goodsCarrier, serviceDetail: serviceDetail, serviceTime: serviceTime, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
