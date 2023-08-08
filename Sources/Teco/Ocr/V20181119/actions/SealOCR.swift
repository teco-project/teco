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
    /// SealOCR请求参数结构体
    public struct SealOCRRequest: TCRequestModel {
        /// 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP、PDF格式。建议卡片部分占据图片2/3以上。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP、PDF格式。建议卡片部分占据图片2/3以上。图片下载时间不超过 3 秒。
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

    /// SealOCR返回参数结构体
    public struct SealOCRResponse: TCResponseModel {
        /// 印章内容
        public let sealBody: String

        /// 印章坐标
        public let location: Rect

        /// 其它文本内容
        public let otherTexts: [String]

        /// 全部印章信息
        public let sealInfos: [SealInfo]

        /// 印章类型，表示为：
        /// 圆形印章：0
        /// 椭圆形印章：1
        /// 方形印章：2
        /// 菱形印章：3
        /// 三角形印章：4
        public let sealShape: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sealBody = "SealBody"
            case location = "Location"
            case otherTexts = "OtherTexts"
            case sealInfos = "SealInfos"
            case sealShape = "SealShape"
            case requestId = "RequestId"
        }
    }

    /// 印章识别
    ///
    /// 本接口支持各类印章主体内容、印章其他内容及形状识别，支持单图多印章识别，包括发票章、财务章等，适用于公文票据等场景。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func sealOCR(_ input: SealOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SealOCRResponse> {
        self.client.execute(action: "SealOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 印章识别
    ///
    /// 本接口支持各类印章主体内容、印章其他内容及形状识别，支持单图多印章识别，包括发票章、财务章等，适用于公文票据等场景。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func sealOCR(_ input: SealOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SealOCRResponse {
        try await self.client.execute(action: "SealOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 印章识别
    ///
    /// 本接口支持各类印章主体内容、印章其他内容及形状识别，支持单图多印章识别，包括发票章、财务章等，适用于公文票据等场景。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func sealOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SealOCRResponse> {
        self.sealOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 印章识别
    ///
    /// 本接口支持各类印章主体内容、印章其他内容及形状识别，支持单图多印章识别，包括发票章、财务章等，适用于公文票据等场景。
    ///
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func sealOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SealOCRResponse {
        try await self.sealOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }
}
