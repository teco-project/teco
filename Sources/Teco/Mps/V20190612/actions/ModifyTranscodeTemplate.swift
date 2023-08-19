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
    /// ModifyTranscodeTemplate请求参数结构体
    public struct ModifyTranscodeTemplateRequest: TCRequest {
        /// 转码模板唯一标识。
        public let definition: Int64

        /// 封装格式，可选值：mp4、flv、hls、mp3、flac、ogg、m4a。其中，mp3、flac、ogg、m4a 为纯音频文件。
        public let container: String?

        /// 转码模板名称，长度限制：64 个字符。
        public let name: String?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 是否去除视频数据，可选值：
        /// - 0：保留
        /// - 1：去除
        public let removeVideo: Int64?

        /// 是否去除音频数据，可选值：
        /// - 0：保留
        /// - 1：去除
        public let removeAudio: Int64?

        /// 视频流配置参数。
        public let videoTemplate: VideoTemplateInfoForUpdate?

        /// 音频流配置参数。
        public let audioTemplate: AudioTemplateInfoForUpdate?

        /// 极速高清转码参数。
        public let tehdConfig: TEHDConfigForUpdate?

        /// 音视频增强参数。
        public let enhanceConfig: EnhanceConfig?

        public init(definition: Int64, container: String? = nil, name: String? = nil, comment: String? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil, videoTemplate: VideoTemplateInfoForUpdate? = nil, audioTemplate: AudioTemplateInfoForUpdate? = nil, tehdConfig: TEHDConfigForUpdate? = nil, enhanceConfig: EnhanceConfig? = nil) {
            self.definition = definition
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
            case definition = "Definition"
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

    /// ModifyTranscodeTemplate返回参数结构体
    public struct ModifyTranscodeTemplateResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改转码模板
    ///
    /// 修改用户自定义转码模板信息。
    @inlinable @discardableResult
    public func modifyTranscodeTemplate(_ input: ModifyTranscodeTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTranscodeTemplateResponse> {
        self.client.execute(action: "ModifyTranscodeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改转码模板
    ///
    /// 修改用户自定义转码模板信息。
    @inlinable @discardableResult
    public func modifyTranscodeTemplate(_ input: ModifyTranscodeTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTranscodeTemplateResponse {
        try await self.client.execute(action: "ModifyTranscodeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改转码模板
    ///
    /// 修改用户自定义转码模板信息。
    @inlinable @discardableResult
    public func modifyTranscodeTemplate(definition: Int64, container: String? = nil, name: String? = nil, comment: String? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil, videoTemplate: VideoTemplateInfoForUpdate? = nil, audioTemplate: AudioTemplateInfoForUpdate? = nil, tehdConfig: TEHDConfigForUpdate? = nil, enhanceConfig: EnhanceConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTranscodeTemplateResponse> {
        self.modifyTranscodeTemplate(.init(definition: definition, container: container, name: name, comment: comment, removeVideo: removeVideo, removeAudio: removeAudio, videoTemplate: videoTemplate, audioTemplate: audioTemplate, tehdConfig: tehdConfig, enhanceConfig: enhanceConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 修改转码模板
    ///
    /// 修改用户自定义转码模板信息。
    @inlinable @discardableResult
    public func modifyTranscodeTemplate(definition: Int64, container: String? = nil, name: String? = nil, comment: String? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil, videoTemplate: VideoTemplateInfoForUpdate? = nil, audioTemplate: AudioTemplateInfoForUpdate? = nil, tehdConfig: TEHDConfigForUpdate? = nil, enhanceConfig: EnhanceConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTranscodeTemplateResponse {
        try await self.modifyTranscodeTemplate(.init(definition: definition, container: container, name: name, comment: comment, removeVideo: removeVideo, removeAudio: removeAudio, videoTemplate: videoTemplate, audioTemplate: audioTemplate, tehdConfig: tehdConfig, enhanceConfig: enhanceConfig), region: region, logger: logger, on: eventLoop)
    }
}
