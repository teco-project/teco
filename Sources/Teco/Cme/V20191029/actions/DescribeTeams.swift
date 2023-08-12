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
import TecoPaginationHelpers

extension Cme {
    /// DescribeTeams请求参数结构体
    public struct DescribeTeamsRequest: TCPaginatedRequest {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 团队 ID 列表，限30个。若不填，则默认获取平台下所有团队。
        public let teamIds: [String]?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：20，最大值：30。
        public let limit: UInt64?

        public init(platform: String, teamIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.platform = platform
            self.teamIds = teamIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case teamIds = "TeamIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTeamsResponse) -> DescribeTeamsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTeamsRequest(platform: self.platform, teamIds: self.teamIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeTeams返回参数结构体
    public struct DescribeTeamsResponse: TCPaginatedResponse {
        /// 符合条件的记录总数。
        public let totalCount: UInt64

        /// 团队列表。
        public let teamSet: [TeamInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case teamSet = "TeamSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TeamInfo`` list from the paginated response.
        public func getItems() -> [TeamInfo] {
            self.teamSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取团队信息
    ///
    /// 获取指定团队的信息，拉取团队信息列表。
    @inlinable
    public func describeTeams(_ input: DescribeTeamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTeamsResponse> {
        self.client.execute(action: "DescribeTeams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取团队信息
    ///
    /// 获取指定团队的信息，拉取团队信息列表。
    @inlinable
    public func describeTeams(_ input: DescribeTeamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTeamsResponse {
        try await self.client.execute(action: "DescribeTeams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取团队信息
    ///
    /// 获取指定团队的信息，拉取团队信息列表。
    @inlinable
    public func describeTeams(platform: String, teamIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTeamsResponse> {
        self.describeTeams(.init(platform: platform, teamIds: teamIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取团队信息
    ///
    /// 获取指定团队的信息，拉取团队信息列表。
    @inlinable
    public func describeTeams(platform: String, teamIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTeamsResponse {
        try await self.describeTeams(.init(platform: platform, teamIds: teamIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取团队信息
    ///
    /// 获取指定团队的信息，拉取团队信息列表。
    @inlinable
    public func describeTeamsPaginated(_ input: DescribeTeamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TeamInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTeams, logger: logger, on: eventLoop)
    }

    /// 获取团队信息
    ///
    /// 获取指定团队的信息，拉取团队信息列表。
    @inlinable @discardableResult
    public func describeTeamsPaginated(_ input: DescribeTeamsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTeamsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTeams, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取团队信息
    ///
    /// 获取指定团队的信息，拉取团队信息列表。
    ///
    /// - Returns: `AsyncSequence`s of `TeamInfo` and `DescribeTeamsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTeamsPaginator(_ input: DescribeTeamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTeamsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTeams, logger: logger, on: eventLoop)
    }
}
