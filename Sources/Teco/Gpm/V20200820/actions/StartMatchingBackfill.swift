//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Gpm {
    /// StartMatchingBackfill请求参数结构体
    public struct StartMatchingBackfillRequest: TCRequestModel {
        /// 匹配code
        public let matchCode: String
        
        /// 玩家信息
        public let players: [Player]
        
        /// 游戏服务器回话 ID [1-256] 个ASCII 字符
        public let gameServerSessionId: String
        
        /// 匹配票据 Id 默认 "" 为空则由 GPM 自动生成 长度 [1, 128]
        public let matchTicketId: String?
        
        public init (matchCode: String, players: [Player], gameServerSessionId: String, matchTicketId: String? = nil) {
            self.matchCode = matchCode
            self.players = players
            self.gameServerSessionId = gameServerSessionId
            self.matchTicketId = matchTicketId
        }
        
        enum CodingKeys: String, CodingKey {
            case matchCode = "MatchCode"
            case players = "Players"
            case gameServerSessionId = "GameServerSessionId"
            case matchTicketId = "MatchTicketId"
        }
    }
    
    /// StartMatchingBackfill返回参数结构体
    public struct StartMatchingBackfillResponse: TCResponseModel {
        /// 匹配票据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let matchTicket: MatchTicket?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case matchTicket = "MatchTicket"
            case requestId = "RequestId"
        }
    }
    
    /// 发起回填匹配
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 通过调用StartMatchingBackfill，用户可以传入一个回填的匹配请求，GPM为回填请求搜索符合条件的ticket并形成一个新的match。
    @inlinable
    public func startMatchingBackfill(_ input: StartMatchingBackfillRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StartMatchingBackfillResponse > {
        self.client.execute(action: "StartMatchingBackfill", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 发起回填匹配
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 通过调用StartMatchingBackfill，用户可以传入一个回填的匹配请求，GPM为回填请求搜索符合条件的ticket并形成一个新的match。
    @inlinable
    public func startMatchingBackfill(_ input: StartMatchingBackfillRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartMatchingBackfillResponse {
        try await self.client.execute(action: "StartMatchingBackfill", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
