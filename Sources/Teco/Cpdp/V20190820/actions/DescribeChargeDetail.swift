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
    /// DescribeChargeDetail请求参数结构体
    public struct DescribeChargeDetailRequest: TCRequest {
        /// 请求类型
        public let requestType: String

        /// 商户号
        public let merchantCode: String

        /// 支付渠道
        public let payChannel: String

        /// 子渠道
        public let payChannelSubId: Int64

        /// 原始交易订单号或者流水号
        public let orderId: String

        /// 父账户账号，资金汇总账号
        public let bankAccountNumber: String

        /// 收单渠道类型
        public let acquiringChannelType: String

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

        /// Midas环境参数
        public let midasEnvironment: String

        /// 保留域
        public let reservedMessage: String?

        public init(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, orderId: String, bankAccountNumber: String, acquiringChannelType: String, platformShortNumber: String, midasSecretId: String, midasAppId: String, midasSignature: String, transSequenceNumber: String, midasEnvironment: String, reservedMessage: String? = nil) {
            self.requestType = requestType
            self.merchantCode = merchantCode
            self.payChannel = payChannel
            self.payChannelSubId = payChannelSubId
            self.orderId = orderId
            self.bankAccountNumber = bankAccountNumber
            self.acquiringChannelType = acquiringChannelType
            self.platformShortNumber = platformShortNumber
            self.midasSecretId = midasSecretId
            self.midasAppId = midasAppId
            self.midasSignature = midasSignature
            self.transSequenceNumber = transSequenceNumber
            self.midasEnvironment = midasEnvironment
            self.reservedMessage = reservedMessage
        }

        enum CodingKeys: String, CodingKey {
            case requestType = "RequestType"
            case merchantCode = "MerchantCode"
            case payChannel = "PayChannel"
            case payChannelSubId = "PayChannelSubId"
            case orderId = "OrderId"
            case bankAccountNumber = "BankAccountNumber"
            case acquiringChannelType = "AcquiringChannelType"
            case platformShortNumber = "PlatformShortNumber"
            case midasSecretId = "MidasSecretId"
            case midasAppId = "MidasAppId"
            case midasSignature = "MidasSignature"
            case transSequenceNumber = "TransSequenceNumber"
            case midasEnvironment = "MidasEnvironment"
            case reservedMessage = "ReservedMessage"
        }
    }

    /// DescribeChargeDetail返回参数结构体
    public struct DescribeChargeDetailResponse: TCResponse {
        /// 交易状态 （0：成功，1：失败，2：异常,3:冲正，5：待处理）
        public let orderStatus: String

        /// 交易金额
        public let orderAmount: String

        /// 佣金费
        public let commissionAmount: String

        /// 支付方式  0-冻结支付 1-普通支付
        public let payMode: String

        /// 交易日期
        public let orderDate: String

        /// 交易时间
        public let orderTime: String

        /// 订单实际转入见证子账户的名称
        public let orderActualInSubAccountName: String

        /// 订单实际转入见证子账户的帐号
        public let orderActualInSubAccountNumber: String

        /// 订单实际转入见证子账户的帐号
        public let orderInSubAccountName: String

        /// 订单转入见证子账户的帐号
        public let orderInSubAccountNumber: String

        /// 银行流水号
        public let frontSequenceNumber: String

        /// 当充值失败时，返回交易失败原因
        public let failMessage: String

        /// 请求类型
        public let requestType: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case orderStatus = "OrderStatus"
            case orderAmount = "OrderAmount"
            case commissionAmount = "CommissionAmount"
            case payMode = "PayMode"
            case orderDate = "OrderDate"
            case orderTime = "OrderTime"
            case orderActualInSubAccountName = "OrderActualInSubAccountName"
            case orderActualInSubAccountNumber = "OrderActualInSubAccountNumber"
            case orderInSubAccountName = "OrderInSubAccountName"
            case orderInSubAccountNumber = "OrderInSubAccountNumber"
            case frontSequenceNumber = "FrontSequenceNumber"
            case failMessage = "FailMessage"
            case requestType = "RequestType"
            case requestId = "RequestId"
        }
    }

    /// 查询充值明细接口
    @inlinable
    public func describeChargeDetail(_ input: DescribeChargeDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChargeDetailResponse> {
        self.client.execute(action: "DescribeChargeDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询充值明细接口
    @inlinable
    public func describeChargeDetail(_ input: DescribeChargeDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChargeDetailResponse {
        try await self.client.execute(action: "DescribeChargeDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询充值明细接口
    @inlinable
    public func describeChargeDetail(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, orderId: String, bankAccountNumber: String, acquiringChannelType: String, platformShortNumber: String, midasSecretId: String, midasAppId: String, midasSignature: String, transSequenceNumber: String, midasEnvironment: String, reservedMessage: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChargeDetailResponse> {
        self.describeChargeDetail(.init(requestType: requestType, merchantCode: merchantCode, payChannel: payChannel, payChannelSubId: payChannelSubId, orderId: orderId, bankAccountNumber: bankAccountNumber, acquiringChannelType: acquiringChannelType, platformShortNumber: platformShortNumber, midasSecretId: midasSecretId, midasAppId: midasAppId, midasSignature: midasSignature, transSequenceNumber: transSequenceNumber, midasEnvironment: midasEnvironment, reservedMessage: reservedMessage), region: region, logger: logger, on: eventLoop)
    }

    /// 查询充值明细接口
    @inlinable
    public func describeChargeDetail(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, orderId: String, bankAccountNumber: String, acquiringChannelType: String, platformShortNumber: String, midasSecretId: String, midasAppId: String, midasSignature: String, transSequenceNumber: String, midasEnvironment: String, reservedMessage: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChargeDetailResponse {
        try await self.describeChargeDetail(.init(requestType: requestType, merchantCode: merchantCode, payChannel: payChannel, payChannelSubId: payChannelSubId, orderId: orderId, bankAccountNumber: bankAccountNumber, acquiringChannelType: acquiringChannelType, platformShortNumber: platformShortNumber, midasSecretId: midasSecretId, midasAppId: midasAppId, midasSignature: midasSignature, transSequenceNumber: transSequenceNumber, midasEnvironment: midasEnvironment, reservedMessage: reservedMessage), region: region, logger: logger, on: eventLoop)
    }
}
