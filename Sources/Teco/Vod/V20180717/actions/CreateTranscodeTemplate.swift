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

extension Vod {
    /// 创建转码模板
    ///
    /// 创建用户自定义转码模板，数量上限：100。
    @inlinable
    public func createTranscodeTemplate(_ input: CreateTranscodeTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateTranscodeTemplateResponse > {
        self.client.execute(action: "CreateTranscodeTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建转码模板
    ///
    /// 创建用户自定义转码模板，数量上限：100。
    @inlinable
    public func createTranscodeTemplate(_ input: CreateTranscodeTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTranscodeTemplateResponse {
        try await self.client.execute(action: "CreateTranscodeTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateTranscodeTemplate请求参数结构体
    public struct CreateTranscodeTemplateRequest: TCRequestModel {
        /// 封装格式，可选值：mp4、flv、hls、mp3、flac、ogg、m4a。其中，mp3、flac、ogg、m4a 为纯音频文件。
        public let container: String
        
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?
        
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
        public let videoTemplate: VideoTemplateInfo
        
        /// 音频流配置参数，当 RemoveAudio 为 0，该字段必填。
        public let audioTemplate: AudioTemplateInfo
        
        /// 极速高清转码参数。
        public let tehdConfig: TEHDConfig
        
        /// 切片类型，当 Container 为 hls 时有效，可选值：
        /// <li>ts：ts 切片；</li>
        /// <li>fmp4：fmp4 切片。</li>
        /// 默认值：ts。
        public let segmentType: String?
        
        public init (container: String, subAppId: UInt64?, name: String?, comment: String?, removeVideo: Int64?, removeAudio: Int64?, videoTemplate: VideoTemplateInfo, audioTemplate: AudioTemplateInfo, tehdConfig: TEHDConfig, segmentType: String?) {
            self.container = container
            self.subAppId = subAppId
            self.name = name
            self.comment = comment
            self.removeVideo = removeVideo
            self.removeAudio = removeAudio
            self.videoTemplate = videoTemplate
            self.audioTemplate = audioTemplate
            self.tehdConfig = tehdConfig
            self.segmentType = segmentType
        }
        
        enum CodingKeys: String, CodingKey {
            case container = "Container"
            case subAppId = "SubAppId"
            case name = "Name"
            case comment = "Comment"
            case removeVideo = "RemoveVideo"
            case removeAudio = "RemoveAudio"
            case videoTemplate = "VideoTemplate"
            case audioTemplate = "AudioTemplate"
            case tehdConfig = "TEHDConfig"
            case segmentType = "SegmentType"
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
}