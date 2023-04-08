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
    /// RegisterBill请求参数结构体
    public struct RegisterBillRequest: TCRequestModel {
        /// 请求类型此接口固定填：RegBillSupportWithdrawReq
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
        public let bankAccountNo: String

        /// 平台短号(银行分配)
        public let platformShortNo: String

        /// 聚鑫分配的安全ID
        public let midasSecretId: String

        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String

        /// 计费签名
        public let midasSignature: String

        /// 交易流水号
        public let transSeqNo: String

        /// 暂未使用，默认传0.0
        public let tranFee: String

        /// 挂账金额，以元为单位
        public let orderAmt: String

        /// 子账户账号
        public let bankSubAccountNo: String

        /// 交易网会员代码
        public let tranNetMemberCode: String

        /// 0,登记挂账，1，撤销挂账
        public let tranType: String

        /// 保留域
        public let reservedMessage: String?

        /// 备注
        public let remark: String?

        /// Midas环境参数
        public let midasEnvironment: String?

        public init(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, orderId: String, bankAccountNo: String, platformShortNo: String, midasSecretId: String, midasAppId: String, midasSignature: String, transSeqNo: String, tranFee: String, orderAmt: String, bankSubAccountNo: String, tranNetMemberCode: String, tranType: String, reservedMessage: String? = nil, remark: String? = nil, midasEnvironment: String? = nil) {
            self.requestType = requestType
            self.merchantCode = merchantCode
            self.payChannel = payChannel
            self.payChannelSubId = payChannelSubId
            self.orderId = orderId
            self.bankAccountNo = bankAccountNo
            self.platformShortNo = platformShortNo
            self.midasSecretId = midasSecretId
            self.midasAppId = midasAppId
            self.midasSignature = midasSignature
            self.transSeqNo = transSeqNo
            self.tranFee = tranFee
            self.orderAmt = orderAmt
            self.bankSubAccountNo = bankSubAccountNo
            self.tranNetMemberCode = tranNetMemberCode
            self.tranType = tranType
            self.reservedMessage = reservedMessage
            self.remark = remark
            self.midasEnvironment = midasEnvironment
        }

        enum CodingKeys: String, CodingKey {
            case requestType = "RequestType"
            case merchantCode = "MerchantCode"
            case payChannel = "PayChannel"
            case payChannelSubId = "PayChannelSubId"
            case orderId = "OrderId"
            case bankAccountNo = "BankAccountNo"
            case platformShortNo = "PlatformShortNo"
            case midasSecretId = "MidasSecretId"
            case midasAppId = "MidasAppId"
            case midasSignature = "MidasSignature"
            case transSeqNo = "TransSeqNo"
            case tranFee = "TranFee"
            case orderAmt = "OrderAmt"
            case bankSubAccountNo = "BankSubAccountNo"
            case tranNetMemberCode = "TranNetMemberCode"
            case tranType = "TranType"
            case reservedMessage = "ReservedMessage"
            case remark = "Remark"
            case midasEnvironment = "MidasEnvironment"
        }
    }

    /// RegisterBill返回参数结构体
    public struct RegisterBillResponse: TCResponseModel {
        /// 银行流水号
        public let frontSeqNo: String

        /// 保留字段
        public let reservedMessage: String

        /// 请求类型
        public let requestType: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case frontSeqNo = "FrontSeqNo"
            case reservedMessage = "ReservedMessage"
            case requestType = "RequestType"
            case requestId = "RequestId"
        }
    }

    /// 登记挂账(支持撤销)
    @inlinable
    public func registerBill(_ input: RegisterBillRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterBillResponse> {
        self.client.execute(action: "RegisterBill", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 登记挂账(支持撤销)
    @inlinable
    public func registerBill(_ input: RegisterBillRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterBillResponse {
        try await self.client.execute(action: "RegisterBill", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 登记挂账(支持撤销)
    @inlinable
    public func registerBill(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, orderId: String, bankAccountNo: String, platformShortNo: String, midasSecretId: String, midasAppId: String, midasSignature: String, transSeqNo: String, tranFee: String, orderAmt: String, bankSubAccountNo: String, tranNetMemberCode: String, tranType: String, reservedMessage: String? = nil, remark: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterBillResponse> {
        self.registerBill(.init(requestType: requestType, merchantCode: merchantCode, payChannel: payChannel, payChannelSubId: payChannelSubId, orderId: orderId, bankAccountNo: bankAccountNo, platformShortNo: platformShortNo, midasSecretId: midasSecretId, midasAppId: midasAppId, midasSignature: midasSignature, transSeqNo: transSeqNo, tranFee: tranFee, orderAmt: orderAmt, bankSubAccountNo: bankSubAccountNo, tranNetMemberCode: tranNetMemberCode, tranType: tranType, reservedMessage: reservedMessage, remark: remark, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }

    /// 登记挂账(支持撤销)
    @inlinable
    public func registerBill(requestType: String, merchantCode: String, payChannel: String, payChannelSubId: Int64, orderId: String, bankAccountNo: String, platformShortNo: String, midasSecretId: String, midasAppId: String, midasSignature: String, transSeqNo: String, tranFee: String, orderAmt: String, bankSubAccountNo: String, tranNetMemberCode: String, tranType: String, reservedMessage: String? = nil, remark: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterBillResponse {
        try await self.registerBill(.init(requestType: requestType, merchantCode: merchantCode, payChannel: payChannel, payChannelSubId: payChannelSubId, orderId: orderId, bankAccountNo: bankAccountNo, platformShortNo: platformShortNo, midasSecretId: midasSecretId, midasAppId: midasAppId, midasSignature: midasSignature, transSeqNo: transSeqNo, tranFee: tranFee, orderAmt: orderAmt, bankSubAccountNo: bankSubAccountNo, tranNetMemberCode: tranNetMemberCode, tranType: tranType, reservedMessage: reservedMessage, remark: remark, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }
}
