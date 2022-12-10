//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date

extension Cme {
    /// 修改视频编码配置
    ///
    /// 修改视频编码配置信息。
    @inlinable
    public func modifyVideoEncodingPreset(_ input: ModifyVideoEncodingPresetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyVideoEncodingPresetResponse > {
        self.client.execute(action: "ModifyVideoEncodingPreset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改视频编码配置
    ///
    /// 修改视频编码配置信息。
    @inlinable
    public func modifyVideoEncodingPreset(_ input: ModifyVideoEncodingPresetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVideoEncodingPresetResponse {
        try await self.client.execute(action: "ModifyVideoEncodingPreset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyVideoEncodingPreset请求参数结构体
    public struct ModifyVideoEncodingPresetRequest: TCRequestModel {
        /// 平台名称，指定访问的平台。
        public let platform: String
        
        /// 配置 ID。
        public let id: UInt64
        
        /// 更改后的视频编码配置名，不填则不修改。
        public let name: String?
        
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
        
        /// 更改后的编码配置的视频设置。
        public let videoSetting: VideoEncodingPresetVideoSettingForUpdate
        
        /// 更改后的编码配置的音频设置。
        public let audioSetting: VideoEncodingPresetAudioSettingForUpdate
        
        public init (platform: String, id: UInt64, name: String?, removeVideo: Int64?, removeAudio: Int64?, videoSetting: VideoEncodingPresetVideoSettingForUpdate, audioSetting: VideoEncodingPresetAudioSettingForUpdate) {
            self.platform = platform
            self.id = id
            self.name = name
            self.removeVideo = removeVideo
            self.removeAudio = removeAudio
            self.videoSetting = videoSetting
            self.audioSetting = audioSetting
        }
        
        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case id = "Id"
            case name = "Name"
            case removeVideo = "RemoveVideo"
            case removeAudio = "RemoveAudio"
            case videoSetting = "VideoSetting"
            case audioSetting = "AudioSetting"
        }
    }
    
    /// ModifyVideoEncodingPreset返回参数结构体
    public struct ModifyVideoEncodingPresetResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}