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
    /// 玩家信息详情
    public struct Player: TCInputModel, TCOutputModel {
        /// 玩家 OpenId。最长不超过64个字符。
        public let openId: String

        /// 玩家昵称。最长不超过32个字符。
        public let name: String

        /// 队伍 ID。最长不超过16个字符。
        public let teamId: String

        /// 是否为机器人。
        public let isRobot: Bool

        /// 玩家 PlayerId。出参使用，由后端返回。
        public let playerId: String?

        /// 自定义玩家状态。非负数，最大不超过4294967295。默认为0。
        public let customPlayerStatus: UInt64?

        /// 自定义玩家属性。最长不超过256个字符。默认为空字符串。
        public let customProfile: String?

        public init(openId: String, name: String, teamId: String, isRobot: Bool, playerId: String? = nil, customPlayerStatus: UInt64? = nil, customProfile: String? = nil) {
            self.openId = openId
            self.name = name
            self.teamId = teamId
            self.isRobot = isRobot
            self.playerId = playerId
            self.customPlayerStatus = customPlayerStatus
            self.customProfile = customProfile
        }

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case name = "Name"
            case teamId = "TeamId"
            case isRobot = "IsRobot"
            case playerId = "PlayerId"
            case customPlayerStatus = "CustomPlayerStatus"
            case customProfile = "CustomProfile"
        }
    }

    /// 房间信息详情。
    public struct Room: TCInputModel, TCOutputModel {
        /// 表示房间名称。最长不超过32个字符。
        public let name: String

        /// 表示房间最大玩家数量。最大不超过100人。
        public let maxPlayers: Int64

        /// 表示房主OpenId。最长不超过16个字符。
        public let ownerOpenId: String

        /// 表示是否私有，私有指的是不允许其他玩家通过匹配加入房间。
        public let isPrivate: Bool

        /// 表示玩家详情列表。
        public let players: [Player]

        /// 表示团队属性列表。
        public let teams: [Team]

        /// 表示房间 ID。出参用，由后端返回。
        public let id: String?

        /// 表示房间类型。最长不超过32个字符。
        public let type: String?

        /// 表示创建方式：0.单人主动发起创建房间请求；1.多人在线匹配请求分配房间；2. 直接创建满员房间。调用云API的创房请求默认为3，目前通过云API调用只支持第3种方式。
        public let createType: Int64?

        /// 表示自定义房间属性，不传为空字符串。最长不超过1024个字符。
        public let customProperties: String?

        /// 表示房间帧同步状态。0表示未开始帧同步，1表示已开始帧同步，用于出参。
        public let frameSyncState: Int64?

        /// 表示帧率。由控制台设置，用于出参。
        public let frameRate: Int64?

        /// 表示路由ID。用于出参。
        public let routeId: String?

        /// 表示房间创建的时间戳（单位：秒）。
        public let createTime: Int64?

        /// 表示开始帧同步时的时间戳（单位：秒）,未开始帧同步时返回为0。
        public let startGameTime: Int64?

        /// 表示是否禁止加入房间。出参使用，默认为False，通过SDK的ChangeRoom接口可以修改。
        public let isForbidJoin: Bool?

        /// 表示房主PlayerId。
        public let owner: String?

        public init(name: String, maxPlayers: Int64, ownerOpenId: String, isPrivate: Bool, players: [Player], teams: [Team], id: String? = nil, type: String? = nil, createType: Int64? = nil, customProperties: String? = nil, frameSyncState: Int64? = nil, frameRate: Int64? = nil, routeId: String? = nil, createTime: Int64? = nil, startGameTime: Int64? = nil, isForbidJoin: Bool? = nil, owner: String? = nil) {
            self.name = name
            self.maxPlayers = maxPlayers
            self.ownerOpenId = ownerOpenId
            self.isPrivate = isPrivate
            self.players = players
            self.teams = teams
            self.id = id
            self.type = type
            self.createType = createType
            self.customProperties = customProperties
            self.frameSyncState = frameSyncState
            self.frameRate = frameRate
            self.routeId = routeId
            self.createTime = createTime
            self.startGameTime = startGameTime
            self.isForbidJoin = isForbidJoin
            self.owner = owner
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case maxPlayers = "MaxPlayers"
            case ownerOpenId = "OwnerOpenId"
            case isPrivate = "IsPrivate"
            case players = "Players"
            case teams = "Teams"
            case id = "Id"
            case type = "Type"
            case createType = "CreateType"
            case customProperties = "CustomProperties"
            case frameSyncState = "FrameSyncState"
            case frameRate = "FrameRate"
            case routeId = "RouteId"
            case createTime = "CreateTime"
            case startGameTime = "StartGameTime"
            case isForbidJoin = "IsForbidJoin"
            case owner = "Owner"
        }
    }

    /// 团队属性
    public struct Team: TCInputModel, TCOutputModel {
        /// 队伍ID。最长不超过16个字符。
        public let id: String

        /// 队伍名称。最长不超过32个字符。
        public let name: String

        /// 队伍最小人数。最大不超过100人。
        public let minPlayers: Int64

        /// 队伍最大人数。最大不超过100人。
        public let maxPlayers: Int64

        public init(id: String, name: String, minPlayers: Int64, maxPlayers: Int64) {
            self.id = id
            self.name = name
            self.minPlayers = minPlayers
            self.maxPlayers = maxPlayers
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case minPlayers = "MinPlayers"
            case maxPlayers = "MaxPlayers"
        }
    }
}
