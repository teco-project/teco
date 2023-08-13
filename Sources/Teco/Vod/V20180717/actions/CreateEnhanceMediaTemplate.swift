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
    /// CreateEnhanceMediaTemplate请求参数结构体
    public struct CreateEnhanceMediaTemplateRequest: TCRequestModel {
        /// 输出文件封装格式，可选值：mp4、flv、hls。
        public let container: String

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 音画质重生模板名称，长度限制：64 个字符。
        public let name: String?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 音画质重生视频控制控制信息。
        public let rebuildVideoInfo: RebuildVideoInfo?

        /// 音画质重生音频控制控制信息。
        public let rebuildAudioInfo: RebuildAudioInfo?

        /// 输出目标视频控制信息。
        public let targetVideoInfo: RebuildMediaTargetVideoStream?

        /// 输出目标音频控制信息。
        public let targetAudioInfo: RebuildMediaTargetAudioStream?

        /// 是否去除视频数据，可选值：
        /// - 0：保留
        /// - 1：去除
        /// 默认值 0。
        public let removeVideo: Int64?

        /// 是否去除音频数据，可选值：
        /// - 0：保留
        /// - 1：去除
        /// 默认值 0。
        public let removeAudio: Int64?

        public init(container: String, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, rebuildVideoInfo: RebuildVideoInfo? = nil, rebuildAudioInfo: RebuildAudioInfo? = nil, targetVideoInfo: RebuildMediaTargetVideoStream? = nil, targetAudioInfo: RebuildMediaTargetAudioStream? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil) {
            self.container = container
            self.subAppId = subAppId
            self.name = name
            self.comment = comment
            self.rebuildVideoInfo = rebuildVideoInfo
            self.rebuildAudioInfo = rebuildAudioInfo
            self.targetVideoInfo = targetVideoInfo
            self.targetAudioInfo = targetAudioInfo
            self.removeVideo = removeVideo
            self.removeAudio = removeAudio
        }

        enum CodingKeys: String, CodingKey {
            case container = "Container"
            case subAppId = "SubAppId"
            case name = "Name"
            case comment = "Comment"
            case rebuildVideoInfo = "RebuildVideoInfo"
            case rebuildAudioInfo = "RebuildAudioInfo"
            case targetVideoInfo = "TargetVideoInfo"
            case targetAudioInfo = "TargetAudioInfo"
            case removeVideo = "RemoveVideo"
            case removeAudio = "RemoveAudio"
        }
    }

    /// CreateEnhanceMediaTemplate返回参数结构体
    public struct CreateEnhanceMediaTemplateResponse: TCResponseModel {
        /// 音画质重生模板 ID。
        public let definition: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case requestId = "RequestId"
        }
    }

    /// 创建音画质重生模板
    ///
    /// 创建音画质重生模板。
    @inlinable
    public func createEnhanceMediaTemplate(_ input: CreateEnhanceMediaTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEnhanceMediaTemplateResponse> {
        self.client.execute(action: "CreateEnhanceMediaTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建音画质重生模板
    ///
    /// 创建音画质重生模板。
    @inlinable
    public func createEnhanceMediaTemplate(_ input: CreateEnhanceMediaTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEnhanceMediaTemplateResponse {
        try await self.client.execute(action: "CreateEnhanceMediaTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建音画质重生模板
    ///
    /// 创建音画质重生模板。
    @inlinable
    public func createEnhanceMediaTemplate(container: String, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, rebuildVideoInfo: RebuildVideoInfo? = nil, rebuildAudioInfo: RebuildAudioInfo? = nil, targetVideoInfo: RebuildMediaTargetVideoStream? = nil, targetAudioInfo: RebuildMediaTargetAudioStream? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEnhanceMediaTemplateResponse> {
        self.createEnhanceMediaTemplate(.init(container: container, subAppId: subAppId, name: name, comment: comment, rebuildVideoInfo: rebuildVideoInfo, rebuildAudioInfo: rebuildAudioInfo, targetVideoInfo: targetVideoInfo, targetAudioInfo: targetAudioInfo, removeVideo: removeVideo, removeAudio: removeAudio), region: region, logger: logger, on: eventLoop)
    }

    /// 创建音画质重生模板
    ///
    /// 创建音画质重生模板。
    @inlinable
    public func createEnhanceMediaTemplate(container: String, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, rebuildVideoInfo: RebuildVideoInfo? = nil, rebuildAudioInfo: RebuildAudioInfo? = nil, targetVideoInfo: RebuildMediaTargetVideoStream? = nil, targetAudioInfo: RebuildMediaTargetAudioStream? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEnhanceMediaTemplateResponse {
        try await self.createEnhanceMediaTemplate(.init(container: container, subAppId: subAppId, name: name, comment: comment, rebuildVideoInfo: rebuildVideoInfo, rebuildAudioInfo: rebuildAudioInfo, targetVideoInfo: targetVideoInfo, targetAudioInfo: targetAudioInfo, removeVideo: removeVideo, removeAudio: removeAudio), region: region, logger: logger, on: eventLoop)
    }
}
