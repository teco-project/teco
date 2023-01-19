//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// VatInvoiceVerifyNew请求参数结构体
    public struct VatInvoiceVerifyNewRequest: TCRequestModel {
        /// 发票号码，8位、20位（全电票）
        public let invoiceNo: String

        /// 开票日期（不支持当天发票查询，支持五年以内开具的发票），格式：“YYYY-MM-DD”，如：2019-12-20。
        public let invoiceDate: String

        /// 发票代码（10或12 位），全电发票为空。查验未成功超过5次后当日无法再查。
        public let invoiceCode: String?

        /// 票种类型 01:增值税专用发票， 02:货运运输业增值税专用发 票， 03:机动车销售统一发票， 04:增值税普通发票， 08:增值税电子专用发票(含全电)， 10:增值税电子普通发票(含全电)， 11:增值税普通发票(卷式)， 14:增值税电子(通行费)发 票， 15:二手车销售统一发票， 32:深圳区块链发票(云南区块链因业务调整现已下线)。
        public let invoiceKind: String?

        /// 校验码后 6 位，增值税普通发票、增值税电子普通发票、增值税普通发票(卷式)、增值税电子普通发票(通行费)时必填;
        /// 区块链为 5 位
        public let checkCode: String?

        /// 不含税金额，增值税专用发票、增值税电子专用发票、机动车销售统一发票、二手车销售统一发票、区块链发票时必填; 全电发票为价税合计(含税金额)
        public let amount: String?

        /// 地区编码，通用机打电子发票时必填。
        /// 广东:4400，浙江:3300
        public let regionCode: String?

        /// 销方税号，通用机打电子发票必填
        public let sellerTaxCode: String?

        /// 是否开启通用机打电子发票，默认为关闭。
        public let enableCommonElectronic: Bool?

        public init(invoiceNo: String, invoiceDate: String, invoiceCode: String? = nil, invoiceKind: String? = nil, checkCode: String? = nil, amount: String? = nil, regionCode: String? = nil, sellerTaxCode: String? = nil, enableCommonElectronic: Bool? = nil) {
            self.invoiceNo = invoiceNo
            self.invoiceDate = invoiceDate
            self.invoiceCode = invoiceCode
            self.invoiceKind = invoiceKind
            self.checkCode = checkCode
            self.amount = amount
            self.regionCode = regionCode
            self.sellerTaxCode = sellerTaxCode
            self.enableCommonElectronic = enableCommonElectronic
        }

        enum CodingKeys: String, CodingKey {
            case invoiceNo = "InvoiceNo"
            case invoiceDate = "InvoiceDate"
            case invoiceCode = "InvoiceCode"
            case invoiceKind = "InvoiceKind"
            case checkCode = "CheckCode"
            case amount = "Amount"
            case regionCode = "RegionCode"
            case sellerTaxCode = "SellerTaxCode"
            case enableCommonElectronic = "EnableCommonElectronic"
        }
    }

    /// VatInvoiceVerifyNew返回参数结构体
    public struct VatInvoiceVerifyNewResponse: TCResponseModel {
        /// 增值税发票信息，详情请点击左侧链接。
        public let invoice: VatInvoice

        /// 机动车销售统一发票信息
        public let vehicleInvoiceInfo: VehicleInvoiceInfo

        /// 二手车销售统一发票信息
        public let usedVehicleInvoiceInfo: UsedVehicleInvoiceInfo

        /// 通行费发票信息
        public let passInvoiceInfoList: [PassInvoiceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case invoice = "Invoice"
            case vehicleInvoiceInfo = "VehicleInvoiceInfo"
            case usedVehicleInvoiceInfo = "UsedVehicleInvoiceInfo"
            case passInvoiceInfoList = "PassInvoiceInfoList"
            case requestId = "RequestId"
        }
    }

    /// 增值税发票核验（新版）
    ///
    /// 本接口支持增值税发票的准确性核验，您可以通过输入增值税发票的关键字段提供所需的验证信息，接口返回真实的票面相关信息，包括发票代码、发票号码、开票日期、金额、消费类型、购方名称、购方税号、销方名称、销方税号等多个常用字段。支持多种发票类型核验，包括增值税专用发票、增值税普通发票（含电子普通发票、卷式发票、通行费发票）、全电发票、机动车销售统一发票、货物运输业增值税专用发票、二手车销售统一发票、通用机打电子发票（广东和浙江）。
    @inlinable
    public func vatInvoiceVerifyNew(_ input: VatInvoiceVerifyNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VatInvoiceVerifyNewResponse> {
        self.client.execute(action: "VatInvoiceVerifyNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增值税发票核验（新版）
    ///
    /// 本接口支持增值税发票的准确性核验，您可以通过输入增值税发票的关键字段提供所需的验证信息，接口返回真实的票面相关信息，包括发票代码、发票号码、开票日期、金额、消费类型、购方名称、购方税号、销方名称、销方税号等多个常用字段。支持多种发票类型核验，包括增值税专用发票、增值税普通发票（含电子普通发票、卷式发票、通行费发票）、全电发票、机动车销售统一发票、货物运输业增值税专用发票、二手车销售统一发票、通用机打电子发票（广东和浙江）。
    @inlinable
    public func vatInvoiceVerifyNew(_ input: VatInvoiceVerifyNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VatInvoiceVerifyNewResponse {
        try await self.client.execute(action: "VatInvoiceVerifyNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 增值税发票核验（新版）
    ///
    /// 本接口支持增值税发票的准确性核验，您可以通过输入增值税发票的关键字段提供所需的验证信息，接口返回真实的票面相关信息，包括发票代码、发票号码、开票日期、金额、消费类型、购方名称、购方税号、销方名称、销方税号等多个常用字段。支持多种发票类型核验，包括增值税专用发票、增值税普通发票（含电子普通发票、卷式发票、通行费发票）、全电发票、机动车销售统一发票、货物运输业增值税专用发票、二手车销售统一发票、通用机打电子发票（广东和浙江）。
    @inlinable
    public func vatInvoiceVerifyNew(invoiceNo: String, invoiceDate: String, invoiceCode: String? = nil, invoiceKind: String? = nil, checkCode: String? = nil, amount: String? = nil, regionCode: String? = nil, sellerTaxCode: String? = nil, enableCommonElectronic: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VatInvoiceVerifyNewResponse> {
        self.vatInvoiceVerifyNew(VatInvoiceVerifyNewRequest(invoiceNo: invoiceNo, invoiceDate: invoiceDate, invoiceCode: invoiceCode, invoiceKind: invoiceKind, checkCode: checkCode, amount: amount, regionCode: regionCode, sellerTaxCode: sellerTaxCode, enableCommonElectronic: enableCommonElectronic), region: region, logger: logger, on: eventLoop)
    }

    /// 增值税发票核验（新版）
    ///
    /// 本接口支持增值税发票的准确性核验，您可以通过输入增值税发票的关键字段提供所需的验证信息，接口返回真实的票面相关信息，包括发票代码、发票号码、开票日期、金额、消费类型、购方名称、购方税号、销方名称、销方税号等多个常用字段。支持多种发票类型核验，包括增值税专用发票、增值税普通发票（含电子普通发票、卷式发票、通行费发票）、全电发票、机动车销售统一发票、货物运输业增值税专用发票、二手车销售统一发票、通用机打电子发票（广东和浙江）。
    @inlinable
    public func vatInvoiceVerifyNew(invoiceNo: String, invoiceDate: String, invoiceCode: String? = nil, invoiceKind: String? = nil, checkCode: String? = nil, amount: String? = nil, regionCode: String? = nil, sellerTaxCode: String? = nil, enableCommonElectronic: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VatInvoiceVerifyNewResponse {
        try await self.vatInvoiceVerifyNew(VatInvoiceVerifyNewRequest(invoiceNo: invoiceNo, invoiceDate: invoiceDate, invoiceCode: invoiceCode, invoiceKind: invoiceKind, checkCode: checkCode, amount: amount, regionCode: regionCode, sellerTaxCode: sellerTaxCode, enableCommonElectronic: enableCommonElectronic), region: region, logger: logger, on: eventLoop)
    }
}
