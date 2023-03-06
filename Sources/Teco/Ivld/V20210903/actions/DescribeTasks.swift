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

extension Ivld {
    /// DescribeTasks请求参数结构体
    public struct DescribeTasksRequest: TCPaginatedRequest {
        /// 分页序号，从1开始
        public let pageNumber: Int64?

        /// 每个分页所包含的元素数量，最大为50
        public let pageSize: Int64?

        /// 任务过滤条件，相关限制参见TaskFilter
        public let taskFilter: TaskFilter?

        /// 返回结果排序信息，By字段只支持CreateTimeStamp
        public let sortBy: SortBy?

        public init(pageNumber: Int64? = nil, pageSize: Int64? = nil, taskFilter: TaskFilter? = nil, sortBy: SortBy? = nil) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.taskFilter = taskFilter
            self.sortBy = sortBy
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case taskFilter = "TaskFilter"
            case sortBy = "SortBy"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTasksResponse) -> DescribeTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTasksRequest(pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, taskFilter: self.taskFilter, sortBy: self.sortBy)
        }
    }

    /// DescribeTasks返回参数结构体
    public struct DescribeTasksResponse: TCPaginatedResponse {
        /// 满足过滤条件的任务总数量
        public let totalCount: Int64

        /// 满足过滤条件的任务数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskInfoSet: [TaskInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case taskInfoSet = "TaskInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TaskInfo] {
            self.taskInfoSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 批量描述任务
    ///
    /// 依照输入条件，描述命中的任务信息，包括任务创建时间，处理时间信息等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个任务信息
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量描述任务
    ///
    /// 依照输入条件，描述命中的任务信息，包括任务创建时间，处理时间信息等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个任务信息
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量描述任务
    ///
    /// 依照输入条件，描述命中的任务信息，包括任务创建时间，处理时间信息等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个任务信息
    @inlinable
    public func describeTasks(pageNumber: Int64? = nil, pageSize: Int64? = nil, taskFilter: TaskFilter? = nil, sortBy: SortBy? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        let input = DescribeTasksRequest(pageNumber: pageNumber, pageSize: pageSize, taskFilter: taskFilter, sortBy: sortBy)
        return self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量描述任务
    ///
    /// 依照输入条件，描述命中的任务信息，包括任务创建时间，处理时间信息等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个任务信息
    @inlinable
    public func describeTasks(pageNumber: Int64? = nil, pageSize: Int64? = nil, taskFilter: TaskFilter? = nil, sortBy: SortBy? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        let input = DescribeTasksRequest(pageNumber: pageNumber, pageSize: pageSize, taskFilter: taskFilter, sortBy: sortBy)
        return try await self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量描述任务
    ///
    /// 依照输入条件，描述命中的任务信息，包括任务创建时间，处理时间信息等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个任务信息
    @inlinable
    public func describeTasksPaginated(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTasks, logger: logger, on: eventLoop)
    }

    /// 批量描述任务
    ///
    /// 依照输入条件，描述命中的任务信息，包括任务创建时间，处理时间信息等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个任务信息
    @inlinable
    public func describeTasksPaginated(_ input: DescribeTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 批量描述任务
    ///
    /// 依照输入条件，描述命中的任务信息，包括任务创建时间，处理时间信息等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个任务信息
    @inlinable
    public func describeTasksPaginator(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeTasksRequest, DescribeTasksResponse>.ResultSequence, responses: TCClient.Paginator<DescribeTasksRequest, DescribeTasksResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeTasksRequest, DescribeTasksResponse>.ResultSequence(input: input, region: region, command: self.describeTasks, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeTasksRequest, DescribeTasksResponse>.ResponseSequence(input: input, region: region, command: self.describeTasks, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
