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
    /// DetectPet请求参数结构体
    public struct DetectPetRequest: TCRequestModel {
        /// 图片的URL地址。图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 图片大小的限制为4M，图片像素的限制为4k。
        public let imageUrl: String?

        /// 图片经过base64编码的内容。与ImageUrl同时存在时优先使用ImageUrl字段。
        /// 图片大小的限制为4M，图片像素的限制为4k。
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

    /// DetectPet返回参数结构体
    public struct DetectPetResponse: TCResponseModel {
        /// 识别出图片中的宠物信息列表。
        public let pets: [Pet]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pets = "Pets"
            case requestId = "RequestId"
        }
    }

    /// 宠物识别
    ///
    /// 传入一张图片，识别出图片中是否存在宠物
    /// >
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectPet(_ input: DetectPetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectPetResponse> {
        self.client.execute(action: "DetectPet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 宠物识别
    ///
    /// 传入一张图片，识别出图片中是否存在宠物
    /// >
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectPet(_ input: DetectPetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectPetResponse {
        try await self.client.execute(action: "DetectPet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 宠物识别
    ///
    /// 传入一张图片，识别出图片中是否存在宠物
    /// >
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectPet(imageUrl: String? = nil, imageBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectPetResponse> {
        self.detectPet(.init(imageUrl: imageUrl, imageBase64: imageBase64), region: region, logger: logger, on: eventLoop)
    }

    /// 宠物识别
    ///
    /// 传入一张图片，识别出图片中是否存在宠物
    /// >
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectPet(imageUrl: String? = nil, imageBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectPetResponse {
        try await self.detectPet(.init(imageUrl: imageUrl, imageBase64: imageBase64), region: region, logger: logger, on: eventLoop)
    }
}
