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

extension Trtc {
    /// DescribeUserEvent请求参数结构体
    public struct DescribeUserEventRequest: TCRequest {
        /// 通话 ID（唯一标识一次通话）： SdkAppId_RoomId（房间号）_ CreateTime（房间创建时间，unix时间戳，单位为s）例：1400xxxxxx_218695_1590065777。通过 DescribeRoomInfo（查询历史房间列表）接口获取（[查询历史房间列表](https://cloud.tencent.com/document/product/647/44050)）。
        public let commId: String

        /// 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）
        /// 注意：支持查询14天内的数据
        public let startTime: UInt64

        /// 查询结束时间，本地unix时间戳，单位为秒（如：1590065877）
        /// 注意：查询时间大于房间结束时间，以房间结束时间为准。
        public let endTime: UInt64

        /// 用户UserId
        public let userId: String

        /// 房间号（如：223）
        public let roomId: String

        /// 用户SdkAppId（如：1400xxxxxx）
        public let sdkAppId: UInt64

        public init(commId: String, startTime: UInt64, endTime: UInt64, userId: String, roomId: String, sdkAppId: UInt64) {
            self.commId = commId
            self.startTime = startTime
            self.endTime = endTime
            self.userId = userId
            self.roomId = roomId
            self.sdkAppId = sdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case commId = "CommId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case userId = "UserId"
            case roomId = "RoomId"
            case sdkAppId = "SdkAppId"
        }
    }

    /// DescribeUserEvent返回参数结构体
    public struct DescribeUserEventResponse: TCResponse {
        /// 返回的事件列表，若没有数据，会返回空数组。
        public let data: [EventList]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询详细事件
    ///
    /// 查询用户某次通话内的进退房，视频开关等详细事件。可查询14天内数据。（同接口DescribeDetailEvent）
    @inlinable
    public func describeUserEvent(_ input: DescribeUserEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserEventResponse> {
        self.client.execute(action: "DescribeUserEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询详细事件
    ///
    /// 查询用户某次通话内的进退房，视频开关等详细事件。可查询14天内数据。（同接口DescribeDetailEvent）
    @inlinable
    public func describeUserEvent(_ input: DescribeUserEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserEventResponse {
        try await self.client.execute(action: "DescribeUserEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询详细事件
    ///
    /// 查询用户某次通话内的进退房，视频开关等详细事件。可查询14天内数据。（同接口DescribeDetailEvent）
    @inlinable
    public func describeUserEvent(commId: String, startTime: UInt64, endTime: UInt64, userId: String, roomId: String, sdkAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserEventResponse> {
        self.describeUserEvent(.init(commId: commId, startTime: startTime, endTime: endTime, userId: userId, roomId: roomId, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询详细事件
    ///
    /// 查询用户某次通话内的进退房，视频开关等详细事件。可查询14天内数据。（同接口DescribeDetailEvent）
    @inlinable
    public func describeUserEvent(commId: String, startTime: UInt64, endTime: UInt64, userId: String, roomId: String, sdkAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserEventResponse {
        try await self.describeUserEvent(.init(commId: commId, startTime: startTime, endTime: endTime, userId: userId, roomId: roomId, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
