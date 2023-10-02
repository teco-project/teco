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

extension Redis {
    /// DescribeTaskList请求参数结构体
    public struct DescribeTaskListRequest: TCPaginatedRequest {
        /// 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        public let instanceId: String?

        /// 实例名称。
        public let instanceName: String?

        /// 每页输出的任务列表大小。默认为 20，最多输出100条。
        public let limit: Int64?

        /// 分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
        public let offset: Int64?

        /// 项目 ID。登录 [Redis 控制台](https://console.cloud.tencent.com/redis)，在右上角的账号信息下拉菜单中，选择**项目管理**，即可获取对应的项目 ID。
        public let projectIds: [Int64]?

        /// 任务类型。
        /// - FLOW_CREATE：创建实例。
        /// - FLOW_MODIFYCONNECTIONCONFIG：调整带宽连接数。
        /// - FLOW_MODIFYINSTANCEPASSWORDFREE：免密变更流程。
        /// - FLOW_CLEARNETWORK：VPC退还中。
        /// - FLOW_SETPWD：设置访问密码。
        /// - FLOW_EXPORSHR：扩缩容流程。
        /// - FLOW_UpgradeArch：实例架构升级流程。
        /// - FLOW_MODIFYINSTANCEPARAMS：修改实例参数。
        /// - FLOW_MODIFYINSTACEREADONLY：只读变更流程。
        /// - FLOW_CLOSE：关闭实例。
        /// - FLOW_DELETE：删除实例。
        /// - FLOW_OPEN_WAN：开启外网。
        /// - FLOW_CLEAN：清空实例。
        /// - FLOW_MODIFYINSTANCEACCOUNT：修改实例账号。
        /// - FLOW_ENABLEINSTANCE_REPLICATE：开启副本只读。
        /// - FLOW_DISABLEINSTANCE_REPLICATE: 关闭副本只读。
        /// - FLOW_SWITCHINSTANCEVIP：交换实例 VIP。
        /// - FLOW_CHANGE_REPLICA_TO_MSTER：副本节点升主节点。
        /// - FLOW_BACKUPINSTANCE：备份实例。
        public let taskTypes: [String]?

        /// 任务执行的起始时间。格式如：2021-12-30 00:00:00。
        public let beginTime: String?

        /// 任务运行的终止时间。格式如：2021-12-30 20:59:35
        public let endTime: String?

        /// 该参数为内部使用，请忽略。
        public let taskStatus: [Int64]?

        /// 任务执行状态。
        /// - 0：任务初始化。
        /// - 1：执行中。
        /// - 2：完成。
        /// - 4：失败。
        public let result: [Int64]?

        /// 该字段已废弃，使用OperateUin代替，请忽略。
        public let operatorUin: [Int64]?

        /// 操作者账号 ID，UIN。
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

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTaskListResponse) -> DescribeTaskListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(instanceId: self.instanceId, instanceName: self.instanceName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), projectIds: self.projectIds, taskTypes: self.taskTypes, beginTime: self.beginTime, endTime: self.endTime, taskStatus: self.taskStatus, result: self.result, operatorUin: self.operatorUin, operateUin: self.operateUin)
        }
    }

    /// DescribeTaskList返回参数结构体
    public struct DescribeTaskListResponse: TCPaginatedResponse {
        /// 任务总数。
        public let totalCount: Int64

        /// 任务详细信息。
        public let tasks: [TaskInfoDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tasks = "Tasks"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TaskInfoDetail`` list from the paginated response.
        public func getItems() -> [TaskInfoDetail] {
            self.tasks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询指定实例的任务列表信息。
    @inlinable
    public func describeTaskList(_ input: DescribeTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskListResponse> {
        self.client.execute(action: "DescribeTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询指定实例的任务列表信息。
    @inlinable
    public func describeTaskList(_ input: DescribeTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskListResponse {
        try await self.client.execute(action: "DescribeTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询指定实例的任务列表信息。
    @inlinable
    public func describeTaskList(instanceId: String? = nil, instanceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, projectIds: [Int64]? = nil, taskTypes: [String]? = nil, beginTime: String? = nil, endTime: String? = nil, taskStatus: [Int64]? = nil, result: [Int64]? = nil, operatorUin: [Int64]? = nil, operateUin: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskListResponse> {
        self.describeTaskList(.init(instanceId: instanceId, instanceName: instanceName, limit: limit, offset: offset, projectIds: projectIds, taskTypes: taskTypes, beginTime: beginTime, endTime: endTime, taskStatus: taskStatus, result: result, operatorUin: operatorUin, operateUin: operateUin), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询指定实例的任务列表信息。
    @inlinable
    public func describeTaskList(instanceId: String? = nil, instanceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, projectIds: [Int64]? = nil, taskTypes: [String]? = nil, beginTime: String? = nil, endTime: String? = nil, taskStatus: [Int64]? = nil, result: [Int64]? = nil, operatorUin: [Int64]? = nil, operateUin: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskListResponse {
        try await self.describeTaskList(.init(instanceId: instanceId, instanceName: instanceName, limit: limit, offset: offset, projectIds: projectIds, taskTypes: taskTypes, beginTime: beginTime, endTime: endTime, taskStatus: taskStatus, result: result, operatorUin: operatorUin, operateUin: operateUin), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询指定实例的任务列表信息。
    @inlinable
    public func describeTaskListPaginated(_ input: DescribeTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TaskInfoDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeTaskList, logger: logger, on: eventLoop)
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询指定实例的任务列表信息。
    @inlinable @discardableResult
    public func describeTaskListPaginated(_ input: DescribeTaskListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTaskListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTaskList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询指定实例的任务列表信息。
    ///
    /// - Returns: `AsyncSequence`s of ``TaskInfoDetail`` and ``DescribeTaskListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTaskListPaginator(_ input: DescribeTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTaskListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTaskList, logger: logger, on: eventLoop)
    }
}
