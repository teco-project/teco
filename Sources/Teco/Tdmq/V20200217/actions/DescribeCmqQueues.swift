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
    /// DescribeCmqQueues请求参数结构体
    public struct DescribeCmqQueuesRequest: TCPaginatedRequest {
        /// 分页时本页获取队列列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0
        public let offset: UInt64?

        /// 分页时本页获取队列的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        public let limit: UInt64?

        /// 根据QueueName进行过滤
        public let queueName: String?

        /// CMQ 队列名称列表过滤
        public let queueNameList: [String]?

        /// 标签过滤查找时，需要设置为 true
        public let isTagFilter: Bool?

        /// 过滤器。目前支持按标签过滤，标签的Name需要加前缀“tag:”，例如：tag:负责人、tag:环境、tag:业务
        public let filters: [Filter]?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, queueName: String? = nil, queueNameList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.queueName = queueName
            self.queueNameList = queueNameList
            self.isTagFilter = isTagFilter
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case queueName = "QueueName"
            case queueNameList = "QueueNameList"
            case isTagFilter = "IsTagFilter"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeCmqQueuesResponse) -> DescribeCmqQueuesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCmqQueuesRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, queueName: self.queueName, queueNameList: self.queueNameList, isTagFilter: self.isTagFilter, filters: self.filters)
        }
    }

    /// DescribeCmqQueues返回参数结构体
    public struct DescribeCmqQueuesResponse: TCPaginatedResponse {
        /// 数量
        public let totalCount: UInt64

        /// 队列列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let queueList: [CmqQueue]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case queueList = "QueueList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CmqQueue] {
            self.queueList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询cmq全量队列
    @inlinable
    public func describeCmqQueues(_ input: DescribeCmqQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCmqQueuesResponse> {
        self.client.execute(action: "DescribeCmqQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询cmq全量队列
    @inlinable
    public func describeCmqQueues(_ input: DescribeCmqQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCmqQueuesResponse {
        try await self.client.execute(action: "DescribeCmqQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询cmq全量队列
    @inlinable
    public func describeCmqQueues(offset: UInt64? = nil, limit: UInt64? = nil, queueName: String? = nil, queueNameList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCmqQueuesResponse> {
        let input = DescribeCmqQueuesRequest(offset: offset, limit: limit, queueName: queueName, queueNameList: queueNameList, isTagFilter: isTagFilter, filters: filters)
        return self.client.execute(action: "DescribeCmqQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询cmq全量队列
    @inlinable
    public func describeCmqQueues(offset: UInt64? = nil, limit: UInt64? = nil, queueName: String? = nil, queueNameList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCmqQueuesResponse {
        let input = DescribeCmqQueuesRequest(offset: offset, limit: limit, queueName: queueName, queueNameList: queueNameList, isTagFilter: isTagFilter, filters: filters)
        return try await self.client.execute(action: "DescribeCmqQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询cmq全量队列
    @inlinable
    public func describeCmqQueuesPaginated(_ input: DescribeCmqQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CmqQueue])> {
        self.client.paginate(input: input, region: region, command: self.describeCmqQueues, logger: logger, on: eventLoop)
    }

    /// 查询cmq全量队列
    @inlinable @discardableResult
    public func describeCmqQueuesPaginated(_ input: DescribeCmqQueuesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCmqQueuesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCmqQueues, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询cmq全量队列
    @inlinable
    public func describeCmqQueuesPaginator(_ input: DescribeCmqQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeCmqQueuesRequest, DescribeCmqQueuesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeCmqQueuesRequest, DescribeCmqQueuesResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCmqQueues, logger: logger, on: eventLoop)
    }
}
