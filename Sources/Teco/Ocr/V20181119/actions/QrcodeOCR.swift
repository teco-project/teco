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
    /// QrcodeOCR请求参数结构体
    public struct QrcodeOCRRequest: TCRequest {
        /// 图片的 Base64 值。要求图片经Base64编码后不超过 7M，支持PNG、JPG、JPEG格式。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片的 Url 地址。要求图片经Base64编码后不超过 7M，支持PNG、JPG、JPEG格式。
        /// 建议图片存储于腾讯云，可保障更高的下载速度和稳定性。
        public let imageUrl: String?

        public init(imageBase64: String? = nil, imageUrl: String? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
        }
    }

    /// QrcodeOCR返回参数结构体
    public struct QrcodeOCRResponse: TCResponse {
        /// 二维码/条形码识别结果信息，具体内容请点击左侧链接。
        public let codeResults: [QrcodeResultsInfo]

        /// 图片大小，具体内容请点击左侧链接。
        public let imgSize: QrcodeImgSize

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case codeResults = "CodeResults"
            case imgSize = "ImgSize"
            case requestId = "RequestId"
        }
    }

    /// 二维码和条形码识别
    ///
    /// 本接口支持条形码和二维码的识别（包括 DataMatrix 和 PDF417）。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func qrcodeOCR(_ input: QrcodeOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QrcodeOCRResponse> {
        self.client.execute(action: "QrcodeOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 二维码和条形码识别
    ///
    /// 本接口支持条形码和二维码的识别（包括 DataMatrix 和 PDF417）。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func qrcodeOCR(_ input: QrcodeOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QrcodeOCRResponse {
        try await self.client.execute(action: "QrcodeOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 二维码和条形码识别
    ///
    /// 本接口支持条形码和二维码的识别（包括 DataMatrix 和 PDF417）。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func qrcodeOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QrcodeOCRResponse> {
        self.qrcodeOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 二维码和条形码识别
    ///
    /// 本接口支持条形码和二维码的识别（包括 DataMatrix 和 PDF417）。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func qrcodeOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QrcodeOCRResponse {
        try await self.qrcodeOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }
}
