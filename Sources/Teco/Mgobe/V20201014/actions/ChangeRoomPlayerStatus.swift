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
    /// ChangeRoomPlayerStatus请求参数结构体
    public struct ChangeRoomPlayerStatusRequest: TCRequestModel {
        /// 游戏资源Id。
        public let gameId: String

        /// 玩家自定义状态。
        public let customStatus: UInt64

        /// 玩家id。
        public let playerId: String

        public init(gameId: String, customStatus: UInt64, playerId: String) {
            self.gameId = gameId
            self.customStatus = customStatus
            self.playerId = playerId
        }

        enum CodingKeys: String, CodingKey {
            case gameId = "GameId"
            case customStatus = "CustomStatus"
            case playerId = "PlayerId"
        }
    }

    /// ChangeRoomPlayerStatus返回参数结构体
    public struct ChangeRoomPlayerStatusResponse: TCResponseModel {
        /// 房间信息
        public let room: Room

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case room = "Room"
            case requestId = "RequestId"
        }
    }

    /// 修改玩家自定义状态
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func changeRoomPlayerStatus(_ input: ChangeRoomPlayerStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeRoomPlayerStatusResponse> {
        fatalError("ChangeRoomPlayerStatus is no longer available.")
    }

    /// 修改玩家自定义状态
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func changeRoomPlayerStatus(_ input: ChangeRoomPlayerStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeRoomPlayerStatusResponse {
        fatalError("ChangeRoomPlayerStatus is no longer available.")
    }

    /// 修改玩家自定义状态
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func changeRoomPlayerStatus(gameId: String, customStatus: UInt64, playerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeRoomPlayerStatusResponse> {
        fatalError("ChangeRoomPlayerStatus is no longer available.")
    }

    /// 修改玩家自定义状态
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func changeRoomPlayerStatus(gameId: String, customStatus: UInt64, playerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeRoomPlayerStatusResponse {
        fatalError("ChangeRoomPlayerStatus is no longer available.")
    }
}
