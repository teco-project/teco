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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Vod {
    /// CreateAnimatedGraphicsTemplate请求参数结构体
    public struct CreateAnimatedGraphicsTemplateRequest: TCRequestModel {
        /// 帧率，取值范围：[1, 30]，单位：Hz。
        public let fps: UInt64

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 动图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        /// <li>当 Width、Height 均为 0，则分辨率同源；</li>
        /// <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        /// <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        /// <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        /// 默认值：0。
        public let width: UInt64?

        /// 动图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        /// <li>当 Width、Height 均为 0，则分辨率同源；</li>
        /// <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        /// <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        /// <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        /// 默认值：0。
        public let height: UInt64?

        /// 分辨率自适应，可选值：
        /// <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        /// <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        /// 默认值：open。
        public let resolutionAdaptive: String?

        /// 动图格式，取值为 gif 和 webp。默认为 gif。
        public let format: String?

        /// 图片质量，取值范围：[1, 100]，默认值为 75。
        public let quality: Float?

        /// 转动图模板名称，长度限制：64 个字符。
        public let name: String?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        public init(fps: UInt64, subAppId: UInt64? = nil, width: UInt64? = nil, height: UInt64? = nil, resolutionAdaptive: String? = nil, format: String? = nil, quality: Float? = nil, name: String? = nil, comment: String? = nil) {
            self.fps = fps
            self.subAppId = subAppId
            self.width = width
            self.height = height
            self.resolutionAdaptive = resolutionAdaptive
            self.format = format
            self.quality = quality
            self.name = name
            self.comment = comment
        }

        enum CodingKeys: String, CodingKey {
            case fps = "Fps"
            case subAppId = "SubAppId"
            case width = "Width"
            case height = "Height"
            case resolutionAdaptive = "ResolutionAdaptive"
            case format = "Format"
            case quality = "Quality"
            case name = "Name"
            case comment = "Comment"
        }
    }

    /// CreateAnimatedGraphicsTemplate返回参数结构体
    public struct CreateAnimatedGraphicsTemplateResponse: TCResponseModel {
        /// 转动图模板唯一标识。
        public let definition: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case requestId = "RequestId"
        }
    }

    /// 创建转动图模板
    ///
    /// 创建用户自定义转动图模板，数量上限：16。
    @inlinable
    public func createAnimatedGraphicsTemplate(_ input: CreateAnimatedGraphicsTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAnimatedGraphicsTemplateResponse> {
        self.client.execute(action: "CreateAnimatedGraphicsTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建转动图模板
    ///
    /// 创建用户自定义转动图模板，数量上限：16。
    @inlinable
    public func createAnimatedGraphicsTemplate(_ input: CreateAnimatedGraphicsTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAnimatedGraphicsTemplateResponse {
        try await self.client.execute(action: "CreateAnimatedGraphicsTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建转动图模板
    ///
    /// 创建用户自定义转动图模板，数量上限：16。
    @inlinable
    public func createAnimatedGraphicsTemplate(fps: UInt64, subAppId: UInt64? = nil, width: UInt64? = nil, height: UInt64? = nil, resolutionAdaptive: String? = nil, format: String? = nil, quality: Float? = nil, name: String? = nil, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAnimatedGraphicsTemplateResponse> {
        self.createAnimatedGraphicsTemplate(.init(fps: fps, subAppId: subAppId, width: width, height: height, resolutionAdaptive: resolutionAdaptive, format: format, quality: quality, name: name, comment: comment), region: region, logger: logger, on: eventLoop)
    }

    /// 创建转动图模板
    ///
    /// 创建用户自定义转动图模板，数量上限：16。
    @inlinable
    public func createAnimatedGraphicsTemplate(fps: UInt64, subAppId: UInt64? = nil, width: UInt64? = nil, height: UInt64? = nil, resolutionAdaptive: String? = nil, format: String? = nil, quality: Float? = nil, name: String? = nil, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAnimatedGraphicsTemplateResponse {
        try await self.createAnimatedGraphicsTemplate(.init(fps: fps, subAppId: subAppId, width: width, height: height, resolutionAdaptive: resolutionAdaptive, format: format, quality: quality, name: name, comment: comment), region: region, logger: logger, on: eventLoop)
    }
}
