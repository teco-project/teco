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
    /// 创建游戏服务器会话队列
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（CreateGameServerSessionQueue）用于创建游戏服务器会话队列。
    @inlinable
    public func createGameServerSessionQueue(_ input: CreateGameServerSessionQueueRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateGameServerSessionQueueResponse > {
        self.client.execute(action: "CreateGameServerSessionQueue", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建游戏服务器会话队列
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（CreateGameServerSessionQueue）用于创建游戏服务器会话队列。
    @inlinable
    public func createGameServerSessionQueue(_ input: CreateGameServerSessionQueueRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGameServerSessionQueueResponse {
        try await self.client.execute(action: "CreateGameServerSessionQueue", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateGameServerSessionQueue请求参数结构体
    public struct CreateGameServerSessionQueueRequest: TCRequestModel {
        /// 游戏服务器会话队列名称，长度1~128
        public let name: String
        
        /// 目的服务器舰队（可为别名）列表
        public let destinations: [GameServerSessionQueueDestination]?
        
        /// 延迟策略集合
        public let playerLatencyPolicies: [PlayerLatencyPolicy]?
        
        /// 超时时间（单位秒，默认值为600秒）
        public let timeoutInSeconds: UInt64?
        
        /// 标签列表，最大长度50组
        public let tags: [Tag]?
        
        public init (name: String, destinations: [GameServerSessionQueueDestination]?, playerLatencyPolicies: [PlayerLatencyPolicy]?, timeoutInSeconds: UInt64?, tags: [Tag]?) {
            self.name = name
            self.destinations = destinations
            self.playerLatencyPolicies = playerLatencyPolicies
            self.timeoutInSeconds = timeoutInSeconds
            self.tags = tags
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case destinations = "Destinations"
            case playerLatencyPolicies = "PlayerLatencyPolicies"
            case timeoutInSeconds = "TimeoutInSeconds"
            case tags = "Tags"
        }
    }
    
    /// CreateGameServerSessionQueue返回参数结构体
    public struct CreateGameServerSessionQueueResponse: TCResponseModel {
        /// 游戏服务器会话队列
        public let gameServerSessionQueue: GameServerSessionQueue
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case gameServerSessionQueue = "GameServerSessionQueue"
            case requestId = "RequestId"
        }
    }
}