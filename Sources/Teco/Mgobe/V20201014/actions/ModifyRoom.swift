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
    /// ModifyRoom请求参数结构体
    public struct ModifyRoomRequest: TCRequestModel {
        /// 游戏资源Id。
        public let gameId: String

        /// 房间ID。
        public let roomId: String

        /// 发起者的PlayerId。
        public let playerId: String

        /// 需要修改的房间选项，0表示房间名称，1表示房主，2表示是否允许观战，3表示是否支持邀请码/密码，4表示是否私有，5表示是否自定义房间属性，6表示是否禁止加人。
        public let changeRoomOptionList: [Int64]

        /// 房间名称。
        public let roomName: String?

        /// 变更房主。
        public let owner: String?

        /// 是否支持观战。
        public let isViewed: Bool?

        /// 是否支持邀请码/密码。
        public let isInvited: Bool?

        /// 是否私有。
        public let isPrivate: Bool?

        /// 自定义房间属性。
        public let customProperties: String?

        /// 房间是否禁止加人。
        public let isForbidJoin: Bool?

        public init(gameId: String, roomId: String, playerId: String, changeRoomOptionList: [Int64], roomName: String? = nil, owner: String? = nil, isViewed: Bool? = nil, isInvited: Bool? = nil, isPrivate: Bool? = nil, customProperties: String? = nil, isForbidJoin: Bool? = nil) {
            self.gameId = gameId
            self.roomId = roomId
            self.playerId = playerId
            self.changeRoomOptionList = changeRoomOptionList
            self.roomName = roomName
            self.owner = owner
            self.isViewed = isViewed
            self.isInvited = isInvited
            self.isPrivate = isPrivate
            self.customProperties = customProperties
            self.isForbidJoin = isForbidJoin
        }

        enum CodingKeys: String, CodingKey {
            case gameId = "GameId"
            case roomId = "RoomId"
            case playerId = "PlayerId"
            case changeRoomOptionList = "ChangeRoomOptionList"
            case roomName = "RoomName"
            case owner = "Owner"
            case isViewed = "IsViewed"
            case isInvited = "IsInvited"
            case isPrivate = "IsPrivate"
            case customProperties = "CustomProperties"
            case isForbidJoin = "IsForbidJoin"
        }
    }

    /// ModifyRoom返回参数结构体
    public struct ModifyRoomResponse: TCResponseModel {
        /// 房间信息
        public let room: Room

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case room = "Room"
            case requestId = "RequestId"
        }
    }

    /// 修改房间
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func modifyRoom(_ input: ModifyRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRoomResponse> {
        self.client.execute(action: "ModifyRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改房间
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func modifyRoom(_ input: ModifyRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRoomResponse {
        try await self.client.execute(action: "ModifyRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改房间
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func modifyRoom(gameId: String, roomId: String, playerId: String, changeRoomOptionList: [Int64], roomName: String? = nil, owner: String? = nil, isViewed: Bool? = nil, isInvited: Bool? = nil, isPrivate: Bool? = nil, customProperties: String? = nil, isForbidJoin: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRoomResponse> {
        let input = ModifyRoomRequest(gameId: gameId, roomId: roomId, playerId: playerId, changeRoomOptionList: changeRoomOptionList, roomName: roomName, owner: owner, isViewed: isViewed, isInvited: isInvited, isPrivate: isPrivate, customProperties: customProperties, isForbidJoin: isForbidJoin)
        return self.client.execute(action: "ModifyRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改房间
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func modifyRoom(gameId: String, roomId: String, playerId: String, changeRoomOptionList: [Int64], roomName: String? = nil, owner: String? = nil, isViewed: Bool? = nil, isInvited: Bool? = nil, isPrivate: Bool? = nil, customProperties: String? = nil, isForbidJoin: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRoomResponse {
        let input = ModifyRoomRequest(gameId: gameId, roomId: roomId, playerId: playerId, changeRoomOptionList: changeRoomOptionList, roomName: roomName, owner: owner, isViewed: isViewed, isInvited: isInvited, isPrivate: isPrivate, customProperties: customProperties, isForbidJoin: isForbidJoin)
        return try await self.client.execute(action: "ModifyRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
