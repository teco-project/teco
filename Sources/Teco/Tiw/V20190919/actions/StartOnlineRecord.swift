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

extension Tiw {
    /// StartOnlineRecord请求参数结构体
    public struct StartOnlineRecordRequest: TCRequest {
        /// 客户的SdkAppId
        public let sdkAppId: Int64

        /// 需要录制的房间号，取值范围: (1, 4294967295)
        public let roomId: Int64

        /// 用于录制服务进房的用户ID，最大长度不能大于60个字节，格式为`tic_record_user_${RoomId}_${Random}`，其中 `${RoomId} `与录制房间号对应，`${Random}`为一个随机字符串。
        /// 该ID必须是一个单独的未在SDK中使用的ID，录制服务使用这个用户ID进入房间进行音视频与白板录制，若该ID和SDK中使用的ID重复，会导致SDK和录制服务互踢，影响正常录制。
        public let recordUserId: String

        /// 与RecordUserId对应的签名
        public let recordUserSig: String

        /// （已废弃，设置无效）白板的 IM 群组 Id，默认同房间号
        public let groupId: String?

        /// 录制视频拼接参数
        public let concat: Concat?

        /// 录制白板参数，例如白板宽高等
        public let whiteboard: Whiteboard?

        /// 录制混流参数
        /// 特别说明：
        /// 1. 混流功能需要根据额外开通， 请联系腾讯云互动白板客服人员
        /// 2. 使用混流功能，必须提供 Extras 参数，且 Extras 参数中必须包含 "MIX_STREAM"
        public let mixStream: MixStream?

        /// 使用到的高级功能列表
        /// 可以选值列表：
        /// MIX_STREAM - 混流功能
        public let extras: [String]?

        /// 是否需要在结果回调中返回各路流的纯音频录制文件，文件格式为mp3
        public let audioFileNeeded: Bool?

        /// 录制控制参数，用于更精细地指定需要录制哪些流，某一路流是否禁用音频，是否只录制小画面等
        public let recordControl: RecordControl?

        /// 录制模式
        ///
        /// REALTIME_MODE - 实时录制模式（默认）
        /// VIDEO_GENERATION_MODE - 视频生成模式（内测中，需邮件申请开通）
        public let recordMode: String?

        /// 聊天群组ID，此字段仅适用于`视频生成模式`
        ///
        /// 在`视频生成模式`下，默认会记录白板群组内的非白板信令消息，如果指定了`ChatGroupId`，则会记录指定群ID的聊天消息。
        public let chatGroupId: String?

        /// 自动停止录制超时时间，单位秒，取值范围[300, 86400], 默认值为300秒。
        ///
        /// 当超过设定时间房间内没有音视频上行且没有白板操作的时候，录制服务会自动停止当前录制任务。
        public let autoStopTimeout: Int64?

        /// 内部参数，可忽略
        public let extraData: String?

        public init(sdkAppId: Int64, roomId: Int64, recordUserId: String, recordUserSig: String, groupId: String? = nil, concat: Concat? = nil, whiteboard: Whiteboard? = nil, mixStream: MixStream? = nil, extras: [String]? = nil, audioFileNeeded: Bool? = nil, recordControl: RecordControl? = nil, recordMode: String? = nil, chatGroupId: String? = nil, autoStopTimeout: Int64? = nil, extraData: String? = nil) {
            self.sdkAppId = sdkAppId
            self.roomId = roomId
            self.recordUserId = recordUserId
            self.recordUserSig = recordUserSig
            self.groupId = groupId
            self.concat = concat
            self.whiteboard = whiteboard
            self.mixStream = mixStream
            self.extras = extras
            self.audioFileNeeded = audioFileNeeded
            self.recordControl = recordControl
            self.recordMode = recordMode
            self.chatGroupId = chatGroupId
            self.autoStopTimeout = autoStopTimeout
            self.extraData = extraData
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case roomId = "RoomId"
            case recordUserId = "RecordUserId"
            case recordUserSig = "RecordUserSig"
            case groupId = "GroupId"
            case concat = "Concat"
            case whiteboard = "Whiteboard"
            case mixStream = "MixStream"
            case extras = "Extras"
            case audioFileNeeded = "AudioFileNeeded"
            case recordControl = "RecordControl"
            case recordMode = "RecordMode"
            case chatGroupId = "ChatGroupId"
            case autoStopTimeout = "AutoStopTimeout"
            case extraData = "ExtraData"
        }
    }

    /// StartOnlineRecord返回参数结构体
    public struct StartOnlineRecordResponse: TCResponse {
        /// 录制任务Id
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 开始实时录制
    ///
    /// 发起一个实时录制任务
    @inlinable
    public func startOnlineRecord(_ input: StartOnlineRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartOnlineRecordResponse> {
        self.client.execute(action: "StartOnlineRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开始实时录制
    ///
    /// 发起一个实时录制任务
    @inlinable
    public func startOnlineRecord(_ input: StartOnlineRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartOnlineRecordResponse {
        try await self.client.execute(action: "StartOnlineRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开始实时录制
    ///
    /// 发起一个实时录制任务
    @inlinable
    public func startOnlineRecord(sdkAppId: Int64, roomId: Int64, recordUserId: String, recordUserSig: String, groupId: String? = nil, concat: Concat? = nil, whiteboard: Whiteboard? = nil, mixStream: MixStream? = nil, extras: [String]? = nil, audioFileNeeded: Bool? = nil, recordControl: RecordControl? = nil, recordMode: String? = nil, chatGroupId: String? = nil, autoStopTimeout: Int64? = nil, extraData: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartOnlineRecordResponse> {
        self.startOnlineRecord(.init(sdkAppId: sdkAppId, roomId: roomId, recordUserId: recordUserId, recordUserSig: recordUserSig, groupId: groupId, concat: concat, whiteboard: whiteboard, mixStream: mixStream, extras: extras, audioFileNeeded: audioFileNeeded, recordControl: recordControl, recordMode: recordMode, chatGroupId: chatGroupId, autoStopTimeout: autoStopTimeout, extraData: extraData), region: region, logger: logger, on: eventLoop)
    }

    /// 开始实时录制
    ///
    /// 发起一个实时录制任务
    @inlinable
    public func startOnlineRecord(sdkAppId: Int64, roomId: Int64, recordUserId: String, recordUserSig: String, groupId: String? = nil, concat: Concat? = nil, whiteboard: Whiteboard? = nil, mixStream: MixStream? = nil, extras: [String]? = nil, audioFileNeeded: Bool? = nil, recordControl: RecordControl? = nil, recordMode: String? = nil, chatGroupId: String? = nil, autoStopTimeout: Int64? = nil, extraData: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartOnlineRecordResponse {
        try await self.startOnlineRecord(.init(sdkAppId: sdkAppId, roomId: roomId, recordUserId: recordUserId, recordUserSig: recordUserSig, groupId: groupId, concat: concat, whiteboard: whiteboard, mixStream: mixStream, extras: extras, audioFileNeeded: audioFileNeeded, recordControl: recordControl, recordMode: recordMode, chatGroupId: chatGroupId, autoStopTimeout: autoStopTimeout, extraData: extraData), region: region, logger: logger, on: eventLoop)
    }
}
