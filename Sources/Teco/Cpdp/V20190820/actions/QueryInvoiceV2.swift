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
    /// QueryInvoiceV2请求参数结构体
    public struct QueryInvoiceV2Request: TCRequest {
        /// 开票平台ID
        /// 0 : 高灯
        /// 1 : 票易通
        public let invoicePlatformId: Int64

        /// 订单号
        public let orderId: String

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

        public init(invoicePlatformId: Int64, orderId: String, isRed: Int64? = nil, profile: String? = nil, invoiceChannel: Int64? = nil, sellerTaxpayerNum: String? = nil) {
            self.invoicePlatformId = invoicePlatformId
            self.orderId = orderId
            self.isRed = isRed
            self.profile = profile
            self.invoiceChannel = invoiceChannel
            self.sellerTaxpayerNum = sellerTaxpayerNum
        }

        enum CodingKeys: String, CodingKey {
            case invoicePlatformId = "InvoicePlatformId"
            case orderId = "OrderId"
            case isRed = "IsRed"
            case profile = "Profile"
            case invoiceChannel = "InvoiceChannel"
            case sellerTaxpayerNum = "SellerTaxpayerNum"
        }
    }

    /// QueryInvoiceV2返回参数结构体
    public struct QueryInvoiceV2Response: TCResponse {
        /// 发票查询结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryInvoiceResultData?

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

    /// 智慧零售-发票查询V2
    @inlinable
    public func queryInvoiceV2(_ input: QueryInvoiceV2Request, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryInvoiceV2Response> {
        self.client.execute(action: "QueryInvoiceV2", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智慧零售-发票查询V2
    @inlinable
    public func queryInvoiceV2(_ input: QueryInvoiceV2Request, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryInvoiceV2Response {
        try await self.client.execute(action: "QueryInvoiceV2", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智慧零售-发票查询V2
    @inlinable
    public func queryInvoiceV2(invoicePlatformId: Int64, orderId: String, isRed: Int64? = nil, profile: String? = nil, invoiceChannel: Int64? = nil, sellerTaxpayerNum: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryInvoiceV2Response> {
        self.queryInvoiceV2(.init(invoicePlatformId: invoicePlatformId, orderId: orderId, isRed: isRed, profile: profile, invoiceChannel: invoiceChannel, sellerTaxpayerNum: sellerTaxpayerNum), region: region, logger: logger, on: eventLoop)
    }

    /// 智慧零售-发票查询V2
    @inlinable
    public func queryInvoiceV2(invoicePlatformId: Int64, orderId: String, isRed: Int64? = nil, profile: String? = nil, invoiceChannel: Int64? = nil, sellerTaxpayerNum: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryInvoiceV2Response {
        try await self.queryInvoiceV2(.init(invoicePlatformId: invoicePlatformId, orderId: orderId, isRed: isRed, profile: profile, invoiceChannel: invoiceChannel, sellerTaxpayerNum: sellerTaxpayerNum), region: region, logger: logger, on: eventLoop)
    }
}
