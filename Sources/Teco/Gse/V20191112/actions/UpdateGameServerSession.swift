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

extension Gse {
    /// UpdateGameServerSession请求参数结构体
    public struct UpdateGameServerSessionRequest: TCRequestModel {
        /// 游戏服务器会话ID，最小长度1个ASCII字符，最大长度不超过256个ASCII字符
        public let gameServerSessionId: String

        /// 最大玩家数量，最小值不小于0
        public let maximumPlayerSessionCount: UInt64?

        /// 游戏服务器会话名称，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        public let name: String?

        /// 玩家会话创建策略，包括允许所有玩家加入和禁止所有玩家加入（ACCEPT_ALL,DENY_ALL）
        public let playerSessionCreationPolicy: String?

        /// 保护策略，包括不保护、时限保护和完全保护(NoProtection,TimeLimitProtection,FullProtection)
        public let protectionPolicy: String?

        public init(gameServerSessionId: String, maximumPlayerSessionCount: UInt64? = nil, name: String? = nil, playerSessionCreationPolicy: String? = nil, protectionPolicy: String? = nil) {
            self.gameServerSessionId = gameServerSessionId
            self.maximumPlayerSessionCount = maximumPlayerSessionCount
            self.name = name
            self.playerSessionCreationPolicy = playerSessionCreationPolicy
            self.protectionPolicy = protectionPolicy
        }

        enum CodingKeys: String, CodingKey {
            case gameServerSessionId = "GameServerSessionId"
            case maximumPlayerSessionCount = "MaximumPlayerSessionCount"
            case name = "Name"
            case playerSessionCreationPolicy = "PlayerSessionCreationPolicy"
            case protectionPolicy = "ProtectionPolicy"
        }
    }

    /// UpdateGameServerSession返回参数结构体
    public struct UpdateGameServerSessionResponse: TCResponseModel {
        /// 更新后的游戏会话
        public let gameServerSession: GameServerSession

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case gameServerSession = "GameServerSession"
            case requestId = "RequestId"
        }
    }

    /// 更新游戏服务器会话
    ///
    /// 本接口（UpdateGameServerSession）用于更新游戏服务器会话。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func updateGameServerSession(_ input: UpdateGameServerSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGameServerSessionResponse> {
        fatalError("UpdateGameServerSession is no longer available.")
    }

    /// 更新游戏服务器会话
    ///
    /// 本接口（UpdateGameServerSession）用于更新游戏服务器会话。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func updateGameServerSession(_ input: UpdateGameServerSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGameServerSessionResponse {
        fatalError("UpdateGameServerSession is no longer available.")
    }

    /// 更新游戏服务器会话
    ///
    /// 本接口（UpdateGameServerSession）用于更新游戏服务器会话。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func updateGameServerSession(gameServerSessionId: String, maximumPlayerSessionCount: UInt64? = nil, name: String? = nil, playerSessionCreationPolicy: String? = nil, protectionPolicy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGameServerSessionResponse> {
        fatalError("UpdateGameServerSession is no longer available.")
    }

    /// 更新游戏服务器会话
    ///
    /// 本接口（UpdateGameServerSession）用于更新游戏服务器会话。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func updateGameServerSession(gameServerSessionId: String, maximumPlayerSessionCount: UInt64? = nil, name: String? = nil, playerSessionCreationPolicy: String? = nil, protectionPolicy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGameServerSessionResponse {
        fatalError("UpdateGameServerSession is no longer available.")
    }
}
