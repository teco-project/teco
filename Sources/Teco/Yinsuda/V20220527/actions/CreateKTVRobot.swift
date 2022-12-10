//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 创建机器人
    ///
    /// 创建机器人，支持进入 RTC 房间，播放曲库歌曲。
    @inlinable
    public func createKTVRobot(_ input: CreateKTVRobotRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateKTVRobotResponse > {
        self.client.execute(action: "CreateKTVRobot", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建机器人
    ///
    /// 创建机器人，支持进入 RTC 房间，播放曲库歌曲。
    @inlinable
    public func createKTVRobot(_ input: CreateKTVRobotRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateKTVRobotResponse {
        try await self.client.execute(action: "CreateKTVRobot", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateKTVRobot请求参数结构体
    public struct CreateKTVRobotRequest: TCRequestModel {
        /// 应用名称。
        public let appName: String
        
        /// 用户标识。
        public let userId: String
        
        /// RTC厂商类型，取值有：
        /// <li>TRTC</li>
        public let rtcSystem: String
        
        /// 进房参数。
        public let joinRoomInput: JoinRoomInput
        
        /// 创建机器人时初始化参数。
        public let syncRobotCommands: [SyncRobotCommand]?
        
        public init (appName: String, userId: String, rtcSystem: String, joinRoomInput: JoinRoomInput, syncRobotCommands: [SyncRobotCommand]?) {
            self.appName = appName
            self.userId = userId
            self.rtcSystem = rtcSystem
            self.joinRoomInput = joinRoomInput
            self.syncRobotCommands = syncRobotCommands
        }
        
        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
            case rtcSystem = "RTCSystem"
            case joinRoomInput = "JoinRoomInput"
            case syncRobotCommands = "SyncRobotCommands"
        }
    }
    
    /// CreateKTVRobot返回参数结构体
    public struct CreateKTVRobotResponse: TCResponseModel {
        /// 机器人Id。
        public let robotId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case robotId = "RobotId"
            case requestId = "RequestId"
        }
    }
}
