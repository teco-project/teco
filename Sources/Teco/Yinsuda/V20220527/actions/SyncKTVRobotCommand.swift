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

extension Yinsuda {
    /// SyncKTVRobotCommand请求参数结构体
    public struct SyncKTVRobotCommandRequest: TCRequestModel {
        /// 应用名称。
        public let appName: String

        /// 用户标识。
        public let userId: String

        /// 机器人Id。
        public let robotId: String

        /// 指令及指令参数数组。
        public let syncRobotCommands: [SyncRobotCommand]

        public init(appName: String, userId: String, robotId: String, syncRobotCommands: [SyncRobotCommand]) {
            self.appName = appName
            self.userId = userId
            self.robotId = robotId
            self.syncRobotCommands = syncRobotCommands
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
            case robotId = "RobotId"
            case syncRobotCommands = "SyncRobotCommands"
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

    /// 同步机器人指令
    ///
    /// 下发操作机器人指令，支持播放、暂停、恢复、歌单设置等操作指令，实现对机器人行为的控制。
    @inlinable @discardableResult
    public func syncKTVRobotCommand(_ input: SyncKTVRobotCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SyncKTVRobotCommandResponse> {
        self.client.execute(action: "SyncKTVRobotCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 同步机器人指令
    ///
    /// 下发操作机器人指令，支持播放、暂停、恢复、歌单设置等操作指令，实现对机器人行为的控制。
    @inlinable @discardableResult
    public func syncKTVRobotCommand(_ input: SyncKTVRobotCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncKTVRobotCommandResponse {
        try await self.client.execute(action: "SyncKTVRobotCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 同步机器人指令
    ///
    /// 下发操作机器人指令，支持播放、暂停、恢复、歌单设置等操作指令，实现对机器人行为的控制。
    @inlinable @discardableResult
    public func syncKTVRobotCommand(appName: String, userId: String, robotId: String, syncRobotCommands: [SyncRobotCommand], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SyncKTVRobotCommandResponse> {
        self.syncKTVRobotCommand(SyncKTVRobotCommandRequest(appName: appName, userId: userId, robotId: robotId, syncRobotCommands: syncRobotCommands), region: region, logger: logger, on: eventLoop)
    }

    /// 同步机器人指令
    ///
    /// 下发操作机器人指令，支持播放、暂停、恢复、歌单设置等操作指令，实现对机器人行为的控制。
    @inlinable @discardableResult
    public func syncKTVRobotCommand(appName: String, userId: String, robotId: String, syncRobotCommands: [SyncRobotCommand], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncKTVRobotCommandResponse {
        try await self.syncKTVRobotCommand(SyncKTVRobotCommandRequest(appName: appName, userId: userId, robotId: robotId, syncRobotCommands: syncRobotCommands), region: region, logger: logger, on: eventLoop)
    }
}
