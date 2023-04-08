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

extension Lcic {
    /// DeleteRoom请求参数结构体
    public struct DeleteRoomRequest: TCRequestModel {
        /// 房间ID。
        public let roomId: UInt64

        public init(roomId: UInt64) {
            self.roomId = roomId
        }

        enum CodingKeys: String, CodingKey {
            case roomId = "RoomId"
        }
    }

    /// DeleteRoom返回参数结构体
    public struct DeleteRoomResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除房间
    @inlinable @discardableResult
    public func deleteRoom(_ input: DeleteRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRoomResponse> {
        self.client.execute(action: "DeleteRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除房间
    @inlinable @discardableResult
    public func deleteRoom(_ input: DeleteRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRoomResponse {
        try await self.client.execute(action: "DeleteRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除房间
    @inlinable @discardableResult
    public func deleteRoom(roomId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRoomResponse> {
        self.deleteRoom(.init(roomId: roomId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除房间
    @inlinable @discardableResult
    public func deleteRoom(roomId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRoomResponse {
        try await self.deleteRoom(.init(roomId: roomId), region: region, logger: logger, on: eventLoop)
    }
}
