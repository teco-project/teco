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
    /// QueryOpenBankExternalSubAccountBookBalance请求参数结构体
    public struct QueryOpenBankExternalSubAccountBookBalanceRequest: TCRequestModel {
        /// 渠道商户ID
        public let channelMerchantId: String

        /// 渠道子商户ID
        public let channelSubMerchantId: String

        /// 渠道名称。目前只支持支付宝
        /// __TENPAY__: 商企付
        /// __WECHAT__: 微信支付
        /// __ALIPAY__: 支付宝
        public let channelName: String

        /// 支付方式。目前只支持安心发支付
        /// __EBANK_PAYMENT__: ebank支付
        /// __OPENBANK_PAYMENT__: openbank支付
        /// __SAFT_ISV__: 安心发支付
        public let paymentMethod: String

        /// 外部账本号ID。与ChannelAccountBookId二者选填其一。
        public let outAccountBookId: String?

        /// 渠道账本号ID。与OutAccountBookId二者选填其一。
        public let channelAccountBookId: String?

        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?

        public init(channelMerchantId: String, channelSubMerchantId: String, channelName: String, paymentMethod: String, outAccountBookId: String? = nil, channelAccountBookId: String? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.channelSubMerchantId = channelSubMerchantId
            self.channelName = channelName
            self.paymentMethod = paymentMethod
            self.outAccountBookId = outAccountBookId
            self.channelAccountBookId = channelAccountBookId
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case channelSubMerchantId = "ChannelSubMerchantId"
            case channelName = "ChannelName"
            case paymentMethod = "PaymentMethod"
            case outAccountBookId = "OutAccountBookId"
            case channelAccountBookId = "ChannelAccountBookId"
            case environment = "Environment"
        }
    }

    /// QueryOpenBankExternalSubAccountBookBalance返回参数结构体
    public struct QueryOpenBankExternalSubAccountBookBalanceResponse: TCResponseModel {
        /// 错误码。
        /// __SUCCESS__: 成功
        /// __其他__: 见附录-错误码表
        public let errCode: String

        /// 错误消息。
        public let errMessage: String

        /// 返回结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryExternalAccountBookResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-子商户电子记账本余额查询
    ///
    /// 第三方子商户电子记账本余额查询接口
    @inlinable
    public func queryOpenBankExternalSubAccountBookBalance(_ input: QueryOpenBankExternalSubAccountBookBalanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankExternalSubAccountBookBalanceResponse> {
        self.client.execute(action: "QueryOpenBankExternalSubAccountBookBalance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户电子记账本余额查询
    ///
    /// 第三方子商户电子记账本余额查询接口
    @inlinable
    public func queryOpenBankExternalSubAccountBookBalance(_ input: QueryOpenBankExternalSubAccountBookBalanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankExternalSubAccountBookBalanceResponse {
        try await self.client.execute(action: "QueryOpenBankExternalSubAccountBookBalance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-子商户电子记账本余额查询
    ///
    /// 第三方子商户电子记账本余额查询接口
    @inlinable
    public func queryOpenBankExternalSubAccountBookBalance(channelMerchantId: String, channelSubMerchantId: String, channelName: String, paymentMethod: String, outAccountBookId: String? = nil, channelAccountBookId: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankExternalSubAccountBookBalanceResponse> {
        self.queryOpenBankExternalSubAccountBookBalance(.init(channelMerchantId: channelMerchantId, channelSubMerchantId: channelSubMerchantId, channelName: channelName, paymentMethod: paymentMethod, outAccountBookId: outAccountBookId, channelAccountBookId: channelAccountBookId, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户电子记账本余额查询
    ///
    /// 第三方子商户电子记账本余额查询接口
    @inlinable
    public func queryOpenBankExternalSubAccountBookBalance(channelMerchantId: String, channelSubMerchantId: String, channelName: String, paymentMethod: String, outAccountBookId: String? = nil, channelAccountBookId: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankExternalSubAccountBookBalanceResponse {
        try await self.queryOpenBankExternalSubAccountBookBalance(.init(channelMerchantId: channelMerchantId, channelSubMerchantId: channelSubMerchantId, channelName: channelName, paymentMethod: paymentMethod, outAccountBookId: outAccountBookId, channelAccountBookId: channelAccountBookId, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
