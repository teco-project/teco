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

extension Cme {
    /// CreateProject请求参数结构体
    public struct CreateProjectRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 项目名称，不可超过30个字符。
        public let name: String

        /// 项目归属者，即项目的所有者，后续操作只有该所有者有权限操作。
        ///
        /// 注：目前所有项目只能设置归属个人，暂不支持团队项目。
        public let owner: Entity

        /// 项目类别，取值有：
        /// <li>VIDEO_EDIT：视频编辑。</li>
        /// <li>SWITCHER：导播台。</li>
        /// <li>VIDEO_SEGMENTATION：视频拆条。</li>
        /// <li>STREAM_CONNECT：云转推。</li>
        /// <li>RECORD_REPLAY：录制回放。</li>
        /// <li>MEDIA_CAST：点播转直播。</li>
        public let category: String

        /// 项目模式，一个项目可以有多种模式并相互切换。
        /// 当 Category 为 VIDEO_EDIT 时，可选模式有：
        /// <li>Default：默认模式，即普通视频编辑项目。</li>
        /// <li>VideoEditTemplate：剪辑模板制作模式，用于制作剪辑模板。</li>
        ///
        /// 注：不填则为默认模式。
        public let mode: String?

        /// 画布宽高比。
        /// 该字段已经废弃，请使用具体项目输入中的 AspectRatio 字段。
        public let aspectRatio: String?

        /// 项目描述信息。
        public let description: String?

        /// 导播台项目输入信息，仅当项目类型为 SWITCHER 时必填。
        public let switcherProjectInput: SwitcherProjectInput?

        /// 直播剪辑项目输入信息，暂未开放，请勿使用。
        public let liveStreamClipProjectInput: LiveStreamClipProjectInput?

        /// 视频编辑项目输入信息，仅当项目类型为 VIDEO_EDIT 时必填。
        public let videoEditProjectInput: VideoEditProjectInput?

        /// 视频拆条项目输入信息，仅当项目类型为 VIDEO_SEGMENTATION  时必填。
        public let videoSegmentationProjectInput: VideoSegmentationProjectInput?

        /// 云转推项目输入信息，仅当项目类型为 STREAM_CONNECT 时必填。
        public let streamConnectProjectInput: StreamConnectProjectInput?

        /// 录制回放项目输入信息，仅当项目类型为 RECORD_REPLAY 时必填。
        public let recordReplayProjectInput: RecordReplayProjectInput?

        /// 点播转直播项目输入信息，仅当项目类型为 MEDIA_CAST 时必填。
        public let mediaCastProjectInput: MediaCastProjectInput?

