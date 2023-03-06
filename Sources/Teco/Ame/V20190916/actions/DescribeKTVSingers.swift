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
    /// DescribeKTVSingers请求参数结构体
    public struct DescribeKTVSingersRequest: TCPaginatedRequest {
        /// 歌手id集合，精确匹配歌手id
        /// <li> 数组长度限制10</li>
        public let singerIds: [String]?

        /// 歌手性别集合，不传为全部，精确匹配歌手性别类型，
        /// <li>数组长度限制1</li>
        /// <li>取值范围：直播互动曲库歌手分类信息接口，返回性别分类信息列表中，分类英文名</li>
        public let genders: [String]?

        /// 歌手区域集合，不传为全部，精确匹配歌手区域
        /// <li>数组长度限制10</li>
        /// <li>取值范围：直播互动曲库歌手分类信息接口，返回的区域分类信息列表中，分类英文名</li>
        public let areas: [String]?

        /// 排序方式。默认按照播放数倒序
        /// <li> Sort.Field 可选 PlayCount。</li>
        public let sort: SortBy?

        /// 分页偏移量，默认值：0。
        public let offset: Int64?

        /// 分页返回的记录条数，默认值：50。将返回第 Offset 到第 Offset+Limit-1 条。
        public let limit: Int64?

        public init(singerIds: [String]? = nil, genders: [String]? = nil, areas: [String]? = nil, sort: SortBy? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.singerIds = singerIds
            self.genders = genders
            self.areas = areas
            self.sort = sort
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case singerIds = "SingerIds"
            case genders = "Genders"
            case areas = "Areas"
            case sort = "Sort"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeKTVSingersResponse) -> DescribeKTVSingersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeKTVSingersRequest(singerIds: self.singerIds, genders: self.genders, areas: self.areas, sort: self.sort, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeKTVSingers返回参数结构体
    public struct DescribeKTVSingersResponse: TCPaginatedResponse {
        /// 总歌手数
        public let totalCount: Int64

        /// KTV歌手列表
        public let ktvSingerInfoSet: [KTVSingerInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case ktvSingerInfoSet = "KTVSingerInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [KTVSingerInfo] {
            self.ktvSingerInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取直播互动曲库歌手
    ///
    /// 根据过滤条件，返回匹配的歌手列表。
    @inlinable
    public func describeKTVSingers(_ input: DescribeKTVSingersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVSingersResponse> {
        self.client.execute(action: "DescribeKTVSingers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库歌手
    ///
    /// 根据过滤条件，返回匹配的歌手列表。
    @inlinable
    public func describeKTVSingers(_ input: DescribeKTVSingersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVSingersResponse {
        try await self.client.execute(action: "DescribeKTVSingers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取直播互动曲库歌手
    ///
    /// 根据过滤条件，返回匹配的歌手列表。
    @inlinable
    public func describeKTVSingers(singerIds: [String]? = nil, genders: [String]? = nil, areas: [String]? = nil, sort: SortBy? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVSingersResponse> {
        let input = DescribeKTVSingersRequest(singerIds: singerIds, genders: genders, areas: areas, sort: sort, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeKTVSingers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库歌手
    ///
    /// 根据过滤条件，返回匹配的歌手列表。
    @inlinable
    public func describeKTVSingers(singerIds: [String]? = nil, genders: [String]? = nil, areas: [String]? = nil, sort: SortBy? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVSingersResponse {
        let input = DescribeKTVSingersRequest(singerIds: singerIds, genders: genders, areas: areas, sort: sort, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeKTVSingers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取直播互动曲库歌手
    ///
    /// 根据过滤条件，返回匹配的歌手列表。
    @inlinable
    public func describeKTVSingersPaginated(_ input: DescribeKTVSingersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [KTVSingerInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeKTVSingers, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库歌手
    ///
    /// 根据过滤条件，返回匹配的歌手列表。
    @inlinable @discardableResult
    public func describeKTVSingersPaginated(_ input: DescribeKTVSingersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeKTVSingersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeKTVSingers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库歌手
    ///
    /// 根据过滤条件，返回匹配的歌手列表。
    ///
    /// - Returns: `AsyncSequence`s of `KTVSingerInfo` and `DescribeKTVSingersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeKTVSingersPaginator(_ input: DescribeKTVSingersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeKTVSingersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeKTVSingers, logger: logger, on: eventLoop)
    }
}
