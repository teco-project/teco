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

extension Cmq {
    /// DescribeDeadLetterSourceQueues请求参数结构体
    public struct DescribeDeadLetterSourceQueuesRequest: TCPaginatedRequest {
        /// 死信队列名称
        public let deadLetterQueueName: String

        /// 分页时本页获取主题列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0。
        public let limit: UInt64?

        /// 分页时本页获取主题的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        public let offset: UInt64?

        /// 过滤死信队列源队列名称，目前仅支持SourceQueueName过滤
        public let filters: [Filter]?

        public init(deadLetterQueueName: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.deadLetterQueueName = deadLetterQueueName
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case deadLetterQueueName = "DeadLetterQueueName"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDeadLetterSourceQueuesResponse) -> DescribeDeadLetterSourceQueuesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(deadLetterQueueName: self.deadLetterQueueName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeDeadLetterSourceQueues返回参数结构体
    public struct DescribeDeadLetterSourceQueuesResponse: TCPaginatedResponse {
        /// 满足本次条件的队列个数
        public let totalCount: UInt64

        /// 死信队列源队列
        public let queueSet: [DeadLetterSource]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case queueSet = "QueueSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DeadLetterSource`` list from the paginated response.
        public func getItems() -> [DeadLetterSource] {
            self.queueSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 枚举死信队列源队列
    @inlinable
    public func describeDeadLetterSourceQueues(_ input: DescribeDeadLetterSourceQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeadLetterSourceQueuesResponse> {
        self.client.execute(action: "DescribeDeadLetterSourceQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 枚举死信队列源队列
    @inlinable
    public func describeDeadLetterSourceQueues(_ input: DescribeDeadLetterSourceQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeadLetterSourceQueuesResponse {
        try await self.client.execute(action: "DescribeDeadLetterSourceQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 枚举死信队列源队列
    @inlinable
    public func describeDeadLetterSourceQueues(deadLetterQueueName: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeadLetterSourceQueuesResponse> {
        self.describeDeadLetterSourceQueues(.init(deadLetterQueueName: deadLetterQueueName, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 枚举死信队列源队列
    @inlinable
    public func describeDeadLetterSourceQueues(deadLetterQueueName: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeadLetterSourceQueuesResponse {
        try await self.describeDeadLetterSourceQueues(.init(deadLetterQueueName: deadLetterQueueName, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 枚举死信队列源队列
    @inlinable
    public func describeDeadLetterSourceQueuesPaginated(_ input: DescribeDeadLetterSourceQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DeadLetterSource])> {
        self.client.paginate(input: input, region: region, command: self.describeDeadLetterSourceQueues, logger: logger, on: eventLoop)
    }

    /// 枚举死信队列源队列
    @inlinable @discardableResult
    public func describeDeadLetterSourceQueuesPaginated(_ input: DescribeDeadLetterSourceQueuesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDeadLetterSourceQueuesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDeadLetterSourceQueues, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 枚举死信队列源队列
    ///
    /// - Returns: `AsyncSequence`s of ``DeadLetterSource`` and ``DescribeDeadLetterSourceQueuesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDeadLetterSourceQueuesPaginator(_ input: DescribeDeadLetterSourceQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDeadLetterSourceQueuesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDeadLetterSourceQueues, logger: logger, on: eventLoop)
    }
}
