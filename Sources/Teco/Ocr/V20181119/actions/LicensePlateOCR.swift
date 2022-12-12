//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// LicensePlateOCR请求参数结构体
    public struct LicensePlateOCRRequest: TCRequestModel {
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
        
        public init (imageBase64: String? = nil, imageUrl: String? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
        }
        
        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
        }
    }
    
    /// LicensePlateOCR返回参数结构体
    public struct LicensePlateOCRResponse: TCResponseModel {
        /// 识别出的车牌号码。
        public let number: String
        
        /// 置信度，0 - 100 之间。
        public let confidence: Int64
        
        /// 文本行在原图片中的像素坐标框。
        public let rect: Rect
        
        /// 识别出的车牌颜色，目前支持颜色包括 “白”、“黑”、“蓝”、“绿“、“黄”、“黄绿”、“临牌”。
        public let color: String
        
        /// 全部车牌信息。
        public let licensePlateInfos: [LicensePlateInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case number = "Number"
            case confidence = "Confidence"
            case rect = "Rect"
            case color = "Color"
            case licensePlateInfos = "LicensePlateInfos"
            case requestId = "RequestId"
        }
    }
    
    /// 车牌识别
    ///
    /// 本接口支持对中国大陆机动车车牌的自动定位和识别，返回地域编号和车牌号码与车牌颜色信息。
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func licensePlateOCR(_ input: LicensePlateOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < LicensePlateOCRResponse > {
        self.client.execute(action: "LicensePlateOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 车牌识别
    ///
    /// 本接口支持对中国大陆机动车车牌的自动定位和识别，返回地域编号和车牌号码与车牌颜色信息。
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func licensePlateOCR(_ input: LicensePlateOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LicensePlateOCRResponse {
        try await self.client.execute(action: "LicensePlateOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
