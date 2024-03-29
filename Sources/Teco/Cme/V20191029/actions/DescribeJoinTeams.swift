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

extension Cme {
    /// DescribeJoinTeams请求参数结构体
    public struct DescribeJoinTeamsRequest: TCPaginatedRequest {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 团队成员　ID。
        public let memberId: String

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：30，最大值：30。
        public let limit: UInt64?

        public init(platform: String, memberId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.platform = platform
            self.memberId = memberId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case memberId = "MemberId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeJoinTeamsResponse) -> DescribeJoinTeamsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(platform: self.platform, memberId: self.memberId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeJoinTeams返回参数结构体
    public struct DescribeJoinTeamsResponse: TCPaginatedResponse {
        /// 符合条件的记录总数。
        public let totalCount: UInt64

        /// 团队列表。
        public let teamSet: [JoinTeamInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case teamSet = "TeamSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``JoinTeamInfo`` list from the paginated response.
        public func getItems() -> [JoinTeamInfo] {
            self.teamSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取成员加入的团队列表
    ///
    /// 获取用户所加入的团队列表
    @inlinable
    public func describeJoinTeams(_ input: DescribeJoinTeamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJoinTeamsResponse> {
        self.client.execute(action: "DescribeJoinTeams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取成员加入的团队列表
    ///
    /// 获取用户所加入的团队列表
    @inlinable
    public func describeJoinTeams(_ input: DescribeJoinTeamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJoinTeamsResponse {
        try await self.client.execute(action: "DescribeJoinTeams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取成员加入的团队列表
    ///
    /// 获取用户所加入的团队列表
    @inlinable
    public func describeJoinTeams(platform: String, memberId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJoinTeamsResponse> {
        self.describeJoinTeams(.init(platform: platform, memberId: memberId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取成员加入的团队列表
    ///
    /// 获取用户所加入的团队列表
    @inlinable
    public func describeJoinTeams(platform: String, memberId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJoinTeamsResponse {
        try await self.describeJoinTeams(.init(platform: platform, memberId: memberId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取成员加入的团队列表
    ///
    /// 获取用户所加入的团队列表
    @inlinable
    public func describeJoinTeamsPaginated(_ input: DescribeJoinTeamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [JoinTeamInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeJoinTeams, logger: logger, on: eventLoop)
    }

    /// 获取成员加入的团队列表
    ///
    /// 获取用户所加入的团队列表
    @inlinable @discardableResult
    public func describeJoinTeamsPaginated(_ input: DescribeJoinTeamsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeJoinTeamsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeJoinTeams, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取成员加入的团队列表
    ///
    /// 获取用户所加入的团队列表
    ///
    /// - Returns: `AsyncSequence`s of ``JoinTeamInfo`` and ``DescribeJoinTeamsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeJoinTeamsPaginator(_ input: DescribeJoinTeamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeJoinTeamsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeJoinTeams, logger: logger, on: eventLoop)
    }
}
