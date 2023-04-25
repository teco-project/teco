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

extension Lcic {
    /// ModifyRoom请求参数结构体
    public struct ModifyRoomRequest: TCRequestModel {
        /// 房间ID。
        public let roomId: UInt64

        /// 低代码互动课堂的SdkAppId
        public let sdkAppId: UInt64

        /// 预定的房间开始时间，unix时间戳。直播开始后不允许修改。
        public let startTime: UInt64?

        /// 预定的房间结束时间，unix时间戳。直播开始后不允许修改。
        public let endTime: UInt64?

        /// 老师ID。直播开始后不允许修改。
        public let teacherId: String?

        /// 房间名称。
        public let name: String?

        /// 分辨率。可以有如下取值：
        /// 1 标清
        /// 2 高清
        /// 3 全高清
        /// 直播开始后不允许修改。
        public let resolution: UInt64?

        /// 最大连麦人数（不包括老师）。取值范围[0, 17)
        /// 直播开始后不允许修改。
        public let maxMicNumber: UInt64?

        /// 进入房间时是否自动连麦。可以有以下取值：
        /// 0 不自动连麦（默认值）
        /// 1 自动连麦
        /// 直播开始后不允许修改。
        public let autoMic: UInt64?

        /// 高音质模式。可以有以下取值：
        /// 0 不开启高音质（默认值）
        /// 1 开启高音质
        /// 直播开始后不允许修改。
        public let audioQuality: UInt64?

        /// 房间子类型，可以有以下取值：
        /// videodoc 文档+视频
        /// video 纯视频
        /// coteaching 双师
        /// 直播开始后不允许修改。
        public let subType: String?

        /// 禁止录制。可以有以下取值：
        /// 0 不禁止录制（默认值）
        /// 1 禁止录制
        /// 直播开始后不允许修改。
        public let disableRecord: UInt64?

        /// 助教Id列表。直播开始后不允许修改。
        public let assistants: [String]?

        /// 房间绑定的群组ID
        public let groupId: String?

        public init(roomId: UInt64, sdkAppId: UInt64, startTime: UInt64? = nil, endTime: UInt64? = nil, teacherId: String? = nil, name: String? = nil, resolution: UInt64? = nil, maxMicNumber: UInt64? = nil, autoMic: UInt64? = nil, audioQuality: UInt64? = nil, subType: String? = nil, disableRecord: UInt64? = nil, assistants: [String]? = nil, groupId: String? = nil) {
            self.roomId = roomId
            self.sdkAppId = sdkAppId
            self.startTime = startTime
            self.endTime = endTime
            self.teacherId = teacherId
            self.name = name
            self.resolution = resolution
            self.maxMicNumber = maxMicNumber
            self.autoMic = autoMic
            self.audioQuality = audioQuality
            self.subType = subType
            self.disableRecord = disableRecord
            self.assistants = assistants
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case roomId = "RoomId"
            case sdkAppId = "SdkAppId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case teacherId = "TeacherId"
            case name = "Name"
            case resolution = "Resolution"
            case maxMicNumber = "MaxMicNumber"
            case autoMic = "AutoMic"
            case audioQuality = "AudioQuality"
            case subType = "SubType"
            case disableRecord = "DisableRecord"
            case assistants = "Assistants"
            case groupId = "GroupId"
        }
    }

    /// ModifyRoom返回参数结构体
    public struct ModifyRoomResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改房间
    @inlinable @discardableResult
    public func modifyRoom(_ input: ModifyRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRoomResponse> {
        self.client.execute(action: "ModifyRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改房间
    @inlinable @discardableResult
    public func modifyRoom(_ input: ModifyRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRoomResponse {
        try await self.client.execute(action: "ModifyRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改房间
    @inlinable @discardableResult
    public func modifyRoom(roomId: UInt64, sdkAppId: UInt64, startTime: UInt64? = nil, endTime: UInt64? = nil, teacherId: String? = nil, name: String? = nil, resolution: UInt64? = nil, maxMicNumber: UInt64? = nil, autoMic: UInt64? = nil, audioQuality: UInt64? = nil, subType: String? = nil, disableRecord: UInt64? = nil, assistants: [String]? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRoomResponse> {
        self.modifyRoom(.init(roomId: roomId, sdkAppId: sdkAppId, startTime: startTime, endTime: endTime, teacherId: teacherId, name: name, resolution: resolution, maxMicNumber: maxMicNumber, autoMic: autoMic, audioQuality: audioQuality, subType: subType, disableRecord: disableRecord, assistants: assistants, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改房间
    @inlinable @discardableResult
    public func modifyRoom(roomId: UInt64, sdkAppId: UInt64, startTime: UInt64? = nil, endTime: UInt64? = nil, teacherId: String? = nil, name: String? = nil, resolution: UInt64? = nil, maxMicNumber: UInt64? = nil, autoMic: UInt64? = nil, audioQuality: UInt64? = nil, subType: String? = nil, disableRecord: UInt64? = nil, assistants: [String]? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRoomResponse {
        try await self.modifyRoom(.init(roomId: roomId, sdkAppId: sdkAppId, startTime: startTime, endTime: endTime, teacherId: teacherId, name: name, resolution: resolution, maxMicNumber: maxMicNumber, autoMic: autoMic, audioQuality: audioQuality, subType: subType, disableRecord: disableRecord, assistants: assistants, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
