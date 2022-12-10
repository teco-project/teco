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
    /// 创建游戏服务器会话
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（CreateGameServerSession）用于创建游戏服务会话。
    @inlinable
    public func createGameServerSession(_ input: CreateGameServerSessionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateGameServerSessionResponse > {
        self.client.execute(action: "CreateGameServerSession", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建游戏服务器会话
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（CreateGameServerSession）用于创建游戏服务会话。
    @inlinable
    public func createGameServerSession(_ input: CreateGameServerSessionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGameServerSessionResponse {
        try await self.client.execute(action: "CreateGameServerSession", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateGameServerSession请求参数结构体
    public struct CreateGameServerSessionRequest: TCRequestModel {
        /// 最大玩家数量，最小值不小于0
        public let maximumPlayerSessionCount: UInt64
        
        /// 别名ID。每个请求需要指定别名ID 或者舰队 ID，如果两个同时指定时，优先选择舰队 ID
        public let aliasId: String?
        
        /// 创建者ID，最大长度不超过1024个ASCII字符
        public let creatorId: String?
        
        /// 舰队ID。每个请求需要指定别名ID 或者舰队 ID，如果两个同时指定时，优先选择舰队 ID
        public let fleetId: String?
        
        /// 游戏属性，最大长度不超过16组
        public let gameProperties: [GameProperty]?
        
        /// 游戏服务器会话属性详情，最大长度不超过4096个ASCII字符
        public let gameServerSessionData: String?
        
        /// 游戏服务器会话自定义ID，最大长度不超过4096个ASCII字符
        public let gameServerSessionId: String?
        
        /// 幂等token，最大长度不超过48个ASCII字符
        public let idempotencyToken: String?
        
        /// 游戏服务器会话名称，最大长度不超过1024个ASCII字符
        public let name: String?
        
        public init (maximumPlayerSessionCount: UInt64, aliasId: String?, creatorId: String?, fleetId: String?, gameProperties: [GameProperty]?, gameServerSessionData: String?, gameServerSessionId: String?, idempotencyToken: String?, name: String?) {
            self.maximumPlayerSessionCount = maximumPlayerSessionCount
            self.aliasId = aliasId
            self.creatorId = creatorId
            self.fleetId = fleetId
            self.gameProperties = gameProperties
            self.gameServerSessionData = gameServerSessionData
            self.gameServerSessionId = gameServerSessionId
            self.idempotencyToken = idempotencyToken
            self.name = name
        }
        
        enum CodingKeys: String, CodingKey {
            case maximumPlayerSessionCount = "MaximumPlayerSessionCount"
            case aliasId = "AliasId"
            case creatorId = "CreatorId"
            case fleetId = "FleetId"
            case gameProperties = "GameProperties"
            case gameServerSessionData = "GameServerSessionData"
            case gameServerSessionId = "GameServerSessionId"
            case idempotencyToken = "IdempotencyToken"
            case name = "Name"
        }
    }
    
    /// CreateGameServerSession返回参数结构体
    public struct CreateGameServerSessionResponse: TCResponseModel {
        /// 游戏服务器会话
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gameServerSession: GameServerSession
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case gameServerSession = "GameServerSession"
            case requestId = "RequestId"
        }
    }
}