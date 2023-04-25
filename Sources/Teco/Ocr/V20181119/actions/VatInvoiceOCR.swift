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

extension Ocr {
    /// VatInvoiceOCR请求参数结构体
    public struct VatInvoiceOCRRequest: TCRequestModel {
        /// 图片/PDF的 Base64 值。
        /// 支持的文件格式：PNG、JPG、JPEG、PDF，暂不支持 GIF 格式。
        /// 支持的图片/PDF大小：所下载文件经Base64编码后不超过 7M。文件下载时间不超过 3 秒。
        /// 输入参数 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片/PDF的 Url 地址。
        /// 支持的文件格式：PNG、JPG、JPEG、PDF，暂不支持 GIF 格式。
        /// 支持的图片/PDF大小：所下载文件经 Base64 编码后不超过 7M。文件下载时间不超过 3 秒。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?

        /// 是否开启PDF识别，默认值为false，开启后可同时支持图片和PDF的识别。
        public let isPdf: Bool?

        /// 需要识别的PDF页面的对应页码，仅支持PDF单页识别，当上传文件为PDF且IsPdf参数值为true时有效，默认值为1。
        public let pdfPageNumber: UInt64?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: UInt64? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.isPdf = isPdf
            self.pdfPageNumber = pdfPageNumber
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case isPdf = "IsPdf"
            case pdfPageNumber = "PdfPageNumber"
        }
    }

    /// VatInvoiceOCR返回参数结构体
    public struct VatInvoiceOCRResponse: TCResponseModel {
        /// 检测到的文本信息，具体内容请点击左侧链接。
        public let vatInvoiceInfos: [TextVatInvoice]

        /// 明细条目。VatInvoiceInfos中关于明细项的具体条目。
        public let items: [VatInvoiceItem]

        /// 默认值为0。如果图片为PDF时，返回PDF的总页数。
        public let pdfPageSize: Int64

        /// 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负。点击查看<a href="https://cloud.tencent.com/document/product/866/45139">如何纠正倾斜文本</a>
        public let angle: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vatInvoiceInfos = "VatInvoiceInfos"
            case items = "Items"
            case pdfPageSize = "PdfPageSize"
            case angle = "Angle"
            case requestId = "RequestId"
        }
    }

    /// 增值税发票识别
    ///
    /// 本接口支持增值税专用发票、增值税普通发票、增值税电子发票全字段的内容检测和识别，包括发票代码、发票号码、打印发票代码、打印发票号码、开票日期、合计金额、校验码、税率、合计税额、价税合计、购买方识别号、复核、销售方识别号、开票人、密码区1、密码区2、密码区3、密码区4、发票名称、购买方名称、销售方名称、服务名称、备注、规格型号、数量、单价、金额、税额、收款人等字段。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func vatInvoiceOCR(_ input: VatInvoiceOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VatInvoiceOCRResponse> {
        self.client.execute(action: "VatInvoiceOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增值税发票识别
    ///
    /// 本接口支持增值税专用发票、增值税普通发票、增值税电子发票全字段的内容检测和识别，包括发票代码、发票号码、打印发票代码、打印发票号码、开票日期、合计金额、校验码、税率、合计税额、价税合计、购买方识别号、复核、销售方识别号、开票人、密码区1、密码区2、密码区3、密码区4、发票名称、购买方名称、销售方名称、服务名称、备注、规格型号、数量、单价、金额、税额、收款人等字段。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func vatInvoiceOCR(_ input: VatInvoiceOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VatInvoiceOCRResponse {
        try await self.client.execute(action: "VatInvoiceOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 增值税发票识别
    ///
    /// 本接口支持增值税专用发票、增值税普通发票、增值税电子发票全字段的内容检测和识别，包括发票代码、发票号码、打印发票代码、打印发票号码、开票日期、合计金额、校验码、税率、合计税额、价税合计、购买方识别号、复核、销售方识别号、开票人、密码区1、密码区2、密码区3、密码区4、发票名称、购买方名称、销售方名称、服务名称、备注、规格型号、数量、单价、金额、税额、收款人等字段。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func vatInvoiceOCR(imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VatInvoiceOCRResponse> {
        self.vatInvoiceOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, isPdf: isPdf, pdfPageNumber: pdfPageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 增值税发票识别
    ///
    /// 本接口支持增值税专用发票、增值税普通发票、增值税电子发票全字段的内容检测和识别，包括发票代码、发票号码、打印发票代码、打印发票号码、开票日期、合计金额、校验码、税率、合计税额、价税合计、购买方识别号、复核、销售方识别号、开票人、密码区1、密码区2、密码区3、密码区4、发票名称、购买方名称、销售方名称、服务名称、备注、规格型号、数量、单价、金额、税额、收款人等字段。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func vatInvoiceOCR(imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VatInvoiceOCRResponse {
        try await self.vatInvoiceOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, isPdf: isPdf, pdfPageNumber: pdfPageNumber), region: region, logger: logger, on: eventLoop)
    }
}
