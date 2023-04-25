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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Tag {
    /// GetTags请求参数结构体
    public struct GetTagsRequest: TCPaginatedRequest {
        /// 从上一页的响应中获取的下一页的Token值。
        /// 如果是第一次请求，设置为空。
        public let paginationToken: String?

        /// 每一页返回的数据最大条数，最大1000。
        /// 缺省值：50。
        public let maxResults: UInt64?

        /// 标签键。
        /// 返回所有标签键列表对应的标签。
        /// 最大长度：20
        public let tagKeys: [String]?

        public init(paginationToken: String? = nil, maxResults: UInt64? = nil, tagKeys: [String]? = nil) {
            self.paginationToken = paginationToken
            self.maxResults = maxResults
            self.tagKeys = tagKeys
        }

        enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case maxResults = "MaxResults"
            case tagKeys = "TagKeys"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetTagsResponse) -> GetTagsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetTagsRequest(paginationToken: response.paginationToken, maxResults: self.maxResults, tagKeys: self.tagKeys)
        }
    }

    /// GetTags返回参数结构体
    public struct GetTagsResponse: TCPaginatedResponse {
        /// 获取的下一页的Token值
        public let paginationToken: String

        /// 标签列表。
        public let tags: [Tag]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case tags = "Tags"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Tag] {
            self.tags
        }
    }

    /// 获取标签列表
    ///
    /// 用于获取已建立的标签列表。
    @inlinable
    public func getTags(_ input: GetTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTagsResponse> {
        self.client.execute(action: "GetTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取标签列表
    ///
    /// 用于获取已建立的标签列表。
    @inlinable
    public func getTags(_ input: GetTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTagsResponse {
        try await self.client.execute(action: "GetTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取标签列表
    ///
    /// 用于获取已建立的标签列表。
    @inlinable
    public func getTags(paginationToken: String? = nil, maxResults: UInt64? = nil, tagKeys: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTagsResponse> {
        self.getTags(.init(paginationToken: paginationToken, maxResults: maxResults, tagKeys: tagKeys), region: region, logger: logger, on: eventLoop)
    }

    /// 获取标签列表
    ///
    /// 用于获取已建立的标签列表。
    @inlinable
    public func getTags(paginationToken: String? = nil, maxResults: UInt64? = nil, tagKeys: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTagsResponse {
        try await self.getTags(.init(paginationToken: paginationToken, maxResults: maxResults, tagKeys: tagKeys), region: region, logger: logger, on: eventLoop)
    }

    /// 获取标签列表
    ///
    /// 用于获取已建立的标签列表。
    @inlinable
    public func getTagsPaginated(_ input: GetTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [Tag])> {
        self.client.paginate(input: input, region: region, command: self.getTags, logger: logger, on: eventLoop)
    }

    /// 获取标签列表
    ///
    /// 用于获取已建立的标签列表。
    @inlinable @discardableResult
    public func getTagsPaginated(_ input: GetTagsRequest, region: TCRegion? = nil, onResponse: @escaping (GetTagsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getTags, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取标签列表
    ///
    /// 用于获取已建立的标签列表。
    ///
    /// - Returns: `AsyncSequence`s of `Tag` and `GetTagsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func getTagsPaginator(_ input: GetTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetTagsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getTags, logger: logger, on: eventLoop)
    }
}
