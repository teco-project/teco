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
    /// CreateRedInvoiceV2请求参数结构体
    public struct CreateRedInvoiceV2Request: TCRequest {
        /// 开票平台ID
        /// 0 : 高灯
        /// 1 : 票易通
        public let invoicePlatformId: Int64

        /// 订单号
        public let orderId: String

        /// 接入环境。沙箱环境填 sandbox。
        public let profile: String?

        /// 开票渠道。0：线上渠道，1：线下渠道。不填默认为线上渠道
        public let invoiceChannel: Int64?

        public init(invoicePlatformId: Int64, orderId: String, profile: String? = nil, invoiceChannel: Int64? = nil) {
            self.invoicePlatformId = invoicePlatformId
            self.orderId = orderId
            self.profile = profile
            self.invoiceChannel = invoiceChannel
        }

        enum CodingKeys: String, CodingKey {
            case invoicePlatformId = "InvoicePlatformId"
            case orderId = "OrderId"
            case profile = "Profile"
            case invoiceChannel = "InvoiceChannel"
        }
    }

    /// CreateRedInvoiceV2返回参数结构体
    public struct CreateRedInvoiceV2Response: TCResponse {
        /// 红冲结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: CreateRedInvoiceResultV2?

        /// 错误码
        public let errCode: String

        /// 错误消息
        public let errMessage: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case requestId = "RequestId"
        }
    }

    /// 智慧零售-发票红冲V2
    @inlinable
    public func createRedInvoiceV2(_ input: CreateRedInvoiceV2Request, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRedInvoiceV2Response> {
        self.client.execute(action: "CreateRedInvoiceV2", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智慧零售-发票红冲V2
    @inlinable
    public func createRedInvoiceV2(_ input: CreateRedInvoiceV2Request, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRedInvoiceV2Response {
        try await self.client.execute(action: "CreateRedInvoiceV2", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智慧零售-发票红冲V2
    @inlinable
    public func createRedInvoiceV2(invoicePlatformId: Int64, orderId: String, profile: String? = nil, invoiceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRedInvoiceV2Response> {
        self.createRedInvoiceV2(.init(invoicePlatformId: invoicePlatformId, orderId: orderId, profile: profile, invoiceChannel: invoiceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 智慧零售-发票红冲V2
    @inlinable
    public func createRedInvoiceV2(invoicePlatformId: Int64, orderId: String, profile: String? = nil, invoiceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRedInvoiceV2Response {
        try await self.createRedInvoiceV2(.init(invoicePlatformId: invoicePlatformId, orderId: orderId, profile: profile, invoiceChannel: invoiceChannel), region: region, logger: logger, on: eventLoop)
    }
}
