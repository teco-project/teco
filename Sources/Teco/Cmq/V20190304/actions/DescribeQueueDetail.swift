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

extension Cmq {
    /// DescribeQueueDetail请求参数结构体
    public struct DescribeQueueDetailRequest: TCPaginatedRequest {
        /// 分页时本页获取队列列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0
        public let offset: UInt64?

        /// 分页时本页获取队列的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        public let limit: UInt64?

        /// 筛选参数，目前支持QueueName筛选，且仅支持一个关键字
        public let filters: [Filter]?

        /// 标签搜索
        public let tagKey: String?

        /// 精确匹配QueueName
        public let queueName: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, tagKey: String? = nil, queueName: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.tagKey = tagKey
            self.queueName = queueName
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case tagKey = "TagKey"
            case queueName = "QueueName"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeQueueDetailResponse) -> DescribeQueueDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeQueueDetailRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, tagKey: self.tagKey, queueName: self.queueName)
        }
    }

    /// DescribeQueueDetail返回参数结构体
    public struct DescribeQueueDetailResponse: TCPaginatedResponse {
        /// 总队列数。
        public let totalCount: UInt64

        /// 队列详情列表。
        public let queueSet: [QueueSet]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case queueSet = "QueueSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [QueueSet] {
            self.queueSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 枚举队列
    @inlinable
    public func describeQueueDetail(_ input: DescribeQueueDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQueueDetailResponse> {
        self.client.execute(action: "DescribeQueueDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 枚举队列
    @inlinable
    public func describeQueueDetail(_ input: DescribeQueueDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQueueDetailResponse {
        try await self.client.execute(action: "DescribeQueueDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 枚举队列
    @inlinable
    public func describeQueueDetail(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, tagKey: String? = nil, queueName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQueueDetailResponse> {
        let input = DescribeQueueDetailRequest(offset: offset, limit: limit, filters: filters, tagKey: tagKey, queueName: queueName)
        return self.client.execute(action: "DescribeQueueDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 枚举队列
    @inlinable
    public func describeQueueDetail(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, tagKey: String? = nil, queueName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQueueDetailResponse {
        let input = DescribeQueueDetailRequest(offset: offset, limit: limit, filters: filters, tagKey: tagKey, queueName: queueName)
        return try await self.client.execute(action: "DescribeQueueDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 枚举队列
    @inlinable
    public func describeQueueDetailPaginated(_ input: DescribeQueueDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [QueueSet])> {
        self.client.paginate(input: input, region: region, command: self.describeQueueDetail, logger: logger, on: eventLoop)
    }

    /// 枚举队列
    @inlinable @discardableResult
    public func describeQueueDetailPaginated(_ input: DescribeQueueDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeQueueDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeQueueDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 枚举队列
    @inlinable
    public func describeQueueDetailPaginator(_ input: DescribeQueueDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeQueueDetailRequest, DescribeQueueDetailResponse>.ResultSequence, responses: TCClient.Paginator<DescribeQueueDetailRequest, DescribeQueueDetailResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeQueueDetail, logger: logger, on: eventLoop)
    }
}
