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

extension Yinsuda {
    /// DescribeKTVPlaylists请求参数结构体
    public struct DescribeKTVPlaylistsRequest: TCPaginatedRequest {
        /// 应用名称。
        public let appName: String

        /// 用户标识。
        public let userId: String

        /// 类型列表，取值有：
        /// - OfficialRec：官方推荐；
        /// - Customize：自定义。
        ///
        /// 默认值为 OfficialRec。
        public let types: [String]?

        /// 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        public let offset: Int64?

        /// 分页返回的记录条数，默认值：20，最大值：50。
        public let limit: Int64?

        public init(appName: String, userId: String, types: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.appName = appName
            self.userId = userId
            self.types = types
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
            case types = "Types"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeKTVPlaylistsResponse) -> DescribeKTVPlaylistsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(appName: self.appName, userId: self.userId, types: self.types, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeKTVPlaylists返回参数结构体
    public struct DescribeKTVPlaylistsResponse: TCPaginatedResponse {
        /// 歌单基础信息。
        public let playlistBaseInfoSet: [KTVPlaylistBaseInfo]

        /// 歌单总数。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case playlistBaseInfoSet = "PlaylistBaseInfoSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``KTVPlaylistBaseInfo`` list from the paginated response.
        public func getItems() -> [KTVPlaylistBaseInfo] {
            self.playlistBaseInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取推荐歌单列表
    ///
    /// 获取歌单列表。
    @inlinable
    public func describeKTVPlaylists(_ input: DescribeKTVPlaylistsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVPlaylistsResponse> {
        self.client.execute(action: "DescribeKTVPlaylists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取推荐歌单列表
    ///
    /// 获取歌单列表。
    @inlinable
    public func describeKTVPlaylists(_ input: DescribeKTVPlaylistsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVPlaylistsResponse {
        try await self.client.execute(action: "DescribeKTVPlaylists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取推荐歌单列表
    ///
    /// 获取歌单列表。
    @inlinable
    public func describeKTVPlaylists(appName: String, userId: String, types: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVPlaylistsResponse> {
        self.describeKTVPlaylists(.init(appName: appName, userId: userId, types: types, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取推荐歌单列表
    ///
    /// 获取歌单列表。
    @inlinable
    public func describeKTVPlaylists(appName: String, userId: String, types: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVPlaylistsResponse {
        try await self.describeKTVPlaylists(.init(appName: appName, userId: userId, types: types, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取推荐歌单列表
    ///
    /// 获取歌单列表。
    @inlinable
    public func describeKTVPlaylistsPaginated(_ input: DescribeKTVPlaylistsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [KTVPlaylistBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeKTVPlaylists, logger: logger, on: eventLoop)
    }

    /// 获取推荐歌单列表
    ///
    /// 获取歌单列表。
    @inlinable @discardableResult
    public func describeKTVPlaylistsPaginated(_ input: DescribeKTVPlaylistsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeKTVPlaylistsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeKTVPlaylists, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取推荐歌单列表
    ///
    /// 获取歌单列表。
    ///
    /// - Returns: `AsyncSequence`s of ``KTVPlaylistBaseInfo`` and ``DescribeKTVPlaylistsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeKTVPlaylistsPaginator(_ input: DescribeKTVPlaylistsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeKTVPlaylistsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeKTVPlaylists, logger: logger, on: eventLoop)
    }
}
