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
    /// ImageEnhancement请求参数结构体
    public struct ImageEnhancementRequest: TCRequestModel {
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

        /// 默认为空，ReturnImage的取值以及含义如下：
        /// “preprocess”: 返回预处理后的图片数据
        /// “origin”：返回原图片数据
        /// " ":不返回图片数据
        public let returnImage: String?

        /// 默认值为1，指定图像增强方法：
        /// 1：切边增强
        /// 2：弯曲矫正
        /// 202：黑白模式
        /// 204：提亮模式
        /// 205：灰度模式
        /// 207：省墨模式
        /// 208：文字锐化（适合非彩色图片）
        /// 300:自动增强（自动从301～304选择任务类型）
        /// 301：去摩尔纹
        /// 302：去除阴影
        /// 303：去除模糊
        /// 304：去除过曝
        public let taskType: Int64?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, returnImage: String? = nil, taskType: Int64? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.returnImage = returnImage
            self.taskType = taskType
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case returnImage = "ReturnImage"
            case taskType = "TaskType"
        }
    }

    /// ImageEnhancement返回参数结构体
    public struct ImageEnhancementResponse: TCResponseModel {
        /// 图片数据标识：
        /// “origin”：原图
        /// “preprocess”:预处理后的图
        public let imageTag: String

        /// 图片数据，返回预处理后图像或原图像base64字符
        public let image: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageTag = "ImageTag"
            case image = "Image"
            case requestId = "RequestId"
        }
    }

    /// 文本图像增强
    ///
    /// 文本图像增强是面向文档类图片提供的图像增强处理能力，包括切边增强、图像矫正、阴影去除、摩尔纹去除等；可以有效优化文档类的图片质量，提升文字的清晰度。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func imageEnhancement(_ input: ImageEnhancementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImageEnhancementResponse> {
        self.client.execute(action: "ImageEnhancement", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文本图像增强
    ///
    /// 文本图像增强是面向文档类图片提供的图像增强处理能力，包括切边增强、图像矫正、阴影去除、摩尔纹去除等；可以有效优化文档类的图片质量，提升文字的清晰度。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func imageEnhancement(_ input: ImageEnhancementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImageEnhancementResponse {
        try await self.client.execute(action: "ImageEnhancement", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文本图像增强
    ///
    /// 文本图像增强是面向文档类图片提供的图像增强处理能力，包括切边增强、图像矫正、阴影去除、摩尔纹去除等；可以有效优化文档类的图片质量，提升文字的清晰度。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func imageEnhancement(imageBase64: String? = nil, imageUrl: String? = nil, returnImage: String? = nil, taskType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImageEnhancementResponse> {
        self.imageEnhancement(.init(imageBase64: imageBase64, imageUrl: imageUrl, returnImage: returnImage, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }

    /// 文本图像增强
    ///
    /// 文本图像增强是面向文档类图片提供的图像增强处理能力，包括切边增强、图像矫正、阴影去除、摩尔纹去除等；可以有效优化文档类的图片质量，提升文字的清晰度。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func imageEnhancement(imageBase64: String? = nil, imageUrl: String? = nil, returnImage: String? = nil, taskType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImageEnhancementResponse {
        try await self.imageEnhancement(.init(imageBase64: imageBase64, imageUrl: imageUrl, returnImage: returnImage, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }
}
