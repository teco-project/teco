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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cpdp {
    /// ExecuteMemberTransaction请求参数结构体
    public struct ExecuteMemberTransactionRequest: TCRequestModel {
        /// 请求类型此接口固定填：MemberTransactionReq
        public let requestType: String

        /// 银行注册商户号
        public let merchantCode: String

        /// 支付渠道
        public let payChannel: String

        /// 子渠道
        public let payChannelSubId: Int64

        /// 转出交易网会员代码
        public let outTransNetMemberCode: String

        /// 转出见证子账户的户名
        public let outSubAccountName: String

        /// 转入见证子账户的户名
        public let inSubAccountName: String

        /// 转出子账户账号
        public let outSubAccountNumber: String

        /// 转入子账户账号
        public let inSubAccountNumber: String

        /// 父账户账号，资金汇总账号
        public let bankAccountNumber: String

        /// 货币单位 单位，1：元，2：角，3：分
        public let currencyUnit: String

        /// 币种
        public let currencyType: String

        /// 交易金额
        public let currencyAmount: String

        /// 订单号
        public let orderId: String

        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String

        /// 聚鑫分配的安全ID
        public let midasSecretId: String

        /// 计费签名
        public let midasSignature: String

        /// 交易流水号
        /// 生成方式：用户短号+日期（6位）+ 随机编号（10位）例如：F088722005120904930798
        /// 短号：F08872  日期： 200512   随机编号：0904930798
        public let transSequenceNumber: String

        /// 转入交易网会员代码
        public let inTransNetMemberCode: String

        /// Midas环境标识 release 现网环境 sandbox 沙箱环境
        /// development 开发环境
        public let midasEnvironment: String

        /// 平台短号(银行分配)
        public let platformShortNumber: String?

        /// 1：下单预支付
        /// 2：确认并付款
        /// 3：退款
        /// 6：直接支付T+1
        /// 9：直接支付T+0
        public let transType: String?

        /// 交易手续费
        public let transFee: String?

        /// 保留域
        public let reservedMessage: String?

        public init(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, outTransNetMemberCode: String, outSubAccountName: String, inSubAccountName: String, outSubAccountNumber: String, inSubAccountNumber: String, bankAccountNumber: String, currencyUnit: String, currencyType: String, currencyAmount: String, orderId: String, midasAppId: String, midasSecretId: String, midasSignature: String, transSequenceNumber: String, inTransNetMemberCode: String, midasEnvironment: String, platformShortNumber: String? = nil, transType: String? = nil, transFee: String? = nil, reservedMessage: String? = nil) {
            self.requestType = requestType
            self.merchantCode = merchantCode
            self.payChannel = payChannel
            self.payChannelSubId = payChannelSubId
            self.outTransNetMemberCode = outTransNetMemberCode
            self.outSubAccountName = outSubAccountName
            self.inSubAccountName = inSubAccountName
            self.outSubAccountNumber = outSubAccountNumber
            self.inSubAccountNumber = inSubAccountNumber
            self.bankAccountNumber = bankAccountNumber
            self.currencyUnit = currencyUnit
            self.currencyType = currencyType
            self.currencyAmount = currencyAmount
            self.orderId = orderId
            self.midasAppId = midasAppId
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.transSequenceNumber = transSequenceNumber
            self.inTransNetMemberCode = inTransNetMemberCode
            self.midasEnvironment = midasEnvironment
            self.platformShortNumber = platformShortNumber
            self.transType = transType
            self.transFee = transFee
            self.reservedMessage = reservedMessage
        }

        enum CodingKeys: String, CodingKey {
            case requestType = "RequestType"
            case merchantCode = "MerchantCode"
            case payChannel = "PayChannel"
            case payChannelSubId = "PayChannelSubId"
            case outTransNetMemberCode = "OutTransNetMemberCode"
            case outSubAccountName = "OutSubAccountName"
            case inSubAccountName = "InSubAccountName"
            case outSubAccountNumber = "OutSubAccountNumber"
            case inSubAccountNumber = "InSubAccountNumber"
            case bankAccountNumber = "BankAccountNumber"
            case currencyUnit = "CurrencyUnit"
            case currencyType = "CurrencyType"
            case currencyAmount = "CurrencyAmount"
            case orderId = "OrderId"
            case midasAppId = "MidasAppId"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case transSequenceNumber = "TransSequenceNumber"
            case inTransNetMemberCode = "InTransNetMemberCode"
            case midasEnvironment = "MidasEnvironment"
            case platformShortNumber = "PlatformShortNumber"
            case transType = "TransType"
            case transFee = "TransFee"
            case reservedMessage = "ReservedMessage"
        }
    }

    /// ExecuteMemberTransaction返回参数结构体
    public struct ExecuteMemberTransactionResponse: TCResponseModel {
        /// 请求类型
        public let requestType: String

        /// 银行流水号
        public let frontSequenceNumber: String

        /// 保留域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reservedMessage: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestType = "RequestType"
            case frontSequenceNumber = "FrontSequenceNumber"
            case reservedMessage = "ReservedMessage"
            case requestId = "RequestId"
        }
    }

    /// 会员间交易接口
    @inlinable
    public func executeMemberTransaction(_ input: ExecuteMemberTransactionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteMemberTransactionResponse> {
        self.client.execute(action: "ExecuteMemberTransaction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 会员间交易接口
    @inlinable
    public func executeMemberTransaction(_ input: ExecuteMemberTransactionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteMemberTransactionResponse {
        try await self.client.execute(action: "ExecuteMemberTransaction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 会员间交易接口
    @inlinable
    public func executeMemberTransaction(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, outTransNetMemberCode: String, outSubAccountName: String, inSubAccountName: String, outSubAccountNumber: String, inSubAccountNumber: String, bankAccountNumber: String, currencyUnit: String, currencyType: String, currencyAmount: String, orderId: String, midasAppId: String, midasSecretId: String, midasSignature: String, transSequenceNumber: String, inTransNetMemberCode: String, midasEnvironment: String, platformShortNumber: String? = nil, transType: String? = nil, transFee: String? = nil, reservedMessage: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteMemberTransactionResponse> {
        self.executeMemberTransaction(.init(requestType: requestType, merchantCode: merchantCode, payChannel: payChannel, payChannelSubId: payChannelSubId, outTransNetMemberCode: outTransNetMemberCode, outSubAccountName: outSubAccountName, inSubAccountName: inSubAccountName, outSubAccountNumber: outSubAccountNumber, inSubAccountNumber: inSubAccountNumber, bankAccountNumber: bankAccountNumber, currencyUnit: currencyUnit, currencyType: currencyType, currencyAmount: currencyAmount, orderId: orderId, midasAppId: midasAppId, midasSecretId: midasSecretId, midasSignature: midasSignature, transSequenceNumber: transSequenceNumber, inTransNetMemberCode: inTransNetMemberCode, midasEnvironment: midasEnvironment, platformShortNumber: platformShortNumber, transType: transType, transFee: transFee, reservedMessage: reservedMessage), region: region, logger: logger, on: eventLoop)
    }

    /// 会员间交易接口
    @inlinable
    public func executeMemberTransaction(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, outTransNetMemberCode: String, outSubAccountName: String, inSubAccountName: String, outSubAccountNumber: String, inSubAccountNumber: String, bankAccountNumber: String, currencyUnit: String, currencyType: String, currencyAmount: String, orderId: String, midasAppId: String, midasSecretId: String, midasSignature: String, transSequenceNumber: String, inTransNetMemberCode: String, midasEnvironment: String, platformShortNumber: String? = nil, transType: String? = nil, transFee: String? = nil, reservedMessage: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteMemberTransactionResponse {
        try await self.executeMemberTransaction(.init(requestType: requestType, merchantCode: merchantCode, payChannel: payChannel, payChannelSubId: payChannelSubId, outTransNetMemberCode: outTransNetMemberCode, outSubAccountName: outSubAccountName, inSubAccountName: inSubAccountName, outSubAccountNumber: outSubAccountNumber, inSubAccountNumber: inSubAccountNumber, bankAccountNumber: bankAccountNumber, currencyUnit: currencyUnit, currencyType: currencyType, currencyAmount: currencyAmount, orderId: orderId, midasAppId: midasAppId, midasSecretId: midasSecretId, midasSignature: midasSignature, transSequenceNumber: transSequenceNumber, inTransNetMemberCode: inTransNetMemberCode, midasEnvironment: midasEnvironment, platformShortNumber: platformShortNumber, transType: transType, transFee: transFee, reservedMessage: reservedMessage), region: region, logger: logger, on: eventLoop)
    }
}
