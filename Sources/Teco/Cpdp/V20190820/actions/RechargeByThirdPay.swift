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

import TecoCore

extension Cpdp {
    /// RechargeByThirdPay请求参数结构体
    public struct RechargeByThirdPayRequest: TCRequestModel {
        /// 请求类型 此接口固定填：MemberRechargeThirdPayReq
        public let requestType: String

        /// 商户号
        public let merchantCode: String

        /// 支付渠道
        public let payChannel: String

        /// 子渠道
        public let payChannelSubId: Int64

        /// 交易订单号
        public let orderId: String

        /// 父账户账号，资金汇总账号
        public let bankAccountNumber: String

        /// 平台短号(银行分配)
        public let platformShortNumber: String

        /// 聚鑫分配的安全ID
        public let midasSecretId: String

        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String

        /// 计费签名
        public let midasSignature: String

        /// 交易流水号
        public let transSequenceNumber: String

        /// 子账户账号
        public let bankSubAccountNumber: String

        /// 交易手续费，以元为单位
        public let transFee: String

        /// 第三方支付渠道类型 0001-微信 0002-支付宝 0003-京东支付
        public let thirdPayChannel: String

        /// 第三方渠道商户号
        public let thirdPayChannelMerchantCode: String

        /// 第三方渠道订单号或流水号
        public let thirdPayChannelOrderId: String

        /// 交易金额
        public let currencyAmount: String

        /// 单位，1：元，2：角，3：分
        public let currencyUnit: String

        /// 币种
        public let currencyType: String

        /// 交易网会员代码
        public let transNetMemberCode: String

        /// midas环境参数
        public let midasEnvironment: String

        /// 保留域
        public let reservedMessage: String?

        /// 备注
        public let remark: String?

        public init(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, orderId: String, bankAccountNumber: String, platformShortNumber: String, midasSecretId: String, midasAppId: String, midasSignature: String, transSequenceNumber: String, bankSubAccountNumber: String, transFee: String, thirdPayChannel: String, thirdPayChannelMerchantCode: String, thirdPayChannelOrderId: String, currencyAmount: String, currencyUnit: String, currencyType: String, transNetMemberCode: String, midasEnvironment: String, reservedMessage: String? = nil, remark: String? = nil) {
            self.requestType = requestType
            self.merchantCode = merchantCode
            self.payChannel = payChannel
            self.payChannelSubId = payChannelSubId
            self.orderId = orderId
            self.bankAccountNumber = bankAccountNumber
            self.platformShortNumber = platformShortNumber
            self.midasSecretId = midasSecretId
            self.midasAppId = midasAppId
            self.midasSignature = midasSignature
            self.transSequenceNumber = transSequenceNumber
            self.bankSubAccountNumber = bankSubAccountNumber
            self.transFee = transFee
            self.thirdPayChannel = thirdPayChannel
            self.thirdPayChannelMerchantCode = thirdPayChannelMerchantCode
            self.thirdPayChannelOrderId = thirdPayChannelOrderId
            self.currencyAmount = currencyAmount
            self.currencyUnit = currencyUnit
            self.currencyType = currencyType
            self.transNetMemberCode = transNetMemberCode
            self.midasEnvironment = midasEnvironment
            self.reservedMessage = reservedMessage
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case requestType = "RequestType"
            case merchantCode = "MerchantCode"
            case payChannel = "PayChannel"
            case payChannelSubId = "PayChannelSubId"
            case orderId = "OrderId"
            case bankAccountNumber = "BankAccountNumber"
            case platformShortNumber = "PlatformShortNumber"
            case midasSecretId = "MidasSecretId"
            case midasAppId = "MidasAppId"
            case midasSignature = "MidasSignature"
            case transSequenceNumber = "TransSequenceNumber"
            case bankSubAccountNumber = "BankSubAccountNumber"
            case transFee = "TransFee"
            case thirdPayChannel = "ThirdPayChannel"
            case thirdPayChannelMerchantCode = "ThirdPayChannelMerchantCode"
            case thirdPayChannelOrderId = "ThirdPayChannelOrderId"
            case currencyAmount = "CurrencyAmount"
            case currencyUnit = "CurrencyUnit"
            case currencyType = "CurrencyType"
            case transNetMemberCode = "TransNetMemberCode"
            case midasEnvironment = "MidasEnvironment"
            case reservedMessage = "ReservedMessage"
            case remark = "Remark"
        }
    }

