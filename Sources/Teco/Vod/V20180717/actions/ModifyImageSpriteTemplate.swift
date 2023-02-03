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

extension Vod {
    /// ModifyImageSpriteTemplate请求参数结构体
    public struct ModifyImageSpriteTemplateRequest: TCRequestModel {
        /// 雪碧图模板唯一标识。
        public let definition: UInt64

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 雪碧图模板名称，长度限制：64 个字符。
        public let name: String?

        /// 雪碧图中小图的宽度，取值范围： [128, 4096]，单位：px。
        public let width: UInt64?

        /// 雪碧图中小图的高度，取值范围： [128, 4096]，单位：px。
        public let height: UInt64?

        /// 分辨率自适应，可选值：
        /// <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        /// <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        /// 默认值：open。
        public let resolutionAdaptive: String?

        /// 采样类型，取值：
        /// <li>Percent：按百分比。</li>
        /// <li>Time：按时间间隔。</li>
        public let sampleType: String?

        /// 采样间隔。
        /// <li>当 SampleType 为 Percent 时，指定采样间隔的百分比。</li>
        /// <li>当 SampleType 为 Time 时，指定采样间隔的时间，单位为秒。</li>
        public let sampleInterval: UInt64?

        /// 雪碧图中小图的行数。
        public let rowCount: UInt64?

        /// 雪碧图中小图的列数。
        public let columnCount: UInt64?

        /// 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        /// <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        /// <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        /// 默认值：black 。
        public let fillType: String?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 图片格式，取值：
        /// <li> jpg：jpg 格式；</li>
        /// <li> png：png 格式；</li>
        /// <li> webp：webp 格式。</li>
        public let format: String?

        public init(definition: UInt64, subAppId: UInt64? = nil, name: String? = nil, width: UInt64? = nil, height: UInt64? = nil, resolutionAdaptive: String? = nil, sampleType: String? = nil, sampleInterval: UInt64? = nil, rowCount: UInt64? = nil, columnCount: UInt64? = nil, fillType: String? = nil, comment: String? = nil, format: String? = nil) {
            self.definition = definition
            self.subAppId = subAppId
            self.name = name
            self.width = width
            self.height = height
            self.resolutionAdaptive = resolutionAdaptive
            self.sampleType = sampleType
            self.sampleInterval = sampleInterval
            self.rowCount = rowCount
            self.columnCount = columnCount
            self.fillType = fillType
            self.comment = comment
            self.format = format
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case subAppId = "SubAppId"
            case name = "Name"
            case width = "Width"
            case height = "Height"
            case resolutionAdaptive = "ResolutionAdaptive"
            case sampleType = "SampleType"
            case sampleInterval = "SampleInterval"
            case rowCount = "RowCount"
            case columnCount = "ColumnCount"
            case fillType = "FillType"
            case comment = "Comment"
            case format = "Format"
        }
    }

    /// ModifyImageSpriteTemplate返回参数结构体
    public struct ModifyImageSpriteTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改雪碧图模板
    ///
    /// 修改用户自定义雪碧图模板。
    @inlinable @discardableResult
    public func modifyImageSpriteTemplate(_ input: ModifyImageSpriteTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyImageSpriteTemplateResponse> {
        self.client.execute(action: "ModifyImageSpriteTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改雪碧图模板
    ///
    /// 修改用户自定义雪碧图模板。
    @inlinable @discardableResult
    public func modifyImageSpriteTemplate(_ input: ModifyImageSpriteTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyImageSpriteTemplateResponse {
        try await self.client.execute(action: "ModifyImageSpriteTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改雪碧图模板
    ///
    /// 修改用户自定义雪碧图模板。
    @inlinable @discardableResult
    public func modifyImageSpriteTemplate(definition: UInt64, subAppId: UInt64? = nil, name: String? = nil, width: UInt64? = nil, height: UInt64? = nil, resolutionAdaptive: String? = nil, sampleType: String? = nil, sampleInterval: UInt64? = nil, rowCount: UInt64? = nil, columnCount: UInt64? = nil, fillType: String? = nil, comment: String? = nil, format: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyImageSpriteTemplateResponse> {
        let input = ModifyImageSpriteTemplateRequest(definition: definition, subAppId: subAppId, name: name, width: width, height: height, resolutionAdaptive: resolutionAdaptive, sampleType: sampleType, sampleInterval: sampleInterval, rowCount: rowCount, columnCount: columnCount, fillType: fillType, comment: comment, format: format)
        return self.client.execute(action: "ModifyImageSpriteTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改雪碧图模板
    ///
    /// 修改用户自定义雪碧图模板。
    @inlinable @discardableResult
    public func modifyImageSpriteTemplate(definition: UInt64, subAppId: UInt64? = nil, name: String? = nil, width: UInt64? = nil, height: UInt64? = nil, resolutionAdaptive: String? = nil, sampleType: String? = nil, sampleInterval: UInt64? = nil, rowCount: UInt64? = nil, columnCount: UInt64? = nil, fillType: String? = nil, comment: String? = nil, format: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyImageSpriteTemplateResponse {
        let input = ModifyImageSpriteTemplateRequest(definition: definition, subAppId: subAppId, name: name, width: width, height: height, resolutionAdaptive: resolutionAdaptive, sampleType: sampleType, sampleInterval: sampleInterval, rowCount: rowCount, columnCount: columnCount, fillType: fillType, comment: comment, format: format)
        return try await self.client.execute(action: "ModifyImageSpriteTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
