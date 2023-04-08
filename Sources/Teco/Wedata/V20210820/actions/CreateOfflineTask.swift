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

extension Wedata {
    /// CreateOfflineTask请求参数结构体
    public struct CreateOfflineTaskRequest: TCRequestModel {
        /// 项目/工作
        public let projectId: String

        /// 1
        public let cycleStep: Int64

        /// 0
        public let delayTime: Int64

        /// 2099-12-31 00:00:00
        public let endTime: String

        /// 备注
        public let notes: String

        /// 当前日期
        public let startTime: String

        /// 任务名称
        public let taskName: String

        /// 跟之前调用调度接口保持一致27
        public let typeId: Int64

        /// 默认 ""
        public let taskAction: String

        /// 区分画布和表单
        public let taskMode: String

        public init(projectId: String, cycleStep: Int64, delayTime: Int64, endTime: String, notes: String, startTime: String, taskName: String, typeId: Int64, taskAction: String, taskMode: String) {
            self.projectId = projectId
            self.cycleStep = cycleStep
            self.delayTime = delayTime
            self.endTime = endTime
            self.notes = notes
            self.startTime = startTime
            self.taskName = taskName
            self.typeId = typeId
            self.taskAction = taskAction
            self.taskMode = taskMode
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case cycleStep = "CycleStep"
            case delayTime = "DelayTime"
            case endTime = "EndTime"
            case notes = "Notes"
            case startTime = "StartTime"
            case taskName = "TaskName"
            case typeId = "TypeId"
            case taskAction = "TaskAction"
            case taskMode = "TaskMode"
        }
    }

    /// CreateOfflineTask返回参数结构体
    public struct CreateOfflineTaskResponse: TCResponseModel {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 结果
        public let data: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 创建离线任务
    @inlinable
    public func createOfflineTask(_ input: CreateOfflineTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOfflineTaskResponse> {
        self.client.execute(action: "CreateOfflineTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建离线任务
    @inlinable
    public func createOfflineTask(_ input: CreateOfflineTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOfflineTaskResponse {
        try await self.client.execute(action: "CreateOfflineTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建离线任务
    @inlinable
    public func createOfflineTask(projectId: String, cycleStep: Int64, delayTime: Int64, endTime: String, notes: String, startTime: String, taskName: String, typeId: Int64, taskAction: String, taskMode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOfflineTaskResponse> {
        self.createOfflineTask(.init(projectId: projectId, cycleStep: cycleStep, delayTime: delayTime, endTime: endTime, notes: notes, startTime: startTime, taskName: taskName, typeId: typeId, taskAction: taskAction, taskMode: taskMode), region: region, logger: logger, on: eventLoop)
    }

    /// 创建离线任务
    @inlinable
    public func createOfflineTask(projectId: String, cycleStep: Int64, delayTime: Int64, endTime: String, notes: String, startTime: String, taskName: String, typeId: Int64, taskAction: String, taskMode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOfflineTaskResponse {
        try await self.createOfflineTask(.init(projectId: projectId, cycleStep: cycleStep, delayTime: delayTime, endTime: endTime, notes: notes, startTime: startTime, taskName: taskName, typeId: typeId, taskAction: taskAction, taskMode: taskMode), region: region, logger: logger, on: eventLoop)
    }
}
