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

import TecoPaginationHelpers

extension Gse {
    /// DescribeGameServerSessions请求参数结构体
    public struct DescribeGameServerSessionsRequest: TCPaginatedRequest {
        /// 别名ID
        public let aliasId: String?

        /// 舰队ID
        public let fleetId: String?

        /// 游戏服务器会话ID，最小长度不小于1个ASCII字符，最大长度不超过48个ASCII字符
        public let gameServerSessionId: String?

        /// 单次查询记录数上限
        public let limit: UInt64?

        /// 页偏移，用于查询下一页，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        public let nextToken: String?

        /// 游戏服务器会话状态(ACTIVE,ACTIVATING,TERMINATED,TERMINATING,ERROR)
        public let statusFilter: String?

        public init(aliasId: String? = nil, fleetId: String? = nil, gameServerSessionId: String? = nil, limit: UInt64? = nil, nextToken: String? = nil, statusFilter: String? = nil) {
            self.aliasId = aliasId
            self.fleetId = fleetId
            self.gameServerSessionId = gameServerSessionId
            self.limit = limit
            self.nextToken = nextToken
            self.statusFilter = statusFilter
        }

        enum CodingKeys: String, CodingKey {
            case aliasId = "AliasId"
            case fleetId = "FleetId"
            case gameServerSessionId = "GameServerSessionId"
            case limit = "Limit"
            case nextToken = "NextToken"
            case statusFilter = "StatusFilter"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGameServerSessionsResponse) -> DescribeGameServerSessionsRequest? {
            guard response.nextToken != nil else {
                return nil
            }
            return DescribeGameServerSessionsRequest(aliasId: self.aliasId, fleetId: self.fleetId, gameServerSessionId: self.gameServerSessionId, limit: self.limit, nextToken: response.nextToken, statusFilter: self.statusFilter)
        }
    }

    /// DescribeGameServerSessions返回参数结构体
    public struct DescribeGameServerSessionsResponse: TCPaginatedResponse {
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

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [GameServerSession] {
            self.gameServerSessions ?? []
        }
    }

    /// 查询游戏服务器会话列表
    ///
    /// 本接口（DescribeGameServerSessions）用于查询游戏服务器会话列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeGameServerSessions(_ input: DescribeGameServerSessionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGameServerSessionsResponse> {
        self.client.execute(action: "DescribeGameServerSessions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询游戏服务器会话列表
    ///
    /// 本接口（DescribeGameServerSessions）用于查询游戏服务器会话列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeGameServerSessions(_ input: DescribeGameServerSessionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGameServerSessionsResponse {
        try await self.client.execute(action: "DescribeGameServerSessions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询游戏服务器会话列表
    ///
    /// 本接口（DescribeGameServerSessions）用于查询游戏服务器会话列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeGameServerSessions(aliasId: String? = nil, fleetId: String? = nil, gameServerSessionId: String? = nil, limit: UInt64? = nil, nextToken: String? = nil, statusFilter: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGameServerSessionsResponse> {
        let input = DescribeGameServerSessionsRequest(aliasId: aliasId, fleetId: fleetId, gameServerSessionId: gameServerSessionId, limit: limit, nextToken: nextToken, statusFilter: statusFilter)
        return self.client.execute(action: "DescribeGameServerSessions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询游戏服务器会话列表
    ///
    /// 本接口（DescribeGameServerSessions）用于查询游戏服务器会话列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeGameServerSessions(aliasId: String? = nil, fleetId: String? = nil, gameServerSessionId: String? = nil, limit: UInt64? = nil, nextToken: String? = nil, statusFilter: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGameServerSessionsResponse {
        let input = DescribeGameServerSessionsRequest(aliasId: aliasId, fleetId: fleetId, gameServerSessionId: gameServerSessionId, limit: limit, nextToken: nextToken, statusFilter: statusFilter)
        return try await self.client.execute(action: "DescribeGameServerSessions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
