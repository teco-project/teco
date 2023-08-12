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

extension Tag {
    /// DescribeTagsSeq请求参数结构体
    public struct DescribeTagsSeqRequest: TCPaginatedRequest {
        /// 标签键,与标签值同时存在或同时不存在，不存在时表示查询该用户所有标签
        public let tagKey: String?

        /// 标签值,与标签键同时存在或同时不存在，不存在时表示查询该用户所有标签
        public let tagValue: String?

        /// 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        public let offset: UInt64?

        /// 每页大小，默认为 15
        public let limit: UInt64?

        /// 创建者用户 Uin，不传或为空只将 Uin 作为条件查询
        public let createUin: UInt64?

        /// 标签键数组,与标签值同时存在或同时不存在，不存在时表示查询该用户所有标签,当与TagKey同时传递时只取本值
        public let tagKeys: [String]?

        /// 是否展现项目标签
        public let showProject: UInt64?

        public init(tagKey: String? = nil, tagValue: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, createUin: UInt64? = nil, tagKeys: [String]? = nil, showProject: UInt64? = nil) {
            self.tagKey = tagKey
            self.tagValue = tagValue
            self.offset = offset
            self.limit = limit
            self.createUin = createUin
            self.tagKeys = tagKeys
            self.showProject = showProject
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
            case offset = "Offset"
            case limit = "Limit"
            case createUin = "CreateUin"
            case tagKeys = "TagKeys"
            case showProject = "ShowProject"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTagsSeqResponse) -> DescribeTagsSeqRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTagsSeqRequest(tagKey: self.tagKey, tagValue: self.tagValue, offset: (self.offset ?? 0) + response.limit, limit: self.limit, createUin: self.createUin, tagKeys: self.tagKeys, showProject: self.showProject)
        }
    }

    /// DescribeTagsSeq返回参数结构体
    public struct DescribeTagsSeqResponse: TCPaginatedResponse {
        /// 结果总数
        public let totalCount: UInt64

        /// 数据位移偏量
        public let offset: UInt64

        /// 每页大小
        public let limit: UInt64

        /// 标签列表
        public let tags: [TagWithDelete]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case offset = "Offset"
            case limit = "Limit"
            case tags = "Tags"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TagWithDelete`` list from the paginated response.
        public func getItems() -> [TagWithDelete] {
            self.tags
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 按顺序查询标签列表
    ///
    /// 用于查询已建立的标签列表。
    @inlinable
    public func describeTagsSeq(_ input: DescribeTagsSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagsSeqResponse> {
        self.client.execute(action: "DescribeTagsSeq", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 按顺序查询标签列表
    ///
    /// 用于查询已建立的标签列表。
    @inlinable
    public func describeTagsSeq(_ input: DescribeTagsSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagsSeqResponse {
        try await self.client.execute(action: "DescribeTagsSeq", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 按顺序查询标签列表
    ///
    /// 用于查询已建立的标签列表。
    @inlinable
    public func describeTagsSeq(tagKey: String? = nil, tagValue: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, createUin: UInt64? = nil, tagKeys: [String]? = nil, showProject: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagsSeqResponse> {
        self.describeTagsSeq(.init(tagKey: tagKey, tagValue: tagValue, offset: offset, limit: limit, createUin: createUin, tagKeys: tagKeys, showProject: showProject), region: region, logger: logger, on: eventLoop)
    }

    /// 按顺序查询标签列表
    ///
    /// 用于查询已建立的标签列表。
    @inlinable
    public func describeTagsSeq(tagKey: String? = nil, tagValue: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, createUin: UInt64? = nil, tagKeys: [String]? = nil, showProject: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagsSeqResponse {
        try await self.describeTagsSeq(.init(tagKey: tagKey, tagValue: tagValue, offset: offset, limit: limit, createUin: createUin, tagKeys: tagKeys, showProject: showProject), region: region, logger: logger, on: eventLoop)
    }

    /// 按顺序查询标签列表
    ///
    /// 用于查询已建立的标签列表。
    @inlinable
    public func describeTagsSeqPaginated(_ input: DescribeTagsSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TagWithDelete])> {
        self.client.paginate(input: input, region: region, command: self.describeTagsSeq, logger: logger, on: eventLoop)
    }

    /// 按顺序查询标签列表
    ///
    /// 用于查询已建立的标签列表。
    @inlinable @discardableResult
    public func describeTagsSeqPaginated(_ input: DescribeTagsSeqRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTagsSeqResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTagsSeq, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 按顺序查询标签列表
    ///
    /// 用于查询已建立的标签列表。
    ///
    /// - Returns: `AsyncSequence`s of `TagWithDelete` and `DescribeTagsSeqResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTagsSeqPaginator(_ input: DescribeTagsSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTagsSeqRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTagsSeq, logger: logger, on: eventLoop)
    }
}
