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

extension Lcic {
    /// DescribeRoom请求参数结构体
    public struct DescribeRoomRequest: TCRequest {
        /// 房间Id。
        public let roomId: UInt64

        public init(roomId: UInt64) {
            self.roomId = roomId
        }

        enum CodingKeys: String, CodingKey {
            case roomId = "RoomId"
        }
    }

    /// DescribeRoom返回参数结构体
    public struct DescribeRoomResponse: TCResponse {
        /// 房间名称。
        public let name: String

        /// 预定的房间开始时间，unix时间戳（秒）。
        public let startTime: UInt64

        /// 预定的房间结束时间，unix时间戳（秒）。
        public let endTime: UInt64

        /// 老师的UserId。
        public let teacherId: String

        /// 低代码互动课堂的SdkAppId。
        public let sdkAppId: UInt64

        /// 观看类型。互动观看 （默认）
        public let audienceType: UInt64

        /// 分辨率。可以有如下取值：
        /// 1 标清
        /// 2 高清
        /// 3 全高清
        public let resolution: UInt64

        /// 最大连麦人数（不包括老师）。取值范围[0, 16]
        public let maxMicNumber: UInt64

        /// 进入课堂时是否自动连麦。可以有以下取值：
        /// 0 不自动连麦（需要手动申请上麦，默认值）
        /// 1 自动连麦
        public let autoMic: UInt64

        /// 高音质模式。可以有以下取值：
        /// 0 不开启高音质（默认值）
        /// 1 开启高音质
        public let audioQuality: UInt64

        /// 房间子类型，可以有以下取值：
        /// videodoc 文档+视频
        /// video 纯视频
        public let subType: String

        /// 上课后是否禁止自动录制。可以有以下取值：
        /// 0 不禁止录制（自动开启录制，默认值）
        /// 1 禁止录制
        /// 注：如果该配置取值为0，录制将从上课后开始，课堂结束后停止。
        public let disableRecord: UInt64

        /// 助教UserId列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let assistants: [String]?

        /// 录制地址（协议为https)。仅在房间结束后存在。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recordUrl: String?

        /// 课堂状态。0为未开始，1为已开始，2为已结束，3为已过期。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: UInt64?

        /// 房间绑定的群组ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groupId: String?

        /// 打开学生麦克风/摄像头的授权开关
        public let enableDirectControl: UInt64

        /// 开启专注模式。
        /// 0 收看全部角色音视频(默认)
        /// 1 只看老师和助教
        public let interactionMode: Int64?

        /// 横竖屏。0：横屏开播（默认值）; 1：竖屏开播，当前仅支持移动端的纯视频类型
        public let videoOrientation: UInt64?

        /// 开启课后评分。 0：不开启(默认)  1：开启
        public let isGradingRequiredPostClass: Int64?

        /// 房间类型: 0 小班课（默认值）; 1 大班课; 2 1V1 (后续扩展)
        public let roomType: Int64?

        /// 录制时长
        public let videoDuration: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case teacherId = "TeacherId"
            case sdkAppId = "SdkAppId"
            case audienceType = "AudienceType"
            case resolution = "Resolution"
            case maxMicNumber = "MaxMicNumber"
            case autoMic = "AutoMic"
            case audioQuality = "AudioQuality"
            case subType = "SubType"
            case disableRecord = "DisableRecord"
            case assistants = "Assistants"
            case recordUrl = "RecordUrl"
            case status = "Status"
            case groupId = "GroupId"
            case enableDirectControl = "EnableDirectControl"
            case interactionMode = "InteractionMode"
            case videoOrientation = "VideoOrientation"
            case isGradingRequiredPostClass = "IsGradingRequiredPostClass"
            case roomType = "RoomType"
            case videoDuration = "VideoDuration"
            case requestId = "RequestId"
        }
    }

    /// 获取房间信息
    @inlinable
    public func describeRoom(_ input: DescribeRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoomResponse> {
        self.client.execute(action: "DescribeRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取房间信息
    @inlinable
    public func describeRoom(_ input: DescribeRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoomResponse {
        try await self.client.execute(action: "DescribeRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取房间信息
    @inlinable
    public func describeRoom(roomId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoomResponse> {
        self.describeRoom(.init(roomId: roomId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取房间信息
    @inlinable
    public func describeRoom(roomId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoomResponse {
        try await self.describeRoom(.init(roomId: roomId), region: region, logger: logger, on: eventLoop)
    }
}
