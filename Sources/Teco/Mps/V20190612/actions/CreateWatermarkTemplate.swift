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

extension Mps {
    /// CreateWatermarkTemplate请求参数结构体
    public struct CreateWatermarkTemplateRequest: TCRequestModel {
        /// 水印类型，可选值：
        /// <li>image：图片水印；</li>
        /// <li>text：文字水印；</li>
        /// <li>svg：SVG 水印。</li>
        public let type: String

        /// 水印模板名称，长度限制：64 个字符。
        public let name: String?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 原点位置，可选值：
        /// <li>TopLeft：表示坐标原点位于视频图像左上角，水印原点为图片或文字的左上角；</li>
        /// <li>TopRight：表示坐标原点位于视频图像的右上角，水印原点为图片或文字的右上角；</li>
        /// <li>BottomLeft：表示坐标原点位于视频图像的左下角，水印原点为图片或文字的左下角；</li>
        /// <li>BottomRight：表示坐标原点位于视频图像的右下角，水印原点为图片或文字的右下角。</li>
        /// 默认值：TopLeft。
        public let coordinateOrigin: String?

        /// 水印原点距离视频图像坐标原点的水平位置。支持 %、px 两种格式：
        /// <li>当字符串以 % 结尾，表示水印 XPos 为视频宽度指定百分比，如 10% 表示 XPos 为视频宽度的 10%；</li>
        /// <li>当字符串以 px 结尾，表示水印 XPos 为指定像素，如 100px 表示 XPos 为 100 像素。</li>
        /// 默认值：0px。
        public let xPos: String?

        /// 水印原点距离视频图像坐标原点的垂直位置。支持 %、px 两种格式：
        /// <li>当字符串以 % 结尾，表示水印 YPos 为视频高度指定百分比，如 10% 表示 YPos 为视频高度的 10%；</li>
        /// <li>当字符串以 px 结尾，表示水印 YPos 为指定像素，如 100px 表示 YPos 为 100 像素。</li>
        /// 默认值：0px。
        public let yPos: String?

        /// 图片水印模板，仅当 Type 为 image，该字段必填且有效。
        public let imageTemplate: ImageWatermarkInput?

        /// 文字水印模板，仅当 Type 为 text，该字段必填且有效。
        public let textTemplate: TextWatermarkTemplateInput?

        /// SVG 水印模板，仅当 Type 为 svg，该字段必填且有效。
        public let svgTemplate: SvgWatermarkInput?

        public init(type: String, name: String? = nil, comment: String? = nil, coordinateOrigin: String? = nil, xPos: String? = nil, yPos: String? = nil, imageTemplate: ImageWatermarkInput? = nil, textTemplate: TextWatermarkTemplateInput? = nil, svgTemplate: SvgWatermarkInput? = nil) {
            self.type = type
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
            case type = "Type"
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

    /// CreateWatermarkTemplate返回参数结构体
    public struct CreateWatermarkTemplateResponse: TCResponseModel {
        /// 水印模板唯一标识。
        public let definition: Int64

        /// 水印图片地址，仅当 Type 为 image，该字段有效。
        public let imageUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case imageUrl = "ImageUrl"
            case requestId = "RequestId"
        }
    }

    /// 创建水印模板
    ///
    /// 创建用户自定义水印模板，数量上限：1000。
    @inlinable
    public func createWatermarkTemplate(_ input: CreateWatermarkTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWatermarkTemplateResponse> {
        self.client.execute(action: "CreateWatermarkTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建水印模板
    ///
    /// 创建用户自定义水印模板，数量上限：1000。
    @inlinable
    public func createWatermarkTemplate(_ input: CreateWatermarkTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWatermarkTemplateResponse {
        try await self.client.execute(action: "CreateWatermarkTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建水印模板
    ///
    /// 创建用户自定义水印模板，数量上限：1000。
    @inlinable
    public func createWatermarkTemplate(type: String, name: String? = nil, comment: String? = nil, coordinateOrigin: String? = nil, xPos: String? = nil, yPos: String? = nil, imageTemplate: ImageWatermarkInput? = nil, textTemplate: TextWatermarkTemplateInput? = nil, svgTemplate: SvgWatermarkInput? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWatermarkTemplateResponse> {
        self.createWatermarkTemplate(.init(type: type, name: name, comment: comment, coordinateOrigin: coordinateOrigin, xPos: xPos, yPos: yPos, imageTemplate: imageTemplate, textTemplate: textTemplate, svgTemplate: svgTemplate), region: region, logger: logger, on: eventLoop)
    }

    /// 创建水印模板
    ///
    /// 创建用户自定义水印模板，数量上限：1000。
    @inlinable
    public func createWatermarkTemplate(type: String, name: String? = nil, comment: String? = nil, coordinateOrigin: String? = nil, xPos: String? = nil, yPos: String? = nil, imageTemplate: ImageWatermarkInput? = nil, textTemplate: TextWatermarkTemplateInput? = nil, svgTemplate: SvgWatermarkInput? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWatermarkTemplateResponse {
        try await self.createWatermarkTemplate(.init(type: type, name: name, comment: comment, coordinateOrigin: coordinateOrigin, xPos: xPos, yPos: yPos, imageTemplate: imageTemplate, textTemplate: textTemplate, svgTemplate: svgTemplate), region: region, logger: logger, on: eventLoop)
    }
}
