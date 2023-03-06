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

@_exported import struct Foundation.Date
import TecoDateHelpers
import TecoPaginationHelpers

extension Dbbrain {
    /// DescribeDBDiagReportTasks请求参数结构体
    public struct DescribeDBDiagReportTasksRequest: TCPaginatedRequest {
        /// 第一个任务的开始时间，用于范围查询，时间格式如：2019-09-10 12:13:14。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 最后一个任务的开始时间，用于范围查询，时间格式如：2019-09-10 12:13:14。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// 实例ID数组，用于筛选指定实例的任务列表。
        public let instanceIds: [String]?

        /// 任务的触发来源，支持的取值包括："DAILY_INSPECTION" - 实例巡检；"SCHEDULED" - 定时生成；"MANUAL" - 手动触发。
        public let sources: [String]?

        /// 报告的健康等级，支持的取值包括："HEALTH" - 健康；"SUB_HEALTH" - 亚健康；"RISK" - 危险；"HIGH_RISK" - 高危。
        public let healthLevels: String?

        /// 任务的状态，支持的取值包括："created" - 新建；"chosen" - 待执行； "running" - 执行中；"failed" - 失败；"finished" - 已完成。
        public let taskStatuses: String?

        /// 偏移量，默认0。
        public let offset: Int64?

        /// 返回数量，默认20。
        public let limit: Int64?

        /// 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        public let product: String?

        public init(startTime: Date? = nil, endTime: Date? = nil, instanceIds: [String]? = nil, sources: [String]? = nil, healthLevels: String? = nil, taskStatuses: String? = nil, offset: Int64? = nil, limit: Int64? = nil, product: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.instanceIds = instanceIds
            self.sources = sources
            self.healthLevels = healthLevels
            self.taskStatuses = taskStatuses
            self.offset = offset
            self.limit = limit
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case instanceIds = "InstanceIds"
            case sources = "Sources"
            case healthLevels = "HealthLevels"
            case taskStatuses = "TaskStatuses"
            case offset = "Offset"
            case limit = "Limit"
            case product = "Product"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeDBDiagReportTasksResponse) -> DescribeDBDiagReportTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDBDiagReportTasksRequest(startTime: self.startTime, endTime: self.endTime, instanceIds: self.instanceIds, sources: self.sources, healthLevels: self.healthLevels, taskStatuses: self.taskStatuses, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, product: self.product)
        }
    }

    /// DescribeDBDiagReportTasks返回参数结构体
    public struct DescribeDBDiagReportTasksResponse: TCPaginatedResponse {
        /// 任务总数目。
        public let totalCount: Int64

        /// 任务列表。
        public let tasks: [HealthReportTask]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tasks = "Tasks"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [HealthReportTask] {
            self.tasks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询健康报告生成任务列表
    ///
    /// 查询健康报告生成任务列表。
    @inlinable
    public func describeDBDiagReportTasks(_ input: DescribeDBDiagReportTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBDiagReportTasksResponse> {
        self.client.execute(action: "DescribeDBDiagReportTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询健康报告生成任务列表
    ///
    /// 查询健康报告生成任务列表。
    @inlinable
    public func describeDBDiagReportTasks(_ input: DescribeDBDiagReportTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBDiagReportTasksResponse {
        try await self.client.execute(action: "DescribeDBDiagReportTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询健康报告生成任务列表
    ///
    /// 查询健康报告生成任务列表。
    @inlinable
    public func describeDBDiagReportTasks(startTime: Date? = nil, endTime: Date? = nil, instanceIds: [String]? = nil, sources: [String]? = nil, healthLevels: String? = nil, taskStatuses: String? = nil, offset: Int64? = nil, limit: Int64? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBDiagReportTasksResponse> {
        let input = DescribeDBDiagReportTasksRequest(startTime: startTime, endTime: endTime, instanceIds: instanceIds, sources: sources, healthLevels: healthLevels, taskStatuses: taskStatuses, offset: offset, limit: limit, product: product)
        return self.client.execute(action: "DescribeDBDiagReportTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询健康报告生成任务列表
    ///
    /// 查询健康报告生成任务列表。
    @inlinable
    public func describeDBDiagReportTasks(startTime: Date? = nil, endTime: Date? = nil, instanceIds: [String]? = nil, sources: [String]? = nil, healthLevels: String? = nil, taskStatuses: String? = nil, offset: Int64? = nil, limit: Int64? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBDiagReportTasksResponse {
        let input = DescribeDBDiagReportTasksRequest(startTime: startTime, endTime: endTime, instanceIds: instanceIds, sources: sources, healthLevels: healthLevels, taskStatuses: taskStatuses, offset: offset, limit: limit, product: product)
        return try await self.client.execute(action: "DescribeDBDiagReportTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询健康报告生成任务列表
    ///
    /// 查询健康报告生成任务列表。
    @inlinable
    public func describeDBDiagReportTasksPaginated(_ input: DescribeDBDiagReportTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [HealthReportTask])> {
        self.client.paginate(input: input, region: region, command: self.describeDBDiagReportTasks, logger: logger, on: eventLoop)
    }

    /// 查询健康报告生成任务列表
    ///
    /// 查询健康报告生成任务列表。
    @inlinable
    public func describeDBDiagReportTasksPaginated(_ input: DescribeDBDiagReportTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDBDiagReportTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDBDiagReportTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询健康报告生成任务列表
    ///
    /// 查询健康报告生成任务列表。
    @inlinable
    public func describeDBDiagReportTasksPaginator(_ input: DescribeDBDiagReportTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeDBDiagReportTasksRequest, DescribeDBDiagReportTasksResponse>.ResultSequence, responses: TCClient.Paginator<DescribeDBDiagReportTasksRequest, DescribeDBDiagReportTasksResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeDBDiagReportTasksRequest, DescribeDBDiagReportTasksResponse>.ResultSequence(input: input, region: region, command: self.describeDBDiagReportTasks, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeDBDiagReportTasksRequest, DescribeDBDiagReportTasksResponse>.ResponseSequence(input: input, region: region, command: self.describeDBDiagReportTasks, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
