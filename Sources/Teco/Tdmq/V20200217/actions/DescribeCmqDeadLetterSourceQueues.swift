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

extension Tdmq {
    /// DescribeCmqDeadLetterSourceQueues请求参数结构体
    public struct DescribeCmqDeadLetterSourceQueuesRequest: TCPaginatedRequest {
        /// 死信队列名称
        public let deadLetterQueueName: String

        /// 分页时本页获取主题列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0。
        public let limit: UInt64?

        /// 分页时本页获取主题的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        public let offset: UInt64?

        /// 根据SourceQueueName过滤
        public let sourceQueueName: String?

        public init(deadLetterQueueName: String, limit: UInt64? = nil, offset: UInt64? = nil, sourceQueueName: String? = nil) {
            self.deadLetterQueueName = deadLetterQueueName
            self.limit = limit
            self.offset = offset
            self.sourceQueueName = sourceQueueName
        }

        enum CodingKeys: String, CodingKey {
            case deadLetterQueueName = "DeadLetterQueueName"
            case limit = "Limit"
            case offset = "Offset"
            case sourceQueueName = "SourceQueueName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCmqDeadLetterSourceQueuesResponse) -> DescribeCmqDeadLetterSourceQueuesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCmqDeadLetterSourceQueuesRequest(deadLetterQueueName: self.deadLetterQueueName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), sourceQueueName: self.sourceQueueName)
        }
    }

    /// DescribeCmqDeadLetterSourceQueues返回参数结构体
    public struct DescribeCmqDeadLetterSourceQueuesResponse: TCPaginatedResponse {
        /// 满足本次条件的队列个数
        public let totalCount: UInt64

        /// 死信队列源队列
        public let queueSet: [CmqDeadLetterSource]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case queueSet = "QueueSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CmqDeadLetterSource] {
            self.queueSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 枚举cmq死信队列源队列
    @inlinable
    public func describeCmqDeadLetterSourceQueues(_ input: DescribeCmqDeadLetterSourceQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCmqDeadLetterSourceQueuesResponse> {
        self.client.execute(action: "DescribeCmqDeadLetterSourceQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 枚举cmq死信队列源队列
    @inlinable
    public func describeCmqDeadLetterSourceQueues(_ input: DescribeCmqDeadLetterSourceQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCmqDeadLetterSourceQueuesResponse {
        try await self.client.execute(action: "DescribeCmqDeadLetterSourceQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 枚举cmq死信队列源队列
    @inlinable
    public func describeCmqDeadLetterSourceQueues(deadLetterQueueName: String, limit: UInt64? = nil, offset: UInt64? = nil, sourceQueueName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCmqDeadLetterSourceQueuesResponse> {
        self.describeCmqDeadLetterSourceQueues(.init(deadLetterQueueName: deadLetterQueueName, limit: limit, offset: offset, sourceQueueName: sourceQueueName), region: region, logger: logger, on: eventLoop)
    }

    /// 枚举cmq死信队列源队列
    @inlinable
    public func describeCmqDeadLetterSourceQueues(deadLetterQueueName: String, limit: UInt64? = nil, offset: UInt64? = nil, sourceQueueName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCmqDeadLetterSourceQueuesResponse {
        try await self.describeCmqDeadLetterSourceQueues(.init(deadLetterQueueName: deadLetterQueueName, limit: limit, offset: offset, sourceQueueName: sourceQueueName), region: region, logger: logger, on: eventLoop)
    }

    /// 枚举cmq死信队列源队列
    @inlinable
    public func describeCmqDeadLetterSourceQueuesPaginated(_ input: DescribeCmqDeadLetterSourceQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CmqDeadLetterSource])> {
        self.client.paginate(input: input, region: region, command: self.describeCmqDeadLetterSourceQueues, logger: logger, on: eventLoop)
    }

    /// 枚举cmq死信队列源队列
    @inlinable @discardableResult
    public func describeCmqDeadLetterSourceQueuesPaginated(_ input: DescribeCmqDeadLetterSourceQueuesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCmqDeadLetterSourceQueuesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCmqDeadLetterSourceQueues, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 枚举cmq死信队列源队列
    ///
    /// - Returns: `AsyncSequence`s of `CmqDeadLetterSource` and `DescribeCmqDeadLetterSourceQueuesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCmqDeadLetterSourceQueuesPaginator(_ input: DescribeCmqDeadLetterSourceQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCmqDeadLetterSourceQueuesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCmqDeadLetterSourceQueues, logger: logger, on: eventLoop)
    }
}
