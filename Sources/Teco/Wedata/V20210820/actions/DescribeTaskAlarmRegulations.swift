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

extension Wedata {
    /// DescribeTaskAlarmRegulations请求参数结构体
    public struct DescribeTaskAlarmRegulationsRequest: TCPaginatedRequest {
        /// 任务ID
        public let taskId: String

        /// 项目ID
        public let projectId: String

        /// 任务类型(201代表实时任务，202代表离线任务)
        public let taskType: Int64

        /// 当前页
        public let pageNumber: Int64

        /// 每页记录数
        public let pageSize: Int64

        /// 过滤条件(name有RegularStatus、AlarmLevel、AlarmIndicator、RegularName)
        public let filters: [Filter]?

        /// 排序条件(RegularId)
        public let orderFields: [OrderField]?

        public init(taskId: String, projectId: String, taskType: Int64, pageNumber: Int64, pageSize: Int64, filters: [Filter]? = nil, orderFields: [OrderField]? = nil) {
            self.taskId = taskId
            self.projectId = projectId
            self.taskType = taskType
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
            self.orderFields = orderFields
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case projectId = "ProjectId"
            case taskType = "TaskType"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
            case orderFields = "OrderFields"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTaskAlarmRegulationsResponse) -> DescribeTaskAlarmRegulationsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTaskAlarmRegulationsRequest(taskId: self.taskId, projectId: self.projectId, taskType: self.taskType, pageNumber: self.pageNumber + 1, pageSize: self.pageSize, filters: self.filters, orderFields: self.orderFields)
        }
    }

    /// DescribeTaskAlarmRegulations返回参数结构体
    public struct DescribeTaskAlarmRegulationsResponse: TCPaginatedResponse {
        /// 任务告警规则信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskAlarmInfos: [TaskAlarmInfo]?

        /// 总记录数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskAlarmInfos = "TaskAlarmInfos"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TaskAlarmInfo] {
            self.taskAlarmInfos ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询任务告警规则列表
    @inlinable
    public func describeTaskAlarmRegulations(_ input: DescribeTaskAlarmRegulationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskAlarmRegulationsResponse> {
        self.client.execute(action: "DescribeTaskAlarmRegulations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务告警规则列表
    @inlinable
    public func describeTaskAlarmRegulations(_ input: DescribeTaskAlarmRegulationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskAlarmRegulationsResponse {
        try await self.client.execute(action: "DescribeTaskAlarmRegulations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务告警规则列表
    @inlinable
    public func describeTaskAlarmRegulations(taskId: String, projectId: String, taskType: Int64, pageNumber: Int64, pageSize: Int64, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskAlarmRegulationsResponse> {
        let input = DescribeTaskAlarmRegulationsRequest(taskId: taskId, projectId: projectId, taskType: taskType, pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields)
        return self.client.execute(action: "DescribeTaskAlarmRegulations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务告警规则列表
    @inlinable
    public func describeTaskAlarmRegulations(taskId: String, projectId: String, taskType: Int64, pageNumber: Int64, pageSize: Int64, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskAlarmRegulationsResponse {
        let input = DescribeTaskAlarmRegulationsRequest(taskId: taskId, projectId: projectId, taskType: taskType, pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields)
        return try await self.client.execute(action: "DescribeTaskAlarmRegulations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务告警规则列表
    @inlinable
    public func describeTaskAlarmRegulationsPaginated(_ input: DescribeTaskAlarmRegulationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TaskAlarmInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTaskAlarmRegulations, logger: logger, on: eventLoop)
    }

    /// 查询任务告警规则列表
    @inlinable @discardableResult
    public func describeTaskAlarmRegulationsPaginated(_ input: DescribeTaskAlarmRegulationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTaskAlarmRegulationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTaskAlarmRegulations, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询任务告警规则列表
    @inlinable
    public func describeTaskAlarmRegulationsPaginator(_ input: DescribeTaskAlarmRegulationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeTaskAlarmRegulationsRequest, DescribeTaskAlarmRegulationsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeTaskAlarmRegulationsRequest, DescribeTaskAlarmRegulationsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTaskAlarmRegulations, logger: logger, on: eventLoop)
    }
}
