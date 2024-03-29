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

extension Ame {
    /// SearchKTVMusics请求参数结构体
    public struct SearchKTVMusicsRequest: TCPaginatedRequest {
        /// 搜索关键词
        public let keyWord: String

        /// 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        /// 取值范围：Offset + Limit 不超过5000。
        public let offset: Int64

        /// 分页返回的起始偏移量，默认值：50。将返回第 Offset 到第 Offset+Limit-1 条。
        public let limit: Int64

        /// 排序方式。默认按照匹配度排序
        /// - Sort.Field 可选 CreateTime
        /// - Sort.Order 可选 Desc
        /// - 当 KeyWord 不为空时，Sort.Field 字段无效， 搜索结果将以匹配度排序。
        public let sort: SortBy?

        /// 标签 ID 集合，匹配集合指定所有 ID 。
        /// - 数组长度限制：10。
        public let tagIds: [String]?

        public init(keyWord: String, offset: Int64, limit: Int64, sort: SortBy? = nil, tagIds: [String]? = nil) {
            self.keyWord = keyWord
            self.offset = offset
            self.limit = limit
            self.sort = sort
            self.tagIds = tagIds
        }

        enum CodingKeys: String, CodingKey {
            case keyWord = "KeyWord"
            case offset = "Offset"
            case limit = "Limit"
            case sort = "Sort"
            case tagIds = "TagIds"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: SearchKTVMusicsResponse) -> SearchKTVMusicsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(keyWord: self.keyWord, offset: self.offset + .init(response.getItems().count), limit: self.limit, sort: self.sort, tagIds: self.tagIds)
        }
    }

    /// SearchKTVMusics返回参数结构体
    public struct SearchKTVMusicsResponse: TCPaginatedResponse {
        /// 总记录数
        public let totalCount: Int64

        /// KTV 曲目列表
        public let ktvMusicInfoSet: [KTVMusicBaseInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case ktvMusicInfoSet = "KTVMusicInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``KTVMusicBaseInfo`` list from the paginated response.
        public func getItems() -> [KTVMusicBaseInfo] {
            self.ktvMusicInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 搜索直播互动曲库歌曲
    ///
    /// 根据搜索条件，返回匹配的歌曲列表。
    @inlinable
    public func searchKTVMusics(_ input: SearchKTVMusicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchKTVMusicsResponse> {
        self.client.execute(action: "SearchKTVMusics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索直播互动曲库歌曲
    ///
    /// 根据搜索条件，返回匹配的歌曲列表。
    @inlinable
    public func searchKTVMusics(_ input: SearchKTVMusicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchKTVMusicsResponse {
        try await self.client.execute(action: "SearchKTVMusics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索直播互动曲库歌曲
    ///
    /// 根据搜索条件，返回匹配的歌曲列表。
    @inlinable
    public func searchKTVMusics(keyWord: String, offset: Int64, limit: Int64, sort: SortBy? = nil, tagIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchKTVMusicsResponse> {
        self.searchKTVMusics(.init(keyWord: keyWord, offset: offset, limit: limit, sort: sort, tagIds: tagIds), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索直播互动曲库歌曲
    ///
    /// 根据搜索条件，返回匹配的歌曲列表。
    @inlinable
    public func searchKTVMusics(keyWord: String, offset: Int64, limit: Int64, sort: SortBy? = nil, tagIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchKTVMusicsResponse {
        try await self.searchKTVMusics(.init(keyWord: keyWord, offset: offset, limit: limit, sort: sort, tagIds: tagIds), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索直播互动曲库歌曲
    ///
    /// 根据搜索条件，返回匹配的歌曲列表。
    @inlinable
    public func searchKTVMusicsPaginated(_ input: SearchKTVMusicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [KTVMusicBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.searchKTVMusics, logger: logger, on: eventLoop)
    }

    /// 搜索直播互动曲库歌曲
    ///
    /// 根据搜索条件，返回匹配的歌曲列表。
    @inlinable @discardableResult
    public func searchKTVMusicsPaginated(_ input: SearchKTVMusicsRequest, region: TCRegion? = nil, onResponse: @escaping (SearchKTVMusicsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.searchKTVMusics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 搜索直播互动曲库歌曲
    ///
    /// 根据搜索条件，返回匹配的歌曲列表。
    ///
    /// - Returns: `AsyncSequence`s of ``KTVMusicBaseInfo`` and ``SearchKTVMusicsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func searchKTVMusicsPaginator(_ input: SearchKTVMusicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<SearchKTVMusicsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.searchKTVMusics, logger: logger, on: eventLoop)
    }
}
