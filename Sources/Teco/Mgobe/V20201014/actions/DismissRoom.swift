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

extension Mgobe {
    /// DismissRoom请求参数结构体
    public struct DismissRoomRequest: TCRequestModel {
        /// 表示游戏资源唯一 ID, 由后台自动分配, 无法修改。
        public let gameId: String

        /// 表示游戏房间唯一ID。
        public let roomId: String

        public init(gameId: String, roomId: String) {
            self.gameId = gameId
            self.roomId = roomId
        }

        enum CodingKeys: String, CodingKey {
            case gameId = "GameId"
            case roomId = "RoomId"
        }
    }

    /// DismissRoom返回参数结构体
    public struct DismissRoomResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解散房间
    ///
    /// 通过game_id、room_id解散房间
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func dismissRoom(_ input: DismissRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DismissRoomResponse> {
        fatalError("DismissRoom is no longer available.")
    }

    /// 解散房间
    ///
    /// 通过game_id、room_id解散房间
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func dismissRoom(_ input: DismissRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DismissRoomResponse {
        fatalError("DismissRoom is no longer available.")
    }

    /// 解散房间
    ///
    /// 通过game_id、room_id解散房间
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func dismissRoom(gameId: String, roomId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DismissRoomResponse> {
        fatalError("DismissRoom is no longer available.")
    }

    /// 解散房间
    ///
    /// 通过game_id、room_id解散房间
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func dismissRoom(gameId: String, roomId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DismissRoomResponse {
        fatalError("DismissRoom is no longer available.")
    }
}
