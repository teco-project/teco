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

extension Ckafka {
    /// DescribeGroupOffsets请求参数结构体
    public struct DescribeGroupOffsetsRequest: TCPaginatedRequest {
        /// （过滤条件）按照实例 ID 过滤
        public let instanceId: String

        /// Kafka 消费分组
        public let group: String

        /// group 订阅的主题名称数组，如果没有该数组，则表示指定的 group 下所有 topic 信息
        public let topics: [String]?

        /// 模糊匹配 topicName
        public let searchWord: String?

        /// 本次查询的偏移位置，默认为0
        public let offset: Int64?

        /// 本次返回结果的最大个数，默认为50，最大值为50
        public let limit: Int64?

        public init(instanceId: String, group: String, topics: [String]? = nil, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.group = group
            self.topics = topics
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case group = "Group"
            case topics = "Topics"
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGroupOffsetsResponse) -> DescribeGroupOffsetsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, group: self.group, topics: self.topics, searchWord: self.searchWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeGroupOffsets返回参数结构体
    public struct DescribeGroupOffsetsResponse: TCPaginatedResponse {
        /// 返回的结果对象
        public let result: GroupOffsetResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``GroupOffsetTopic`` list from the paginated response.
        public func getItems() -> [GroupOffsetTopic] {
            self.result.topicList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 获取消费分组offset
    @inlinable
    public func describeGroupOffsets(_ input: DescribeGroupOffsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupOffsetsResponse> {
        self.client.execute(action: "DescribeGroupOffsets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取消费分组offset
    @inlinable
    public func describeGroupOffsets(_ input: DescribeGroupOffsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupOffsetsResponse {
        try await self.client.execute(action: "DescribeGroupOffsets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取消费分组offset
    @inlinable
    public func describeGroupOffsets(instanceId: String, group: String, topics: [String]? = nil, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupOffsetsResponse> {
        self.describeGroupOffsets(.init(instanceId: instanceId, group: group, topics: topics, searchWord: searchWord, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取消费分组offset
    @inlinable
    public func describeGroupOffsets(instanceId: String, group: String, topics: [String]? = nil, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupOffsetsResponse {
        try await self.describeGroupOffsets(.init(instanceId: instanceId, group: group, topics: topics, searchWord: searchWord, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取消费分组offset
    @inlinable
    public func describeGroupOffsetsPaginated(_ input: DescribeGroupOffsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [GroupOffsetTopic])> {
        self.client.paginate(input: input, region: region, command: self.describeGroupOffsets, logger: logger, on: eventLoop)
    }

    /// 获取消费分组offset
    @inlinable @discardableResult
    public func describeGroupOffsetsPaginated(_ input: DescribeGroupOffsetsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGroupOffsetsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGroupOffsets, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取消费分组offset
    ///
    /// - Returns: `AsyncSequence`s of ``GroupOffsetTopic`` and ``DescribeGroupOffsetsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGroupOffsetsPaginator(_ input: DescribeGroupOffsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGroupOffsetsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGroupOffsets, logger: logger, on: eventLoop)
    }
}
