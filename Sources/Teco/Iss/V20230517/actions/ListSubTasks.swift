//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// ListSubTasks请求参数结构体
    public struct ListSubTasksRequest: TCPaginatedRequest {
        /// 复杂任务ID
        public let taskId: String

        /// 页码，默认为1
        public let pageNumber: Int64?

        /// 每页数量，默认为10
        public let pageSize: Int64?

        /// 默认不对该字段进行筛选，否则根据任务状态进行筛选。状态码：1-NEW，2-RUNNING，3-COMPLETED，4-FAILED
        public let status: Int64?

        public init(taskId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, status: Int64? = nil) {
            self.taskId = taskId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case status = "Status"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListSubTasksResponse) -> ListSubTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(taskId: self.taskId, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, status: self.status)
        }
    }

    /// ListSubTasks返回参数结构体
    public struct ListSubTasksResponse: TCPaginatedResponse {
        /// 返回数据
        public let data: ListSubTasksData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SubTaskData`` list from the paginated response.
        public func getItems() -> [SubTaskData] {
            self.data.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data.totalCount
        }
    }

    /// 查询任务的子任务列表
    ///
    /// 用于查询任务的子任务列表
    @inlinable
    public func listSubTasks(_ input: ListSubTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSubTasksResponse> {
        self.client.execute(action: "ListSubTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务的子任务列表
    ///
    /// 用于查询任务的子任务列表
    @inlinable
    public func listSubTasks(_ input: ListSubTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSubTasksResponse {
        try await self.client.execute(action: "ListSubTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务的子任务列表
    ///
    /// 用于查询任务的子任务列表
    @inlinable
    public func listSubTasks(taskId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, status: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSubTasksResponse> {
        self.listSubTasks(.init(taskId: taskId, pageNumber: pageNumber, pageSize: pageSize, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务的子任务列表
    ///
    /// 用于查询任务的子任务列表
    @inlinable
    public func listSubTasks(taskId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, status: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSubTasksResponse {
        try await self.listSubTasks(.init(taskId: taskId, pageNumber: pageNumber, pageSize: pageSize, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务的子任务列表
    ///
    /// 用于查询任务的子任务列表
    @inlinable
    public func listSubTasksPaginated(_ input: ListSubTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SubTaskData])> {
        self.client.paginate(input: input, region: region, command: self.listSubTasks, logger: logger, on: eventLoop)
    }

    /// 查询任务的子任务列表
    ///
    /// 用于查询任务的子任务列表
    @inlinable @discardableResult
    public func listSubTasksPaginated(_ input: ListSubTasksRequest, region: TCRegion? = nil, onResponse: @escaping (ListSubTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listSubTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询任务的子任务列表
    ///
    /// 用于查询任务的子任务列表
    ///
    /// - Returns: `AsyncSequence`s of ``SubTaskData`` and ``ListSubTasksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func listSubTasksPaginator(_ input: ListSubTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListSubTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listSubTasks, logger: logger, on: eventLoop)
    }
}
