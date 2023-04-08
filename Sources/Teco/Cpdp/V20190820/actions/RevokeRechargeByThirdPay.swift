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
    /// RevokeRechargeByThirdPay请求参数结构体
    public struct RevokeRechargeByThirdPayRequest: TCRequestModel {
        /// 请求类型此接口固定填：RevokeMemberRechargeThirdPayReq
        public let requestType: String

        /// 商户号
        public let merchantCode: String

        /// 支付渠道
        public let payChannel: String

        /// 子渠道
        public let payChannelSubId: Int64

        /// 原始充值交易订单号
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

        /// 申请撤销的手续费金额,以元为单位
        public let transFee: String

        /// 第三方支付渠道类型 0001-微信 0002-支付宝 0003-京东支付
        public let thirdPayChannel: String

        /// 第三方渠道订单号或流水号
        public let thirdPayChannelOrderId: String

        /// 充值接口银行返回的流水号(FrontSeqNo)
        public let oldFrontSequenceNumber: String

        /// 申请撤销的金额
        public let currencyAmount: String

        /// 单位，1：元，2：角，3：分 目前固定填1
        public let currencyUnit: String

        /// 币种 目前固定填RMB
        public let currencyType: String

        /// Midas环境标识
        public let midasEnvironment: String

        /// 保留域
        public let reservedMessage: String?

        /// 备注
        public let remark: String?

        public init(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, orderId: String, bankAccountNumber: String, platformShortNumber: String, midasSecretId: String, midasAppId: String, midasSignature: String, transSequenceNumber: String, transFee: String, thirdPayChannel: String, thirdPayChannelOrderId: String, oldFrontSequenceNumber: String, currencyAmount: String, currencyUnit: String, currencyType: String, midasEnvironment: String, reservedMessage: String? = nil, remark: String? = nil) {
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
            self.transFee = transFee
            self.thirdPayChannel = thirdPayChannel
            self.thirdPayChannelOrderId = thirdPayChannelOrderId
            self.oldFrontSequenceNumber = oldFrontSequenceNumber
            self.currencyAmount = currencyAmount
            self.currencyUnit = currencyUnit
            self.currencyType = currencyType
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
            case transFee = "TransFee"
            case thirdPayChannel = "ThirdPayChannel"
            case thirdPayChannelOrderId = "ThirdPayChannelOrderId"
            case oldFrontSequenceNumber = "OldFrontSequenceNumber"
            case currencyAmount = "CurrencyAmount"
            case currencyUnit = "CurrencyUnit"
            case currencyType = "CurrencyType"
            case midasEnvironment = "MidasEnvironment"
            case reservedMessage = "ReservedMessage"
            case remark = "Remark"
        }
    }

    /// RevokeRechargeByThirdPay返回参数结构体
    public struct RevokeRechargeByThirdPayResponse: TCResponseModel {
        /// 请求类型
        public let requestType: String

        /// 保留域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reservedMessage: String?

        /// 银行流水号
        public let frontSequenceNumber: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestType = "RequestType"
            case reservedMessage = "ReservedMessage"
            case frontSequenceNumber = "FrontSequenceNumber"
            case requestId = "RequestId"
        }
    }

    /// 撤销会员在途充值(经第三方支付渠道)接口
    @inlinable
    public func revokeRechargeByThirdPay(_ input: RevokeRechargeByThirdPayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeRechargeByThirdPayResponse> {
        self.client.execute(action: "RevokeRechargeByThirdPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 撤销会员在途充值(经第三方支付渠道)接口
    @inlinable
    public func revokeRechargeByThirdPay(_ input: RevokeRechargeByThirdPayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeRechargeByThirdPayResponse {
        try await self.client.execute(action: "RevokeRechargeByThirdPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 撤销会员在途充值(经第三方支付渠道)接口
    @inlinable
    public func revokeRechargeByThirdPay(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, orderId: String, bankAccountNumber: String, platformShortNumber: String, midasSecretId: String, midasAppId: String, midasSignature: String, transSequenceNumber: String, transFee: String, thirdPayChannel: String, thirdPayChannelOrderId: String, oldFrontSequenceNumber: String, currencyAmount: String, currencyUnit: String, currencyType: String, midasEnvironment: String, reservedMessage: String? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeRechargeByThirdPayResponse> {
        self.revokeRechargeByThirdPay(.init(requestType: requestType, merchantCode: merchantCode, payChannel: payChannel, payChannelSubId: payChannelSubId, orderId: orderId, bankAccountNumber: bankAccountNumber, platformShortNumber: platformShortNumber, midasSecretId: midasSecretId, midasAppId: midasAppId, midasSignature: midasSignature, transSequenceNumber: transSequenceNumber, transFee: transFee, thirdPayChannel: thirdPayChannel, thirdPayChannelOrderId: thirdPayChannelOrderId, oldFrontSequenceNumber: oldFrontSequenceNumber, currencyAmount: currencyAmount, currencyUnit: currencyUnit, currencyType: currencyType, midasEnvironment: midasEnvironment, reservedMessage: reservedMessage, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 撤销会员在途充值(经第三方支付渠道)接口
    @inlinable
    public func revokeRechargeByThirdPay(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, orderId: String, bankAccountNumber: String, platformShortNumber: String, midasSecretId: String, midasAppId: String, midasSignature: String, transSequenceNumber: String, transFee: String, thirdPayChannel: String, thirdPayChannelOrderId: String, oldFrontSequenceNumber: String, currencyAmount: String, currencyUnit: String, currencyType: String, midasEnvironment: String, reservedMessage: String? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeRechargeByThirdPayResponse {
        try await self.revokeRechargeByThirdPay(.init(requestType: requestType, merchantCode: merchantCode, payChannel: payChannel, payChannelSubId: payChannelSubId, orderId: orderId, bankAccountNumber: bankAccountNumber, platformShortNumber: platformShortNumber, midasSecretId: midasSecretId, midasAppId: midasAppId, midasSignature: midasSignature, transSequenceNumber: transSequenceNumber, transFee: transFee, thirdPayChannel: thirdPayChannel, thirdPayChannelOrderId: thirdPayChannelOrderId, oldFrontSequenceNumber: oldFrontSequenceNumber, currencyAmount: currencyAmount, currencyUnit: currencyUnit, currencyType: currencyType, midasEnvironment: midasEnvironment, reservedMessage: reservedMessage, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
