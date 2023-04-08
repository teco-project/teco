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
    /// RecognizeMedicalInvoiceOCR请求参数结构体
    public struct RecognizeMedicalInvoiceOCRRequest: TCRequestModel {
        /// 图片的Base64 值。
        /// 支持的文件格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载文件经Base64编码后不超过 7M。文件下载时间不超过 3 秒。
        /// 输入参数 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片的Url 地址。
        /// 支持的文件格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载文件经 Base64 编码后不超过 7M。文件下载时间不超过 3 秒。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?

        /// 是否需要返回识别出的文本行在原图上的四点坐标，默认不返回
        public let returnVertex: Bool?

        /// 是否需要返回识别出的文本行在旋转纠正之后的图像中的四点坐标，默认不返回
        public let returnCoord: Bool?

        /// 是否开启PDF识别，默认值为true，开启后可同时支持图片和PDF的识别。
        public let isPdf: Bool?

        /// 需要识别的PDF页面的对应页码，仅支持PDF单页识别，当上传文件为PDF且IsPdf参数值为true时有效，默认值为1。
        public let pdfPageNumber: Int64?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, returnVertex: Bool? = nil, returnCoord: Bool? = nil, isPdf: Bool? = nil, pdfPageNumber: Int64? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.returnVertex = returnVertex
            self.returnCoord = returnCoord
            self.isPdf = isPdf
            self.pdfPageNumber = pdfPageNumber
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case returnVertex = "ReturnVertex"
            case returnCoord = "ReturnCoord"
            case isPdf = "IsPdf"
            case pdfPageNumber = "PdfPageNumber"
        }
    }

    /// RecognizeMedicalInvoiceOCR返回参数结构体
    public struct RecognizeMedicalInvoiceOCRResponse: TCResponseModel {
        /// 识别出的字段信息
        public let medicalInvoiceInfos: [MedicalInvoiceInfo]

        /// 图片旋转角度（角度制），文本的水平方向为0°，顺时针为正，逆时针为负。
        public let angle: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case medicalInvoiceInfos = "MedicalInvoiceInfos"
            case angle = "Angle"
            case requestId = "RequestId"
        }
    }

    /// 医疗票据识别
    ///
    /// 医疗发票识别目前支持全国统一门诊发票、全国统一住院发票、以及部分地方的门诊和住院发票的识别。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func recognizeMedicalInvoiceOCR(_ input: RecognizeMedicalInvoiceOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeMedicalInvoiceOCRResponse> {
        self.client.execute(action: "RecognizeMedicalInvoiceOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 医疗票据识别
    ///
    /// 医疗发票识别目前支持全国统一门诊发票、全国统一住院发票、以及部分地方的门诊和住院发票的识别。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func recognizeMedicalInvoiceOCR(_ input: RecognizeMedicalInvoiceOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeMedicalInvoiceOCRResponse {
        try await self.client.execute(action: "RecognizeMedicalInvoiceOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 医疗票据识别
    ///
    /// 医疗发票识别目前支持全国统一门诊发票、全国统一住院发票、以及部分地方的门诊和住院发票的识别。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func recognizeMedicalInvoiceOCR(imageBase64: String? = nil, imageUrl: String? = nil, returnVertex: Bool? = nil, returnCoord: Bool? = nil, isPdf: Bool? = nil, pdfPageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeMedicalInvoiceOCRResponse> {
        self.recognizeMedicalInvoiceOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, returnVertex: returnVertex, returnCoord: returnCoord, isPdf: isPdf, pdfPageNumber: pdfPageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 医疗票据识别
    ///
    /// 医疗发票识别目前支持全国统一门诊发票、全国统一住院发票、以及部分地方的门诊和住院发票的识别。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func recognizeMedicalInvoiceOCR(imageBase64: String? = nil, imageUrl: String? = nil, returnVertex: Bool? = nil, returnCoord: Bool? = nil, isPdf: Bool? = nil, pdfPageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeMedicalInvoiceOCRResponse {
        try await self.recognizeMedicalInvoiceOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, returnVertex: returnVertex, returnCoord: returnCoord, isPdf: isPdf, pdfPageNumber: pdfPageNumber), region: region, logger: logger, on: eventLoop)
    }
}
