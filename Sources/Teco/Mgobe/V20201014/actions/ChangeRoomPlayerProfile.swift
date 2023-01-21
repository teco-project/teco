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
    /// ChangeRoomPlayerProfile请求参数结构体
    public struct ChangeRoomPlayerProfileRequest: TCRequestModel {
        /// 游戏资源Id。
        public let gameId: String

        /// 发起修改的玩家Id。
        public let playerId: String

        /// 需要修改的玩家自定义属性。
        public let customProfile: String

        public init(gameId: String, playerId: String, customProfile: String) {
            self.gameId = gameId
            self.playerId = playerId
            self.customProfile = customProfile
        }

        enum CodingKeys: String, CodingKey {
            case gameId = "GameId"
            case playerId = "PlayerId"
            case customProfile = "CustomProfile"
        }
    }

    /// ChangeRoomPlayerProfile返回参数结构体
    public struct ChangeRoomPlayerProfileResponse: TCResponseModel {
        /// 房间信息。
        public let room: Room

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case room = "Room"
            case requestId = "RequestId"
        }
    }

    /// 修改房间玩家自定义属性
    ///
    /// 此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持
    /// 修改房间玩家自定义属性
    @inlinable
    public func changeRoomPlayerProfile(_ input: ChangeRoomPlayerProfileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeRoomPlayerProfileResponse> {
        self.client.execute(action: "ChangeRoomPlayerProfile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改房间玩家自定义属性
    ///
    /// 此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持
    /// 修改房间玩家自定义属性
    @inlinable
    public func changeRoomPlayerProfile(_ input: ChangeRoomPlayerProfileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeRoomPlayerProfileResponse {
        try await self.client.execute(action: "ChangeRoomPlayerProfile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改房间玩家自定义属性
    ///
    /// 此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持
    /// 修改房间玩家自定义属性
    @inlinable
    public func changeRoomPlayerProfile(gameId: String, playerId: String, customProfile: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeRoomPlayerProfileResponse> {
        self.changeRoomPlayerProfile(ChangeRoomPlayerProfileRequest(gameId: gameId, playerId: playerId, customProfile: customProfile), region: region, logger: logger, on: eventLoop)
    }

    /// 修改房间玩家自定义属性
    ///
    /// 此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持
    /// 修改房间玩家自定义属性
    @inlinable
    public func changeRoomPlayerProfile(gameId: String, playerId: String, customProfile: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeRoomPlayerProfileResponse {
        try await self.changeRoomPlayerProfile(ChangeRoomPlayerProfileRequest(gameId: gameId, playerId: playerId, customProfile: customProfile), region: region, logger: logger, on: eventLoop)
    }
}
