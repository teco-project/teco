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

extension Live {
    /// DescribeLivePullStreamTasks请求参数结构体
    public struct DescribeLivePullStreamTasksRequest: TCPaginatedRequest {
        /// 任务 ID。
        /// 来源：调用 CreateLivePullStreamTask 接口时返回。
        /// 不填默认查询所有任务，按更新时间倒序排序。
        public let taskId: String?

        /// 取得第几页，默认值：1。
        public let pageNum: UInt64?

        /// 分页大小，默认值：10。
        /// 取值范围：1~20 之前的任意整数。
        public let pageSize: UInt64?

        public init(taskId: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil) {
            self.taskId = taskId
            self.pageNum = pageNum
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLivePullStreamTasksResponse) -> DescribeLivePullStreamTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLivePullStreamTasksRequest(taskId: self.taskId, pageNum: (self.pageNum ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeLivePullStreamTasks返回参数结构体
    public struct DescribeLivePullStreamTasksResponse: TCPaginatedResponse {
        /// 直播拉流任务信息列表。
        public let taskInfos: [PullStreamTaskInfo]

        /// 分页的页码。
        public let pageNum: UInt64

        /// 每页大小。
        public let pageSize: UInt64

        /// 符合条件的总个数。
        public let totalNum: UInt64

        /// 总页数。
        public let totalPage: UInt64

        /// 限制可创建的最大任务数。
        public let limitTaskNum: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskInfos = "TaskInfos"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case limitTaskNum = "LimitTaskNum"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PullStreamTaskInfo`` list from the paginated response.
        public func getItems() -> [PullStreamTaskInfo] {
            self.taskInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalNum
        }
    }

    /// 查询直播拉流任务
    ///
    /// 查询使用 CreateLivePullStreamTask 接口创建的直播拉流任务。
    /// 排序方式：默认按更新时间 倒序排列。
    @inlinable
    public func describeLivePullStreamTasks(_ input: DescribeLivePullStreamTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLivePullStreamTasksResponse> {
        self.client.execute(action: "DescribeLivePullStreamTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询直播拉流任务
    ///
    /// 查询使用 CreateLivePullStreamTask 接口创建的直播拉流任务。
    /// 排序方式：默认按更新时间 倒序排列。
    @inlinable
    public func describeLivePullStreamTasks(_ input: DescribeLivePullStreamTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLivePullStreamTasksResponse {
        try await self.client.execute(action: "DescribeLivePullStreamTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询直播拉流任务
    ///
    /// 查询使用 CreateLivePullStreamTask 接口创建的直播拉流任务。
    /// 排序方式：默认按更新时间 倒序排列。
    @inlinable
    public func describeLivePullStreamTasks(taskId: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLivePullStreamTasksResponse> {
        self.describeLivePullStreamTasks(.init(taskId: taskId, pageNum: pageNum, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询直播拉流任务
    ///
    /// 查询使用 CreateLivePullStreamTask 接口创建的直播拉流任务。
    /// 排序方式：默认按更新时间 倒序排列。
    @inlinable
    public func describeLivePullStreamTasks(taskId: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLivePullStreamTasksResponse {
        try await self.describeLivePullStreamTasks(.init(taskId: taskId, pageNum: pageNum, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询直播拉流任务
    ///
    /// 查询使用 CreateLivePullStreamTask 接口创建的直播拉流任务。
    /// 排序方式：默认按更新时间 倒序排列。
    @inlinable
    public func describeLivePullStreamTasksPaginated(_ input: DescribeLivePullStreamTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PullStreamTaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeLivePullStreamTasks, logger: logger, on: eventLoop)
    }

    /// 查询直播拉流任务
    ///
    /// 查询使用 CreateLivePullStreamTask 接口创建的直播拉流任务。
    /// 排序方式：默认按更新时间 倒序排列。
    @inlinable @discardableResult
    public func describeLivePullStreamTasksPaginated(_ input: DescribeLivePullStreamTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLivePullStreamTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLivePullStreamTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询直播拉流任务
    ///
    /// 查询使用 CreateLivePullStreamTask 接口创建的直播拉流任务。
    /// 排序方式：默认按更新时间 倒序排列。
    ///
    /// - Returns: `AsyncSequence`s of `PullStreamTaskInfo` and `DescribeLivePullStreamTasksResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLivePullStreamTasksPaginator(_ input: DescribeLivePullStreamTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLivePullStreamTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLivePullStreamTasks, logger: logger, on: eventLoop)
    }
}
