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
    /// GeneralHandwritingOCR请求参数结构体
    public struct GeneralHandwritingOCRRequest: TCRequest {
        /// 图片的 Base64 值。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片的 Url 地址。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经 Base64 编码后不超过7M。图片下载时间不超过 3 秒。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?

        /// 场景字段，默认不用填写。
        /// 可选值:only_hw  表示只输出手写体识别结果，过滤印刷体。
        public let scene: String?

        /// 是否开启单字的四点定位坐标输出，默认值为false。
        public let enableWordPolygon: Bool?

        /// 文本检测开关，默认值为true。
        /// 设置为false表示直接进行单行识别，可适用于识别单行手写体签名场景。
        public let enableDetectText: Bool?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, scene: String? = nil, enableWordPolygon: Bool? = nil, enableDetectText: Bool? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.scene = scene
            self.enableWordPolygon = enableWordPolygon
            self.enableDetectText = enableDetectText
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case scene = "Scene"
            case enableWordPolygon = "EnableWordPolygon"
            case enableDetectText = "EnableDetectText"
        }
    }

    /// GeneralHandwritingOCR返回参数结构体
    public struct GeneralHandwritingOCRResponse: TCResponse {
        /// 检测到的文本信息，具体内容请点击左侧链接。
        public let textDetections: [TextGeneralHandwriting]

        /// 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负。点击查看[如何纠正倾斜文本](https://cloud.tencent.com/document/product/866/45139)
        public let angel: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case textDetections = "TextDetections"
            case angel = "Angel"
            case requestId = "RequestId"
        }
    }

    /// 通用手写体识别
    ///
    /// 本接口支持图片内手写体文字的检测和识别，针对手写字体无规则、字迹潦草、模糊等特点进行了识别能力的增强。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func generalHandwritingOCR(_ input: GeneralHandwritingOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GeneralHandwritingOCRResponse> {
        self.client.execute(action: "GeneralHandwritingOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通用手写体识别
    ///
    /// 本接口支持图片内手写体文字的检测和识别，针对手写字体无规则、字迹潦草、模糊等特点进行了识别能力的增强。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func generalHandwritingOCR(_ input: GeneralHandwritingOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GeneralHandwritingOCRResponse {
        try await self.client.execute(action: "GeneralHandwritingOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通用手写体识别
    ///
    /// 本接口支持图片内手写体文字的检测和识别，针对手写字体无规则、字迹潦草、模糊等特点进行了识别能力的增强。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func generalHandwritingOCR(imageBase64: String? = nil, imageUrl: String? = nil, scene: String? = nil, enableWordPolygon: Bool? = nil, enableDetectText: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GeneralHandwritingOCRResponse> {
        self.generalHandwritingOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, scene: scene, enableWordPolygon: enableWordPolygon, enableDetectText: enableDetectText), region: region, logger: logger, on: eventLoop)
    }

    /// 通用手写体识别
    ///
    /// 本接口支持图片内手写体文字的检测和识别，针对手写字体无规则、字迹潦草、模糊等特点进行了识别能力的增强。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func generalHandwritingOCR(imageBase64: String? = nil, imageUrl: String? = nil, scene: String? = nil, enableWordPolygon: Bool? = nil, enableDetectText: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GeneralHandwritingOCRResponse {
        try await self.generalHandwritingOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, scene: scene, enableWordPolygon: enableWordPolygon, enableDetectText: enableDetectText), region: region, logger: logger, on: eventLoop)
    }
}
