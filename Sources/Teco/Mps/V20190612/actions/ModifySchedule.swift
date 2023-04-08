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

extension Mps {
    /// ModifySchedule请求参数结构体
    public struct ModifyScheduleRequest: TCRequestModel {
        /// 编排唯一标识。
        public let scheduleId: Int64

        /// 编排名称。
        public let scheduleName: String?

        /// 编排绑定的触发规则。
        public let trigger: WorkflowTrigger?

        /// 编排任务列表。
        /// 注意：内部不允许部分更新，如果需要更新需全量提交编排任务列表。
        public let activities: [Activity]?

        /// 媒体处理的文件输出存储位置。
        public let outputStorage: TaskOutputStorage?

        /// 媒体处理生成的文件输出的目标目录，必选以 / 开头和结尾。
        /// 注意：如果设置为空，则表示取消老配置的OutputDir值。
        public let outputDir: String?

        /// 任务的事件通知配置。
        public let taskNotifyConfig: TaskNotifyConfig?

        public init(scheduleId: Int64, scheduleName: String? = nil, trigger: WorkflowTrigger? = nil, activities: [Activity]? = nil, outputStorage: TaskOutputStorage? = nil, outputDir: String? = nil, taskNotifyConfig: TaskNotifyConfig? = nil) {
            self.scheduleId = scheduleId
            self.scheduleName = scheduleName
            self.trigger = trigger
            self.activities = activities
            self.outputStorage = outputStorage
            self.outputDir = outputDir
            self.taskNotifyConfig = taskNotifyConfig
        }

        enum CodingKeys: String, CodingKey {
            case scheduleId = "ScheduleId"
            case scheduleName = "ScheduleName"
            case trigger = "Trigger"
            case activities = "Activities"
            case outputStorage = "OutputStorage"
            case outputDir = "OutputDir"
            case taskNotifyConfig = "TaskNotifyConfig"
        }
    }

    /// ModifySchedule返回参数结构体
    public struct ModifyScheduleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改编排
    @inlinable @discardableResult
    public func modifySchedule(_ input: ModifyScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyScheduleResponse> {
        self.client.execute(action: "ModifySchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改编排
    @inlinable @discardableResult
    public func modifySchedule(_ input: ModifyScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyScheduleResponse {
        try await self.client.execute(action: "ModifySchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改编排
    @inlinable @discardableResult
    public func modifySchedule(scheduleId: Int64, scheduleName: String? = nil, trigger: WorkflowTrigger? = nil, activities: [Activity]? = nil, outputStorage: TaskOutputStorage? = nil, outputDir: String? = nil, taskNotifyConfig: TaskNotifyConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyScheduleResponse> {
        self.modifySchedule(.init(scheduleId: scheduleId, scheduleName: scheduleName, trigger: trigger, activities: activities, outputStorage: outputStorage, outputDir: outputDir, taskNotifyConfig: taskNotifyConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 修改编排
    @inlinable @discardableResult
    public func modifySchedule(scheduleId: Int64, scheduleName: String? = nil, trigger: WorkflowTrigger? = nil, activities: [Activity]? = nil, outputStorage: TaskOutputStorage? = nil, outputDir: String? = nil, taskNotifyConfig: TaskNotifyConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyScheduleResponse {
        try await self.modifySchedule(.init(scheduleId: scheduleId, scheduleName: scheduleName, trigger: trigger, activities: activities, outputStorage: outputStorage, outputDir: outputDir, taskNotifyConfig: taskNotifyConfig), region: region, logger: logger, on: eventLoop)
    }
}
