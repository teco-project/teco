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

extension Ame {
    /// SyncKTVRobotCommand请求参数结构体
    public struct SyncKTVRobotCommandRequest: TCRequestModel {
        /// 机器人Id。
        public let robotId: String

        /// 指令，取值有：
        /// <li>Play：播放</li>
        /// <li>Pause：暂停</li>
        /// <li>SwitchPrevious：上一首</li>
        /// <li>SwitchNext：下一首</li>
        /// <li>SetPlayMode：设置播放模式</li>
        /// <li>Seek：调整播放进度</li>
        /// <li>SetPlaylist：歌单变更</li>
        /// <li>SetAudioParam：音频参数变更</li>
        /// <li>SendMessage：发送自定义消息</li>
        /// <li>SetDestroyMode：设置销毁模式</li>
        /// <li>SetVolume：设置音量</li>
        public let command: String

        /// 播放参数。
        public let playCommandInput: PlayCommandInput?

        /// 播放列表变更信息，当Command取SetPlaylist时，必填。
        public let setPlaylistCommandInput: SetPlaylistCommandInput?

        /// 播放进度，当Command取Seek时，必填。
        public let seekCommandInput: SeekCommandInput?

        /// 音频参数，当Command取SetAudioParam时，必填。
        public let setAudioParamCommandInput: SetAudioParamCommandInput?

        /// 自定义消息，当Command取SendMessage时，必填。
        public let sendMessageCommandInput: SendMessageCommandInput?

        /// 播放模式，当Command取SetPlayMode时，必填。
        public let setPlayModeCommandInput: SetPlayModeCommandInput?

        /// 销毁模式，当Command取SetDestroyMode时，必填。
        public let setDestroyModeCommandInput: SetDestroyModeCommandInput?

        /// 音量，当Command取SetVolume时，必填。
        public let setVolumeCommandInput: SetVolumeCommandInput?

        public init(robotId: String, command: String, playCommandInput: PlayCommandInput? = nil, setPlaylistCommandInput: SetPlaylistCommandInput? = nil, seekCommandInput: SeekCommandInput? = nil, setAudioParamCommandInput: SetAudioParamCommandInput? = nil, sendMessageCommandInput: SendMessageCommandInput? = nil, setPlayModeCommandInput: SetPlayModeCommandInput? = nil, setDestroyModeCommandInput: SetDestroyModeCommandInput? = nil, setVolumeCommandInput: SetVolumeCommandInput? = nil) {
            self.robotId = robotId
            self.command = command
            self.playCommandInput = playCommandInput
            self.setPlaylistCommandInput = setPlaylistCommandInput
            self.seekCommandInput = seekCommandInput
            self.setAudioParamCommandInput = setAudioParamCommandInput
            self.sendMessageCommandInput = sendMessageCommandInput
            self.setPlayModeCommandInput = setPlayModeCommandInput
            self.setDestroyModeCommandInput = setDestroyModeCommandInput
            self.setVolumeCommandInput = setVolumeCommandInput
        }

        enum CodingKeys: String, CodingKey {
            case robotId = "RobotId"
            case command = "Command"
            case playCommandInput = "PlayCommandInput"
            case setPlaylistCommandInput = "SetPlaylistCommandInput"
            case seekCommandInput = "SeekCommandInput"
            case setAudioParamCommandInput = "SetAudioParamCommandInput"
            case sendMessageCommandInput = "SendMessageCommandInput"
            case setPlayModeCommandInput = "SetPlayModeCommandInput"
            case setDestroyModeCommandInput = "SetDestroyModeCommandInput"
            case setVolumeCommandInput = "SetVolumeCommandInput"
        }
    }

    /// SyncKTVRobotCommand返回参数结构体
    public struct SyncKTVRobotCommandResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 同步直播互动机器人指令
    ///
    /// 下发操作机器人指令，支持播放、暂停、恢复、歌单设置等操作指令，实现对机器人行为的控制。
    @inlinable @discardableResult
    public func syncKTVRobotCommand(_ input: SyncKTVRobotCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SyncKTVRobotCommandResponse> {
        self.client.execute(action: "SyncKTVRobotCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 同步直播互动机器人指令
    ///
    /// 下发操作机器人指令，支持播放、暂停、恢复、歌单设置等操作指令，实现对机器人行为的控制。
    @inlinable @discardableResult
    public func syncKTVRobotCommand(_ input: SyncKTVRobotCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncKTVRobotCommandResponse {
        try await self.client.execute(action: "SyncKTVRobotCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 同步直播互动机器人指令
    ///
    /// 下发操作机器人指令，支持播放、暂停、恢复、歌单设置等操作指令，实现对机器人行为的控制。
    @inlinable @discardableResult
    public func syncKTVRobotCommand(robotId: String, command: String, playCommandInput: PlayCommandInput? = nil, setPlaylistCommandInput: SetPlaylistCommandInput? = nil, seekCommandInput: SeekCommandInput? = nil, setAudioParamCommandInput: SetAudioParamCommandInput? = nil, sendMessageCommandInput: SendMessageCommandInput? = nil, setPlayModeCommandInput: SetPlayModeCommandInput? = nil, setDestroyModeCommandInput: SetDestroyModeCommandInput? = nil, setVolumeCommandInput: SetVolumeCommandInput? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SyncKTVRobotCommandResponse> {
        self.syncKTVRobotCommand(SyncKTVRobotCommandRequest(robotId: robotId, command: command, playCommandInput: playCommandInput, setPlaylistCommandInput: setPlaylistCommandInput, seekCommandInput: seekCommandInput, setAudioParamCommandInput: setAudioParamCommandInput, sendMessageCommandInput: sendMessageCommandInput, setPlayModeCommandInput: setPlayModeCommandInput, setDestroyModeCommandInput: setDestroyModeCommandInput, setVolumeCommandInput: setVolumeCommandInput), region: region, logger: logger, on: eventLoop)
    }

    /// 同步直播互动机器人指令
    ///
    /// 下发操作机器人指令，支持播放、暂停、恢复、歌单设置等操作指令，实现对机器人行为的控制。
    @inlinable @discardableResult
    public func syncKTVRobotCommand(robotId: String, command: String, playCommandInput: PlayCommandInput? = nil, setPlaylistCommandInput: SetPlaylistCommandInput? = nil, seekCommandInput: SeekCommandInput? = nil, setAudioParamCommandInput: SetAudioParamCommandInput? = nil, sendMessageCommandInput: SendMessageCommandInput? = nil, setPlayModeCommandInput: SetPlayModeCommandInput? = nil, setDestroyModeCommandInput: SetDestroyModeCommandInput? = nil, setVolumeCommandInput: SetVolumeCommandInput? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncKTVRobotCommandResponse {
        try await self.syncKTVRobotCommand(SyncKTVRobotCommandRequest(robotId: robotId, command: command, playCommandInput: playCommandInput, setPlaylistCommandInput: setPlaylistCommandInput, seekCommandInput: seekCommandInput, setAudioParamCommandInput: setAudioParamCommandInput, sendMessageCommandInput: sendMessageCommandInput, setPlayModeCommandInput: setPlayModeCommandInput, setDestroyModeCommandInput: setDestroyModeCommandInput, setVolumeCommandInput: setVolumeCommandInput), region: region, logger: logger, on: eventLoop)
    }
}
