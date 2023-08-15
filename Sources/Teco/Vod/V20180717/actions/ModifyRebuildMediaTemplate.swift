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
    /// ModifyRebuildMediaTemplate请求参数结构体
    public struct ModifyRebuildMediaTemplateRequest: TCRequestModel {
        /// 视频重生模板号。
        public let definition: Int64

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: String?

        /// 视频重生模板名称。
        public let name: String?

        /// 视频重生模板描述。
        public let comment: String?

        /// 视频重生视频控制信息。
        public let rebuildVideoInfo: RebuildVideoInfo?

        /// 视频重生音频控制信息。
        public let rebuildAudioInfo: RebuildAudioInfo?

        /// 输出目标视频控制信息。
        public let targetVideoInfo: RebuildMediaTargetVideoStream?

        /// 输出目标音频控制信息。
        public let targetAudioInfo: RebuildMediaTargetAudioStream?

        /// 输出文件封装格式，可选值：mp4、flv、hls。
        public let container: String?

        /// 是否去除视频数据，可选值：
        /// - 0：保留
        /// - 1：去除
        public let removeVideo: Int64?

        /// 是否去除音频数据，可选值：
        /// - 0：保留
        /// - 1：去除
        public let removeAudio: Int64?

        public init(definition: Int64, subAppId: String? = nil, name: String? = nil, comment: String? = nil, rebuildVideoInfo: RebuildVideoInfo? = nil, rebuildAudioInfo: RebuildAudioInfo? = nil, targetVideoInfo: RebuildMediaTargetVideoStream? = nil, targetAudioInfo: RebuildMediaTargetAudioStream? = nil, container: String? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil) {
            self.definition = definition
            self.subAppId = subAppId
            self.name = name
            self.comment = comment
            self.rebuildVideoInfo = rebuildVideoInfo
            self.rebuildAudioInfo = rebuildAudioInfo
            self.targetVideoInfo = targetVideoInfo
            self.targetAudioInfo = targetAudioInfo
            self.container = container
            self.removeVideo = removeVideo
            self.removeAudio = removeAudio
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case subAppId = "SubAppId"
            case name = "Name"
            case comment = "Comment"
            case rebuildVideoInfo = "RebuildVideoInfo"
            case rebuildAudioInfo = "RebuildAudioInfo"
            case targetVideoInfo = "TargetVideoInfo"
            case targetAudioInfo = "TargetAudioInfo"
            case container = "Container"
            case removeVideo = "RemoveVideo"
            case removeAudio = "RemoveAudio"
        }
    }

    /// ModifyRebuildMediaTemplate返回参数结构体
    public struct ModifyRebuildMediaTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改视频重生模板
    ///
    /// 修改视频重生模板。
    @inlinable @discardableResult
    public func modifyRebuildMediaTemplate(_ input: ModifyRebuildMediaTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRebuildMediaTemplateResponse> {
        self.client.execute(action: "ModifyRebuildMediaTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改视频重生模板
    ///
    /// 修改视频重生模板。
    @inlinable @discardableResult
    public func modifyRebuildMediaTemplate(_ input: ModifyRebuildMediaTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRebuildMediaTemplateResponse {
        try await self.client.execute(action: "ModifyRebuildMediaTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改视频重生模板
    ///
    /// 修改视频重生模板。
    @inlinable @discardableResult
    public func modifyRebuildMediaTemplate(definition: Int64, subAppId: String? = nil, name: String? = nil, comment: String? = nil, rebuildVideoInfo: RebuildVideoInfo? = nil, rebuildAudioInfo: RebuildAudioInfo? = nil, targetVideoInfo: RebuildMediaTargetVideoStream? = nil, targetAudioInfo: RebuildMediaTargetAudioStream? = nil, container: String? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRebuildMediaTemplateResponse> {
        self.modifyRebuildMediaTemplate(.init(definition: definition, subAppId: subAppId, name: name, comment: comment, rebuildVideoInfo: rebuildVideoInfo, rebuildAudioInfo: rebuildAudioInfo, targetVideoInfo: targetVideoInfo, targetAudioInfo: targetAudioInfo, container: container, removeVideo: removeVideo, removeAudio: removeAudio), region: region, logger: logger, on: eventLoop)
    }

    /// 修改视频重生模板
    ///
    /// 修改视频重生模板。
    @inlinable @discardableResult
    public func modifyRebuildMediaTemplate(definition: Int64, subAppId: String? = nil, name: String? = nil, comment: String? = nil, rebuildVideoInfo: RebuildVideoInfo? = nil, rebuildAudioInfo: RebuildAudioInfo? = nil, targetVideoInfo: RebuildMediaTargetVideoStream? = nil, targetAudioInfo: RebuildMediaTargetAudioStream? = nil, container: String? = nil, removeVideo: Int64? = nil, removeAudio: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRebuildMediaTemplateResponse {
        try await self.modifyRebuildMediaTemplate(.init(definition: definition, subAppId: subAppId, name: name, comment: comment, rebuildVideoInfo: rebuildVideoInfo, rebuildAudioInfo: rebuildAudioInfo, targetVideoInfo: targetVideoInfo, targetAudioInfo: targetAudioInfo, container: container, removeVideo: removeVideo, removeAudio: removeAudio), region: region, logger: logger, on: eventLoop)
    }
}
