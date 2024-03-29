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

extension Ocr {
    /// VerifyOfdVatInvoiceOCR请求参数结构体
    public struct VerifyOfdVatInvoiceOCRRequest: TCRequest {
        /// OFD文件的 Url 地址。
        public let ofdFileUrl: String?

        /// OFD文件的 Base64 值。
        /// OfdFileUrl 和 OfdFileBase64 必传其一，若两者都传，只解析OfdFileBase64。
        public let ofdFileBase64: String?

        public init(ofdFileUrl: String? = nil, ofdFileBase64: String? = nil) {
            self.ofdFileUrl = ofdFileUrl
            self.ofdFileBase64 = ofdFileBase64
        }

        enum CodingKeys: String, CodingKey {
            case ofdFileUrl = "OfdFileUrl"
            case ofdFileBase64 = "OfdFileBase64"
        }
    }

    /// VerifyOfdVatInvoiceOCR返回参数结构体
    public struct VerifyOfdVatInvoiceOCRResponse: TCResponse {
        /// 发票类型
        /// 026:增值税电子普通发票
        /// 028:增值税电子专用发票
        /// 010:电子发票（普通发票）
        /// 020:电子发票（增值税专用发票）
        public let type: String

        /// 发票代码
        public let invoiceCode: String

        /// 发票号码
        public let invoiceNumber: String

        /// 开票日期
        public let issueDate: String

        /// 验证码
        public let invoiceCheckCode: String

        /// 机器编号
        public let machineNumber: String

        /// 密码区
        public let taxControlCode: String

        /// 购买方
        public let buyer: VatInvoiceUserInfo

        /// 销售方
        public let seller: VatInvoiceUserInfo

        /// 价税合计
        public let taxInclusiveTotalAmount: String

        /// 开票人
        public let invoiceClerk: String

        /// 收款人
        public let payee: String

        /// 复核人
        public let checker: String

        /// 税额
        public let taxTotalAmount: String

        /// 不含税金额
        public let taxExclusiveTotalAmount: String

        /// 备注
        public let note: String

        /// 货物或服务清单
        public let goodsInfos: [VatInvoiceGoodsInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case invoiceCode = "InvoiceCode"
            case invoiceNumber = "InvoiceNumber"
            case issueDate = "IssueDate"
            case invoiceCheckCode = "InvoiceCheckCode"
            case machineNumber = "MachineNumber"
            case taxControlCode = "TaxControlCode"
            case buyer = "Buyer"
            case seller = "Seller"
            case taxInclusiveTotalAmount = "TaxInclusiveTotalAmount"
            case invoiceClerk = "InvoiceClerk"
            case payee = "Payee"
            case checker = "Checker"
            case taxTotalAmount = "TaxTotalAmount"
            case taxExclusiveTotalAmount = "TaxExclusiveTotalAmount"
            case note = "Note"
            case goodsInfos = "GoodsInfos"
            case requestId = "RequestId"
        }
    }

    /// OFD发票识别
    ///
    /// 本接口支持OFD格式的 增值税电子普通发票、增值税电子专用发票、电子发票（普通发票）、电子发票（增值税专用发票）识别，返回发票代码、发票号码、开票日期、验证码、机器编号、密码区，购买方和销售方信息，包括名称、纳税人识别号、地址电话、开户行及账号，以及价税合计、开票人、收款人、复核人、税额、不含税金额等字段信息。
    @inlinable
    public func verifyOfdVatInvoiceOCR(_ input: VerifyOfdVatInvoiceOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyOfdVatInvoiceOCRResponse> {
        self.client.execute(action: "VerifyOfdVatInvoiceOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// OFD发票识别
    ///
    /// 本接口支持OFD格式的 增值税电子普通发票、增值税电子专用发票、电子发票（普通发票）、电子发票（增值税专用发票）识别，返回发票代码、发票号码、开票日期、验证码、机器编号、密码区，购买方和销售方信息，包括名称、纳税人识别号、地址电话、开户行及账号，以及价税合计、开票人、收款人、复核人、税额、不含税金额等字段信息。
    @inlinable
    public func verifyOfdVatInvoiceOCR(_ input: VerifyOfdVatInvoiceOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyOfdVatInvoiceOCRResponse {
        try await self.client.execute(action: "VerifyOfdVatInvoiceOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// OFD发票识别
    ///
    /// 本接口支持OFD格式的 增值税电子普通发票、增值税电子专用发票、电子发票（普通发票）、电子发票（增值税专用发票）识别，返回发票代码、发票号码、开票日期、验证码、机器编号、密码区，购买方和销售方信息，包括名称、纳税人识别号、地址电话、开户行及账号，以及价税合计、开票人、收款人、复核人、税额、不含税金额等字段信息。
    @inlinable
    public func verifyOfdVatInvoiceOCR(ofdFileUrl: String? = nil, ofdFileBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyOfdVatInvoiceOCRResponse> {
        self.verifyOfdVatInvoiceOCR(.init(ofdFileUrl: ofdFileUrl, ofdFileBase64: ofdFileBase64), region: region, logger: logger, on: eventLoop)
    }

    /// OFD发票识别
    ///
    /// 本接口支持OFD格式的 增值税电子普通发票、增值税电子专用发票、电子发票（普通发票）、电子发票（增值税专用发票）识别，返回发票代码、发票号码、开票日期、验证码、机器编号、密码区，购买方和销售方信息，包括名称、纳税人识别号、地址电话、开户行及账号，以及价税合计、开票人、收款人、复核人、税额、不含税金额等字段信息。
    @inlinable
    public func verifyOfdVatInvoiceOCR(ofdFileUrl: String? = nil, ofdFileBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyOfdVatInvoiceOCRResponse {
        try await self.verifyOfdVatInvoiceOCR(.init(ofdFileUrl: ofdFileUrl, ofdFileBase64: ofdFileBase64), region: region, logger: logger, on: eventLoop)
    }
}
