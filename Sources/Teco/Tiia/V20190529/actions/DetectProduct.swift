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

import TecoCore

extension Tiia {
    /// DetectProduct请求参数结构体
    public struct DetectProductRequest: TCRequestModel {
        /// 图片URL地址。
        /// 图片限制：
        /// • 图片格式：PNG、JPG、JPEG。
        /// • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        /// 建议：
        /// • 图片像素：大于50*50像素，否则影响识别效果；
        /// • 长宽比：长边：短边<5；
        /// 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        public let imageUrl: String?

        /// 图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        /// **注意：图片需要base64编码，并且要去掉编码头部。**
        public let imageBase64: String?

        public init(imageUrl: String? = nil, imageBase64: String? = nil) {
            self.imageUrl = imageUrl
            self.imageBase64 = imageBase64
        }

        enum CodingKeys: String, CodingKey {
            case imageUrl = "ImageUrl"
            case imageBase64 = "ImageBase64"
        }
    }

    /// DetectProduct返回参数结构体
    public struct DetectProductResponse: TCResponseModel {
        /// 商品识别结果数组
        public let products: [Product]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case products = "Products"
            case requestId = "RequestId"
        }
    }

    /// 商品识别
    ///
    /// 本接口支持识别图片中包含的商品，能够输出商品的品类名称、类别，还可以输出商品在图片中的位置。支持一张图片多个商品的识别。
    /// >?
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectProduct(_ input: DetectProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectProductResponse> {
        self.client.execute(action: "DetectProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 商品识别
    ///
    /// 本接口支持识别图片中包含的商品，能够输出商品的品类名称、类别，还可以输出商品在图片中的位置。支持一张图片多个商品的识别。
    /// >?
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectProduct(_ input: DetectProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectProductResponse {
        try await self.client.execute(action: "DetectProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 商品识别
    ///
    /// 本接口支持识别图片中包含的商品，能够输出商品的品类名称、类别，还可以输出商品在图片中的位置。支持一张图片多个商品的识别。
    /// >?
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectProduct(imageUrl: String? = nil, imageBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectProductResponse> {
        self.detectProduct(.init(imageUrl: imageUrl, imageBase64: imageBase64), region: region, logger: logger, on: eventLoop)
    }

    /// 商品识别
    ///
    /// 本接口支持识别图片中包含的商品，能够输出商品的品类名称、类别，还可以输出商品在图片中的位置。支持一张图片多个商品的识别。
    /// >?
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectProduct(imageUrl: String? = nil, imageBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectProductResponse {
        try await self.detectProduct(.init(imageUrl: imageUrl, imageBase64: imageBase64), region: region, logger: logger, on: eventLoop)
    }
}
