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

extension Wedata {
    /// DescribeIntegrationTasks请求参数结构体
    public struct DescribeIntegrationTasksRequest: TCPaginatedRequest {
        /// 项目id
        public let projectId: String

        /// 分页第n页
        public let pageNumber: Int64

        /// 分页大小
        public let pageSize: Int64

        /// 查询filter
        public let filters: [Filter]?

        /// 排序字段信息
        public let orderFields: [OrderField]?

        /// 开始时间
        public let startTime: String?

        /// 结束时间
        public let endTime: String?

        /// 201. stream, 202. offline 默认实时
        public let taskType: UInt64?

        public init(projectId: String, pageNumber: Int64, pageSize: Int64, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, startTime: String? = nil, endTime: String? = nil, taskType: UInt64? = nil) {
            self.projectId = projectId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
            self.orderFields = orderFields
            self.startTime = startTime
            self.endTime = endTime
            self.taskType = taskType
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
            case orderFields = "OrderFields"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case taskType = "TaskType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeIntegrationTasksResponse) -> DescribeIntegrationTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeIntegrationTasksRequest(projectId: self.projectId, pageNumber: self.pageNumber + 1, pageSize: self.pageSize, filters: self.filters, orderFields: self.orderFields, startTime: self.startTime, endTime: self.endTime, taskType: self.taskType)
        }
    }

    /// DescribeIntegrationTasks返回参数结构体
    public struct DescribeIntegrationTasksResponse: TCPaginatedResponse {
        /// 任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskInfoSet: [IntegrationTaskInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskInfoSet = "TaskInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [IntegrationTaskInfo] {
            self.taskInfoSet ?? []
        }
    }

    /// 查询集成任务列表
    @inlinable
    public func describeIntegrationTasks(_ input: DescribeIntegrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationTasksResponse> {
        self.client.execute(action: "DescribeIntegrationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集成任务列表
    @inlinable
    public func describeIntegrationTasks(_ input: DescribeIntegrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationTasksResponse {
        try await self.client.execute(action: "DescribeIntegrationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集成任务列表
    @inlinable
    public func describeIntegrationTasks(projectId: String, pageNumber: Int64, pageSize: Int64, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, startTime: String? = nil, endTime: String? = nil, taskType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationTasksResponse> {
        self.describeIntegrationTasks(.init(projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, startTime: startTime, endTime: endTime, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集成任务列表
    @inlinable
    public func describeIntegrationTasks(projectId: String, pageNumber: Int64, pageSize: Int64, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, startTime: String? = nil, endTime: String? = nil, taskType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationTasksResponse {
        try await self.describeIntegrationTasks(.init(projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, startTime: startTime, endTime: endTime, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集成任务列表
    @inlinable
    public func describeIntegrationTasksPaginated(_ input: DescribeIntegrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [IntegrationTaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeIntegrationTasks, logger: logger, on: eventLoop)
    }

    /// 查询集成任务列表
    @inlinable @discardableResult
    public func describeIntegrationTasksPaginated(_ input: DescribeIntegrationTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeIntegrationTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeIntegrationTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集成任务列表
    ///
    /// - Returns: `AsyncSequence`s of `IntegrationTaskInfo` and `DescribeIntegrationTasksResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeIntegrationTasksPaginator(_ input: DescribeIntegrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeIntegrationTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeIntegrationTasks, logger: logger, on: eventLoop)
    }
}
