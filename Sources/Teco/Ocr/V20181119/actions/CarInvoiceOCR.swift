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
    /// CarInvoiceOCR请求参数结构体
    public struct CarInvoiceOCRRequest: TCRequestModel {
        /// 图片的 Base64 值。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片的 Url 地址。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?

        /// 是否开启PDF识别，默认值为true，开启后可同时支持图片和PDF的识别。
        public let isPdf: Bool?

        /// 需要识别的PDF页面的对应页码，仅支持PDF单页识别，当上传文件为PDF且IsPdf参数值为true时有效，默认值为1。
        public let pdfPageNumber: Int64?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: Int64? = nil) {
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

    /// CarInvoiceOCR返回参数结构体
    public struct CarInvoiceOCRResponse: TCResponseModel {
        /// 购车发票识别结果，具体内容请点击左侧链接。
        public let carInvoiceInfos: [CarInvoiceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case carInvoiceInfos = "CarInvoiceInfos"
            case requestId = "RequestId"
        }
    }

    /// 购车发票识别
    ///
    /// 本接口支持机动车销售统一发票和二手车销售统一发票的识别，包括发票号码、发票代码、合计金额、合计税额等二十多个字段。
    @inlinable
    public func carInvoiceOCR(_ input: CarInvoiceOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CarInvoiceOCRResponse> {
        self.client.execute(action: "CarInvoiceOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 购车发票识别
    ///
    /// 本接口支持机动车销售统一发票和二手车销售统一发票的识别，包括发票号码、发票代码、合计金额、合计税额等二十多个字段。
    @inlinable
    public func carInvoiceOCR(_ input: CarInvoiceOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CarInvoiceOCRResponse {
        try await self.client.execute(action: "CarInvoiceOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 购车发票识别
    ///
    /// 本接口支持机动车销售统一发票和二手车销售统一发票的识别，包括发票号码、发票代码、合计金额、合计税额等二十多个字段。
    @inlinable
    public func carInvoiceOCR(imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CarInvoiceOCRResponse> {
        self.carInvoiceOCR(CarInvoiceOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl, isPdf: isPdf, pdfPageNumber: pdfPageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 购车发票识别
    ///
    /// 本接口支持机动车销售统一发票和二手车销售统一发票的识别，包括发票号码、发票代码、合计金额、合计税额等二十多个字段。
    @inlinable
    public func carInvoiceOCR(imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CarInvoiceOCRResponse {
        try await self.carInvoiceOCR(CarInvoiceOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl, isPdf: isPdf, pdfPageNumber: pdfPageNumber), region: region, logger: logger, on: eventLoop)
    }
}
