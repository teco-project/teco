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
    /// ShipInvoiceOCR请求参数结构体
    public struct ShipInvoiceOCRRequest: TCRequestModel {
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

    /// ShipInvoiceOCR返回参数结构体
    public struct ShipInvoiceOCRResponse: TCResponseModel {
        /// 轮船票识别结果，具体内容请点击左侧链接。
        public let shipInvoiceInfos: [ShipInvoiceInfo]

        /// 图片旋转角度（角度制），文本的水平方向为0°，顺时针为正，逆时针为负。
        public let angle: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case shipInvoiceInfos = "ShipInvoiceInfos"
            case angle = "Angle"
            case requestId = "RequestId"
        }
    }

    /// 轮船票识别
    ///
    /// 本接口支持识别轮船票的发票代码、发票号码、日期、姓名、票价、始发地、目的地、姓名、时间、发票消费类型、省、市、币种字段。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func shipInvoiceOCR(_ input: ShipInvoiceOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ShipInvoiceOCRResponse> {
        self.client.execute(action: "ShipInvoiceOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 轮船票识别
    ///
    /// 本接口支持识别轮船票的发票代码、发票号码、日期、姓名、票价、始发地、目的地、姓名、时间、发票消费类型、省、市、币种字段。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func shipInvoiceOCR(_ input: ShipInvoiceOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ShipInvoiceOCRResponse {
        try await self.client.execute(action: "ShipInvoiceOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 轮船票识别
    ///
    /// 本接口支持识别轮船票的发票代码、发票号码、日期、姓名、票价、始发地、目的地、姓名、时间、发票消费类型、省、市、币种字段。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func shipInvoiceOCR(imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ShipInvoiceOCRResponse> {
        self.shipInvoiceOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, isPdf: isPdf, pdfPageNumber: pdfPageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 轮船票识别
    ///
    /// 本接口支持识别轮船票的发票代码、发票号码、日期、姓名、票价、始发地、目的地、姓名、时间、发票消费类型、省、市、币种字段。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func shipInvoiceOCR(imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ShipInvoiceOCRResponse {
        try await self.shipInvoiceOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, isPdf: isPdf, pdfPageNumber: pdfPageNumber), region: region, logger: logger, on: eventLoop)
    }
}
