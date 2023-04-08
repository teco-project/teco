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
    /// MixedInvoiceDetect请求参数结构体
    public struct MixedInvoiceDetectRequest: TCRequestModel {
        /// 是否需要返回裁剪后的图片。
        public let returnImage: Bool

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

        public init(returnImage: Bool, imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: Int64? = nil) {
            self.returnImage = returnImage
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.isPdf = isPdf
            self.pdfPageNumber = pdfPageNumber
        }

        enum CodingKeys: String, CodingKey {
            case returnImage = "ReturnImage"
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case isPdf = "IsPdf"
            case pdfPageNumber = "PdfPageNumber"
        }
    }

    /// MixedInvoiceDetect返回参数结构体
    public struct MixedInvoiceDetectResponse: TCResponseModel {
        /// 检测出的票据类型列表，具体内容请点击左侧链接。
        public let invoiceDetectInfos: [InvoiceDetectInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case invoiceDetectInfos = "InvoiceDetectInfos"
            case requestId = "RequestId"
        }
    }

    /// 混贴票据分类
    ///
    /// 本接口支持多张、多类型票据的混合检测和自动分类，返回对应票据类型。目前已支持增值税发票、增值税发票（卷票）、定额发票、通用机打发票、购车发票、火车票、出租车发票、机票行程单、汽车票、轮船票、过路过桥费发票、酒店账单、客运限额发票、购物小票、完税证明共15种票据。
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func mixedInvoiceDetect(_ input: MixedInvoiceDetectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MixedInvoiceDetectResponse> {
        self.client.execute(action: "MixedInvoiceDetect", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 混贴票据分类
    ///
    /// 本接口支持多张、多类型票据的混合检测和自动分类，返回对应票据类型。目前已支持增值税发票、增值税发票（卷票）、定额发票、通用机打发票、购车发票、火车票、出租车发票、机票行程单、汽车票、轮船票、过路过桥费发票、酒店账单、客运限额发票、购物小票、完税证明共15种票据。
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func mixedInvoiceDetect(_ input: MixedInvoiceDetectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MixedInvoiceDetectResponse {
        try await self.client.execute(action: "MixedInvoiceDetect", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 混贴票据分类
    ///
    /// 本接口支持多张、多类型票据的混合检测和自动分类，返回对应票据类型。目前已支持增值税发票、增值税发票（卷票）、定额发票、通用机打发票、购车发票、火车票、出租车发票、机票行程单、汽车票、轮船票、过路过桥费发票、酒店账单、客运限额发票、购物小票、完税证明共15种票据。
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func mixedInvoiceDetect(returnImage: Bool, imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MixedInvoiceDetectResponse> {
        self.mixedInvoiceDetect(.init(returnImage: returnImage, imageBase64: imageBase64, imageUrl: imageUrl, isPdf: isPdf, pdfPageNumber: pdfPageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 混贴票据分类
    ///
    /// 本接口支持多张、多类型票据的混合检测和自动分类，返回对应票据类型。目前已支持增值税发票、增值税发票（卷票）、定额发票、通用机打发票、购车发票、火车票、出租车发票、机票行程单、汽车票、轮船票、过路过桥费发票、酒店账单、客运限额发票、购物小票、完税证明共15种票据。
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func mixedInvoiceDetect(returnImage: Bool, imageBase64: String? = nil, imageUrl: String? = nil, isPdf: Bool? = nil, pdfPageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MixedInvoiceDetectResponse {
        try await self.mixedInvoiceDetect(.init(returnImage: returnImage, imageBase64: imageBase64, imageUrl: imageUrl, isPdf: isPdf, pdfPageNumber: pdfPageNumber), region: region, logger: logger, on: eventLoop)
    }
}
