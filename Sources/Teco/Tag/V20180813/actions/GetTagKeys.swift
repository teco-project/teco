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

extension Tag {
    /// GetTagKeys请求参数结构体
    public struct GetTagKeysRequest: TCPaginatedRequest {
        /// 从上一页的响应中获取的下一页的Token值。
        /// 如果是第一次请求，设置为空。
        public let paginationToken: String?

        /// 每一页返回的数据最大条数，最大1000。
        /// 缺省值：50。
        public let maxResults: UInt64?

        public init(paginationToken: String? = nil, maxResults: UInt64? = nil) {
            self.paginationToken = paginationToken
            self.maxResults = maxResults
        }

        enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case maxResults = "MaxResults"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: GetTagKeysResponse) -> GetTagKeysRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetTagKeysRequest(paginationToken: response.paginationToken, maxResults: self.maxResults)
        }
    }

    /// GetTagKeys返回参数结构体
    public struct GetTagKeysResponse: TCPaginatedResponse {
        /// 获取的下一页的Token值
        public let paginationToken: String

        /// 标签键信息。
        public let tagKeys: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case tagKeys = "TagKeys"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [String] {
            self.tagKeys
        }
    }

    /// 查询标签键列表
    ///
    /// 查询标签键列表。
    @inlinable
    public func getTagKeys(_ input: GetTagKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTagKeysResponse> {
        self.client.execute(action: "GetTagKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询标签键列表
    ///
    /// 查询标签键列表。
    @inlinable
    public func getTagKeys(_ input: GetTagKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTagKeysResponse {
        try await self.client.execute(action: "GetTagKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询标签键列表
    ///
    /// 查询标签键列表。
    @inlinable
    public func getTagKeys(paginationToken: String? = nil, maxResults: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTagKeysResponse> {
        let input = GetTagKeysRequest(paginationToken: paginationToken, maxResults: maxResults)
        return self.client.execute(action: "GetTagKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询标签键列表
    ///
    /// 查询标签键列表。
    @inlinable
    public func getTagKeys(paginationToken: String? = nil, maxResults: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTagKeysResponse {
        let input = GetTagKeysRequest(paginationToken: paginationToken, maxResults: maxResults)
        return try await self.client.execute(action: "GetTagKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询标签键列表
    ///
    /// 查询标签键列表。
    @inlinable
    public func getTagKeysPaginated(_ input: GetTagKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [String])> {
        self.client.paginate(input: input, region: region, command: self.getTagKeys, logger: logger, on: eventLoop)
    }

    /// 查询标签键列表
    ///
    /// 查询标签键列表。
    @inlinable @discardableResult
    public func getTagKeysPaginated(_ input: GetTagKeysRequest, region: TCRegion? = nil, onResponse: @escaping (GetTagKeysResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getTagKeys, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询标签键列表
    ///
    /// 查询标签键列表。
    ///
    /// - Returns: `AsyncSequence`s of `String` and `GetTagKeysResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func getTagKeysPaginator(_ input: GetTagKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetTagKeysRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getTagKeys, logger: logger, on: eventLoop)
    }
}
