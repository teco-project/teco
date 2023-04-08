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

extension Thpc {
    /// DescribeQueues请求参数结构体
    public struct DescribeQueuesRequest: TCPaginatedRequest {
        /// 集群ID。
        public let clusterId: String

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        public init(clusterId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.clusterId = clusterId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeQueuesResponse) -> DescribeQueuesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeQueuesRequest(clusterId: self.clusterId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeQueues返回参数结构体
    public struct DescribeQueuesResponse: TCPaginatedResponse {
        /// 队列概览信息列表。
        public let queueSet: [QueueOverview]

        /// 符合条件的节点数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case queueSet = "QueueSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [QueueOverview] {
            self.queueSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询队列列表
    ///
    /// 本接口(DescribeQueues)用于查询指定集群队列概览信息列表。
    @inlinable
    public func describeQueues(_ input: DescribeQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQueuesResponse> {
        self.client.execute(action: "DescribeQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询队列列表
    ///
    /// 本接口(DescribeQueues)用于查询指定集群队列概览信息列表。
    @inlinable
    public func describeQueues(_ input: DescribeQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQueuesResponse {
        try await self.client.execute(action: "DescribeQueues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询队列列表
    ///
    /// 本接口(DescribeQueues)用于查询指定集群队列概览信息列表。
    @inlinable
    public func describeQueues(clusterId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQueuesResponse> {
        self.describeQueues(.init(clusterId: clusterId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询队列列表
    ///
    /// 本接口(DescribeQueues)用于查询指定集群队列概览信息列表。
    @inlinable
    public func describeQueues(clusterId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQueuesResponse {
        try await self.describeQueues(.init(clusterId: clusterId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询队列列表
    ///
    /// 本接口(DescribeQueues)用于查询指定集群队列概览信息列表。
    @inlinable
    public func describeQueuesPaginated(_ input: DescribeQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [QueueOverview])> {
        self.client.paginate(input: input, region: region, command: self.describeQueues, logger: logger, on: eventLoop)
    }

    /// 查询队列列表
    ///
    /// 本接口(DescribeQueues)用于查询指定集群队列概览信息列表。
    @inlinable @discardableResult
    public func describeQueuesPaginated(_ input: DescribeQueuesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeQueuesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeQueues, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询队列列表
    ///
    /// 本接口(DescribeQueues)用于查询指定集群队列概览信息列表。
    ///
    /// - Returns: `AsyncSequence`s of `QueueOverview` and `DescribeQueuesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeQueuesPaginator(_ input: DescribeQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeQueuesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeQueues, logger: logger, on: eventLoop)
    }
}
