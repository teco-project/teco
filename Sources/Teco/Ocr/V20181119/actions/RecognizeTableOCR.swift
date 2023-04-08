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
    /// RecognizeTableOCR请求参数结构体
    public struct RecognizeTableOCRRequest: TCRequestModel {
        /// 图片/PDF的 Base64 值。
        /// 要求图片/PDF经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP、PDF格式。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片/PDF的 Url 地址。
        /// 要求图片/PDF经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP、PDF格式。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?

        /// 是否开启PDF识别，默认值为false，开启后可同时支持图片和PDF的识别。
        public let isPdf: Bool?

        /// 需要识别的PDF页面的对应页码，仅支持PDF单页识别，当上传文件为PDF且IsPdf参数值为true时有效，默认值为1。
        public let pdfPageNumber: UInt64?

        /// 语言，zh：中英文（默认）jap：日文
        public let tableLanguage: String?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: UInt64? = nil, tableLanguage: String? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.isPdf = isPdf
            self.pdfPageNumber = pdfPageNumber
            self.tableLanguage = tableLanguage
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case isPdf = "IsPdf"
            case pdfPageNumber = "PdfPageNumber"
            case tableLanguage = "TableLanguage"
        }
    }

    /// RecognizeTableOCR返回参数结构体
    public struct RecognizeTableOCRResponse: TCResponseModel {
        /// 检测到的文本信息，具体内容请点击左侧链接。
        public let tableDetections: [TableDetectInfo]

        /// Base64 编码后的 Excel 数据。
        public let data: String

        /// 图片为PDF时，返回PDF的总页数，默认为0
        public let pdfPageSize: Int64

        /// 图片旋转角度（角度制），文本的水平方向为0°，统一以逆时针方向旋转，逆时针为负，角度范围为-360°至0°。
        public let angle: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tableDetections = "TableDetections"
            case data = "Data"
            case pdfPageSize = "PdfPageSize"
            case angle = "Angle"
            case requestId = "RequestId"
        }
    }

    /// 表格识别（V2)
    ///
    /// 本接口支持中英文图片/ PDF内常规表格、无线表格、多表格的检测和识别，支持日文有线表格识别，返回每个单元格的文字内容，支持旋转的表格图片识别，且支持将识别结果保存为 Excel 格式。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func recognizeTableOCR(_ input: RecognizeTableOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeTableOCRResponse> {
        self.client.execute(action: "RecognizeTableOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 表格识别（V2)
    ///
    /// 本接口支持中英文图片/ PDF内常规表格、无线表格、多表格的检测和识别，支持日文有线表格识别，返回每个单元格的文字内容，支持旋转的表格图片识别，且支持将识别结果保存为 Excel 格式。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func recognizeTableOCR(_ input: RecognizeTableOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeTableOCRResponse {
        try await self.client.execute(action: "RecognizeTableOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 表格识别（V2)
    ///
    /// 本接口支持中英文图片/ PDF内常规表格、无线表格、多表格的检测和识别，支持日文有线表格识别，返回每个单元格的文字内容，支持旋转的表格图片识别，且支持将识别结果保存为 Excel 格式。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func recognizeTableOCR(imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: UInt64? = nil, tableLanguage: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeTableOCRResponse> {
        self.recognizeTableOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, isPdf: isPdf, pdfPageNumber: pdfPageNumber, tableLanguage: tableLanguage), region: region, logger: logger, on: eventLoop)
    }

    /// 表格识别（V2)
    ///
    /// 本接口支持中英文图片/ PDF内常规表格、无线表格、多表格的检测和识别，支持日文有线表格识别，返回每个单元格的文字内容，支持旋转的表格图片识别，且支持将识别结果保存为 Excel 格式。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func recognizeTableOCR(imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: UInt64? = nil, tableLanguage: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeTableOCRResponse {
        try await self.recognizeTableOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, isPdf: isPdf, pdfPageNumber: pdfPageNumber, tableLanguage: tableLanguage), region: region, logger: logger, on: eventLoop)
    }
}
