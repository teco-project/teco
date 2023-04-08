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

extension Vod {
    /// ModifyWatermarkTemplate请求参数结构体
    public struct ModifyWatermarkTemplateRequest: TCRequestModel {
        /// 水印模板唯一标识。
        public let definition: Int64

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 水印模板名称，长度限制：64 个字符。
        public let name: String?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 原点位置，可选值：
        /// <li>TopLeft：表示坐标原点位于视频图像左上角，水印原点为图片或文字的左上角；</li>
        /// <li>TopRight：表示坐标原点位于视频图像的右上角，水印原点为图片或文字的右上角；</li>
        /// <li>BottomLeft：表示坐标原点位于视频图像的左下角，水印原点为图片或文字的左下角；</li>
        /// <li>BottomRight：表示坐标原点位于视频图像的右下角，水印原点为图片或文字的右下角。</li>
        public let coordinateOrigin: String?

        /// 水印原点距离视频图像坐标原点的水平位置。支持 %、px 两种格式：
        /// <li>当字符串以 % 结尾，表示水印 XPos 为视频宽度指定百分比，如 10% 表示 XPos 为视频宽度的 10%；</li>
        /// <li>当字符串以 px 结尾，表示水印 XPos 为指定像素，如 100px 表示 XPos 为 100 像素。</li>
        public let xPos: String?

        /// 水印原点距离视频图像坐标原点的垂直位置。支持 %、px 两种格式：
        /// <li>当字符串以 % 结尾，表示水印 YPos 为视频高度指定百分比，如 10% 表示 YPos 为视频高度的 10%；</li>
        /// <li>当字符串以 px 结尾，表示水印 YPos 为指定像素，如 100px 表示 YPos 为 100 像素。</li>
        public let yPos: String?

        /// 图片水印模板，该字段仅对图片水印模板有效。
        public let imageTemplate: ImageWatermarkInputForUpdate?

        /// 文字水印模板，该字段仅对文字水印模板有效。
        public let textTemplate: TextWatermarkTemplateInputForUpdate?

        /// SVG 水印模板，该字段仅对 SVG 水印模板有效。
        public let svgTemplate: SvgWatermarkInputForUpdate?

        public init(definition: Int64, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, coordinateOrigin: String? = nil, xPos: String? = nil, yPos: String? = nil, imageTemplate: ImageWatermarkInputForUpdate? = nil, textTemplate: TextWatermarkTemplateInputForUpdate? = nil, svgTemplate: SvgWatermarkInputForUpdate? = nil) {
            self.definition = definition
            self.subAppId = subAppId
            self.name = name
            self.comment = comment
            self.coordinateOrigin = coordinateOrigin
            self.xPos = xPos
            self.yPos = yPos
            self.imageTemplate = imageTemplate
            self.textTemplate = textTemplate
            self.svgTemplate = svgTemplate
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case subAppId = "SubAppId"
            case name = "Name"
            case comment = "Comment"
            case coordinateOrigin = "CoordinateOrigin"
            case xPos = "XPos"
            case yPos = "YPos"
            case imageTemplate = "ImageTemplate"
            case textTemplate = "TextTemplate"
            case svgTemplate = "SvgTemplate"
        }
    }

    /// ModifyWatermarkTemplate返回参数结构体
    public struct ModifyWatermarkTemplateResponse: TCResponseModel {
        /// 图片水印地址，仅当 ImageTemplate.ImageContent 非空，该字段有值。
        public let imageUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageUrl = "ImageUrl"
            case requestId = "RequestId"
        }
    }

    /// 修改水印模板
    ///
    /// 修改用户自定义水印模板，水印类型不允许修改。
    @inlinable
    public func modifyWatermarkTemplate(_ input: ModifyWatermarkTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWatermarkTemplateResponse> {
        self.client.execute(action: "ModifyWatermarkTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改水印模板
    ///
    /// 修改用户自定义水印模板，水印类型不允许修改。
    @inlinable
    public func modifyWatermarkTemplate(_ input: ModifyWatermarkTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWatermarkTemplateResponse {
        try await self.client.execute(action: "ModifyWatermarkTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改水印模板
    ///
    /// 修改用户自定义水印模板，水印类型不允许修改。
    @inlinable
    public func modifyWatermarkTemplate(definition: Int64, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, coordinateOrigin: String? = nil, xPos: String? = nil, yPos: String? = nil, imageTemplate: ImageWatermarkInputForUpdate? = nil, textTemplate: TextWatermarkTemplateInputForUpdate? = nil, svgTemplate: SvgWatermarkInputForUpdate? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWatermarkTemplateResponse> {
        self.modifyWatermarkTemplate(.init(definition: definition, subAppId: subAppId, name: name, comment: comment, coordinateOrigin: coordinateOrigin, xPos: xPos, yPos: yPos, imageTemplate: imageTemplate, textTemplate: textTemplate, svgTemplate: svgTemplate), region: region, logger: logger, on: eventLoop)
    }

    /// 修改水印模板
    ///
    /// 修改用户自定义水印模板，水印类型不允许修改。
    @inlinable
    public func modifyWatermarkTemplate(definition: Int64, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, coordinateOrigin: String? = nil, xPos: String? = nil, yPos: String? = nil, imageTemplate: ImageWatermarkInputForUpdate? = nil, textTemplate: TextWatermarkTemplateInputForUpdate? = nil, svgTemplate: SvgWatermarkInputForUpdate? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWatermarkTemplateResponse {
        try await self.modifyWatermarkTemplate(.init(definition: definition, subAppId: subAppId, name: name, comment: comment, coordinateOrigin: coordinateOrigin, xPos: xPos, yPos: yPos, imageTemplate: imageTemplate, textTemplate: textTemplate, svgTemplate: svgTemplate), region: region, logger: logger, on: eventLoop)
    }
}
