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

extension Cfg {
    /// DescribeTaskList请求参数结构体
    public struct DescribeTaskListRequest: TCPaginatedRequest {
        /// 分页Limit
        public let limit: Int64

        /// 分页Offset
        public let offset: Int64

        /// 演练名称
        public let taskTitle: String?

        /// 标签键
        public let taskTag: [String]?

        /// 状态
        public let taskStatus: Int64?

        /// 开始时间，固定格式%Y-%m-%d %H:%M:%S
        public let taskStartTime: String?

        /// 结束时间，固定格式%Y-%m-%d %H:%M:%S
        public let taskEndTime: String?

        /// 标签对
        public let tags: [TagWithDescribe]?

        public init(limit: Int64, offset: Int64, taskTitle: String? = nil, taskTag: [String]? = nil, taskStatus: Int64? = nil, taskStartTime: String? = nil, taskEndTime: String? = nil, tags: [TagWithDescribe]? = nil) {
            self.limit = limit
            self.offset = offset
            self.taskTitle = taskTitle
            self.taskTag = taskTag
            self.taskStatus = taskStatus
            self.taskStartTime = taskStartTime
            self.taskEndTime = taskEndTime
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case taskTitle = "TaskTitle"
            case taskTag = "TaskTag"
            case taskStatus = "TaskStatus"
            case taskStartTime = "TaskStartTime"
            case taskEndTime = "TaskEndTime"
            case tags = "Tags"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTaskListResponse) -> DescribeTaskListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTaskListRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), taskTitle: self.taskTitle, taskTag: self.taskTag, taskStatus: self.taskStatus, taskStartTime: self.taskStartTime, taskEndTime: self.taskEndTime, tags: self.tags)
        }
    }

    /// DescribeTaskList返回参数结构体
    public struct DescribeTaskListResponse: TCPaginatedResponse {
        /// 无
        public let taskList: [TaskListItem]

        /// 列表数量
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskList = "TaskList"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TaskListItem] {
            self.taskList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询任务列表
    @inlinable
    public func describeTaskList(_ input: DescribeTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskListResponse> {
        self.client.execute(action: "DescribeTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    @inlinable
    public func describeTaskList(_ input: DescribeTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskListResponse {
        try await self.client.execute(action: "DescribeTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务列表
    @inlinable
    public func describeTaskList(limit: Int64, offset: Int64, taskTitle: String? = nil, taskTag: [String]? = nil, taskStatus: Int64? = nil, taskStartTime: String? = nil, taskEndTime: String? = nil, tags: [TagWithDescribe]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskListResponse> {
        let input = DescribeTaskListRequest(limit: limit, offset: offset, taskTitle: taskTitle, taskTag: taskTag, taskStatus: taskStatus, taskStartTime: taskStartTime, taskEndTime: taskEndTime, tags: tags)
        return self.client.execute(action: "DescribeTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    @inlinable
    public func describeTaskList(limit: Int64, offset: Int64, taskTitle: String? = nil, taskTag: [String]? = nil, taskStatus: Int64? = nil, taskStartTime: String? = nil, taskEndTime: String? = nil, tags: [TagWithDescribe]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskListResponse {
        let input = DescribeTaskListRequest(limit: limit, offset: offset, taskTitle: taskTitle, taskTag: taskTag, taskStatus: taskStatus, taskStartTime: taskStartTime, taskEndTime: taskEndTime, tags: tags)
        return try await self.client.execute(action: "DescribeTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务列表
    @inlinable
    public func describeTaskListPaginated(_ input: DescribeTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TaskListItem])> {
        self.client.paginate(input: input, region: region, command: self.describeTaskList, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    @inlinable @discardableResult
    public func describeTaskListPaginated(_ input: DescribeTaskListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTaskListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTaskList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    @inlinable
    public func describeTaskListPaginator(_ input: DescribeTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTaskListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTaskList, logger: logger, on: eventLoop)
    }
}
