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

import TecoCore
import TecoPaginationHelpers

extension Cmq {
    /// DescribeTopicDetail请求参数结构体
    public struct DescribeTopicDetailRequest: TCPaginatedRequest {
        /// 分页时本页获取队列列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0。
        public let offset: UInt64?

        /// 分页时本页获取队列的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        public let limit: UInt64?

        /// 目前只支持过滤TopicName ， 且只能填一个过滤值。
        public let filters: [Filter]?

        /// 标签匹配。
        public let tagKey: String?

        /// 精确匹配TopicName。
        public let topicName: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, tagKey: String? = nil, topicName: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.tagKey = tagKey
            self.topicName = topicName
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case tagKey = "TagKey"
            case topicName = "TopicName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTopicDetailResponse) -> DescribeTopicDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTopicDetailRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, tagKey: self.tagKey, topicName: self.topicName)
        }
    }

    /// DescribeTopicDetail返回参数结构体
    public struct DescribeTopicDetailResponse: TCPaginatedResponse {
        /// 主题列表总数。
        public let totalCount: UInt64

        /// 主题详情列表。
        public let topicSet: [TopicSet]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case topicSet = "TopicSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TopicSet] {
            self.topicSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询主题详情
    @inlinable
    public func describeTopicDetail(_ input: DescribeTopicDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicDetailResponse> {
        self.client.execute(action: "DescribeTopicDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主题详情
    @inlinable
    public func describeTopicDetail(_ input: DescribeTopicDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicDetailResponse {
        try await self.client.execute(action: "DescribeTopicDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询主题详情
    @inlinable
    public func describeTopicDetail(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, tagKey: String? = nil, topicName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicDetailResponse> {
        self.describeTopicDetail(.init(offset: offset, limit: limit, filters: filters, tagKey: tagKey, topicName: topicName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询主题详情
    @inlinable
    public func describeTopicDetail(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, tagKey: String? = nil, topicName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicDetailResponse {
        try await self.describeTopicDetail(.init(offset: offset, limit: limit, filters: filters, tagKey: tagKey, topicName: topicName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询主题详情
    @inlinable
    public func describeTopicDetailPaginated(_ input: DescribeTopicDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TopicSet])> {
        self.client.paginate(input: input, region: region, command: self.describeTopicDetail, logger: logger, on: eventLoop)
    }

    /// 查询主题详情
    @inlinable @discardableResult
    public func describeTopicDetailPaginated(_ input: DescribeTopicDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTopicDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTopicDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询主题详情
    ///
    /// - Returns: `AsyncSequence`s of `TopicSet` and `DescribeTopicDetailResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTopicDetailPaginator(_ input: DescribeTopicDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTopicDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTopicDetail, logger: logger, on: eventLoop)
    }
}
