//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cfg {
    /// ExecuteTaskInstance请求参数结构体
    public struct ExecuteTaskInstanceRequest: TCRequestModel {
        /// 任务ID
        public let taskId: UInt64

        /// 任务动作ID
        public let taskActionId: UInt64

        /// 任务动作实例ID
        public let taskInstanceIds: [UInt64]

        /// 是否操作整个任务
        public let isOperateAll: Bool

        /// 操作类型：（1--启动   2--执行  3--跳过   5--重试）
        public let actionType: UInt64

        /// 动作组ID
        public let taskGroupId: UInt64

        public init(taskId: UInt64, taskActionId: UInt64, taskInstanceIds: [UInt64], isOperateAll: Bool, actionType: UInt64, taskGroupId: UInt64) {
            self.taskId = taskId
            self.taskActionId = taskActionId
            self.taskInstanceIds = taskInstanceIds
            self.isOperateAll = isOperateAll
            self.actionType = actionType
            self.taskGroupId = taskGroupId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case taskActionId = "TaskActionId"
            case taskInstanceIds = "TaskInstanceIds"
            case isOperateAll = "IsOperateAll"
            case actionType = "ActionType"
            case taskGroupId = "TaskGroupId"
        }
    }

    /// ExecuteTaskInstance返回参数结构体
    public struct ExecuteTaskInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 执行任务动作实例
    ///
    /// 触发混沌演练任务的动作，对于实例进行演练操作
    @inlinable @discardableResult
    public func executeTaskInstance(_ input: ExecuteTaskInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteTaskInstanceResponse> {
        self.client.execute(action: "ExecuteTaskInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 执行任务动作实例
    ///
    /// 触发混沌演练任务的动作，对于实例进行演练操作
    @inlinable @discardableResult
    public func executeTaskInstance(_ input: ExecuteTaskInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteTaskInstanceResponse {
        try await self.client.execute(action: "ExecuteTaskInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 执行任务动作实例
    ///
    /// 触发混沌演练任务的动作，对于实例进行演练操作
    @inlinable @discardableResult
    public func executeTaskInstance(taskId: UInt64, taskActionId: UInt64, taskInstanceIds: [UInt64], isOperateAll: Bool, actionType: UInt64, taskGroupId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteTaskInstanceResponse> {
        self.executeTaskInstance(ExecuteTaskInstanceRequest(taskId: taskId, taskActionId: taskActionId, taskInstanceIds: taskInstanceIds, isOperateAll: isOperateAll, actionType: actionType, taskGroupId: taskGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 执行任务动作实例
    ///
    /// 触发混沌演练任务的动作，对于实例进行演练操作
    @inlinable @discardableResult
    public func executeTaskInstance(taskId: UInt64, taskActionId: UInt64, taskInstanceIds: [UInt64], isOperateAll: Bool, actionType: UInt64, taskGroupId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteTaskInstanceResponse {
        try await self.executeTaskInstance(ExecuteTaskInstanceRequest(taskId: taskId, taskActionId: taskActionId, taskInstanceIds: taskInstanceIds, isOperateAll: isOperateAll, actionType: actionType, taskGroupId: taskGroupId), region: region, logger: logger, on: eventLoop)
    }
}
