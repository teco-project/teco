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

extension Gse {
    /// DescribePlayerSessions请求参数结构体
    public struct DescribePlayerSessionsRequest: TCPaginatedRequest {
        /// 游戏服务器会话ID，最小长度不小于1个ASCII字符，最大长度不超过48个ASCII字符
        public let gameServerSessionId: String?

        /// 单次查询记录数上限
        public let limit: UInt64?

        /// 页偏移，用于查询下一页，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        public let nextToken: String?

        /// 玩家ID，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        public let playerId: String?

        /// 玩家会话ID，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        public let playerSessionId: String?

        /// 玩家会话状态（RESERVED,ACTIVE,COMPLETED,TIMEDOUT）
        public let playerSessionStatusFilter: String?

        public init(gameServerSessionId: String? = nil, limit: UInt64? = nil, nextToken: String? = nil, playerId: String? = nil, playerSessionId: String? = nil, playerSessionStatusFilter: String? = nil) {
            self.gameServerSessionId = gameServerSessionId
            self.limit = limit
            self.nextToken = nextToken
            self.playerId = playerId
            self.playerSessionId = playerSessionId
            self.playerSessionStatusFilter = playerSessionStatusFilter
        }

        enum CodingKeys: String, CodingKey {
            case gameServerSessionId = "GameServerSessionId"
            case limit = "Limit"
            case nextToken = "NextToken"
            case playerId = "PlayerId"
            case playerSessionId = "PlayerSessionId"
            case playerSessionStatusFilter = "PlayerSessionStatusFilter"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePlayerSessionsResponse) -> DescribePlayerSessionsRequest? {
            guard response.nextToken != nil else {
                return nil
            }
            return .init(gameServerSessionId: self.gameServerSessionId, limit: self.limit, nextToken: response.nextToken, playerId: self.playerId, playerSessionId: self.playerSessionId, playerSessionStatusFilter: self.playerSessionStatusFilter)
        }
    }

    /// DescribePlayerSessions返回参数结构体
    public struct DescribePlayerSessionsResponse: TCPaginatedResponse {
        /// 玩家会话列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let playerSessions: [PlayerSession]?

        /// 页偏移，用于查询下一页，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextToken: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case playerSessions = "PlayerSessions"
            case nextToken = "NextToken"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PlayerSession`` list from the paginated response.
        public func getItems() -> [PlayerSession] {
            self.playerSessions ?? []
        }
    }

    /// 查询玩家会话列表
    ///
    /// 本接口（DescribePlayerSessions）用于获取玩家会话列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describePlayerSessions(_ input: DescribePlayerSessionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePlayerSessionsResponse> {
        fatalError("'DescribePlayerSessions' is no longer available.")
    }

    /// 查询玩家会话列表
    ///
    /// 本接口（DescribePlayerSessions）用于获取玩家会话列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describePlayerSessions(_ input: DescribePlayerSessionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePlayerSessionsResponse {
        fatalError("'DescribePlayerSessions' is no longer available.")
    }

    /// 查询玩家会话列表
    ///
    /// 本接口（DescribePlayerSessions）用于获取玩家会话列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describePlayerSessions(gameServerSessionId: String? = nil, limit: UInt64? = nil, nextToken: String? = nil, playerId: String? = nil, playerSessionId: String? = nil, playerSessionStatusFilter: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePlayerSessionsResponse> {
        fatalError("'DescribePlayerSessions' is no longer available.")
    }

    /// 查询玩家会话列表
    ///
    /// 本接口（DescribePlayerSessions）用于获取玩家会话列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describePlayerSessions(gameServerSessionId: String? = nil, limit: UInt64? = nil, nextToken: String? = nil, playerId: String? = nil, playerSessionId: String? = nil, playerSessionStatusFilter: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePlayerSessionsResponse {
        fatalError("'DescribePlayerSessions' is no longer available.")
    }

    /// 查询玩家会话列表
    ///
    /// 本接口（DescribePlayerSessions）用于获取玩家会话列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describePlayerSessionsPaginated(_ input: DescribePlayerSessionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [PlayerSession])> {
        fatalError("'DescribePlayerSessions' is no longer available.")
    }

    /// 查询玩家会话列表
    ///
    /// 本接口（DescribePlayerSessions）用于获取玩家会话列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func describePlayerSessionsPaginated(_ input: DescribePlayerSessionsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePlayerSessionsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("'DescribePlayerSessions' is no longer available.")
    }

    /// 查询玩家会话列表
    ///
    /// 本接口（DescribePlayerSessions）用于获取玩家会话列表。
    ///
    /// - Returns: `AsyncSequence`s of ``PlayerSession`` and ``DescribePlayerSessionsResponse`` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describePlayerSessionsPaginator(_ input: DescribePlayerSessionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePlayerSessionsRequest> {
        fatalError("'DescribePlayerSessions' is no longer available.")
    }
}
