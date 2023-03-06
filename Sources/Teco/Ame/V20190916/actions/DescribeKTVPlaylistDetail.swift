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

extension Ame {
    /// DescribeKTVPlaylistDetail请求参数结构体
    public struct DescribeKTVPlaylistDetailRequest: TCPaginatedRequest {
        /// 歌单Id
        public let playlistId: String

        /// 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        public let offset: Int64?

        /// 分页返回的记录条数，默认值：50。将返回第 Offset 到第 Offset+Limit-1 条。
        public let limit: Int64?

        public init(playlistId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.playlistId = playlistId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case playlistId = "PlaylistId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeKTVPlaylistDetailResponse) -> DescribeKTVPlaylistDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeKTVPlaylistDetailRequest(playlistId: self.playlistId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeKTVPlaylistDetail返回参数结构体
    public struct DescribeKTVPlaylistDetailResponse: TCPaginatedResponse {
        /// 歌曲基础信息列表
        public let ktvMusicInfoSet: [KTVMusicBaseInfo]

        /// 歌单基础信息
        public let playlistBaseInfo: KTVPlaylistBaseInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ktvMusicInfoSet = "KTVMusicInfoSet"
            case playlistBaseInfo = "PlaylistBaseInfo"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [KTVMusicBaseInfo] {
            self.ktvMusicInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.playlistBaseInfo.musicNum
        }
    }

    /// 获取直播互动曲库推荐歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情，包括歌单的基础信息以及歌曲列表。
    @inlinable
    public func describeKTVPlaylistDetail(_ input: DescribeKTVPlaylistDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVPlaylistDetailResponse> {
        self.client.execute(action: "DescribeKTVPlaylistDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库推荐歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情，包括歌单的基础信息以及歌曲列表。
    @inlinable
    public func describeKTVPlaylistDetail(_ input: DescribeKTVPlaylistDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVPlaylistDetailResponse {
        try await self.client.execute(action: "DescribeKTVPlaylistDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取直播互动曲库推荐歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情，包括歌单的基础信息以及歌曲列表。
    @inlinable
    public func describeKTVPlaylistDetail(playlistId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVPlaylistDetailResponse> {
        let input = DescribeKTVPlaylistDetailRequest(playlistId: playlistId, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeKTVPlaylistDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库推荐歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情，包括歌单的基础信息以及歌曲列表。
    @inlinable
    public func describeKTVPlaylistDetail(playlistId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVPlaylistDetailResponse {
        let input = DescribeKTVPlaylistDetailRequest(playlistId: playlistId, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeKTVPlaylistDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取直播互动曲库推荐歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情，包括歌单的基础信息以及歌曲列表。
    @inlinable
    public func describeKTVPlaylistDetailPaginated(_ input: DescribeKTVPlaylistDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [KTVMusicBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeKTVPlaylistDetail, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库推荐歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情，包括歌单的基础信息以及歌曲列表。
    @inlinable @discardableResult
    public func describeKTVPlaylistDetailPaginated(_ input: DescribeKTVPlaylistDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeKTVPlaylistDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeKTVPlaylistDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库推荐歌单详情
    ///
    /// 根据歌单 Id 获取歌单详情，包括歌单的基础信息以及歌曲列表。
    @inlinable
    public func describeKTVPlaylistDetailPaginator(_ input: DescribeKTVPlaylistDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeKTVPlaylistDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeKTVPlaylistDetail, logger: logger, on: eventLoop)
    }
}
