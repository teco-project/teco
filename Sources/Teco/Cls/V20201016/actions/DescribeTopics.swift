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

extension Cls {
    /// DescribeTopics请求参数结构体
    public struct DescribeTopicsRequest: TCPaginatedRequest {
        /// <li> topicName按照【日志主题名称】进行过滤，默认为模糊匹配，可使用PreciseSearch参数设置为精确匹配。类型：String必选：否
        ///
        /// <li> logsetName按照【日志集名称】进行过滤，默认为模糊匹配，可使用PreciseSearch参数设置为精确匹配。类型：String必选：否
        ///
        /// <li> topicId按照【日志主题ID】进行过滤。类型：String必选：否
        ///
        /// <li> logsetId按照【日志集ID】进行过滤，可通过调用DescribeLogsets查询已创建的日志集列表或登录控制台进行查看；也可以调用CreateLogset创建新的日志集。类型：String必选：否
        ///
        /// <li> tagKey按照【标签键】进行过滤。类型：String必选：否
        ///
        /// <li> tag:tagKey按照【标签键值对】进行过滤。tagKey使用具体的标签键进行替换，例如tag:exampleKey。类型：String必选：否
        ///
        /// <li> storageType按照【日志主题的存储类型】进行过滤。可选值 hot（标准存储），cold（低频存储）类型：String必选：否每次请求的Filters的上限为10，Filter.Values的上限为100。
        public let filters: [Filter]?

        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        /// 分页单页限制数目，默认值为20，最大值100。
        public let limit: Int64?

        /// 控制Filters相关字段是否为精确匹配。
        /// - 0: 默认值，topicName和logsetName模糊匹配
        /// - 1: topicName精确匹配
        /// - 2: logsetName精确匹配
        /// - 3: topicName和logsetName都精确匹配
        public let preciseSearch: UInt64?

        /// 主题类型
        /// - 0:日志主题，默认值
        /// - 1:指标主题
        public let bizType: UInt64?

        public init(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, preciseSearch: UInt64? = nil, bizType: UInt64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.preciseSearch = preciseSearch
            self.bizType = bizType
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case preciseSearch = "PreciseSearch"
            case bizType = "BizType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTopicsResponse) -> DescribeTopicsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTopicsRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, preciseSearch: self.preciseSearch, bizType: self.bizType)
        }
    }

    /// DescribeTopics返回参数结构体
    public struct DescribeTopicsResponse: TCPaginatedResponse {
        /// 日志主题列表
        public let topics: [TopicInfo]

        /// 总数目
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case topics = "Topics"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TopicInfo] {
            self.topics
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取日志主题列表
    ///
    /// 本接口用于获取日志主题列表，支持分页
    @inlinable
    public func describeTopics(_ input: DescribeTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicsResponse> {
        self.client.execute(action: "DescribeTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取日志主题列表
    ///
    /// 本接口用于获取日志主题列表，支持分页
    @inlinable
    public func describeTopics(_ input: DescribeTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicsResponse {
        try await self.client.execute(action: "DescribeTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取日志主题列表
    ///
    /// 本接口用于获取日志主题列表，支持分页
    @inlinable
    public func describeTopics(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, preciseSearch: UInt64? = nil, bizType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicsResponse> {
        self.describeTopics(.init(filters: filters, offset: offset, limit: limit, preciseSearch: preciseSearch, bizType: bizType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取日志主题列表
    ///
    /// 本接口用于获取日志主题列表，支持分页
    @inlinable
    public func describeTopics(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, preciseSearch: UInt64? = nil, bizType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicsResponse {
        try await self.describeTopics(.init(filters: filters, offset: offset, limit: limit, preciseSearch: preciseSearch, bizType: bizType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取日志主题列表
    ///
    /// 本接口用于获取日志主题列表，支持分页
    @inlinable
    public func describeTopicsPaginated(_ input: DescribeTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TopicInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTopics, logger: logger, on: eventLoop)
    }

    /// 获取日志主题列表
    ///
    /// 本接口用于获取日志主题列表，支持分页
    @inlinable @discardableResult
    public func describeTopicsPaginated(_ input: DescribeTopicsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTopicsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTopics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取日志主题列表
    ///
    /// 本接口用于获取日志主题列表，支持分页
    ///
    /// - Returns: `AsyncSequence`s of `TopicInfo` and `DescribeTopicsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTopicsPaginator(_ input: DescribeTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTopicsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTopics, logger: logger, on: eventLoop)
    }
}
