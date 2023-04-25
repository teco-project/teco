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
    /// CloseOpenBankPaymentOrder请求参数结构体
    public struct CloseOpenBankPaymentOrderRequest: TCRequestModel {
        /// 渠道商户ID，云企付平台下发给外部接入平台。
        public let channelMerchantId: String

        /// 外部商户订单号，与ChannelOrderId不能同时为空
        public let outOrderId: String?

        /// 云企付平台订单号，与OutOrderId不能同时为空
        public let channelOrderId: String?

        /// 接入环境。沙箱环境填 sandbox。缺省默认调用生产环境
        public let environment: String?

        public init(channelMerchantId: String, outOrderId: String? = nil, channelOrderId: String? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.outOrderId = outOrderId
            self.channelOrderId = channelOrderId
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case outOrderId = "OutOrderId"
            case channelOrderId = "ChannelOrderId"
            case environment = "Environment"
        }
    }

    /// CloseOpenBankPaymentOrder返回参数结构体
    public struct CloseOpenBankPaymentOrderResponse: TCResponseModel {
        /// 业务系统返回码，SUCCESS表示成功，其他表示失败。
        public let errCode: String

        /// 业务系统返回消息
        public let errMessage: String

        /// 关单响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: CloseOpenBankPaymentOrderResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-关闭订单
    @inlinable
    public func closeOpenBankPaymentOrder(_ input: CloseOpenBankPaymentOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseOpenBankPaymentOrderResponse> {
        self.client.execute(action: "CloseOpenBankPaymentOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-关闭订单
    @inlinable
    public func closeOpenBankPaymentOrder(_ input: CloseOpenBankPaymentOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseOpenBankPaymentOrderResponse {
        try await self.client.execute(action: "CloseOpenBankPaymentOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-关闭订单
    @inlinable
    public func closeOpenBankPaymentOrder(channelMerchantId: String, outOrderId: String? = nil, channelOrderId: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseOpenBankPaymentOrderResponse> {
        self.closeOpenBankPaymentOrder(.init(channelMerchantId: channelMerchantId, outOrderId: outOrderId, channelOrderId: channelOrderId, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-关闭订单
    @inlinable
    public func closeOpenBankPaymentOrder(channelMerchantId: String, outOrderId: String? = nil, channelOrderId: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseOpenBankPaymentOrderResponse {
        try await self.closeOpenBankPaymentOrder(.init(channelMerchantId: channelMerchantId, outOrderId: outOrderId, channelOrderId: channelOrderId, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
