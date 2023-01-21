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
    /// RefundMemberTransaction请求参数结构体
    public struct RefundMemberTransactionRequest: TCRequestModel {
        /// 转出见证子账户的户名
        public let outSubAccountName: String

        /// 转入见证子账户的户名
        public let inSubAccountName: String

        /// 子渠道
        public let payChannelSubId: Int64

        /// 转出见证子账户账号
        public let outSubAccountNumber: String

        /// 计费签名
        public let midasSignature: String

        /// 转入见证子账户账号
        public let inSubAccountNumber: String

        /// 聚鑫分配的安全ID
        public let midasSecretId: String

        /// 父账户账号，资金汇总账号
        public let bankAccountNumber: String

        /// 原老订单流水号
        public let oldTransSequenceNumber: String

        /// 银行注册商户号
        public let merchantCode: String

        /// 请求类型，固定为MemberTransactionRefundReq
        public let requestType: String

        /// 交易金额
        public let currencyAmount: String

        /// 交易流水号
        public let transSequenceNumber: String

        /// 渠道
        public let payChannel: String

        /// 原订单号
        public let oldOrderId: String

        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String

        /// 订单号
        public let orderId: String

        /// Midas环境标识 release 现网环境 sandbox 沙箱环境
        /// development 开发环境
        public let midasEnvironment: String

        /// 转出子账户交易网会员代码
        public let outTransNetMemberCode: String?

        /// 转入子账户交易网会员代码
        public let inTransNetMemberCode: String?

        /// 保留域
        public let reservedMessage: String?

        /// 平台短号(银行分配)
        public let platformShortNumber: String?

        /// 0-登记挂账，1-撤销挂账
        public let transType: String?

        /// 交易手续费
        public let transFee: String?

        public init(outSubAccountName: String, inSubAccountName: String, payChannelSubId: Int64, outSubAccountNumber: String, midasSignature: String, inSubAccountNumber: String, midasSecretId: String, bankAccountNumber: String, oldTransSequenceNumber: String, merchantCode: String, requestType: String, currencyAmount: String, transSequenceNumber: String, payChannel: String, oldOrderId: String, midasAppId: String, orderId: String, midasEnvironment: String, outTransNetMemberCode: String? = nil, inTransNetMemberCode: String? = nil, reservedMessage: String? = nil, platformShortNumber: String? = nil, transType: String? = nil, transFee: String? = nil) {
            self.outSubAccountName = outSubAccountName
            self.inSubAccountName = inSubAccountName
            self.payChannelSubId = payChannelSubId
            self.outSubAccountNumber = outSubAccountNumber
            self.midasSignature = midasSignature
            self.inSubAccountNumber = inSubAccountNumber
            self.midasSecretId = midasSecretId
            self.bankAccountNumber = bankAccountNumber
            self.oldTransSequenceNumber = oldTransSequenceNumber
            self.merchantCode = merchantCode
            self.requestType = requestType
            self.currencyAmount = currencyAmount
            self.transSequenceNumber = transSequenceNumber
            self.payChannel = payChannel
            self.oldOrderId = oldOrderId
            self.midasAppId = midasAppId
            self.orderId = orderId
            self.midasEnvironment = midasEnvironment
            self.outTransNetMemberCode = outTransNetMemberCode
            self.inTransNetMemberCode = inTransNetMemberCode
            self.reservedMessage = reservedMessage
            self.platformShortNumber = platformShortNumber
            self.transType = transType
            self.transFee = transFee
        }

        enum CodingKeys: String, CodingKey {
            case outSubAccountName = "OutSubAccountName"
            case inSubAccountName = "InSubAccountName"
            case payChannelSubId = "PayChannelSubId"
            case outSubAccountNumber = "OutSubAccountNumber"
            case midasSignature = "MidasSignature"
            case inSubAccountNumber = "InSubAccountNumber"
            case midasSecretId = "MidasSecretId"
            case bankAccountNumber = "BankAccountNumber"
            case oldTransSequenceNumber = "OldTransSequenceNumber"
            case merchantCode = "MerchantCode"
            case requestType = "RequestType"
            case currencyAmount = "CurrencyAmount"
            case transSequenceNumber = "TransSequenceNumber"
            case payChannel = "PayChannel"
            case oldOrderId = "OldOrderId"
            case midasAppId = "MidasAppId"
            case orderId = "OrderId"
            case midasEnvironment = "MidasEnvironment"
            case outTransNetMemberCode = "OutTransNetMemberCode"
            case inTransNetMemberCode = "InTransNetMemberCode"
            case reservedMessage = "ReservedMessage"
            case platformShortNumber = "PlatformShortNumber"
            case transType = "TransType"
            case transFee = "TransFee"
        }
    }

    /// RefundMemberTransaction返回参数结构体
    public struct RefundMemberTransactionResponse: TCResponseModel {
        /// 请求类型
        public let requestType: String

        /// 银行流水号
        public let frontSequenceNumber: String

        /// 保留域
        public let reservedMessage: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestType = "RequestType"
            case frontSequenceNumber = "FrontSequenceNumber"
            case reservedMessage = "ReservedMessage"
            case requestId = "RequestId"
        }
    }

    /// 会员间交易退款
    @inlinable
    public func refundMemberTransaction(_ input: RefundMemberTransactionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefundMemberTransactionResponse> {
        self.client.execute(action: "RefundMemberTransaction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 会员间交易退款
    @inlinable
    public func refundMemberTransaction(_ input: RefundMemberTransactionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefundMemberTransactionResponse {
        try await self.client.execute(action: "RefundMemberTransaction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 会员间交易退款
    @inlinable
    public func refundMemberTransaction(outSubAccountName: String, inSubAccountName: String, payChannelSubId: Int64, outSubAccountNumber: String, midasSignature: String, inSubAccountNumber: String, midasSecretId: String, bankAccountNumber: String, oldTransSequenceNumber: String, merchantCode: String, requestType: String, currencyAmount: String, transSequenceNumber: String, payChannel: String, oldOrderId: String, midasAppId: String, orderId: String, midasEnvironment: String, outTransNetMemberCode: String? = nil, inTransNetMemberCode: String? = nil, reservedMessage: String? = nil, platformShortNumber: String? = nil, transType: String? = nil, transFee: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefundMemberTransactionResponse> {
        self.refundMemberTransaction(RefundMemberTransactionRequest(outSubAccountName: outSubAccountName, inSubAccountName: inSubAccountName, payChannelSubId: payChannelSubId, outSubAccountNumber: outSubAccountNumber, midasSignature: midasSignature, inSubAccountNumber: inSubAccountNumber, midasSecretId: midasSecretId, bankAccountNumber: bankAccountNumber, oldTransSequenceNumber: oldTransSequenceNumber, merchantCode: merchantCode, requestType: requestType, currencyAmount: currencyAmount, transSequenceNumber: transSequenceNumber, payChannel: payChannel, oldOrderId: oldOrderId, midasAppId: midasAppId, orderId: orderId, midasEnvironment: midasEnvironment, outTransNetMemberCode: outTransNetMemberCode, inTransNetMemberCode: inTransNetMemberCode, reservedMessage: reservedMessage, platformShortNumber: platformShortNumber, transType: transType, transFee: transFee), region: region, logger: logger, on: eventLoop)
    }

    /// 会员间交易退款
    @inlinable
    public func refundMemberTransaction(outSubAccountName: String, inSubAccountName: String, payChannelSubId: Int64, outSubAccountNumber: String, midasSignature: String, inSubAccountNumber: String, midasSecretId: String, bankAccountNumber: String, oldTransSequenceNumber: String, merchantCode: String, requestType: String, currencyAmount: String, transSequenceNumber: String, payChannel: String, oldOrderId: String, midasAppId: String, orderId: String, midasEnvironment: String, outTransNetMemberCode: String? = nil, inTransNetMemberCode: String? = nil, reservedMessage: String? = nil, platformShortNumber: String? = nil, transType: String? = nil, transFee: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefundMemberTransactionResponse {
        try await self.refundMemberTransaction(RefundMemberTransactionRequest(outSubAccountName: outSubAccountName, inSubAccountName: inSubAccountName, payChannelSubId: payChannelSubId, outSubAccountNumber: outSubAccountNumber, midasSignature: midasSignature, inSubAccountNumber: inSubAccountNumber, midasSecretId: midasSecretId, bankAccountNumber: bankAccountNumber, oldTransSequenceNumber: oldTransSequenceNumber, merchantCode: merchantCode, requestType: requestType, currencyAmount: currencyAmount, transSequenceNumber: transSequenceNumber, payChannel: payChannel, oldOrderId: oldOrderId, midasAppId: midasAppId, orderId: orderId, midasEnvironment: midasEnvironment, outTransNetMemberCode: outTransNetMemberCode, inTransNetMemberCode: inTransNetMemberCode, reservedMessage: reservedMessage, platformShortNumber: platformShortNumber, transType: transType, transFee: transFee), region: region, logger: logger, on: eventLoop)
    }
}
