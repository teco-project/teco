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
    /// CreateRedInvoice请求参数结构体
    public struct CreateRedInvoiceRequest: TCRequestModel {
        /// 开票平台ID
        /// 0 : 高灯
        /// 1 : 票易通
        public let invoicePlatformId: Int64

        /// 红冲明细
        public let invoices: [CreateRedInvoiceItem]

        /// 接入环境。沙箱环境填 sandbox。
        public let profile: String?

        /// 开票渠道。0：线上渠道，1：线下渠道。不填默认为线上渠道
        public let invoiceChannel: Int64?

        public init(invoicePlatformId: Int64, invoices: [CreateRedInvoiceItem], profile: String? = nil, invoiceChannel: Int64? = nil) {
            self.invoicePlatformId = invoicePlatformId
            self.invoices = invoices
            self.profile = profile
            self.invoiceChannel = invoiceChannel
        }

        enum CodingKeys: String, CodingKey {
            case invoicePlatformId = "InvoicePlatformId"
            case invoices = "Invoices"
            case profile = "Profile"
            case invoiceChannel = "InvoiceChannel"
        }
    }

    /// CreateRedInvoice返回参数结构体
    public struct CreateRedInvoiceResponse: TCResponseModel {
        /// 红冲结果
        public let result: CreateRedInvoiceResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 智慧零售-发票红冲
    @inlinable
    public func createRedInvoice(_ input: CreateRedInvoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRedInvoiceResponse> {
        self.client.execute(action: "CreateRedInvoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智慧零售-发票红冲
    @inlinable
    public func createRedInvoice(_ input: CreateRedInvoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRedInvoiceResponse {
        try await self.client.execute(action: "CreateRedInvoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智慧零售-发票红冲
    @inlinable
    public func createRedInvoice(invoicePlatformId: Int64, invoices: [CreateRedInvoiceItem], profile: String? = nil, invoiceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRedInvoiceResponse> {
        let input = CreateRedInvoiceRequest(invoicePlatformId: invoicePlatformId, invoices: invoices, profile: profile, invoiceChannel: invoiceChannel)
        return self.client.execute(action: "CreateRedInvoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智慧零售-发票红冲
    @inlinable
    public func createRedInvoice(invoicePlatformId: Int64, invoices: [CreateRedInvoiceItem], profile: String? = nil, invoiceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRedInvoiceResponse {
        let input = CreateRedInvoiceRequest(invoicePlatformId: invoicePlatformId, invoices: invoices, profile: profile, invoiceChannel: invoiceChannel)
        return try await self.client.execute(action: "CreateRedInvoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
