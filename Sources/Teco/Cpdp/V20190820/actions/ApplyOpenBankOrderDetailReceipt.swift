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

import TecoCore

extension Cpdp {
    /// ApplyOpenBankOrderDetailReceipt请求参数结构体
    public struct ApplyOpenBankOrderDetailReceiptRequest: TCRequestModel {
        /// 外部回单申请编号
        public let outApplyId: String

        /// 渠道商户ID
        public let channelMerchantId: String

        /// 渠道子商户ID
        public let channelSubMerchantId: String

        /// 渠道名称，目前只支持ALIPAY
        public let channelName: String

        /// 支付方式，目前只支持SAFT_ISV
        public let paymentMethod: String

        /// 云企付平台订单号
        public let channelOrderId: String

        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?

        public init(outApplyId: String, channelMerchantId: String, channelSubMerchantId: String, channelName: String, paymentMethod: String, channelOrderId: String, environment: String? = nil) {
            self.outApplyId = outApplyId
            self.channelMerchantId = channelMerchantId
            self.channelSubMerchantId = channelSubMerchantId
            self.channelName = channelName
            self.paymentMethod = paymentMethod
            self.channelOrderId = channelOrderId
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case outApplyId = "OutApplyId"
            case channelMerchantId = "ChannelMerchantId"
            case channelSubMerchantId = "ChannelSubMerchantId"
            case channelName = "ChannelName"
            case paymentMethod = "PaymentMethod"
            case channelOrderId = "ChannelOrderId"
            case environment = "Environment"
        }
    }

    /// ApplyOpenBankOrderDetailReceipt返回参数结构体
    public struct ApplyOpenBankOrderDetailReceiptResponse: TCResponseModel {
        /// 错误码。
        public let errCode: String

        /// 错误消息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 返回结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApplyOpenBankOrderDetailReceiptResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-申请单笔交易回单
    @inlinable
    public func applyOpenBankOrderDetailReceipt(_ input: ApplyOpenBankOrderDetailReceiptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyOpenBankOrderDetailReceiptResponse> {
        self.client.execute(action: "ApplyOpenBankOrderDetailReceipt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-申请单笔交易回单
    @inlinable
    public func applyOpenBankOrderDetailReceipt(_ input: ApplyOpenBankOrderDetailReceiptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyOpenBankOrderDetailReceiptResponse {
        try await self.client.execute(action: "ApplyOpenBankOrderDetailReceipt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-申请单笔交易回单
    @inlinable
    public func applyOpenBankOrderDetailReceipt(outApplyId: String, channelMerchantId: String, channelSubMerchantId: String, channelName: String, paymentMethod: String, channelOrderId: String, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyOpenBankOrderDetailReceiptResponse> {
        self.applyOpenBankOrderDetailReceipt(.init(outApplyId: outApplyId, channelMerchantId: channelMerchantId, channelSubMerchantId: channelSubMerchantId, channelName: channelName, paymentMethod: paymentMethod, channelOrderId: channelOrderId, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-申请单笔交易回单
    @inlinable
    public func applyOpenBankOrderDetailReceipt(outApplyId: String, channelMerchantId: String, channelSubMerchantId: String, channelName: String, paymentMethod: String, channelOrderId: String, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyOpenBankOrderDetailReceiptResponse {
        try await self.applyOpenBankOrderDetailReceipt(.init(outApplyId: outApplyId, channelMerchantId: channelMerchantId, channelSubMerchantId: channelSubMerchantId, channelName: channelName, paymentMethod: paymentMethod, channelOrderId: channelOrderId, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
