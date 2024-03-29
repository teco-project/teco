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

extension Gs {
    /// SwitchGameArchive请求参数结构体
    public struct SwitchGameArchiveRequest: TCRequest {
        /// 游戏用户ID
        public let userId: String

        /// 游戏ID
        public let gameId: String

        /// 游戏存档Url
        public let gameArchiveUrl: String?

        /// 游戏相关参数
        public let gameContext: String?

        public init(userId: String, gameId: String, gameArchiveUrl: String? = nil, gameContext: String? = nil) {
            self.userId = userId
            self.gameId = gameId
            self.gameArchiveUrl = gameArchiveUrl
            self.gameContext = gameContext
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case gameId = "GameId"
            case gameArchiveUrl = "GameArchiveUrl"
            case gameContext = "GameContext"
        }
    }

    /// SwitchGameArchive返回参数结构体
    public struct SwitchGameArchiveResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 切换游戏存档
    @inlinable @discardableResult
    public func switchGameArchive(_ input: SwitchGameArchiveRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchGameArchiveResponse> {
        self.client.execute(action: "SwitchGameArchive", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 切换游戏存档
    @inlinable @discardableResult
    public func switchGameArchive(_ input: SwitchGameArchiveRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchGameArchiveResponse {
        try await self.client.execute(action: "SwitchGameArchive", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 切换游戏存档
    @inlinable @discardableResult
    public func switchGameArchive(userId: String, gameId: String, gameArchiveUrl: String? = nil, gameContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchGameArchiveResponse> {
        self.switchGameArchive(.init(userId: userId, gameId: gameId, gameArchiveUrl: gameArchiveUrl, gameContext: gameContext), region: region, logger: logger, on: eventLoop)
    }

    /// 切换游戏存档
    @inlinable @discardableResult
    public func switchGameArchive(userId: String, gameId: String, gameArchiveUrl: String? = nil, gameContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchGameArchiveResponse {
        try await self.switchGameArchive(.init(userId: userId, gameId: gameId, gameArchiveUrl: gameArchiveUrl, gameContext: gameContext), region: region, logger: logger, on: eventLoop)
    }
}
