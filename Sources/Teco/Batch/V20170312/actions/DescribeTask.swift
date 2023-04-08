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

extension Batch {
    /// DescribeTask请求参数结构体
    public struct DescribeTaskRequest: TCPaginatedRequest {
        /// 作业ID
        public let jobId: String

        /// 任务名称
        public let taskName: String

        /// 偏移量
        public let offset: UInt64?

        /// 返回数量。默认取值100，最大取值1000。
        public let limit: UInt64?

        /// 过滤条件，详情如下：
        /// <li> task-instance-type - String - 是否必填： 否 - 按照任务实例状态进行过滤（SUBMITTED：已提交；PENDING：等待中；RUNNABLE：可运行；STARTING：启动中；RUNNING：运行中；SUCCEED：成功；FAILED：失败；FAILED_INTERRUPTED：失败后保留实例）。</li>
        public let filters: [Filter]?

        public init(jobId: String, taskName: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.jobId = jobId
            self.taskName = taskName
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case taskName = "TaskName"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTaskResponse) -> DescribeTaskRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTaskRequest(jobId: self.jobId, taskName: self.taskName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeTask返回参数结构体
    public struct DescribeTaskResponse: TCPaginatedResponse {
        /// 作业ID
        public let jobId: String

        /// 任务名称
        public let taskName: String

        /// 任务状态
        public let taskState: String

        /// 创建时间
        public let createTime: String

        /// 结束时间
        public let endTime: String

        /// 任务实例总数
        public let taskInstanceTotalCount: Int64

        /// 任务实例信息
        public let taskInstanceSet: [TaskInstanceView]

        /// 任务实例统计指标
        public let taskInstanceMetrics: TaskInstanceMetrics

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case taskName = "TaskName"
            case taskState = "TaskState"
            case createTime = "CreateTime"
            case endTime = "EndTime"
            case taskInstanceTotalCount = "TaskInstanceTotalCount"
            case taskInstanceSet = "TaskInstanceSet"
            case taskInstanceMetrics = "TaskInstanceMetrics"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TaskInstanceView] {
            self.taskInstanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.taskInstanceTotalCount
        }
    }

    /// 查询任务详情
    ///
    /// 用于查询指定任务的详细信息，包括任务内部的任务实例信息。
    @inlinable
    public func describeTask(_ input: DescribeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskResponse> {
        self.client.execute(action: "DescribeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务详情
    ///
    /// 用于查询指定任务的详细信息，包括任务内部的任务实例信息。
    @inlinable
    public func describeTask(_ input: DescribeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskResponse {
        try await self.client.execute(action: "DescribeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务详情
    ///
    /// 用于查询指定任务的详细信息，包括任务内部的任务实例信息。
    @inlinable
    public func describeTask(jobId: String, taskName: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskResponse> {
        self.describeTask(.init(jobId: jobId, taskName: taskName, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务详情
    ///
    /// 用于查询指定任务的详细信息，包括任务内部的任务实例信息。
    @inlinable
    public func describeTask(jobId: String, taskName: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskResponse {
        try await self.describeTask(.init(jobId: jobId, taskName: taskName, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务详情
    ///
    /// 用于查询指定任务的详细信息，包括任务内部的任务实例信息。
    @inlinable
    public func describeTaskPaginated(_ input: DescribeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TaskInstanceView])> {
        self.client.paginate(input: input, region: region, command: self.describeTask, logger: logger, on: eventLoop)
    }

    /// 查询任务详情
    ///
    /// 用于查询指定任务的详细信息，包括任务内部的任务实例信息。
    @inlinable @discardableResult
    public func describeTaskPaginated(_ input: DescribeTaskRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTaskResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTask, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询任务详情
    ///
    /// 用于查询指定任务的详细信息，包括任务内部的任务实例信息。
    ///
    /// - Returns: `AsyncSequence`s of `TaskInstanceView` and `DescribeTaskResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTaskPaginator(_ input: DescribeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTaskRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTask, logger: logger, on: eventLoop)
    }
}
