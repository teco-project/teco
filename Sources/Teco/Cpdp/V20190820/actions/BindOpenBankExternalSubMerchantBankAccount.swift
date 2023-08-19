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
    /// BindOpenBankExternalSubMerchantBankAccount请求参数结构体
    public struct BindOpenBankExternalSubMerchantBankAccountRequest: TCRequest {
        /// 渠道商户ID。
        public let channelMerchantId: String

        /// 渠道子商户ID。
        public let channelSubMerchantId: String

        /// 渠道名称。
        /// __TENPAY__: 商企付
        /// __WECHAT__: 微信支付
        /// __ALIPAY__: 支付宝
        public let channelName: String

        /// 支付方式。
        /// __EBANK_PAYMENT__: ebank支付
        /// __OPENBANK_PAYMENT__: openbank支付
        public let paymentMethod: String

        /// 第三方渠道子商户收款方银行卡信息, 为JSON格式字符串。详情见附录-复杂类型。
        public let externalSubMerchantBindBankAccountData: String

        /// 外部申请编号。
        public let outApplyId: String

        /// 通知地址。
        public let notifyUrl: String?

        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?

        public init(channelMerchantId: String, channelSubMerchantId: String, channelName: String, paymentMethod: String, externalSubMerchantBindBankAccountData: String, outApplyId: String, notifyUrl: String? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.channelSubMerchantId = channelSubMerchantId
            self.channelName = channelName
            self.paymentMethod = paymentMethod
            self.externalSubMerchantBindBankAccountData = externalSubMerchantBindBankAccountData
            self.outApplyId = outApplyId
            self.notifyUrl = notifyUrl
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case channelSubMerchantId = "ChannelSubMerchantId"
            case channelName = "ChannelName"
            case paymentMethod = "PaymentMethod"
            case externalSubMerchantBindBankAccountData = "ExternalSubMerchantBindBankAccountData"
            case outApplyId = "OutApplyId"
            case notifyUrl = "NotifyUrl"
            case environment = "Environment"
        }
    }

    /// BindOpenBankExternalSubMerchantBankAccount返回参数结构体
    public struct BindOpenBankExternalSubMerchantBankAccountResponse: TCResponse {
        /// 错误码。
        /// __SUCCESS__: 成功
        /// __其他__: 见附录-错误码表
        public let errCode: String

        /// 错误消息。
        public let errMessage: String

        /// 返回结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: BindOpenBankExternalSubMerchantBankAccountResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-子商户银行卡绑定
    @inlinable
    public func bindOpenBankExternalSubMerchantBankAccount(_ input: BindOpenBankExternalSubMerchantBankAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindOpenBankExternalSubMerchantBankAccountResponse> {
        self.client.execute(action: "BindOpenBankExternalSubMerchantBankAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户银行卡绑定
    @inlinable
    public func bindOpenBankExternalSubMerchantBankAccount(_ input: BindOpenBankExternalSubMerchantBankAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindOpenBankExternalSubMerchantBankAccountResponse {
        try await self.client.execute(action: "BindOpenBankExternalSubMerchantBankAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-子商户银行卡绑定
    @inlinable
    public func bindOpenBankExternalSubMerchantBankAccount(channelMerchantId: String, channelSubMerchantId: String, channelName: String, paymentMethod: String, externalSubMerchantBindBankAccountData: String, outApplyId: String, notifyUrl: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindOpenBankExternalSubMerchantBankAccountResponse> {
        self.bindOpenBankExternalSubMerchantBankAccount(.init(channelMerchantId: channelMerchantId, channelSubMerchantId: channelSubMerchantId, channelName: channelName, paymentMethod: paymentMethod, externalSubMerchantBindBankAccountData: externalSubMerchantBindBankAccountData, outApplyId: outApplyId, notifyUrl: notifyUrl, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户银行卡绑定
    @inlinable
    public func bindOpenBankExternalSubMerchantBankAccount(channelMerchantId: String, channelSubMerchantId: String, channelName: String, paymentMethod: String, externalSubMerchantBindBankAccountData: String, outApplyId: String, notifyUrl: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindOpenBankExternalSubMerchantBankAccountResponse {
        try await self.bindOpenBankExternalSubMerchantBankAccount(.init(channelMerchantId: channelMerchantId, channelSubMerchantId: channelSubMerchantId, channelName: channelName, paymentMethod: paymentMethod, externalSubMerchantBindBankAccountData: externalSubMerchantBindBankAccountData, outApplyId: outApplyId, notifyUrl: notifyUrl, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
