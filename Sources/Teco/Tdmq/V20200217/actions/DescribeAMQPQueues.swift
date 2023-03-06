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
    /// DescribeAMQPQueues请求参数结构体
    public struct DescribeAMQPQueuesRequest: TCPaginatedRequest {
        /// 查询偏移量
        public let offset: UInt64

        /// 查询限制数
        public let limit: UInt64

        /// 集群ID
        public let clusterId: String

        /// Vhost名称
        public let vHostId: String

        /// 按队列名称搜索，支持模糊查询
        public let nameKeyword: String?

        /// 查询结果排序规则，ASC为升序，DESC为降序
        public let sortOrder: String?

        /// 对查询结果排序，此为排序字段，目前支持Accumulative（消息堆积量）、Tps
        public let sortedBy: String?

        /// 队列名称，指定此参数后将只返回该队列信息
        public let filterOneQueue: String?

        public init(offset: UInt64, limit: UInt64, clusterId: String, vHostId: String, nameKeyword: String? = nil, sortOrder: String? = nil, sortedBy: String? = nil, filterOneQueue: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.clusterId = clusterId
            self.vHostId = vHostId
            self.nameKeyword = nameKeyword
            self.sortOrder = sortOrder
            self.sortedBy = sortedBy
            self.filterOneQueue = filterOneQueue
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case clusterId = "ClusterId"
            case vHostId = "VHostId"
            case nameKeyword = "NameKeyword"
            case sortOrder = "SortOrder"
            case sortedBy = "SortedBy"
            case filterOneQueue = "FilterOneQueue"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAMQPQueuesResponse) -> DescribeAMQPQueuesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAMQPQueuesRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, clusterId: self.clusterId, vHostId: self.vHostId, nameKeyword: self.nameKeyword, sortOrder: self.sortOrder, sortedBy: self.sortedBy, filterOneQueue: self.filterOneQueue)
        }
    }

    /// DescribeAMQPQueues返回参数结构体
    public struct DescribeAMQPQueuesResponse: TCPaginatedResponse {
        /// 总记录数
        public let totalCount: UInt64

        /// 队列信息列表
        public let queues: [AMQPQueueDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case queues = "Queues"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AMQPQueueDetail] {
            self.queues
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取Amqp队列列表
    @inlinable
    public func describeAMQPQueues(_ input: DescribeAMQPQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAMQPQueuesResponse> {
        self.client.execute(action: "DescribeAMQPQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Amqp队列列表
    @inlinable
    public func describeAMQPQueues(_ input: DescribeAMQPQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAMQPQueuesResponse {
        try await self.client.execute(action: "DescribeAMQPQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Amqp队列列表
    @inlinable
    public func describeAMQPQueues(offset: UInt64, limit: UInt64, clusterId: String, vHostId: String, nameKeyword: String? = nil, sortOrder: String? = nil, sortedBy: String? = nil, filterOneQueue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAMQPQueuesResponse> {
        let input = DescribeAMQPQueuesRequest(offset: offset, limit: limit, clusterId: clusterId, vHostId: vHostId, nameKeyword: nameKeyword, sortOrder: sortOrder, sortedBy: sortedBy, filterOneQueue: filterOneQueue)
        return self.client.execute(action: "DescribeAMQPQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Amqp队列列表
    @inlinable
    public func describeAMQPQueues(offset: UInt64, limit: UInt64, clusterId: String, vHostId: String, nameKeyword: String? = nil, sortOrder: String? = nil, sortedBy: String? = nil, filterOneQueue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAMQPQueuesResponse {
        let input = DescribeAMQPQueuesRequest(offset: offset, limit: limit, clusterId: clusterId, vHostId: vHostId, nameKeyword: nameKeyword, sortOrder: sortOrder, sortedBy: sortedBy, filterOneQueue: filterOneQueue)
        return try await self.client.execute(action: "DescribeAMQPQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Amqp队列列表
    @inlinable
    public func describeAMQPQueuesPaginated(_ input: DescribeAMQPQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AMQPQueueDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeAMQPQueues, logger: logger, on: eventLoop)
    }

    /// 获取Amqp队列列表
    @inlinable @discardableResult
    public func describeAMQPQueuesPaginated(_ input: DescribeAMQPQueuesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAMQPQueuesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAMQPQueues, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取Amqp队列列表
    @inlinable
    public func describeAMQPQueuesPaginator(_ input: DescribeAMQPQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAMQPQueuesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAMQPQueues, logger: logger, on: eventLoop)
    }
}
