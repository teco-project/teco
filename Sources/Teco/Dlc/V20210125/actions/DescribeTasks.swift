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

extension Dlc {
    /// DescribeTasks请求参数结构体
    public struct DescribeTasksRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: Int64?

        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 过滤条件，如下支持的过滤类型，传参Name应为以下其中一个,其中task-id支持最大50个过滤个数，其他过滤参数支持的总数不超过5个。
        /// task-id - String - （任务ID准确过滤）task-id取值形如：e386471f-139a-4e59-877f-50ece8135b99。
        /// task-state - String - （任务状态过滤）取值范围 0(初始化)， 1(运行中)， 2(成功)， -1(失败)。
        /// task-sql-keyword - String - （SQL语句关键字模糊过滤）取值形如：DROP TABLE。
        /// task-operator- string （子uin过滤）
        /// task-kind - string （任务类型过滤）
        public let filters: [Filter]?

        /// 排序字段，支持如下字段类型，create-time（创建时间，默认）、update-time（更新时间）
        public let sortBy: String?

        /// 排序方式，desc表示正序，asc表示反序， 默认为asc。
        public let sorting: String?

        /// 起始时间点，格式为yyyy-mm-dd HH:MM:SS。默认为45天前的当前时刻
        public let startTime: String?

        /// 结束时间点，格式为yyyy-mm-dd HH:MM:SS时间跨度在(0,30天]，支持最近45天数据查询。默认为当前时刻
        public let endTime: String?

        /// 数据引擎名称，用于筛选
        public let dataEngineName: String?

        public init(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, sortBy: String? = nil, sorting: String? = nil, startTime: String? = nil, endTime: String? = nil, dataEngineName: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.sortBy = sortBy
            self.sorting = sorting
            self.startTime = startTime
            self.endTime = endTime
            self.dataEngineName = dataEngineName
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case sortBy = "SortBy"
            case sorting = "Sorting"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case dataEngineName = "DataEngineName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTasksResponse) -> DescribeTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTasksRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, sortBy: self.sortBy, sorting: self.sorting, startTime: self.startTime, endTime: self.endTime, dataEngineName: self.dataEngineName)
        }
    }

    /// DescribeTasks返回参数结构体
    public struct DescribeTasksResponse: TCPaginatedResponse {
        /// 任务对象列表。
        public let taskList: [TaskResponseInfo]

        /// 实例总数。
        public let totalCount: UInt64

        /// 任务概览信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tasksOverview: TasksOverview?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskList = "TaskList"
            case totalCount = "TotalCount"
            case tasksOverview = "TasksOverview"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TaskResponseInfo`` list from the paginated response.
        public func getItems() -> [TaskResponseInfo] {
            self.taskList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询任务列表
    ///
    /// 该接口（DescribleTasks）用于查询任务列表
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 该接口（DescribleTasks）用于查询任务列表
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务列表
    ///
    /// 该接口（DescribleTasks）用于查询任务列表
    @inlinable
    public func describeTasks(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, sortBy: String? = nil, sorting: String? = nil, startTime: String? = nil, endTime: String? = nil, dataEngineName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.describeTasks(.init(limit: limit, offset: offset, filters: filters, sortBy: sortBy, sorting: sorting, startTime: startTime, endTime: endTime, dataEngineName: dataEngineName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 该接口（DescribleTasks）用于查询任务列表
    @inlinable
    public func describeTasks(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, sortBy: String? = nil, sorting: String? = nil, startTime: String? = nil, endTime: String? = nil, dataEngineName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.describeTasks(.init(limit: limit, offset: offset, filters: filters, sortBy: sortBy, sorting: sorting, startTime: startTime, endTime: endTime, dataEngineName: dataEngineName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 该接口（DescribleTasks）用于查询任务列表
    @inlinable
    public func describeTasksPaginated(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TaskResponseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTasks, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 该接口（DescribleTasks）用于查询任务列表
    @inlinable @discardableResult
    public func describeTasksPaginated(_ input: DescribeTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 该接口（DescribleTasks）用于查询任务列表
    ///
    /// - Returns: `AsyncSequence`s of `TaskResponseInfo` and `DescribeTasksResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTasksPaginator(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTasks, logger: logger, on: eventLoop)
    }
}
