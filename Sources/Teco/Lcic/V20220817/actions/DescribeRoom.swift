//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Lcic {
    /// 房间信息
    ///
    /// 获取房间信息
    @inlinable
    public func describeRoom(_ input: DescribeRoomRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRoomResponse > {
        self.client.execute(action: "DescribeRoom", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 房间信息
    ///
    /// 获取房间信息
    @inlinable
    public func describeRoom(_ input: DescribeRoomRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoomResponse {
        try await self.client.execute(action: "DescribeRoom", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRoom请求参数结构体
    public struct DescribeRoomRequest: TCRequestModel {
        /// 房间Id。
        public let roomId: UInt64
        
        public init (roomId: UInt64) {
            self.roomId = roomId
        }
        
        enum CodingKeys: String, CodingKey {
            case roomId = "RoomId"
        }
    }
    
    /// DescribeRoom返回参数结构体
    public struct DescribeRoomResponse: TCResponseModel {
        /// 房间名称。
        public let name: String
        
        /// 预定的房间开始时间，unix时间戳。
        public let startTime: UInt64
        
        /// 预定的房间结束时间，unix时间戳。
        public let endTime: UInt64
        
        /// 老师ID。
        public let teacherId: String
        
        /// 低代码互动课堂的SdkAppId。
        public let sdkAppId: UInt64
        
        /// 分辨率。可以有如下取值：
        /// 1 标清
        /// 2 高清
        /// 3 全高清
        public let resolution: UInt64
        
        /// 最大连麦人数（不包括老师）。取值范围[0, 16]
        public let maxMicNumber: UInt64
        
        /// 进入房间时是否自动连麦。可以有以下取值：
        /// 0 不自动连麦（默认值）
        /// 1 自动连麦
        public let autoMic: UInt64
        
        /// 高音质模式。可以有以下取值：
        /// 0 不开启高音质（默认值）
        /// 1 开启高音质
        public let audioQuality: UInt64
        
        /// 房间子类型，可以有以下取值：
        /// videodoc 文档+视频
        /// video 纯视频
        /// coteaching 双师
        public let subType: String
        
        /// 禁止录制。可以有以下取值：
        /// 0 不禁止录制（默认值）
        /// 1 禁止录制
        public let disableRecord: UInt64
        
        /// 助教Id列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let assistants: [String]?
        
        /// 录制地址。仅在房间结束后存在。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recordUrl: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case teacherId = "TeacherId"
            case sdkAppId = "SdkAppId"
            case resolution = "Resolution"
            case maxMicNumber = "MaxMicNumber"
            case autoMic = "AutoMic"
            case audioQuality = "AudioQuality"
            case subType = "SubType"
            case disableRecord = "DisableRecord"
            case assistants = "Assistants"
            case recordUrl = "RecordUrl"
            case requestId = "RequestId"
        }
    }
}