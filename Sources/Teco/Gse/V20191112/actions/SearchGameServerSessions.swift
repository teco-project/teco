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
    /// 搜索游戏服务器会话列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（SearchGameServerSessions）用于搜索游戏服务器会话列表。
    @inlinable
    public func searchGameServerSessions(_ input: SearchGameServerSessionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SearchGameServerSessionsResponse > {
        self.client.execute(action: "SearchGameServerSessions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 搜索游戏服务器会话列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（SearchGameServerSessions）用于搜索游戏服务器会话列表。
    @inlinable
    public func searchGameServerSessions(_ input: SearchGameServerSessionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchGameServerSessionsResponse {
        try await self.client.execute(action: "SearchGameServerSessions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// SearchGameServerSessions请求参数结构体
    public struct SearchGameServerSessionsRequest: TCRequestModel {
        /// 别名ID
        public let aliasId: String?
        
        /// 舰队ID
        public let fleetId: String?
        
        /// 单次查询记录数上限
        public let limit: UInt64?
        
        /// 页偏移，用于查询下一页，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        public let nextToken: String?
        
        /// 搜索条件表达式，支持如下变量
        /// gameServerSessionName 游戏会话名称 String
        /// gameServerSessionId 游戏会话ID String
        /// maximumSessions 最大的玩家会话数 Number
        /// creationTimeMillis 创建时间，单位：毫秒 Number
        /// playerSessionCount 当前玩家会话数 Number
        /// hasAvailablePlayerSessions 是否有可用玩家数 String 取值true或false
        /// gameServerSessionProperties 游戏会话属性 String
        /// 表达式String类型 等于=，不等于<>判断
        /// 表示Number类型支持 =,<>,>,>=,<,<=
        /// 例如：
        /// FilterExpression取值
        /// playerSessionCount>=2 AND hasAvailablePlayerSessions=true"
        /// 表示查找至少有两个玩家，而且有可用玩家会话的游戏会话。
        /// FilterExpression取值
        /// gameServerSessionProperties.K1 = 'V1' AND gameServerSessionProperties.K2 = 'V2' OR gameServerSessionProperties.K3 = 'V3'
        /// 表示
        /// 查询满足如下游戏服务器会话属性的游戏会话
        /// {
        ///     "GameProperties":[
        ///         {
        ///             "Key":"K1",
        ///             "Value":"V1"
        ///         },
        ///         {
        ///             "Key":"K2",
        ///             "Value":"V2"
        ///         },
        ///         {
        ///             "Key":"K3",
        ///             "Value":"V3"
        ///         }
        ///     ]
        /// }
        public let filterExpression: String?
        
        /// 排序条件关键字
        /// 支持排序字段
        /// gameServerSessionName 游戏会话名称 String
        /// gameServerSessionId 游戏会话ID String
        /// maximumSessions 最大的玩家会话数 Number
        /// creationTimeMillis 创建时间，单位：毫秒 Number
        /// playerSessionCount 当前玩家会话数 Number
        public let sortExpression: String?
        
        public init (aliasId: String?, fleetId: String?, limit: UInt64?, nextToken: String?, filterExpression: String?, sortExpression: String?) {
            self.aliasId = aliasId
            self.fleetId = fleetId
            self.limit = limit
            self.nextToken = nextToken
            self.filterExpression = filterExpression
            self.sortExpression = sortExpression
        }
        
        enum CodingKeys: String, CodingKey {
            case aliasId = "AliasId"
            case fleetId = "FleetId"
            case limit = "Limit"
            case nextToken = "NextToken"
            case filterExpression = "FilterExpression"
            case sortExpression = "SortExpression"
        }
    }
    
    /// SearchGameServerSessions返回参数结构体
    public struct SearchGameServerSessionsResponse: TCResponseModel {
        /// 游戏服务器会话列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gameServerSessions: [GameServerSession]?
        
        /// 页偏移，用于查询下一页，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextToken: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case gameServerSessions = "GameServerSessions"
            case nextToken = "NextToken"
            case requestId = "RequestId"
        }
    }
}