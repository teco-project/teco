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

extension Cme {
    /// CreateVideoEncodingPreset请求参数结构体
    public struct CreateVideoEncodingPresetRequest: TCRequestModel {
        /// 平台名称，指定访问的平台。
        public let platform: String

        /// 配置名，可用来简单描述该配置的作用。
        public let name: String

        /// 封装格式，可选值：
        /// <li>mp4 ；</li>
        /// <li>mov 。</li>
        /// 默认值：mp4。
        public let container: String?

        /// 是否去除视频数据，可选值：
        /// <li>0：保留；</li>
        /// <li>1：去除。</li>
        /// 默认值：0。
        public let removeVideo: Int64?

        /// 是否去除音频数据，可选值：
        /// <li>0：保留；</li>
        /// <li>1：去除。</li>
        /// 默认值：0。
        public let removeAudio: Int64?

        /// 编码配置的视频设置。默认值参考VideoEncodingPresetVideoSetting 定义。
        public let videoSetting: VideoEncodingPresetVideoSetting?

        /// 编码配置的音频设置。默认值参考VideoEncodingPresetAudioSetting 定义。
        public let audioSetting: VideoEncodingPresetAudioSetting?

        public init(platform: String, name: String, container: String? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil, videoSetting: VideoEncodingPresetVideoSetting? = nil, audioSetting: VideoEncodingPresetAudioSetting? = nil) {
            self.platform = platform
            self.name = name
            self.container = container
            self.removeVideo = removeVideo
            self.removeAudio = removeAudio
            self.videoSetting = videoSetting
            self.audioSetting = audioSetting
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case name = "Name"
            case container = "Container"
            case removeVideo = "RemoveVideo"
            case removeAudio = "RemoveAudio"
            case videoSetting = "VideoSetting"
            case audioSetting = "AudioSetting"
        }
    }

    /// CreateVideoEncodingPreset返回参数结构体
    public struct CreateVideoEncodingPresetResponse: TCResponseModel {
        /// 模板 ID。
        public let id: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case requestId = "RequestId"
        }
    }

    /// 创建视频编码配置
    ///
    /// 指定导出的参数，创建一个视频编码配置
    @inlinable
    public func createVideoEncodingPreset(_ input: CreateVideoEncodingPresetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVideoEncodingPresetResponse> {
        self.client.execute(action: "CreateVideoEncodingPreset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建视频编码配置
    ///
    /// 指定导出的参数，创建一个视频编码配置
    @inlinable
    public func createVideoEncodingPreset(_ input: CreateVideoEncodingPresetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVideoEncodingPresetResponse {
        try await self.client.execute(action: "CreateVideoEncodingPreset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建视频编码配置
    ///
    /// 指定导出的参数，创建一个视频编码配置
    @inlinable
    public func createVideoEncodingPreset(platform: String, name: String, container: String? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil, videoSetting: VideoEncodingPresetVideoSetting? = nil, audioSetting: VideoEncodingPresetAudioSetting? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVideoEncodingPresetResponse> {
        self.createVideoEncodingPreset(CreateVideoEncodingPresetRequest(platform: platform, name: name, container: container, removeVideo: removeVideo, removeAudio: removeAudio, videoSetting: videoSetting, audioSetting: audioSetting), region: region, logger: logger, on: eventLoop)
    }

    /// 创建视频编码配置
    ///
    /// 指定导出的参数，创建一个视频编码配置
    @inlinable
    public func createVideoEncodingPreset(platform: String, name: String, container: String? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil, videoSetting: VideoEncodingPresetVideoSetting? = nil, audioSetting: VideoEncodingPresetAudioSetting? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVideoEncodingPresetResponse {
        try await self.createVideoEncodingPreset(CreateVideoEncodingPresetRequest(platform: platform, name: name, container: container, removeVideo: removeVideo, removeAudio: removeAudio, videoSetting: videoSetting, audioSetting: audioSetting), region: region, logger: logger, on: eventLoop)
    }
}
