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

extension Gs {
    /// SaveGameArchive请求参数结构体
    public struct SaveGameArchiveRequest: TCRequestModel {
        /// 游戏用户ID
        public let userId: String

        /// 游戏ID
        public let gameId: String

        public init(userId: String, gameId: String) {
            self.userId = userId
            self.gameId = gameId
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case gameId = "GameId"
        }
    }

    /// SaveGameArchive返回参数结构体
    public struct SaveGameArchiveResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 保存游戏存档
    @inlinable @discardableResult
    public func saveGameArchive(_ input: SaveGameArchiveRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SaveGameArchiveResponse> {
        self.client.execute(action: "SaveGameArchive", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 保存游戏存档
    @inlinable @discardableResult
    public func saveGameArchive(_ input: SaveGameArchiveRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SaveGameArchiveResponse {
        try await self.client.execute(action: "SaveGameArchive", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 保存游戏存档
    @inlinable @discardableResult
    public func saveGameArchive(userId: String, gameId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SaveGameArchiveResponse> {
        self.saveGameArchive(.init(userId: userId, gameId: gameId), region: region, logger: logger, on: eventLoop)
    }

    /// 保存游戏存档
    @inlinable @discardableResult
    public func saveGameArchive(userId: String, gameId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SaveGameArchiveResponse {
        try await self.saveGameArchive(.init(userId: userId, gameId: gameId), region: region, logger: logger, on: eventLoop)
    }
}
