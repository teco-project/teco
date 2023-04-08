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

extension Yinsuda {
    /// DescribeKTVPlaylistDetail请求参数结构体
    public struct DescribeKTVPlaylistDetailRequest: TCPaginatedRequest {
        /// 应用名称。
        public let appName: String

        /// 用户标识。
        public let userId: String

        /// 歌单 Id。
        public let playlistId: String

        /// 滚动标记。
        public let scrollToken: String?

        /// 返回条数，默认：20，最大：50。
        public let limit: Int64?

        /// 权益过滤，取值有：
        /// <li>Play：可播；</li>
        /// <li>Sing：可唱。</li>
        public let rightFilters: [String]?

        public init(appName: String, userId: String, playlistId: String, scrollToken: String? = nil, limit: Int64? = nil, rightFilters: [String]? = nil) {
            self.appName = appName
            self.userId = userId
            self.playlistId = playlistId
            self.scrollToken = scrollToken
            self.limit = limit
            self.rightFilters = rightFilters
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
            case playlistId = "PlaylistId"
            case scrollToken = "ScrollToken"
            case limit = "Limit"
            case rightFilters = "RightFilters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeKTVPlaylistDetailResponse) -> DescribeKTVPlaylistDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeKTVPlaylistDetailRequest(appName: self.appName, userId: self.userId, playlistId: self.playlistId, scrollToken: response.scrollToken, limit: self.limit, rightFilters: self.rightFilters)
        }
    }

    /// DescribeKTVPlaylistDetail返回参数结构体
    public struct DescribeKTVPlaylistDetailResponse: TCPaginatedResponse {
        /// 歌曲信息列表。
        public let ktvMusicInfoSet: [KTVMusicBaseInfo]

        /// 滚动标记，用于设置下次请求的 ScrollToken 参数。
        public let scrollToken: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ktvMusicInfoSet = "KTVMusicInfoSet"
            case scrollToken = "ScrollToken"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [KTVMusicBaseInfo] {
            self.ktvMusicInfoSet
        }
    }

    /// 获取歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情。
    @inlinable
    public func describeKTVPlaylistDetail(_ input: DescribeKTVPlaylistDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVPlaylistDetailResponse> {
        self.client.execute(action: "DescribeKTVPlaylistDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情。
    @inlinable
    public func describeKTVPlaylistDetail(_ input: DescribeKTVPlaylistDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVPlaylistDetailResponse {
        try await self.client.execute(action: "DescribeKTVPlaylistDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情。
    @inlinable
    public func describeKTVPlaylistDetail(appName: String, userId: String, playlistId: String, scrollToken: String? = nil, limit: Int64? = nil, rightFilters: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVPlaylistDetailResponse> {
        self.describeKTVPlaylistDetail(.init(appName: appName, userId: userId, playlistId: playlistId, scrollToken: scrollToken, limit: limit, rightFilters: rightFilters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情。
    @inlinable
    public func describeKTVPlaylistDetail(appName: String, userId: String, playlistId: String, scrollToken: String? = nil, limit: Int64? = nil, rightFilters: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVPlaylistDetailResponse {
        try await self.describeKTVPlaylistDetail(.init(appName: appName, userId: userId, playlistId: playlistId, scrollToken: scrollToken, limit: limit, rightFilters: rightFilters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情。
    @inlinable
    public func describeKTVPlaylistDetailPaginated(_ input: DescribeKTVPlaylistDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [KTVMusicBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeKTVPlaylistDetail, logger: logger, on: eventLoop)
    }

    /// 获取歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情。
    @inlinable @discardableResult
    public func describeKTVPlaylistDetailPaginated(_ input: DescribeKTVPlaylistDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeKTVPlaylistDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeKTVPlaylistDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情。
    ///
    /// - Returns: `AsyncSequence`s of `KTVMusicBaseInfo` and `DescribeKTVPlaylistDetailResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeKTVPlaylistDetailPaginator(_ input: DescribeKTVPlaylistDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeKTVPlaylistDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeKTVPlaylistDetail, logger: logger, on: eventLoop)
    }
}
