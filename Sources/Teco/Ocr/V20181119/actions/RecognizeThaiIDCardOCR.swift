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
    /// RecognizeThaiIDCardOCR请求参数结构体
    public struct RecognizeThaiIDCardOCRRequest: TCRequest {
        /// 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        /// 建议图片存储于腾讯云，可保障更高的下载速度和稳定性。
        public let imageUrl: String?

        /// 图片开关。默认为false，不返回泰国身份证头像照片的base64编码。
        /// 设置为true时，返回旋转矫正后的泰国身份证头像照片的base64编码
        public let cropPortrait: Bool?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, cropPortrait: Bool? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.cropPortrait = cropPortrait
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case cropPortrait = "CropPortrait"
        }
    }

    /// RecognizeThaiIDCardOCR返回参数结构体
    public struct RecognizeThaiIDCardOCRResponse: TCResponse {
        /// 身份证号码
        public let id: String

        /// 泰文姓名
        public let thaiName: String

        /// 英文姓名
        public let enFirstName: String

        /// 地址
        public let address: String

        /// 出生日期
        public let birthday: String

        /// 签发日期
        public let issueDate: String

        /// 到期日期
        public let expirationDate: String

        /// 英文姓名
        public let enLastName: String

        /// 证件人像照片抠取
        public let portraitImage: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "ID"
            case thaiName = "ThaiName"
            case enFirstName = "EnFirstName"
            case address = "Address"
            case birthday = "Birthday"
            case issueDate = "IssueDate"
            case expirationDate = "ExpirationDate"
            case enLastName = "EnLastName"
            case portraitImage = "PortraitImage"
            case requestId = "RequestId"
        }
    }

    /// 泰国身份证识别
    ///
    /// 本接口支持泰国身份证识别，识别字段包括泰文姓名、英文姓名、地址、出生日期、身份证号码、首次领用日期、签发日期等字段。
    /// 本接口暂未完全对外开放，如需咨询，请[联系商务](https://cloud.tencent.com/about/connect)
    ///
    /// 默认接口请求频率限制：10次/秒
    @inlinable
    public func recognizeThaiIDCardOCR(_ input: RecognizeThaiIDCardOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeThaiIDCardOCRResponse> {
        self.client.execute(action: "RecognizeThaiIDCardOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 泰国身份证识别
    ///
    /// 本接口支持泰国身份证识别，识别字段包括泰文姓名、英文姓名、地址、出生日期、身份证号码、首次领用日期、签发日期等字段。
    /// 本接口暂未完全对外开放，如需咨询，请[联系商务](https://cloud.tencent.com/about/connect)
    ///
    /// 默认接口请求频率限制：10次/秒
    @inlinable
    public func recognizeThaiIDCardOCR(_ input: RecognizeThaiIDCardOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeThaiIDCardOCRResponse {
        try await self.client.execute(action: "RecognizeThaiIDCardOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 泰国身份证识别
    ///
    /// 本接口支持泰国身份证识别，识别字段包括泰文姓名、英文姓名、地址、出生日期、身份证号码、首次领用日期、签发日期等字段。
    /// 本接口暂未完全对外开放，如需咨询，请[联系商务](https://cloud.tencent.com/about/connect)
    ///
    /// 默认接口请求频率限制：10次/秒
    @inlinable
    public func recognizeThaiIDCardOCR(imageBase64: String? = nil, imageUrl: String? = nil, cropPortrait: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeThaiIDCardOCRResponse> {
        self.recognizeThaiIDCardOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, cropPortrait: cropPortrait), region: region, logger: logger, on: eventLoop)
    }

    /// 泰国身份证识别
    ///
    /// 本接口支持泰国身份证识别，识别字段包括泰文姓名、英文姓名、地址、出生日期、身份证号码、首次领用日期、签发日期等字段。
    /// 本接口暂未完全对外开放，如需咨询，请[联系商务](https://cloud.tencent.com/about/connect)
    ///
    /// 默认接口请求频率限制：10次/秒
    @inlinable
    public func recognizeThaiIDCardOCR(imageBase64: String? = nil, imageUrl: String? = nil, cropPortrait: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeThaiIDCardOCRResponse {
        try await self.recognizeThaiIDCardOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, cropPortrait: cropPortrait), region: region, logger: logger, on: eventLoop)
    }
}
