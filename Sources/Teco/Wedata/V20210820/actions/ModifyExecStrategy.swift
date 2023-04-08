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

import TecoCore

extension Wedata {
    /// ModifyExecStrategy请求参数结构体
    public struct ModifyExecStrategyRequest: TCRequestModel {
        /// 规则组ID
        public let ruleGroupId: UInt64?

        /// 监控类型 1.未配置, 2.关联生产调度, 3.离线周期检测
        public let monitorType: UInt64?

        /// 计算队列
        public let execQueue: String?

        /// 执行资源组ID
        public let executorGroupId: String?

        /// 执行资源组名称
        public let executorGroupName: String?

        /// 关联的生产调度任务列表
        public let tasks: [ProdSchedulerTask]?

        /// 项目ID
        public let projectId: String?

        /// 离线周期模式下,生效日期-开始时间
        public let startTime: String?

        /// 离线周期模式下,生效日期-结束时间
        public let endTime: String?

        /// 离线周期模式下,调度周期
        /// MINUTE_CYCLE:I,
        /// HOUR_CYCLE:H,
        /// DAY_CYCLE:D,
        /// WEEK_CYCLE:W,
        /// MONTH_CYCLE:M
        public let cycleType: String?

        /// 离线周期模式下,调度步长
        public let cycleStep: UInt64?

        /// 离线周期模式下,指定时间
        public let taskAction: String?

        /// 延时执行时间，单位分钟，可选: <0-1439
        public let delayTime: UInt64?

        /// 数据库Id
        public let databaseId: String?

        /// 数据源Id
        public let datasourceId: String?

        /// 数据表Id
        public let tableId: String?

        public init(ruleGroupId: UInt64? = nil, monitorType: UInt64? = nil, execQueue: String? = nil, executorGroupId: String? = nil, executorGroupName: String? = nil, tasks: [ProdSchedulerTask]? = nil, projectId: String? = nil, startTime: String? = nil, endTime: String? = nil, cycleType: String? = nil, cycleStep: UInt64? = nil, taskAction: String? = nil, delayTime: UInt64? = nil, databaseId: String? = nil, datasourceId: String? = nil, tableId: String? = nil) {
            self.ruleGroupId = ruleGroupId
            self.monitorType = monitorType
            self.execQueue = execQueue
            self.executorGroupId = executorGroupId
            self.executorGroupName = executorGroupName
            self.tasks = tasks
            self.projectId = projectId
            self.startTime = startTime
            self.endTime = endTime
            self.cycleType = cycleType
            self.cycleStep = cycleStep
            self.taskAction = taskAction
            self.delayTime = delayTime
            self.databaseId = databaseId
            self.datasourceId = datasourceId
            self.tableId = tableId
        }

        enum CodingKeys: String, CodingKey {
            case ruleGroupId = "RuleGroupId"
            case monitorType = "MonitorType"
            case execQueue = "ExecQueue"
            case executorGroupId = "ExecutorGroupId"
            case executorGroupName = "ExecutorGroupName"
            case tasks = "Tasks"
            case projectId = "ProjectId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case cycleType = "CycleType"
            case cycleStep = "CycleStep"
            case taskAction = "TaskAction"
            case delayTime = "DelayTime"
            case databaseId = "DatabaseId"
            case datasourceId = "DatasourceId"
            case tableId = "TableId"
        }
    }

    /// ModifyExecStrategy返回参数结构体
    public struct ModifyExecStrategyResponse: TCResponseModel {
        /// 规则组ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 更新规则组执行策略
    @inlinable
    public func modifyExecStrategy(_ input: ModifyExecStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyExecStrategyResponse> {
        self.client.execute(action: "ModifyExecStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新规则组执行策略
    @inlinable
    public func modifyExecStrategy(_ input: ModifyExecStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyExecStrategyResponse {
        try await self.client.execute(action: "ModifyExecStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新规则组执行策略
    @inlinable
    public func modifyExecStrategy(ruleGroupId: UInt64? = nil, monitorType: UInt64? = nil, execQueue: String? = nil, executorGroupId: String? = nil, executorGroupName: String? = nil, tasks: [ProdSchedulerTask]? = nil, projectId: String? = nil, startTime: String? = nil, endTime: String? = nil, cycleType: String? = nil, cycleStep: UInt64? = nil, taskAction: String? = nil, delayTime: UInt64? = nil, databaseId: String? = nil, datasourceId: String? = nil, tableId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyExecStrategyResponse> {
        self.modifyExecStrategy(.init(ruleGroupId: ruleGroupId, monitorType: monitorType, execQueue: execQueue, executorGroupId: executorGroupId, executorGroupName: executorGroupName, tasks: tasks, projectId: projectId, startTime: startTime, endTime: endTime, cycleType: cycleType, cycleStep: cycleStep, taskAction: taskAction, delayTime: delayTime, databaseId: databaseId, datasourceId: datasourceId, tableId: tableId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新规则组执行策略
    @inlinable
    public func modifyExecStrategy(ruleGroupId: UInt64? = nil, monitorType: UInt64? = nil, execQueue: String? = nil, executorGroupId: String? = nil, executorGroupName: String? = nil, tasks: [ProdSchedulerTask]? = nil, projectId: String? = nil, startTime: String? = nil, endTime: String? = nil, cycleType: String? = nil, cycleStep: UInt64? = nil, taskAction: String? = nil, delayTime: UInt64? = nil, databaseId: String? = nil, datasourceId: String? = nil, tableId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyExecStrategyResponse {
        try await self.modifyExecStrategy(.init(ruleGroupId: ruleGroupId, monitorType: monitorType, execQueue: execQueue, executorGroupId: executorGroupId, executorGroupName: executorGroupName, tasks: tasks, projectId: projectId, startTime: startTime, endTime: endTime, cycleType: cycleType, cycleStep: cycleStep, taskAction: taskAction, delayTime: delayTime, databaseId: databaseId, datasourceId: datasourceId, tableId: tableId), region: region, logger: logger, on: eventLoop)
    }
}
