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

extension Bizlive {
    /// CreateSession请求参数结构体
    public struct CreateSessionRequest: TCRequest {
        /// 客户端session信息，从JSSDK请求中获得
        public let clientSession: String

        /// 游戏ID
        public let gameId: String

        /// 游戏用户ID
        public let userId: String

        /// 游戏参数
        public let gameParas: String?

        /// 游戏区域
        public let gameRegion: String?

        /// 背景图url
        public let imageUrl: String?

        /// 分辨率
        public let resolution: String?

        public init(clientSession: String, gameId: String, userId: String, gameParas: String? = nil, gameRegion: String? = nil, imageUrl: String? = nil, resolution: String? = nil) {
            self.clientSession = clientSession
            self.gameId = gameId
            self.userId = userId
            self.gameParas = gameParas
            self.gameRegion = gameRegion
            self.imageUrl = imageUrl
            self.resolution = resolution
        }

        enum CodingKeys: String, CodingKey {
            case clientSession = "ClientSession"
            case gameId = "GameId"
            case userId = "UserId"
            case gameParas = "GameParas"
            case gameRegion = "GameRegion"
            case imageUrl = "ImageUrl"
            case resolution = "Resolution"
        }
    }

    /// CreateSession返回参数结构体
    public struct CreateSessionResponse: TCResponse {
        /// 服务端session信息，返回给JSSDK
        public let serverSession: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serverSession = "ServerSession"
            case requestId = "RequestId"
        }
    }

    /// 创建会话
    @inlinable
    public func createSession(_ input: CreateSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSessionResponse> {
        self.client.execute(action: "CreateSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建会话
    @inlinable
    public func createSession(_ input: CreateSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSessionResponse {
        try await self.client.execute(action: "CreateSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建会话
    @inlinable
    public func createSession(clientSession: String, gameId: String, userId: String, gameParas: String? = nil, gameRegion: String? = nil, imageUrl: String? = nil, resolution: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSessionResponse> {
        self.createSession(.init(clientSession: clientSession, gameId: gameId, userId: userId, gameParas: gameParas, gameRegion: gameRegion, imageUrl: imageUrl, resolution: resolution), region: region, logger: logger, on: eventLoop)
    }

    /// 创建会话
    @inlinable
    public func createSession(clientSession: String, gameId: String, userId: String, gameParas: String? = nil, gameRegion: String? = nil, imageUrl: String? = nil, resolution: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSessionResponse {
        try await self.createSession(.init(clientSession: clientSession, gameId: gameId, userId: userId, gameParas: gameParas, gameRegion: gameRegion, imageUrl: imageUrl, resolution: resolution), region: region, logger: logger, on: eventLoop)
    }
}
