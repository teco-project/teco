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

extension Wedata {
    /// ModifyWorkflowSchedule请求参数结构体
    public struct ModifyWorkflowScheduleRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String

        /// 工作流id
        public let workflowId: String

        /// 延迟时间，单位分钟
        public let delayTime: Int64

        /// 启动时间
        public let startupTime: Int64

        /// 自依赖类型  1:有序串行 一次一个 排队, 2: 无序串行 一次一个 不排队， 3:并行 一次多个
        public let selfDepend: Int64

        /// "周期类型  0:crontab类型, 1:分钟，2:小时，3:天，4:周，5:月，6:一次性，7:用户驱动，10:弹性周期 周,11:弹性周期 月,12:年,13:即时触发Instant类型，与正常周期调度任务逻辑隔离
        public let cycleType: Int64

        /// 步长，间隔时间，最小1
        public let cycleStep: Int64

        /// 生效开始时间，格式 yyyy-MM-dd HH:mm:ss
        public let startTime: String?

        /// 生效结束时间，格式 yyyy-MM-dd HH:mm:ss
        public let endTime: String?

        /// 调度配置-弹性周期配置，小时/周/月/年调度才有，小时任务指定每天的0点3点4点跑，则为'0,3,4'。
        public let taskAction: String?

        /// cron表达式  周期类型为crontab调度才需要
        public let crontabExpression: String?

        /// 执行时间左闭区间，格式：HH:mm  小时调度才有，例如小时任务, 每日固定区间生效
        public let executionStartTime: String?

        /// 执行时间右闭区间，格式：HH:mm  小时调度才有，例如小时任务, 每日固定区间生效
        public let executionEndTime: String?

        /// 工作流依赖 ,yes 或者no
        public let dependencyWorkflow: String?

        public init(projectId: String, workflowId: String, delayTime: Int64, startupTime: Int64, selfDepend: Int64, cycleType: Int64, cycleStep: Int64, startTime: String? = nil, endTime: String? = nil, taskAction: String? = nil, crontabExpression: String? = nil, executionStartTime: String? = nil, executionEndTime: String? = nil, dependencyWorkflow: String? = nil) {
            self.projectId = projectId
            self.workflowId = workflowId
            self.delayTime = delayTime
            self.startupTime = startupTime
            self.selfDepend = selfDepend
            self.cycleType = cycleType
            self.cycleStep = cycleStep
            self.startTime = startTime
            self.endTime = endTime
            self.taskAction = taskAction
            self.crontabExpression = crontabExpression
            self.executionStartTime = executionStartTime
            self.executionEndTime = executionEndTime
            self.dependencyWorkflow = dependencyWorkflow
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case workflowId = "WorkflowId"
            case delayTime = "DelayTime"
            case startupTime = "StartupTime"
            case selfDepend = "SelfDepend"
            case cycleType = "CycleType"
            case cycleStep = "CycleStep"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case taskAction = "TaskAction"
            case crontabExpression = "CrontabExpression"
            case executionStartTime = "ExecutionStartTime"
            case executionEndTime = "ExecutionEndTime"
            case dependencyWorkflow = "DependencyWorkflow"
        }
    }

    /// ModifyWorkflowSchedule返回参数结构体
    public struct ModifyWorkflowScheduleResponse: TCResponseModel {
        /// 执行结果
        public let data: BatchResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 更新工作流调度【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 更新工作流调度
    @inlinable
    public func modifyWorkflowSchedule(_ input: ModifyWorkflowScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWorkflowScheduleResponse> {
        self.client.execute(action: "ModifyWorkflowSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新工作流调度【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 更新工作流调度
    @inlinable
    public func modifyWorkflowSchedule(_ input: ModifyWorkflowScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWorkflowScheduleResponse {
        try await self.client.execute(action: "ModifyWorkflowSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新工作流调度【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 更新工作流调度
    @inlinable
    public func modifyWorkflowSchedule(projectId: String, workflowId: String, delayTime: Int64, startupTime: Int64, selfDepend: Int64, cycleType: Int64, cycleStep: Int64, startTime: String? = nil, endTime: String? = nil, taskAction: String? = nil, crontabExpression: String? = nil, executionStartTime: String? = nil, executionEndTime: String? = nil, dependencyWorkflow: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWorkflowScheduleResponse> {
        self.modifyWorkflowSchedule(.init(projectId: projectId, workflowId: workflowId, delayTime: delayTime, startupTime: startupTime, selfDepend: selfDepend, cycleType: cycleType, cycleStep: cycleStep, startTime: startTime, endTime: endTime, taskAction: taskAction, crontabExpression: crontabExpression, executionStartTime: executionStartTime, executionEndTime: executionEndTime, dependencyWorkflow: dependencyWorkflow), region: region, logger: logger, on: eventLoop)
    }

    /// 更新工作流调度【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 更新工作流调度
    @inlinable
    public func modifyWorkflowSchedule(projectId: String, workflowId: String, delayTime: Int64, startupTime: Int64, selfDepend: Int64, cycleType: Int64, cycleStep: Int64, startTime: String? = nil, endTime: String? = nil, taskAction: String? = nil, crontabExpression: String? = nil, executionStartTime: String? = nil, executionEndTime: String? = nil, dependencyWorkflow: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWorkflowScheduleResponse {
        try await self.modifyWorkflowSchedule(.init(projectId: projectId, workflowId: workflowId, delayTime: delayTime, startupTime: startupTime, selfDepend: selfDepend, cycleType: cycleType, cycleStep: cycleStep, startTime: startTime, endTime: endTime, taskAction: taskAction, crontabExpression: crontabExpression, executionStartTime: executionStartTime, executionEndTime: executionEndTime, dependencyWorkflow: dependencyWorkflow), region: region, logger: logger, on: eventLoop)
    }
}
