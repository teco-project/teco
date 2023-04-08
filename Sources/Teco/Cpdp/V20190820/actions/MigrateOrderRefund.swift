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
    /// MigrateOrderRefund请求参数结构体
    public struct MigrateOrderRefundRequest: TCRequestModel {
        /// 商户代码
        public let merchantId: String

        /// 支付渠道，ALIPAY对应支付宝渠道；UNIONPAY对应银联渠道
        public let payChannel: String

        /// 正向支付商户订单号
        public let payOrderId: String

        /// 退款订单号，最长64位，仅支持数字、 字母
        public let refundOrderId: String

        /// 退款金额，单位：分。备注：改字段必须大于0 和小于10000000000的整数。
        public let refundAmt: UInt64

        /// 第三方支付机构支付交易号
        public let thirdChannelOrderId: String

        /// 原始支付金额，单位：分。备注：当该字段为空或者为0 时，系统会默认使用订单当 实付金额作为退款金额
        public let payAmt: UInt64?

        /// 接入环境。沙箱环境填 sandbox。
        public let profile: String?

        /// 退款原因
        public let refundReason: String?

        public init(merchantId: String, payChannel: String, payOrderId: String, refundOrderId: String, refundAmt: UInt64, thirdChannelOrderId: String, payAmt: UInt64? = nil, profile: String? = nil, refundReason: String? = nil) {
            self.merchantId = merchantId
            self.payChannel = payChannel
            self.payOrderId = payOrderId
            self.refundOrderId = refundOrderId
            self.refundAmt = refundAmt
            self.thirdChannelOrderId = thirdChannelOrderId
            self.payAmt = payAmt
            self.profile = profile
            self.refundReason = refundReason
        }

        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case payChannel = "PayChannel"
            case payOrderId = "PayOrderId"
            case refundOrderId = "RefundOrderId"
            case refundAmt = "RefundAmt"
            case thirdChannelOrderId = "ThirdChannelOrderId"
            case payAmt = "PayAmt"
            case profile = "Profile"
            case refundReason = "RefundReason"
        }
    }

    /// MigrateOrderRefund返回参数结构体
    public struct MigrateOrderRefundResponse: TCResponseModel {
        /// 请求成功状态
        public let isSuccess: Bool

        /// 退款流水号
        public let tradeSerialNo: String

        /// 交易备注
        public let tradeMsg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isSuccess = "IsSuccess"
            case tradeSerialNo = "TradeSerialNo"
            case tradeMsg = "TradeMsg"
            case requestId = "RequestId"
        }
    }

    /// 智慧零售-系统迁移存量订单退款
    ///
    /// 山姆聚合支付项目-存量订单退款接口。可以通过本接口将支付款全部或部分退还给付款方，在收到用户退款请求并且验证成功之后，按照退款规则将支付款按原路退回到支付帐号。
    @inlinable
    public func migrateOrderRefund(_ input: MigrateOrderRefundRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MigrateOrderRefundResponse> {
        self.client.execute(action: "MigrateOrderRefund", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智慧零售-系统迁移存量订单退款
    ///
    /// 山姆聚合支付项目-存量订单退款接口。可以通过本接口将支付款全部或部分退还给付款方，在收到用户退款请求并且验证成功之后，按照退款规则将支付款按原路退回到支付帐号。
    @inlinable
    public func migrateOrderRefund(_ input: MigrateOrderRefundRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MigrateOrderRefundResponse {
        try await self.client.execute(action: "MigrateOrderRefund", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智慧零售-系统迁移存量订单退款
    ///
    /// 山姆聚合支付项目-存量订单退款接口。可以通过本接口将支付款全部或部分退还给付款方，在收到用户退款请求并且验证成功之后，按照退款规则将支付款按原路退回到支付帐号。
    @inlinable
    public func migrateOrderRefund(merchantId: String, payChannel: String, payOrderId: String, refundOrderId: String, refundAmt: UInt64, thirdChannelOrderId: String, payAmt: UInt64? = nil, profile: String? = nil, refundReason: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MigrateOrderRefundResponse> {
        self.migrateOrderRefund(.init(merchantId: merchantId, payChannel: payChannel, payOrderId: payOrderId, refundOrderId: refundOrderId, refundAmt: refundAmt, thirdChannelOrderId: thirdChannelOrderId, payAmt: payAmt, profile: profile, refundReason: refundReason), region: region, logger: logger, on: eventLoop)
    }

    /// 智慧零售-系统迁移存量订单退款
    ///
    /// 山姆聚合支付项目-存量订单退款接口。可以通过本接口将支付款全部或部分退还给付款方，在收到用户退款请求并且验证成功之后，按照退款规则将支付款按原路退回到支付帐号。
    @inlinable
    public func migrateOrderRefund(merchantId: String, payChannel: String, payOrderId: String, refundOrderId: String, refundAmt: UInt64, thirdChannelOrderId: String, payAmt: UInt64? = nil, profile: String? = nil, refundReason: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MigrateOrderRefundResponse {
        try await self.migrateOrderRefund(.init(merchantId: merchantId, payChannel: payChannel, payOrderId: payOrderId, refundOrderId: refundOrderId, refundAmt: refundAmt, thirdChannelOrderId: thirdChannelOrderId, payAmt: payAmt, profile: profile, refundReason: refundReason), region: region, logger: logger, on: eventLoop)
    }
}
