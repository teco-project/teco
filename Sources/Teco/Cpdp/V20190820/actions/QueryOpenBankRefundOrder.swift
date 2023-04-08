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
    /// QueryOpenBankRefundOrder请求参数结构体
    public struct QueryOpenBankRefundOrderRequest: TCRequestModel {
        /// 渠道商户号。
        public let channelMerchantId: String

        /// 外部商户退单号，与渠道退款单号二者选填其一。
        public let outRefundId: String?

        /// 渠道退款订单号，与外部商户退款单号二者选填其一。
        public let channelRefundId: String?

        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?

        public init(channelMerchantId: String, outRefundId: String? = nil, channelRefundId: String? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.outRefundId = outRefundId
            self.channelRefundId = channelRefundId
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case outRefundId = "OutRefundId"
            case channelRefundId = "ChannelRefundId"
            case environment = "Environment"
        }
    }

    /// QueryOpenBankRefundOrder返回参数结构体
    public struct QueryOpenBankRefundOrderResponse: TCResponseModel {
        /// 错误码
        public let errCode: String

        /// 错误消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: OpenBankQueryRefundOrderResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-退款结果查询
    @inlinable
    public func queryOpenBankRefundOrder(_ input: QueryOpenBankRefundOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankRefundOrderResponse> {
        self.client.execute(action: "QueryOpenBankRefundOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-退款结果查询
    @inlinable
    public func queryOpenBankRefundOrder(_ input: QueryOpenBankRefundOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankRefundOrderResponse {
        try await self.client.execute(action: "QueryOpenBankRefundOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-退款结果查询
    @inlinable
    public func queryOpenBankRefundOrder(channelMerchantId: String, outRefundId: String? = nil, channelRefundId: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankRefundOrderResponse> {
        self.queryOpenBankRefundOrder(.init(channelMerchantId: channelMerchantId, outRefundId: outRefundId, channelRefundId: channelRefundId, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-退款结果查询
    @inlinable
    public func queryOpenBankRefundOrder(channelMerchantId: String, outRefundId: String? = nil, channelRefundId: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankRefundOrderResponse {
        try await self.queryOpenBankRefundOrder(.init(channelMerchantId: channelMerchantId, outRefundId: outRefundId, channelRefundId: channelRefundId, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
