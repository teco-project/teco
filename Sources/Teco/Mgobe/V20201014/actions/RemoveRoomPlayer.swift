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

extension Mgobe {
    /// RemoveRoomPlayer请求参数结构体
    public struct RemoveRoomPlayerRequest: TCRequest {
        /// 游戏资源Id。
        public let gameId: String

        /// 被踢出房间的玩家Id。
        public let removePlayerId: String

        public init(gameId: String, removePlayerId: String) {
            self.gameId = gameId
            self.removePlayerId = removePlayerId
        }

        enum CodingKeys: String, CodingKey {
            case gameId = "GameId"
            case removePlayerId = "RemovePlayerId"
        }
    }

    /// RemoveRoomPlayer返回参数结构体
    public struct RemoveRoomPlayerResponse: TCResponse {
        /// 房间信息
        public let room: Room

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case room = "Room"
            case requestId = "RequestId"
        }
    }

    /// 踢出房间玩家
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func removeRoomPlayer(_ input: RemoveRoomPlayerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveRoomPlayerResponse> {
        fatalError("'RemoveRoomPlayer' is no longer available.")
    }

    /// 踢出房间玩家
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func removeRoomPlayer(_ input: RemoveRoomPlayerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveRoomPlayerResponse {
        fatalError("'RemoveRoomPlayer' is no longer available.")
    }

    /// 踢出房间玩家
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func removeRoomPlayer(gameId: String, removePlayerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveRoomPlayerResponse> {
        fatalError("'RemoveRoomPlayer' is no longer available.")
    }

    /// 踢出房间玩家
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func removeRoomPlayer(gameId: String, removePlayerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveRoomPlayerResponse {
        fatalError("'RemoveRoomPlayer' is no longer available.")
    }
}
