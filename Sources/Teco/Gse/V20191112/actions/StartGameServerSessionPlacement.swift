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

import TecoCore

extension Gse {
    /// StartGameServerSessionPlacement请求参数结构体
    public struct StartGameServerSessionPlacementRequest: TCRequestModel {
        /// 开始部署游戏服务器会话的唯一标识符，最大值48个ASCII字符，模式：[a-zA-Z0-9-]+
        public let placementId: String

        /// 游戏服务器会话队列名称
        public let gameServerSessionQueueName: String

        /// 游戏服务器允许同时连接到游戏会话的最大玩家数量，最小值1，最大值为玩家会话最大限额
        public let maximumPlayerSessionCount: UInt64

        /// 玩家游戏会话信息
        public let desiredPlayerSessions: [DesiredPlayerSession]?

        /// 玩家游戏会话属性
        public let gameProperties: [GameProperty]?

        /// 游戏服务器会话数据，最大长度不超过4096个ASCII字符
        public let gameServerSessionData: String?

        /// 游戏服务器会话名称，最大长度不超过4096个ASCII字符
        public let gameServerSessionName: String?

        /// 玩家延迟
        public let playerLatencies: [PlayerLatency]?

        public init(placementId: String, gameServerSessionQueueName: String, maximumPlayerSessionCount: UInt64, desiredPlayerSessions: [DesiredPlayerSession]? = nil, gameProperties: [GameProperty]? = nil, gameServerSessionData: String? = nil, gameServerSessionName: String? = nil, playerLatencies: [PlayerLatency]? = nil) {
            self.placementId = placementId
            self.gameServerSessionQueueName = gameServerSessionQueueName
            self.maximumPlayerSessionCount = maximumPlayerSessionCount
            self.desiredPlayerSessions = desiredPlayerSessions
            self.gameProperties = gameProperties
            self.gameServerSessionData = gameServerSessionData
            self.gameServerSessionName = gameServerSessionName
            self.playerLatencies = playerLatencies
        }

        enum CodingKeys: String, CodingKey {
            case placementId = "PlacementId"
            case gameServerSessionQueueName = "GameServerSessionQueueName"
            case maximumPlayerSessionCount = "MaximumPlayerSessionCount"
            case desiredPlayerSessions = "DesiredPlayerSessions"
            case gameProperties = "GameProperties"
            case gameServerSessionData = "GameServerSessionData"
            case gameServerSessionName = "GameServerSessionName"
            case playerLatencies = "PlayerLatencies"
        }
    }

    /// StartGameServerSessionPlacement返回参数结构体
    public struct StartGameServerSessionPlacementResponse: TCResponseModel {
        /// 游戏服务器会话放置
        public let gameServerSessionPlacement: GameServerSessionPlacement

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case gameServerSessionPlacement = "GameServerSessionPlacement"
            case requestId = "RequestId"
        }
    }

    /// 开始放置游戏服务器会话
    ///
    /// 本接口（StartGameServerSessionPlacement）用于开始放置游戏服务器会话。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func startGameServerSessionPlacement(_ input: StartGameServerSessionPlacementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartGameServerSessionPlacementResponse> {
        fatalError("StartGameServerSessionPlacement is no longer available.")
    }

    /// 开始放置游戏服务器会话
    ///
    /// 本接口（StartGameServerSessionPlacement）用于开始放置游戏服务器会话。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func startGameServerSessionPlacement(_ input: StartGameServerSessionPlacementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartGameServerSessionPlacementResponse {
        fatalError("StartGameServerSessionPlacement is no longer available.")
    }

    /// 开始放置游戏服务器会话
    ///
    /// 本接口（StartGameServerSessionPlacement）用于开始放置游戏服务器会话。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func startGameServerSessionPlacement(placementId: String, gameServerSessionQueueName: String, maximumPlayerSessionCount: UInt64, desiredPlayerSessions: [DesiredPlayerSession]? = nil, gameProperties: [GameProperty]? = nil, gameServerSessionData: String? = nil, gameServerSessionName: String? = nil, playerLatencies: [PlayerLatency]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartGameServerSessionPlacementResponse> {
        fatalError("StartGameServerSessionPlacement is no longer available.")
    }

    /// 开始放置游戏服务器会话
    ///
    /// 本接口（StartGameServerSessionPlacement）用于开始放置游戏服务器会话。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func startGameServerSessionPlacement(placementId: String, gameServerSessionQueueName: String, maximumPlayerSessionCount: UInt64, desiredPlayerSessions: [DesiredPlayerSession]? = nil, gameProperties: [GameProperty]? = nil, gameServerSessionData: String? = nil, gameServerSessionName: String? = nil, playerLatencies: [PlayerLatency]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartGameServerSessionPlacementResponse {
        fatalError("StartGameServerSessionPlacement is no longer available.")
    }
}
