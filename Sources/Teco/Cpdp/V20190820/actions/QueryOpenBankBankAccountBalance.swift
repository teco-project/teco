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
    /// QueryOpenBankBankAccountBalance请求参数结构体
    public struct QueryOpenBankBankAccountBalanceRequest: TCRequest {
        /// 云企付渠道商户号。外部接入平台入驻云企付平台后下发。
        public let channelMerchantId: String

        /// 云企付渠道子商户号。入驻在渠道商户下的子商户ID，如付款方的商户ID，对应创建支付订单中接口参数中的PayerInfo中的payerId。
        public let channelSubMerchantId: String

        /// 渠道名称。
        /// __TENPAY__: 商企付
        /// __WECHAT__: 微信支付
        /// __ALIPAY__: 支付宝
        public let channelName: String

        /// 支付方式，如
        /// __EBANK_PAYMENT__:ebank付款
        /// __OPENBANK_PAYMENT__: openbank付款
        public let paymentMethod: String

        /// 绑卡序列号，银行账户唯一ID，区分多卡或多账户的场景
        public let bindSerialNo: String

        /// 环境类型
        /// release:生产环境
        /// sandbox:沙箱环境
        /// 缺省默认为生产环境
        public let environment: String?

        public init(channelMerchantId: String, channelSubMerchantId: String, channelName: String, paymentMethod: String, bindSerialNo: String, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.channelSubMerchantId = channelSubMerchantId
            self.channelName = channelName
            self.paymentMethod = paymentMethod
            self.bindSerialNo = bindSerialNo
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case channelSubMerchantId = "ChannelSubMerchantId"
            case channelName = "ChannelName"
            case paymentMethod = "PaymentMethod"
            case bindSerialNo = "BindSerialNo"
            case environment = "Environment"
        }
    }

    /// QueryOpenBankBankAccountBalance返回参数结构体
    public struct QueryOpenBankBankAccountBalanceResponse: TCResponse {
        /// 业务系统返回码，SUCCESS表示成功，其他表示失败。
        public let errCode: String

        /// 业务系统返回消息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 账户余额查询响应对象。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryOpenBankBankAccountBalanceResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-子商户银行卡余额查询
    @inlinable
    public func queryOpenBankBankAccountBalance(_ input: QueryOpenBankBankAccountBalanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankBankAccountBalanceResponse> {
        self.client.execute(action: "QueryOpenBankBankAccountBalance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户银行卡余额查询
    @inlinable
    public func queryOpenBankBankAccountBalance(_ input: QueryOpenBankBankAccountBalanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankBankAccountBalanceResponse {
        try await self.client.execute(action: "QueryOpenBankBankAccountBalance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-子商户银行卡余额查询
    @inlinable
    public func queryOpenBankBankAccountBalance(channelMerchantId: String, channelSubMerchantId: String, channelName: String, paymentMethod: String, bindSerialNo: String, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankBankAccountBalanceResponse> {
        self.queryOpenBankBankAccountBalance(.init(channelMerchantId: channelMerchantId, channelSubMerchantId: channelSubMerchantId, channelName: channelName, paymentMethod: paymentMethod, bindSerialNo: bindSerialNo, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户银行卡余额查询
    @inlinable
    public func queryOpenBankBankAccountBalance(channelMerchantId: String, channelSubMerchantId: String, channelName: String, paymentMethod: String, bindSerialNo: String, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankBankAccountBalanceResponse {
        try await self.queryOpenBankBankAccountBalance(.init(channelMerchantId: channelMerchantId, channelSubMerchantId: channelSubMerchantId, channelName: channelName, paymentMethod: paymentMethod, bindSerialNo: bindSerialNo, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
