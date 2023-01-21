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
    /// QueryOpenBankVerificationOrder请求参数结构体
    public struct QueryOpenBankVerificationOrderRequest: TCRequestModel {
        /// 云企付渠道商户号。外部接入平台入驻云企付平台后下发。
        public let channelMerchantId: String

        /// 云企付渠道核销订单号。与OutVerificationId不能同时为空。
        public let channelVerificationId: String?

        /// 外部核销申请订单号。与ChannelVerificationId不能同时为空。
        public let outVerificationId: String?

        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?

        public init(channelMerchantId: String, channelVerificationId: String? = nil, outVerificationId: String? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.channelVerificationId = channelVerificationId
            self.outVerificationId = outVerificationId
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case channelVerificationId = "ChannelVerificationId"
            case outVerificationId = "OutVerificationId"
            case environment = "Environment"
        }
    }

    /// QueryOpenBankVerificationOrder返回参数结构体
    public struct QueryOpenBankVerificationOrderResponse: TCResponseModel {
        /// 业务系统返回码，SUCCESS表示成功，其他表示失败。
        public let errCode: String

        /// 业务系统返回消息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 核销查询响应对象。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryOpenBankVerificationResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-查询核销订单状态
    ///
    /// 云企付-查询核销订单状态，客户可以使用该接口来查询核销申请的订单状态。目前仅支持TENPAY渠道EBANK_PAYMENT付款方式的担保支付订单查询。
    @inlinable
    public func queryOpenBankVerificationOrder(_ input: QueryOpenBankVerificationOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankVerificationOrderResponse> {
        self.client.execute(action: "QueryOpenBankVerificationOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-查询核销订单状态
    ///
    /// 云企付-查询核销订单状态，客户可以使用该接口来查询核销申请的订单状态。目前仅支持TENPAY渠道EBANK_PAYMENT付款方式的担保支付订单查询。
    @inlinable
    public func queryOpenBankVerificationOrder(_ input: QueryOpenBankVerificationOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankVerificationOrderResponse {
        try await self.client.execute(action: "QueryOpenBankVerificationOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-查询核销订单状态
    ///
    /// 云企付-查询核销订单状态，客户可以使用该接口来查询核销申请的订单状态。目前仅支持TENPAY渠道EBANK_PAYMENT付款方式的担保支付订单查询。
    @inlinable
    public func queryOpenBankVerificationOrder(channelMerchantId: String, channelVerificationId: String? = nil, outVerificationId: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankVerificationOrderResponse> {
        self.queryOpenBankVerificationOrder(QueryOpenBankVerificationOrderRequest(channelMerchantId: channelMerchantId, channelVerificationId: channelVerificationId, outVerificationId: outVerificationId, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-查询核销订单状态
    ///
    /// 云企付-查询核销订单状态，客户可以使用该接口来查询核销申请的订单状态。目前仅支持TENPAY渠道EBANK_PAYMENT付款方式的担保支付订单查询。
    @inlinable
    public func queryOpenBankVerificationOrder(channelMerchantId: String, channelVerificationId: String? = nil, outVerificationId: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankVerificationOrderResponse {
        try await self.queryOpenBankVerificationOrder(QueryOpenBankVerificationOrderRequest(channelMerchantId: channelMerchantId, channelVerificationId: channelVerificationId, outVerificationId: outVerificationId, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
