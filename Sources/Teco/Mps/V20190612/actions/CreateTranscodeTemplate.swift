//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Mps {
    /// CreateTranscodeTemplate请求参数结构体
    public struct CreateTranscodeTemplateRequest: TCRequestModel {
        /// 封装格式，可选值：mp4、flv、hls、mp3、flac、ogg、m4a。其中，mp3、flac、ogg、m4a 为纯音频文件。
        public let container: String

        /// 转码模板名称，长度限制：64 个字符。
        public let name: String?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 是否去除视频数据，可选值：
        /// <li>0：保留</li>
        /// <li>1：去除</li>
        /// 默认值：0。
        public let removeVideo: Int64?

        /// 是否去除音频数据，可选值：
        /// <li>0：保留</li>
        /// <li>1：去除</li>
        /// 默认值：0。
        public let removeAudio: Int64?

        /// 视频流配置参数，当 RemoveVideo 为 0，该字段必填。
        public let videoTemplate: VideoTemplateInfo?

        /// 音频流配置参数，当 RemoveAudio 为 0，该字段必填。
        public let audioTemplate: AudioTemplateInfo?

        /// 极速高清转码参数。
        public let tehdConfig: TEHDConfig?

        /// 音视频增强配置。
        public let enhanceConfig: EnhanceConfig?

        public init(container: String, name: String? = nil, comment: String? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil, videoTemplate: VideoTemplateInfo? = nil, audioTemplate: AudioTemplateInfo? = nil, tehdConfig: TEHDConfig? = nil, enhanceConfig: EnhanceConfig? = nil) {
            self.container = container
            self.name = name
            self.comment = comment
            self.removeVideo = removeVideo
            self.removeAudio = removeAudio
            self.videoTemplate = videoTemplate
            self.audioTemplate = audioTemplate
            self.tehdConfig = tehdConfig
            self.enhanceConfig = enhanceConfig
        }

        enum CodingKeys: String, CodingKey {
            case container = "Container"
            case name = "Name"
            case comment = "Comment"
            case removeVideo = "RemoveVideo"
            case removeAudio = "RemoveAudio"
            case videoTemplate = "VideoTemplate"
            case audioTemplate = "AudioTemplate"
            case tehdConfig = "TEHDConfig"
            case enhanceConfig = "EnhanceConfig"
        }
    }

    /// CreateTranscodeTemplate返回参数结构体
    public struct CreateTranscodeTemplateResponse: TCResponseModel {
        /// 转码模板唯一标识。
        public let definition: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case requestId = "RequestId"
        }
    }

    /// 创建转码模板
    ///
    /// 创建用户自定义转码模板，数量上限：1000。
    @inlinable
    public func createTranscodeTemplate(_ input: CreateTranscodeTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTranscodeTemplateResponse> {
        self.client.execute(action: "CreateTranscodeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建转码模板
    ///
    /// 创建用户自定义转码模板，数量上限：1000。
    @inlinable
    public func createTranscodeTemplate(_ input: CreateTranscodeTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTranscodeTemplateResponse {
        try await self.client.execute(action: "CreateTranscodeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建转码模板
    ///
    /// 创建用户自定义转码模板，数量上限：1000。
    @inlinable
    public func createTranscodeTemplate(container: String, name: String? = nil, comment: String? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil, videoTemplate: VideoTemplateInfo? = nil, audioTemplate: AudioTemplateInfo? = nil, tehdConfig: TEHDConfig? = nil, enhanceConfig: EnhanceConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTranscodeTemplateResponse> {
        self.createTranscodeTemplate(CreateTranscodeTemplateRequest(container: container, name: name, comment: comment, removeVideo: removeVideo, removeAudio: removeAudio, videoTemplate: videoTemplate, audioTemplate: audioTemplate, tehdConfig: tehdConfig, enhanceConfig: enhanceConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 创建转码模板
    ///
    /// 创建用户自定义转码模板，数量上限：1000。
    @inlinable
    public func createTranscodeTemplate(container: String, name: String? = nil, comment: String? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil, videoTemplate: VideoTemplateInfo? = nil, audioTemplate: AudioTemplateInfo? = nil, tehdConfig: TEHDConfig? = nil, enhanceConfig: EnhanceConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTranscodeTemplateResponse {
        try await self.createTranscodeTemplate(CreateTranscodeTemplateRequest(container: container, name: name, comment: comment, removeVideo: removeVideo, removeAudio: removeAudio, videoTemplate: videoTemplate, audioTemplate: audioTemplate, tehdConfig: tehdConfig, enhanceConfig: enhanceConfig), region: region, logger: logger, on: eventLoop)
    }
}
