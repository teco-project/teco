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
    /// GetRoomMessage请求参数结构体
    public struct GetRoomMessageRequest: TCRequestModel {
        /// 低代码互动课堂的SdkAppId。
        public let sdkAppId: Int64

        /// 房间Id。
        public let roomId: UInt64

        /// 消息序列。获取该序列以前的消息(不包含该seq消息)
        public let seq: Int64?

        /// 消息拉取的条数。最大数量不能超过套餐包限制。
        public let limit: UInt64?

        public init(sdkAppId: Int64, roomId: UInt64, seq: Int64? = nil, limit: UInt64? = nil) {
            self.sdkAppId = sdkAppId
            self.roomId = roomId
            self.seq = seq
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case roomId = "RoomId"
            case seq = "Seq"
            case limit = "Limit"
        }
    }

    /// GetRoomMessage返回参数结构体
    public struct GetRoomMessageResponse: TCResponseModel {
        /// 消息列表
        public let messages: [MessageList]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case messages = "Messages"
            case requestId = "RequestId"
        }
    }

    /// 获取房间历史消息
    ///
    /// 获取房间历史消息(房间历史消息保存7天)
    @inlinable
    public func getRoomMessage(_ input: GetRoomMessageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRoomMessageResponse> {
        self.client.execute(action: "GetRoomMessage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取房间历史消息
    ///
    /// 获取房间历史消息(房间历史消息保存7天)
    @inlinable
    public func getRoomMessage(_ input: GetRoomMessageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRoomMessageResponse {
        try await self.client.execute(action: "GetRoomMessage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取房间历史消息
    ///
    /// 获取房间历史消息(房间历史消息保存7天)
    @inlinable
    public func getRoomMessage(sdkAppId: Int64, roomId: UInt64, seq: Int64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRoomMessageResponse> {
        self.getRoomMessage(.init(sdkAppId: sdkAppId, roomId: roomId, seq: seq, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取房间历史消息
    ///
    /// 获取房间历史消息(房间历史消息保存7天)
    @inlinable
    public func getRoomMessage(sdkAppId: Int64, roomId: UInt64, seq: Int64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRoomMessageResponse {
        try await self.getRoomMessage(.init(sdkAppId: sdkAppId, roomId: roomId, seq: seq, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
