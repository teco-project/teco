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
    /// DescribeTaskInstances请求参数结构体
    public struct DescribeTaskInstancesRequest: TCPaginatedRequest {
        /// 项目id
        public let projectId: String

        /// 页号，默认为1
        public let pageNumber: Int64?

        /// 页大小，默认为10，最大不超过200
        public let pageSize: Int64?

        /// 工作流id列表
        public let workflowIdList: [String]?

        /// 工作流名称列表，支持模糊搜索
        public let workflowNameList: [String]?

        /// 起始数据时间，格式yyyy-MM-dd HH:mm:ss
        public let dateFrom: String?

        /// 结束数据时间，格式yyyy-MM-dd HH:mm:ss
        public let dateTo: String?

        /// 任务id列表
        public let taskIdList: [String]?

        /// 任务名称列表，支持模糊搜索
        public let taskNameList: [String]?

        /// 责任人名称列表
        public let inChargeList: [String]?

        /// 任务类型码列表，26离线同步，30Python，31PySpark，32DLC，33Impala，34Hive SQL，35Shell，36Spark SQL，39Spark，40CDW PG，92MapReduce
        public let taskTypeIdList: [Int64]?

        /// 实例状态列表，0等待事件，1等待上游，2等待运行，3运行中，4正在终止，5失败重试，6失败，7成功
        public let stateList: [String]?

        /// 周期类型列表，I分钟，H小时，D天，W周，M月，Y年，O一次性，C crontab
        public let taskCycleUnitList: [String]?

        /// 实例类型，0补录实例，1周期实例，2非周期实例
        public let instanceType: Int64?

        /// 排序字段信息列表，ScheduleDateTime / CostTime / StartTime / EndTime
        public let orderFields: [OrderField]?

        public init(projectId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, workflowIdList: [String]? = nil, workflowNameList: [String]? = nil, dateFrom: String? = nil, dateTo: String? = nil, taskIdList: [String]? = nil, taskNameList: [String]? = nil, inChargeList: [String]? = nil, taskTypeIdList: [Int64]? = nil, stateList: [String]? = nil, taskCycleUnitList: [String]? = nil, instanceType: Int64? = nil, orderFields: [OrderField]? = nil) {
            self.projectId = projectId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.workflowIdList = workflowIdList
            self.workflowNameList = workflowNameList
            self.dateFrom = dateFrom
            self.dateTo = dateTo
            self.taskIdList = taskIdList
            self.taskNameList = taskNameList
            self.inChargeList = inChargeList
            self.taskTypeIdList = taskTypeIdList
            self.stateList = stateList
            self.taskCycleUnitList = taskCycleUnitList
            self.instanceType = instanceType
            self.orderFields = orderFields
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case workflowIdList = "WorkflowIdList"
            case workflowNameList = "WorkflowNameList"
            case dateFrom = "DateFrom"
            case dateTo = "DateTo"
            case taskIdList = "TaskIdList"
            case taskNameList = "TaskNameList"
            case inChargeList = "InChargeList"
            case taskTypeIdList = "TaskTypeIdList"
            case stateList = "StateList"
            case taskCycleUnitList = "TaskCycleUnitList"
            case instanceType = "InstanceType"
            case orderFields = "OrderFields"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTaskInstancesResponse) -> DescribeTaskInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTaskInstancesRequest(projectId: self.projectId, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, workflowIdList: self.workflowIdList, workflowNameList: self.workflowNameList, dateFrom: self.dateFrom, dateTo: self.dateTo, taskIdList: self.taskIdList, taskNameList: self.taskNameList, inChargeList: self.inChargeList, taskTypeIdList: self.taskTypeIdList, stateList: self.stateList, taskCycleUnitList: self.taskCycleUnitList, instanceType: self.instanceType, orderFields: self.orderFields)
        }
    }

    /// DescribeTaskInstances返回参数结构体
    public struct DescribeTaskInstancesResponse: TCPaginatedResponse {
        /// 无
        public let data: DescribeTaskInstancesData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TaskInstanceInfo] {
            self.data.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data.totalCount
        }
    }

    /// 查询任务实例列表
    @inlinable
    public func describeTaskInstances(_ input: DescribeTaskInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskInstancesResponse> {
        self.client.execute(action: "DescribeTaskInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务实例列表
    @inlinable
    public func describeTaskInstances(_ input: DescribeTaskInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskInstancesResponse {
        try await self.client.execute(action: "DescribeTaskInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务实例列表
    @inlinable
    public func describeTaskInstances(projectId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, workflowIdList: [String]? = nil, workflowNameList: [String]? = nil, dateFrom: String? = nil, dateTo: String? = nil, taskIdList: [String]? = nil, taskNameList: [String]? = nil, inChargeList: [String]? = nil, taskTypeIdList: [Int64]? = nil, stateList: [String]? = nil, taskCycleUnitList: [String]? = nil, instanceType: Int64? = nil, orderFields: [OrderField]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskInstancesResponse> {
        let input = DescribeTaskInstancesRequest(projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, workflowIdList: workflowIdList, workflowNameList: workflowNameList, dateFrom: dateFrom, dateTo: dateTo, taskIdList: taskIdList, taskNameList: taskNameList, inChargeList: inChargeList, taskTypeIdList: taskTypeIdList, stateList: stateList, taskCycleUnitList: taskCycleUnitList, instanceType: instanceType, orderFields: orderFields)
        return self.client.execute(action: "DescribeTaskInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务实例列表
    @inlinable
    public func describeTaskInstances(projectId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, workflowIdList: [String]? = nil, workflowNameList: [String]? = nil, dateFrom: String? = nil, dateTo: String? = nil, taskIdList: [String]? = nil, taskNameList: [String]? = nil, inChargeList: [String]? = nil, taskTypeIdList: [Int64]? = nil, stateList: [String]? = nil, taskCycleUnitList: [String]? = nil, instanceType: Int64? = nil, orderFields: [OrderField]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskInstancesResponse {
        let input = DescribeTaskInstancesRequest(projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, workflowIdList: workflowIdList, workflowNameList: workflowNameList, dateFrom: dateFrom, dateTo: dateTo, taskIdList: taskIdList, taskNameList: taskNameList, inChargeList: inChargeList, taskTypeIdList: taskTypeIdList, stateList: stateList, taskCycleUnitList: taskCycleUnitList, instanceType: instanceType, orderFields: orderFields)
        return try await self.client.execute(action: "DescribeTaskInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务实例列表
    @inlinable
    public func describeTaskInstancesPaginated(_ input: DescribeTaskInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TaskInstanceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTaskInstances, logger: logger, on: eventLoop)
    }

    /// 查询任务实例列表
    @inlinable @discardableResult
    public func describeTaskInstancesPaginated(_ input: DescribeTaskInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTaskInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTaskInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询任务实例列表
    @inlinable
    public func describeTaskInstancesPaginator(_ input: DescribeTaskInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTaskInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTaskInstances, logger: logger, on: eventLoop)
    }
}
