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

extension Ocr {
    /// VatInvoiceVerify请求参数结构体
    public struct VatInvoiceVerifyRequest: TCRequestModel {
        /// 发票代码， 一张发票一天只能查询5次。
        public let invoiceCode: String

        /// 发票号码（8位）
        public let invoiceNo: String

        /// 开票日期（不支持当天发票查询，支持五年以内开具的发票），格式：“YYYY-MM-DD”，如：2019-12-20。
        public let invoiceDate: String

        /// 根据票种传递对应值，如果报参数错误，请仔细检查每个票种对应的值
        ///
        /// 增值税专用发票：开具金额（不含税）
        ///
        /// 增值税普通发票、增值税电子普通发票（含通行费发票）、增值税普通发票（卷票）：校验码后6位
        ///
        /// 区块链发票：不含税金额/校验码，例如：“285.01/856ab”
        ///
        /// 机动车销售统一发票：不含税价
        ///
        /// 货物运输业增值税专用发票：合计金额
        ///
        /// 二手车销售统一发票：车价合计
        public let additional: String

        public init(invoiceCode: String, invoiceNo: String, invoiceDate: String, additional: String) {
            self.invoiceCode = invoiceCode
            self.invoiceNo = invoiceNo
            self.invoiceDate = invoiceDate
            self.additional = additional
        }

        enum CodingKeys: String, CodingKey {
            case invoiceCode = "InvoiceCode"
            case invoiceNo = "InvoiceNo"
            case invoiceDate = "InvoiceDate"
            case additional = "Additional"
        }
    }

    /// VatInvoiceVerify返回参数结构体
    public struct VatInvoiceVerifyResponse: TCResponseModel {
        /// 增值税发票信息，详情请点击左侧链接。
        public let invoice: VatInvoice

        /// 机动车销售统一发票信息
        public let vehicleInvoiceInfo: VehicleInvoiceInfo

        /// 二手车销售统一发票信息
        public let usedVehicleInvoiceInfo: UsedVehicleInvoiceInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case invoice = "Invoice"
            case vehicleInvoiceInfo = "VehicleInvoiceInfo"
            case usedVehicleInvoiceInfo = "UsedVehicleInvoiceInfo"
            case requestId = "RequestId"
        }
    }

    /// 增值税发票核验
    ///
    /// 本接口支持增值税发票的准确性核验，您可以通过输入增值税发票的关键字段提供所需的验证信息，接口返回真实的票面相关信息，包括发票代码、发票号码、开票日期、金额、消费类型、购方名称、购方税号、销方名称、销方税号等多个常用字段。支持多种发票类型核验，包括增值税专用发票、增值税普通发票（含电子普通发票、卷式发票、通行费发票）、全电发票、机动车销售统一发票、货物运输业增值税专用发票、二手车销售统一发票。
    @inlinable
    public func vatInvoiceVerify(_ input: VatInvoiceVerifyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VatInvoiceVerifyResponse> {
        self.client.execute(action: "VatInvoiceVerify", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增值税发票核验
    ///
    /// 本接口支持增值税发票的准确性核验，您可以通过输入增值税发票的关键字段提供所需的验证信息，接口返回真实的票面相关信息，包括发票代码、发票号码、开票日期、金额、消费类型、购方名称、购方税号、销方名称、销方税号等多个常用字段。支持多种发票类型核验，包括增值税专用发票、增值税普通发票（含电子普通发票、卷式发票、通行费发票）、全电发票、机动车销售统一发票、货物运输业增值税专用发票、二手车销售统一发票。
    @inlinable
    public func vatInvoiceVerify(_ input: VatInvoiceVerifyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VatInvoiceVerifyResponse {
        try await self.client.execute(action: "VatInvoiceVerify", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 增值税发票核验
    ///
    /// 本接口支持增值税发票的准确性核验，您可以通过输入增值税发票的关键字段提供所需的验证信息，接口返回真实的票面相关信息，包括发票代码、发票号码、开票日期、金额、消费类型、购方名称、购方税号、销方名称、销方税号等多个常用字段。支持多种发票类型核验，包括增值税专用发票、增值税普通发票（含电子普通发票、卷式发票、通行费发票）、全电发票、机动车销售统一发票、货物运输业增值税专用发票、二手车销售统一发票。
    @inlinable
    public func vatInvoiceVerify(invoiceCode: String, invoiceNo: String, invoiceDate: String, additional: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VatInvoiceVerifyResponse> {
        let input = VatInvoiceVerifyRequest(invoiceCode: invoiceCode, invoiceNo: invoiceNo, invoiceDate: invoiceDate, additional: additional)
        return self.client.execute(action: "VatInvoiceVerify", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增值税发票核验
    ///
    /// 本接口支持增值税发票的准确性核验，您可以通过输入增值税发票的关键字段提供所需的验证信息，接口返回真实的票面相关信息，包括发票代码、发票号码、开票日期、金额、消费类型、购方名称、购方税号、销方名称、销方税号等多个常用字段。支持多种发票类型核验，包括增值税专用发票、增值税普通发票（含电子普通发票、卷式发票、通行费发票）、全电发票、机动车销售统一发票、货物运输业增值税专用发票、二手车销售统一发票。
    @inlinable
    public func vatInvoiceVerify(invoiceCode: String, invoiceNo: String, invoiceDate: String, additional: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VatInvoiceVerifyResponse {
        let input = VatInvoiceVerifyRequest(invoiceCode: invoiceCode, invoiceNo: invoiceNo, invoiceDate: invoiceDate, additional: additional)
        return try await self.client.execute(action: "VatInvoiceVerify", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
