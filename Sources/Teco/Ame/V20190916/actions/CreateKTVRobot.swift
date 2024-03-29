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

extension Ame {
    /// CreateKTVRobot请求参数结构体
    public struct CreateKTVRobotRequest: TCRequest {
        /// RTC厂商类型，取值有：
        /// - TRTC
        public let rtcSystem: String

        /// 进房参数。
        public let joinRoomInput: JoinRoomInput

        /// license基础信息
        public let applicationLicenseInput: ApplicationLicenseInput?

        /// 创建机器人时初始化参数。
        public let syncRobotCommands: [SyncRobotCommand]?

        public init(rtcSystem: String, joinRoomInput: JoinRoomInput, applicationLicenseInput: ApplicationLicenseInput? = nil, syncRobotCommands: [SyncRobotCommand]? = nil) {
            self.rtcSystem = rtcSystem
            self.joinRoomInput = joinRoomInput
            self.applicationLicenseInput = applicationLicenseInput
            self.syncRobotCommands = syncRobotCommands
        }

        enum CodingKeys: String, CodingKey {
            case rtcSystem = "RTCSystem"
            case joinRoomInput = "JoinRoomInput"
            case applicationLicenseInput = "ApplicationLicenseInput"
            case syncRobotCommands = "SyncRobotCommands"
        }
    }

    /// CreateKTVRobot返回参数结构体
    public struct CreateKTVRobotResponse: TCResponse {
        /// 机器人Id。
        public let robotId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case robotId = "RobotId"
            case requestId = "RequestId"
        }
    }

    /// 创建直播互动机器人
    ///
    /// 创建机器人，支持进入 RTC 房间，播放直播互动曲库歌曲。
    @inlinable
    public func createKTVRobot(_ input: CreateKTVRobotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateKTVRobotResponse> {
        self.client.execute(action: "CreateKTVRobot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建直播互动机器人
    ///
    /// 创建机器人，支持进入 RTC 房间，播放直播互动曲库歌曲。
    @inlinable
    public func createKTVRobot(_ input: CreateKTVRobotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateKTVRobotResponse {
        try await self.client.execute(action: "CreateKTVRobot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建直播互动机器人
    ///
    /// 创建机器人，支持进入 RTC 房间，播放直播互动曲库歌曲。
    @inlinable
    public func createKTVRobot(rtcSystem: String, joinRoomInput: JoinRoomInput, applicationLicenseInput: ApplicationLicenseInput? = nil, syncRobotCommands: [SyncRobotCommand]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateKTVRobotResponse> {
        self.createKTVRobot(.init(rtcSystem: rtcSystem, joinRoomInput: joinRoomInput, applicationLicenseInput: applicationLicenseInput, syncRobotCommands: syncRobotCommands), region: region, logger: logger, on: eventLoop)
    }

    /// 创建直播互动机器人
    ///
    /// 创建机器人，支持进入 RTC 房间，播放直播互动曲库歌曲。
    @inlinable
    public func createKTVRobot(rtcSystem: String, joinRoomInput: JoinRoomInput, applicationLicenseInput: ApplicationLicenseInput? = nil, syncRobotCommands: [SyncRobotCommand]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateKTVRobotResponse {
        try await self.createKTVRobot(.init(rtcSystem: rtcSystem, joinRoomInput: joinRoomInput, applicationLicenseInput: applicationLicenseInput, syncRobotCommands: syncRobotCommands), region: region, logger: logger, on: eventLoop)
    }
}
