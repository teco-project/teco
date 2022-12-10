//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Gse {
    /// 批量加入游戏服务器会话
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（JoinGameServerSessionBatch）用于批量加入游戏服务器会话。
    @inlinable
    public func joinGameServerSessionBatch(_ input: JoinGameServerSessionBatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < JoinGameServerSessionBatchResponse > {
        self.client.execute(action: "JoinGameServerSessionBatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量加入游戏服务器会话
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（JoinGameServerSessionBatch）用于批量加入游戏服务器会话。
    @inlinable
    public func joinGameServerSessionBatch(_ input: JoinGameServerSessionBatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> JoinGameServerSessionBatchResponse {
        try await self.client.execute(action: "JoinGameServerSessionBatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// JoinGameServerSessionBatch请求参数结构体
    public struct JoinGameServerSessionBatchRequest: TCRequestModel {
        /// 游戏服务器会话ID，最小长度1个ASCII字符，最大长度不超过256个ASCII字符
        public let gameServerSessionId: String
        
        /// 玩家ID列表，最小1组，最大25组
        public let playerIds: [String]
        
        /// 玩家自定义数据
        public let playerDataMap: PlayerDataMap
        
        public init (gameServerSessionId: String, playerIds: [String], playerDataMap: PlayerDataMap) {
            self.gameServerSessionId = gameServerSessionId
            self.playerIds = playerIds
            self.playerDataMap = playerDataMap
        }
        
        enum CodingKeys: String, CodingKey {
            case gameServerSessionId = "GameServerSessionId"
            case playerIds = "PlayerIds"
            case playerDataMap = "PlayerDataMap"
        }
    }
    
    /// JoinGameServerSessionBatch返回参数结构体
    public struct JoinGameServerSessionBatchResponse: TCResponseModel {
        /// 玩家会话列表，最大25组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let playerSessions: [PlayerSession]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case playerSessions = "PlayerSessions"
            case requestId = "RequestId"
        }
    }
}