        public init(platform: String, name: String, owner: Entity, category: String, mode: String? = nil, aspectRatio: String? = nil, description: String? = nil, switcherProjectInput: SwitcherProjectInput? = nil, liveStreamClipProjectInput: LiveStreamClipProjectInput? = nil, videoEditProjectInput: VideoEditProjectInput? = nil, videoSegmentationProjectInput: VideoSegmentationProjectInput? = nil, streamConnectProjectInput: StreamConnectProjectInput? = nil, recordReplayProjectInput: RecordReplayProjectInput? = nil, mediaCastProjectInput: MediaCastProjectInput? = nil) {
            self.platform = platform
            self.name = name
            self.owner = owner
            self.category = category
            self.mode = mode
            self.aspectRatio = aspectRatio
            self.description = description
            self.switcherProjectInput = switcherProjectInput
            self.liveStreamClipProjectInput = liveStreamClipProjectInput
            self.videoEditProjectInput = videoEditProjectInput
            self.videoSegmentationProjectInput = videoSegmentationProjectInput
            self.streamConnectProjectInput = streamConnectProjectInput
            self.recordReplayProjectInput = recordReplayProjectInput
            self.mediaCastProjectInput = mediaCastProjectInput
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case name = "Name"
            case owner = "Owner"
            case category = "Category"
            case mode = "Mode"
            case aspectRatio = "AspectRatio"
            case description = "Description"
            case switcherProjectInput = "SwitcherProjectInput"
            case liveStreamClipProjectInput = "LiveStreamClipProjectInput"
            case videoEditProjectInput = "VideoEditProjectInput"
            case videoSegmentationProjectInput = "VideoSegmentationProjectInput"
            case streamConnectProjectInput = "StreamConnectProjectInput"
            case recordReplayProjectInput = "RecordReplayProjectInput"
            case mediaCastProjectInput = "MediaCastProjectInput"
        }
    }

    /// CreateProject返回参数结构体
    public struct CreateProjectResponse: TCResponseModel {
        /// 项目 Id。
        public let projectId: String

        /// <li> 当 Catagory 为 STREAM_CONNECT 时，数组返回长度为2 ，第0个代表主输入源推流信息，第1个代表备输入源推流信息。只有当各自输入源类型为推流时才有有效内容。</li>
        public let rtmpPushInputInfoSet: [RtmpPushInputInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case rtmpPushInputInfoSet = "RtmpPushInputInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 创建项目
    ///
    /// 创建多媒体创作引擎项目，目前支持的项目类型有：
    /// <li>视频剪辑项目：用于普通视频剪辑；</li>
    /// <li>直播剪辑项目：用于直播流剪辑；</li>
    /// <li>导播台项目：用于云导播台；</li>
    /// <li>视频拆条：用于视频拆条；</li>
    /// <li>录制回放项目：用于直播录制回放；</li>
    /// <li>云转推项目：用于直播云转推。</li>
    /// <li>点播转直播项目：用于点播文件转直播输出。</li>
    @inlinable
    public func createProject(_ input: CreateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        self.client.execute(action: "CreateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建项目
    ///
    /// 创建多媒体创作引擎项目，目前支持的项目类型有：
    /// <li>视频剪辑项目：用于普通视频剪辑；</li>
    /// <li>直播剪辑项目：用于直播流剪辑；</li>
    /// <li>导播台项目：用于云导播台；</li>
    /// <li>视频拆条：用于视频拆条；</li>
    /// <li>录制回放项目：用于直播录制回放；</li>
    /// <li>云转推项目：用于直播云转推。</li>
    /// <li>点播转直播项目：用于点播文件转直播输出。</li>
    @inlinable
    public func createProject(_ input: CreateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        try await self.client.execute(action: "CreateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建项目
    ///
    /// 创建多媒体创作引擎项目，目前支持的项目类型有：
    /// <li>视频剪辑项目：用于普通视频剪辑；</li>
    /// <li>直播剪辑项目：用于直播流剪辑；</li>
    /// <li>导播台项目：用于云导播台；</li>
    /// <li>视频拆条：用于视频拆条；</li>
    /// <li>录制回放项目：用于直播录制回放；</li>
    /// <li>云转推项目：用于直播云转推。</li>
    /// <li>点播转直播项目：用于点播文件转直播输出。</li>
    @inlinable
    public func createProject(platform: String, name: String, owner: Entity, category: String, mode: String? = nil, aspectRatio: String? = nil, description: String? = nil, switcherProjectInput: SwitcherProjectInput? = nil, liveStreamClipProjectInput: LiveStreamClipProjectInput? = nil, videoEditProjectInput: VideoEditProjectInput? = nil, videoSegmentationProjectInput: VideoSegmentationProjectInput? = nil, streamConnectProjectInput: StreamConnectProjectInput? = nil, recordReplayProjectInput: RecordReplayProjectInput? = nil, mediaCastProjectInput: MediaCastProjectInput? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        self.createProject(.init(platform: platform, name: name, owner: owner, category: category, mode: mode, aspectRatio: aspectRatio, description: description, switcherProjectInput: switcherProjectInput, liveStreamClipProjectInput: liveStreamClipProjectInput, videoEditProjectInput: videoEditProjectInput, videoSegmentationProjectInput: videoSegmentationProjectInput, streamConnectProjectInput: streamConnectProjectInput, recordReplayProjectInput: recordReplayProjectInput, mediaCastProjectInput: mediaCastProjectInput), region: region, logger: logger, on: eventLoop)
    }

    /// 创建项目
    ///
    /// 创建多媒体创作引擎项目，目前支持的项目类型有：
    /// <li>视频剪辑项目：用于普通视频剪辑；</li>
    /// <li>直播剪辑项目：用于直播流剪辑；</li>
    /// <li>导播台项目：用于云导播台；</li>
    /// <li>视频拆条：用于视频拆条；</li>
    /// <li>录制回放项目：用于直播录制回放；</li>
    /// <li>云转推项目：用于直播云转推。</li>
    /// <li>点播转直播项目：用于点播文件转直播输出。</li>
    @inlinable
    public func createProject(platform: String, name: String, owner: Entity, category: String, mode: String? = nil, aspectRatio: String? = nil, description: String? = nil, switcherProjectInput: SwitcherProjectInput? = nil, liveStreamClipProjectInput: LiveStreamClipProjectInput? = nil, videoEditProjectInput: VideoEditProjectInput? = nil, videoSegmentationProjectInput: VideoSegmentationProjectInput? = nil, streamConnectProjectInput: StreamConnectProjectInput? = nil, recordReplayProjectInput: RecordReplayProjectInput? = nil, mediaCastProjectInput: MediaCastProjectInput? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        try await self.createProject(.init(platform: platform, name: name, owner: owner, category: category, mode: mode, aspectRatio: aspectRatio, description: description, switcherProjectInput: switcherProjectInput, liveStreamClipProjectInput: liveStreamClipProjectInput, videoEditProjectInput: videoEditProjectInput, videoSegmentationProjectInput: videoSegmentationProjectInput, streamConnectProjectInput: streamConnectProjectInput, recordReplayProjectInput: recordReplayProjectInput, mediaCastProjectInput: mediaCastProjectInput), region: region, logger: logger, on: eventLoop)
    }
}
