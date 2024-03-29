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
    /// EndRoom请求参数结构体
    public struct EndRoomRequest: TCRequest {
        /// 房间ID。
        public let roomId: UInt64

        public init(roomId: UInt64) {
            self.roomId = roomId
        }

        enum CodingKeys: String, CodingKey {
            case roomId = "RoomId"
        }
    }

    /// EndRoom返回参数结构体
    public struct EndRoomResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 结束房间
    ///
    /// 结束房间的直播
    @inlinable @discardableResult
    public func endRoom(_ input: EndRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EndRoomResponse> {
        self.client.execute(action: "EndRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 结束房间
    ///
    /// 结束房间的直播
    @inlinable @discardableResult
    public func endRoom(_ input: EndRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EndRoomResponse {
        try await self.client.execute(action: "EndRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 结束房间
    ///
    /// 结束房间的直播
    @inlinable @discardableResult
    public func endRoom(roomId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EndRoomResponse> {
        self.endRoom(.init(roomId: roomId), region: region, logger: logger, on: eventLoop)
    }

    /// 结束房间
    ///
    /// 结束房间的直播
    @inlinable @discardableResult
    public func endRoom(roomId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EndRoomResponse {
        try await self.endRoom(.init(roomId: roomId), region: region, logger: logger, on: eventLoop)
    }
}
