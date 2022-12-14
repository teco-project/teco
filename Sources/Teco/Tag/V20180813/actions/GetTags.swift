//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tag {
    /// GetTags请求参数结构体
    public struct GetTagsRequest: TCRequestModel {
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
    }

    /// GetTags返回参数结构体
    public struct GetTagsResponse: TCResponseModel {
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
    }

    /// 获取标签列表
    ///
    /// 用于获取已建立的标签列表。
    @inlinable
    public func getTags(_ input: GetTagsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetTagsResponse > {
        self.client.execute(action: "GetTags", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取标签列表
    ///
    /// 用于获取已建立的标签列表。
    @inlinable
    public func getTags(_ input: GetTagsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTagsResponse {
        try await self.client.execute(action: "GetTags", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取标签列表
    ///
    /// 用于获取已建立的标签列表。
    @inlinable
    public func getTags(paginationToken: String? = nil, maxResults: UInt64? = nil, tagKeys: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetTagsResponse > {
        self.getTags(GetTagsRequest(paginationToken: paginationToken, maxResults: maxResults, tagKeys: tagKeys), logger: logger, on: eventLoop)
    }

    /// 获取标签列表
    ///
    /// 用于获取已建立的标签列表。
    @inlinable
    public func getTags(paginationToken: String? = nil, maxResults: UInt64? = nil, tagKeys: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTagsResponse {
        try await self.getTags(GetTagsRequest(paginationToken: paginationToken, maxResults: maxResults, tagKeys: tagKeys), logger: logger, on: eventLoop)
    }
}
