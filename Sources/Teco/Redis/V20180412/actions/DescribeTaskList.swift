//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Redis {
    /// DescribeTaskList请求参数结构体
    public struct DescribeTaskListRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String?

        /// 实例名称
        public let instanceName: String?

        /// 分页大小,默认20，上限不大于100
        public let limit: Int64?

        /// 偏移量，取Limit整数倍（自动向下取整）
        public let offset: Int64?

        /// 项目Id
        public let projectIds: [Int64]?

        /// 任务类型
        public let taskTypes: [String]?

        /// 起始时间
        public let beginTime: String?

        /// 终止时间
        public let endTime: String?

        /// 任务状态
        public let taskStatus: [Int64]?

        /// 任务状态
        public let result: [Int64]?

        /// 操作者Uin，该字段已废弃，使用OperateUin代替
        public let operatorUin: [Int64]?

        /// 操作者Uin
        public let operateUin: [String]?

        public init(instanceId: String? = nil, instanceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, projectIds: [Int64]? = nil, taskTypes: [String]? = nil, beginTime: String? = nil, endTime: String? = nil, taskStatus: [Int64]? = nil, result: [Int64]? = nil, operatorUin: [Int64]? = nil, operateUin: [String]? = nil) {
            self.instanceId = instanceId
            self.instanceName = instanceName
            self.limit = limit
            self.offset = offset
            self.projectIds = projectIds
            self.taskTypes = taskTypes
            self.beginTime = beginTime
            self.endTime = endTime
            self.taskStatus = taskStatus
            self.result = result
            self.operatorUin = operatorUin
            self.operateUin = operateUin
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case limit = "Limit"
            case offset = "Offset"
            case projectIds = "ProjectIds"
            case taskTypes = "TaskTypes"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case taskStatus = "TaskStatus"
            case result = "Result"
            case operatorUin = "OperatorUin"
            case operateUin = "OperateUin"
        }
    }

    /// DescribeTaskList返回参数结构体
    public struct DescribeTaskListResponse: TCResponseModel {
        /// 任务总数
        public let totalCount: Int64

        /// 任务详细信息
        public let tasks: [TaskInfoDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tasks = "Tasks"
            case requestId = "RequestId"
        }
    }

    /// 查询任务列表信息
    @inlinable
    public func describeTaskList(_ input: DescribeTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskListResponse > {
        self.client.execute(action: "DescribeTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务列表信息
    @inlinable
    public func describeTaskList(_ input: DescribeTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskListResponse {
        try await self.client.execute(action: "DescribeTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务列表信息
    @inlinable
    public func describeTaskList(instanceId: String? = nil, instanceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, projectIds: [Int64]? = nil, taskTypes: [String]? = nil, beginTime: String? = nil, endTime: String? = nil, taskStatus: [Int64]? = nil, result: [Int64]? = nil, operatorUin: [Int64]? = nil, operateUin: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskListResponse > {
        self.describeTaskList(DescribeTaskListRequest(instanceId: instanceId, instanceName: instanceName, limit: limit, offset: offset, projectIds: projectIds, taskTypes: taskTypes, beginTime: beginTime, endTime: endTime, taskStatus: taskStatus, result: result, operatorUin: operatorUin, operateUin: operateUin), logger: logger, on: eventLoop)
    }

    /// 查询任务列表信息
    @inlinable
    public func describeTaskList(instanceId: String? = nil, instanceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, projectIds: [Int64]? = nil, taskTypes: [String]? = nil, beginTime: String? = nil, endTime: String? = nil, taskStatus: [Int64]? = nil, result: [Int64]? = nil, operatorUin: [Int64]? = nil, operateUin: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskListResponse {
        try await self.describeTaskList(DescribeTaskListRequest(instanceId: instanceId, instanceName: instanceName, limit: limit, offset: offset, projectIds: projectIds, taskTypes: taskTypes, beginTime: beginTime, endTime: endTime, taskStatus: taskStatus, result: result, operatorUin: operatorUin, operateUin: operateUin), logger: logger, on: eventLoop)
    }
}