    /// RechargeByThirdPay返回参数结构体
    public struct RechargeByThirdPayResponse: TCResponseModel {
        /// 保留字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reservedMessage: String?

        /// 银行流水号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let frontSequenceNumber: String?

        /// 请求类型
        public let requestType: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case reservedMessage = "ReservedMessage"
            case frontSequenceNumber = "FrontSequenceNumber"
            case requestType = "RequestType"
            case requestId = "RequestId"
        }
    }

    /// 会员在途充值(经第三方支付渠道)接口
    @inlinable
    public func rechargeByThirdPay(_ input: RechargeByThirdPayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RechargeByThirdPayResponse> {
        self.client.execute(action: "RechargeByThirdPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 会员在途充值(经第三方支付渠道)接口
    @inlinable
    public func rechargeByThirdPay(_ input: RechargeByThirdPayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RechargeByThirdPayResponse {
        try await self.client.execute(action: "RechargeByThirdPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 会员在途充值(经第三方支付渠道)接口
    @inlinable
    public func rechargeByThirdPay(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, orderId: String, bankAccountNumber: String, platformShortNumber: String, midasSecretId: String, midasAppId: String, midasSignature: String, transSequenceNumber: String, bankSubAccountNumber: String, transFee: String, thirdPayChannel: String, thirdPayChannelMerchantCode: String, thirdPayChannelOrderId: String, currencyAmount: String, currencyUnit: String, currencyType: String, transNetMemberCode: String, midasEnvironment: String, reservedMessage: String? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RechargeByThirdPayResponse> {
        self.rechargeByThirdPay(.init(requestType: requestType, merchantCode: merchantCode, payChannel: payChannel, payChannelSubId: payChannelSubId, orderId: orderId, bankAccountNumber: bankAccountNumber, platformShortNumber: platformShortNumber, midasSecretId: midasSecretId, midasAppId: midasAppId, midasSignature: midasSignature, transSequenceNumber: transSequenceNumber, bankSubAccountNumber: bankSubAccountNumber, transFee: transFee, thirdPayChannel: thirdPayChannel, thirdPayChannelMerchantCode: thirdPayChannelMerchantCode, thirdPayChannelOrderId: thirdPayChannelOrderId, currencyAmount: currencyAmount, currencyUnit: currencyUnit, currencyType: currencyType, transNetMemberCode: transNetMemberCode, midasEnvironment: midasEnvironment, reservedMessage: reservedMessage, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 会员在途充值(经第三方支付渠道)接口
    @inlinable
    public func rechargeByThirdPay(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, orderId: String, bankAccountNumber: String, platformShortNumber: String, midasSecretId: String, midasAppId: String, midasSignature: String, transSequenceNumber: String, bankSubAccountNumber: String, transFee: String, thirdPayChannel: String, thirdPayChannelMerchantCode: String, thirdPayChannelOrderId: String, currencyAmount: String, currencyUnit: String, currencyType: String, transNetMemberCode: String, midasEnvironment: String, reservedMessage: String? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RechargeByThirdPayResponse {
        try await self.rechargeByThirdPay(.init(requestType: requestType, merchantCode: merchantCode, payChannel: payChannel, payChannelSubId: payChannelSubId, orderId: orderId, bankAccountNumber: bankAccountNumber, platformShortNumber: platformShortNumber, midasSecretId: midasSecretId, midasAppId: midasAppId, midasSignature: midasSignature, transSequenceNumber: transSequenceNumber, bankSubAccountNumber: bankSubAccountNumber, transFee: transFee, thirdPayChannel: thirdPayChannel, thirdPayChannelMerchantCode: thirdPayChannelMerchantCode, thirdPayChannelOrderId: thirdPayChannelOrderId, currencyAmount: currencyAmount, currencyUnit: currencyUnit, currencyType: currencyType, transNetMemberCode: transNetMemberCode, midasEnvironment: midasEnvironment, reservedMessage: reservedMessage, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
