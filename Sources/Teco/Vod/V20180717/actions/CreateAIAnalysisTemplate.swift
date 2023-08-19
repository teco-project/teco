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

extension Vod {
    /// CreateAIAnalysisTemplate请求参数结构体
    public struct CreateAIAnalysisTemplateRequest: TCRequest {
        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 音视频内容分析模板名称，长度限制：64 个字符。
        public let name: String?

        /// 音视频内容分析模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 智能分类任务控制参数。
        public let classificationConfigure: ClassificationConfigureInfo?

        /// 智能标签任务控制参数。
        public let tagConfigure: TagConfigureInfo?

        /// 智能封面任务控制参数。
        public let coverConfigure: CoverConfigureInfo?

        /// 智能按帧标签任务控制参数。
        public let frameTagConfigure: FrameTagConfigureInfo?

        /// 智能精彩集锦任务控制参数。
        public let highlightConfigure: HighlightsConfigureInfo?

        public init(subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, classificationConfigure: ClassificationConfigureInfo? = nil, tagConfigure: TagConfigureInfo? = nil, coverConfigure: CoverConfigureInfo? = nil, frameTagConfigure: FrameTagConfigureInfo? = nil, highlightConfigure: HighlightsConfigureInfo? = nil) {
            self.subAppId = subAppId
            self.name = name
            self.comment = comment
            self.classificationConfigure = classificationConfigure
            self.tagConfigure = tagConfigure
            self.coverConfigure = coverConfigure
            self.frameTagConfigure = frameTagConfigure
            self.highlightConfigure = highlightConfigure
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case name = "Name"
            case comment = "Comment"
            case classificationConfigure = "ClassificationConfigure"
            case tagConfigure = "TagConfigure"
            case coverConfigure = "CoverConfigure"
            case frameTagConfigure = "FrameTagConfigure"
            case highlightConfigure = "HighlightConfigure"
        }
    }

    /// CreateAIAnalysisTemplate返回参数结构体
    public struct CreateAIAnalysisTemplateResponse: TCResponse {
        /// 音视频内容分析模板唯一标识。
        public let definition: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case requestId = "RequestId"
        }
    }

    /// 创建音视频内容分析模板
    ///
    /// 创建用户自定义音视频内容分析模板，数量上限：50。
    @inlinable
    public func createAIAnalysisTemplate(_ input: CreateAIAnalysisTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAIAnalysisTemplateResponse> {
        self.client.execute(action: "CreateAIAnalysisTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建音视频内容分析模板
    ///
    /// 创建用户自定义音视频内容分析模板，数量上限：50。
    @inlinable
    public func createAIAnalysisTemplate(_ input: CreateAIAnalysisTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAIAnalysisTemplateResponse {
        try await self.client.execute(action: "CreateAIAnalysisTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建音视频内容分析模板
    ///
    /// 创建用户自定义音视频内容分析模板，数量上限：50。
    @inlinable
    public func createAIAnalysisTemplate(subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, classificationConfigure: ClassificationConfigureInfo? = nil, tagConfigure: TagConfigureInfo? = nil, coverConfigure: CoverConfigureInfo? = nil, frameTagConfigure: FrameTagConfigureInfo? = nil, highlightConfigure: HighlightsConfigureInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAIAnalysisTemplateResponse> {
        self.createAIAnalysisTemplate(.init(subAppId: subAppId, name: name, comment: comment, classificationConfigure: classificationConfigure, tagConfigure: tagConfigure, coverConfigure: coverConfigure, frameTagConfigure: frameTagConfigure, highlightConfigure: highlightConfigure), region: region, logger: logger, on: eventLoop)
    }

    /// 创建音视频内容分析模板
    ///
    /// 创建用户自定义音视频内容分析模板，数量上限：50。
    @inlinable
    public func createAIAnalysisTemplate(subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, classificationConfigure: ClassificationConfigureInfo? = nil, tagConfigure: TagConfigureInfo? = nil, coverConfigure: CoverConfigureInfo? = nil, frameTagConfigure: FrameTagConfigureInfo? = nil, highlightConfigure: HighlightsConfigureInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAIAnalysisTemplateResponse {
        try await self.createAIAnalysisTemplate(.init(subAppId: subAppId, name: name, comment: comment, classificationConfigure: classificationConfigure, tagConfigure: tagConfigure, coverConfigure: coverConfigure, frameTagConfigure: frameTagConfigure, highlightConfigure: highlightConfigure), region: region, logger: logger, on: eventLoop)
    }
}
