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

extension Tdmq {
    /// DescribeCmqTopics请求参数结构体
    public struct DescribeCmqTopicsRequest: TCPaginatedRequest {
        /// 分页时本页获取队列列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0
        public let offset: UInt64?

        /// 分页时本页获取队列的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        public let limit: UInt64?

        /// 根据TopicName进行模糊搜索
        public let topicName: String?

        /// CMQ 主题名称列表过滤
        public let topicNameList: [String]?

        /// 标签过滤查找时，需要设置为 true
        public let isTagFilter: Bool?

        /// 过滤器。目前支持按标签过滤，标签的Name需要加前缀“tag:”，例如：tag:负责人、tag:环境、tag:业务
        public let filters: [Filter]?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, topicName: String? = nil, topicNameList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.topicName = topicName
            self.topicNameList = topicNameList
            self.isTagFilter = isTagFilter
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case topicName = "TopicName"
            case topicNameList = "TopicNameList"
            case isTagFilter = "IsTagFilter"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeCmqTopicsResponse) -> DescribeCmqTopicsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCmqTopicsRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, topicName: self.topicName, topicNameList: self.topicNameList, isTagFilter: self.isTagFilter, filters: self.filters)
        }
    }

    /// DescribeCmqTopics返回参数结构体
    public struct DescribeCmqTopicsResponse: TCPaginatedResponse {
        /// 主题列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topicList: [CmqTopic]?

        /// 全量主题数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case topicList = "TopicList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CmqTopic] {
            self.topicList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 枚举cmq全量主题
    @inlinable
    public func describeCmqTopics(_ input: DescribeCmqTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCmqTopicsResponse> {
        self.client.execute(action: "DescribeCmqTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 枚举cmq全量主题
    @inlinable
    public func describeCmqTopics(_ input: DescribeCmqTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCmqTopicsResponse {
        try await self.client.execute(action: "DescribeCmqTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 枚举cmq全量主题
    @inlinable
    public func describeCmqTopics(offset: UInt64? = nil, limit: UInt64? = nil, topicName: String? = nil, topicNameList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCmqTopicsResponse> {
        let input = DescribeCmqTopicsRequest(offset: offset, limit: limit, topicName: topicName, topicNameList: topicNameList, isTagFilter: isTagFilter, filters: filters)
        return self.client.execute(action: "DescribeCmqTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 枚举cmq全量主题
    @inlinable
    public func describeCmqTopics(offset: UInt64? = nil, limit: UInt64? = nil, topicName: String? = nil, topicNameList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCmqTopicsResponse {
        let input = DescribeCmqTopicsRequest(offset: offset, limit: limit, topicName: topicName, topicNameList: topicNameList, isTagFilter: isTagFilter, filters: filters)
        return try await self.client.execute(action: "DescribeCmqTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 枚举cmq全量主题
    @inlinable
    public func describeCmqTopicsPaginated(_ input: DescribeCmqTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CmqTopic])> {
        self.client.paginate(input: input, region: region, command: self.describeCmqTopics, logger: logger, on: eventLoop)
    }

    /// 枚举cmq全量主题
    @inlinable
    public func describeCmqTopicsPaginated(_ input: DescribeCmqTopicsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCmqTopicsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCmqTopics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 枚举cmq全量主题
    @inlinable
    public func describeCmqTopicsPaginator(_ input: DescribeCmqTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeCmqTopicsRequest, DescribeCmqTopicsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeCmqTopicsRequest, DescribeCmqTopicsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeCmqTopicsRequest, DescribeCmqTopicsResponse>.ResultSequence(input: input, region: region, command: self.describeCmqTopics, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeCmqTopicsRequest, DescribeCmqTopicsResponse>.ResponseSequence(input: input, region: region, command: self.describeCmqTopics, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
