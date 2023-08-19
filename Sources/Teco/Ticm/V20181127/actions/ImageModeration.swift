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

extension Ticm {
    /// ImageModeration请求参数结构体
    public struct ImageModerationRequest: TCRequest {
        /// 本次调用支持的识别场景，可选值如下：
        /// 1. PORN，即色情识别
        /// 2. TERRORISM，即暴恐识别
        /// 3. POLITICS，即政治敏感识别
        ///
        /// 支持多场景（Scenes）一起检测。例如，使用 Scenes=["PORN", "TERRORISM"]，即对一张图片同时进行色情识别和暴恐识别。
        public let scenes: [String]

        /// 图片URL地址。
        /// 图片限制：
        ///  • 图片格式：PNG、JPG、JPEG。
        ///  • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        ///  • 图片像素：大于50*50像素，否则影响识别效果；
        ///  • 长宽比：长边：短边<5；
        /// 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        public let imageUrl: String?

        /// 预留字段，后期用于展示更多识别信息。
        public let config: String?

        /// 透传字段，透传简单信息。
        public let extra: String?

        /// 图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        public let imageBase64: String?

        public init(scenes: [String], imageUrl: String? = nil, config: String? = nil, extra: String? = nil, imageBase64: String? = nil) {
            self.scenes = scenes
            self.imageUrl = imageUrl
            self.config = config
            self.extra = extra
            self.imageBase64 = imageBase64
        }

        enum CodingKeys: String, CodingKey {
            case scenes = "Scenes"
            case imageUrl = "ImageUrl"
            case config = "Config"
            case extra = "Extra"
            case imageBase64 = "ImageBase64"
        }
    }

    /// ImageModeration返回参数结构体
    public struct ImageModerationResponse: TCResponse {
        /// 识别场景的审核结论：
        /// PASS：正常
        /// REVIEW：疑似
        /// BLOCK：违规
        public let suggestion: String

        /// 色情识别结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pornResult: PornResult?

        /// 暴恐识别结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let terrorismResult: TerrorismResult?

        /// 政治敏感识别结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let politicsResult: PoliticsResult?

        /// 透传字段，透传简单信息。
        public let extra: String

        /// 恶心内容识别结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let disgustResult: DisgustResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case suggestion = "Suggestion"
            case pornResult = "PornResult"
            case terrorismResult = "TerrorismResult"
            case politicsResult = "PoliticsResult"
            case extra = "Extra"
            case disgustResult = "DisgustResult"
            case requestId = "RequestId"
        }
    }

    /// 图像内容审核
    ///
    /// 本接口提供多种维度的图像审核能力，支持色情和性感内容识别，政治人物和涉政敏感场景识别，以及暴恐人物、场景、旗帜标识等违禁内容的识别。
    @inlinable
    public func imageModeration(_ input: ImageModerationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImageModerationResponse> {
        self.client.execute(action: "ImageModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 图像内容审核
    ///
    /// 本接口提供多种维度的图像审核能力，支持色情和性感内容识别，政治人物和涉政敏感场景识别，以及暴恐人物、场景、旗帜标识等违禁内容的识别。
    @inlinable
    public func imageModeration(_ input: ImageModerationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImageModerationResponse {
        try await self.client.execute(action: "ImageModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 图像内容审核
    ///
    /// 本接口提供多种维度的图像审核能力，支持色情和性感内容识别，政治人物和涉政敏感场景识别，以及暴恐人物、场景、旗帜标识等违禁内容的识别。
    @inlinable
    public func imageModeration(scenes: [String], imageUrl: String? = nil, config: String? = nil, extra: String? = nil, imageBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImageModerationResponse> {
        self.imageModeration(.init(scenes: scenes, imageUrl: imageUrl, config: config, extra: extra, imageBase64: imageBase64), region: region, logger: logger, on: eventLoop)
    }

    /// 图像内容审核
    ///
    /// 本接口提供多种维度的图像审核能力，支持色情和性感内容识别，政治人物和涉政敏感场景识别，以及暴恐人物、场景、旗帜标识等违禁内容的识别。
    @inlinable
    public func imageModeration(scenes: [String], imageUrl: String? = nil, config: String? = nil, extra: String? = nil, imageBase64: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImageModerationResponse {
        try await self.imageModeration(.init(scenes: scenes, imageUrl: imageUrl, config: config, extra: extra, imageBase64: imageBase64), region: region, logger: logger, on: eventLoop)
    }
}
