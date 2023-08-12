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

extension Tcaplusdb {
    /// DescribeTasks请求参数结构体
    public struct DescribeTasksRequest: TCPaginatedRequest {
        /// 需要查询任务所属的集群ID列表
        public let clusterIds: [String]?

        /// 需要查询的任务ID列表
        public let taskIds: [String]?

        /// 过滤条件，本接口支持：Content，TaskType, Operator, Time
        public let filters: [Filter]?

        /// 查询列表偏移量
        public let offset: Int64?

        /// 查询列表返回记录数
        public let limit: Int64?

        public init(clusterIds: [String]? = nil, taskIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.clusterIds = clusterIds
            self.taskIds = taskIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case clusterIds = "ClusterIds"
            case taskIds = "TaskIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTasksResponse) -> DescribeTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTasksRequest(clusterIds: self.clusterIds, taskIds: self.taskIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeTasks返回参数结构体
    public struct DescribeTasksResponse: TCPaginatedResponse {
        /// 任务数量
        public let totalCount: UInt64

        /// 查询到的任务详情列表
        public let taskInfos: [TaskInfoNew]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case taskInfos = "TaskInfos"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TaskInfoNew`` list from the paginated response.
        public func getItems() -> [TaskInfoNew] {
            self.taskInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询任务列表
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务列表
    @inlinable
    public func describeTasks(clusterIds: [String]? = nil, taskIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.describeTasks(.init(clusterIds: clusterIds, taskIds: taskIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    @inlinable
    public func describeTasks(clusterIds: [String]? = nil, taskIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.describeTasks(.init(clusterIds: clusterIds, taskIds: taskIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    @inlinable
    public func describeTasksPaginated(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TaskInfoNew])> {
        self.client.paginate(input: input, region: region, command: self.describeTasks, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    @inlinable @discardableResult
    public func describeTasksPaginated(_ input: DescribeTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// - Returns: `AsyncSequence`s of ``TaskInfoNew`` and ``DescribeTasksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTasksPaginator(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTasks, logger: logger, on: eventLoop)
    }
}
