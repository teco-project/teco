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
    /// QueryInvoice请求参数结构体
    public struct QueryInvoiceRequest: TCRequestModel {
        /// 开票平台ID
        /// 0 : 高灯
        /// 1 : 票易通
        public let invoicePlatformId: Int64

        /// 订单号
        public let orderId: String

        /// 业务开票号
        public let orderSn: String?

        /// 发票种类：
        /// 0：蓝票
        /// 1：红票【该字段默认为0， 如果需要查询红票信息，本字段必须传1，否则可能查询不到需要的发票信息】。
        public let isRed: Int64?

        /// 接入环境。沙箱环境填sandbox。
        public let profile: String?

        /// 开票渠道。0：线上渠道，1：线下渠道。不填默认为线上渠道
        public let invoiceChannel: Int64?

        /// 当渠道为线下渠道时，必填
        public let sellerTaxpayerNum: String?

        public init(invoicePlatformId: Int64, orderId: String, orderSn: String? = nil, isRed: Int64? = nil, profile: String? = nil, invoiceChannel: Int64? = nil, sellerTaxpayerNum: String? = nil) {
            self.invoicePlatformId = invoicePlatformId
            self.orderId = orderId
            self.orderSn = orderSn
            self.isRed = isRed
            self.profile = profile
            self.invoiceChannel = invoiceChannel
            self.sellerTaxpayerNum = sellerTaxpayerNum
        }

        enum CodingKeys: String, CodingKey {
            case invoicePlatformId = "InvoicePlatformId"
            case orderId = "OrderId"
            case orderSn = "OrderSn"
            case isRed = "IsRed"
            case profile = "Profile"
            case invoiceChannel = "InvoiceChannel"
            case sellerTaxpayerNum = "SellerTaxpayerNum"
        }
    }

    /// QueryInvoice返回参数结构体
    public struct QueryInvoiceResponse: TCResponseModel {
        /// 发票查询结果
        public let result: QueryInvoiceResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 智慧零售-发票查询
    @inlinable
    public func queryInvoice(_ input: QueryInvoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryInvoiceResponse> {
        self.client.execute(action: "QueryInvoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智慧零售-发票查询
    @inlinable
    public func queryInvoice(_ input: QueryInvoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryInvoiceResponse {
        try await self.client.execute(action: "QueryInvoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智慧零售-发票查询
    @inlinable
    public func queryInvoice(invoicePlatformId: Int64, orderId: String, orderSn: String? = nil, isRed: Int64? = nil, profile: String? = nil, invoiceChannel: Int64? = nil, sellerTaxpayerNum: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryInvoiceResponse> {
        self.queryInvoice(.init(invoicePlatformId: invoicePlatformId, orderId: orderId, orderSn: orderSn, isRed: isRed, profile: profile, invoiceChannel: invoiceChannel, sellerTaxpayerNum: sellerTaxpayerNum), region: region, logger: logger, on: eventLoop)
    }

    /// 智慧零售-发票查询
    @inlinable
    public func queryInvoice(invoicePlatformId: Int64, orderId: String, orderSn: String? = nil, isRed: Int64? = nil, profile: String? = nil, invoiceChannel: Int64? = nil, sellerTaxpayerNum: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryInvoiceResponse {
        try await self.queryInvoice(.init(invoicePlatformId: invoicePlatformId, orderId: orderId, orderSn: orderSn, isRed: isRed, profile: profile, invoiceChannel: invoiceChannel, sellerTaxpayerNum: sellerTaxpayerNum), region: region, logger: logger, on: eventLoop)
    }
}
