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

extension Tsf {
    /// CreateTask请求参数结构体
    public struct CreateTaskRequest: TCRequest {
        /// 任务名称，任务长度64字符
        public let taskName: String

        /// 任务内容，长度限制65536个字节
        public let taskContent: String

        /// 执行类型，unicast/broadcast
        public let executeType: String

        /// 任务类型,java
        public let taskType: String

        /// 任务超时时间， 时间单位 ms
        public let timeOut: UInt64

        /// 部署组ID
        public let groupId: String

        /// 触发规则
        public let taskRule: TaskRule?

        /// 重试次数，0 <= RetryCount<= 10
        public let retryCount: UInt64?

        /// 重试间隔， 0 <= RetryInterval <= 600000， 时间单位 ms
        public let retryInterval: UInt64?

        /// 分片数量
        public let shardCount: Int64?

        /// 分片参数
        public let shardArguments: [ShardArgument]?

        /// 判断任务成功的操作符
        public let successOperator: String?

        /// 判断任务成功率的阈值，如100
        public let successRatio: String?

        /// 高级设置
        public let advanceSettings: AdvanceSettings?

        /// 任务参数，长度限制10000个字符
        public let taskArgument: String?

        public let programIdList: [String]?

        public init(taskName: String, taskContent: String, executeType: String, taskType: String, timeOut: UInt64, groupId: String, taskRule: TaskRule? = nil, retryCount: UInt64? = nil, retryInterval: UInt64? = nil, shardCount: Int64? = nil, shardArguments: [ShardArgument]? = nil, successOperator: String? = nil, successRatio: String? = nil, advanceSettings: AdvanceSettings? = nil, taskArgument: String? = nil, programIdList: [String]? = nil) {
            self.taskName = taskName
            self.taskContent = taskContent
            self.executeType = executeType
            self.taskType = taskType
            self.timeOut = timeOut
            self.groupId = groupId
            self.taskRule = taskRule
            self.retryCount = retryCount
            self.retryInterval = retryInterval
            self.shardCount = shardCount
            self.shardArguments = shardArguments
            self.successOperator = successOperator
            self.successRatio = successRatio
            self.advanceSettings = advanceSettings
            self.taskArgument = taskArgument
            self.programIdList = programIdList
        }

        enum CodingKeys: String, CodingKey {
            case taskName = "TaskName"
            case taskContent = "TaskContent"
            case executeType = "ExecuteType"
            case taskType = "TaskType"
            case timeOut = "TimeOut"
            case groupId = "GroupId"
            case taskRule = "TaskRule"
            case retryCount = "RetryCount"
            case retryInterval = "RetryInterval"
            case shardCount = "ShardCount"
            case shardArguments = "ShardArguments"
            case successOperator = "SuccessOperator"
            case successRatio = "SuccessRatio"
            case advanceSettings = "AdvanceSettings"
            case taskArgument = "TaskArgument"
            case programIdList = "ProgramIdList"
        }
    }

    /// CreateTask返回参数结构体
    public struct CreateTaskResponse: TCResponse {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建任务
    @inlinable
    public func createTask(_ input: CreateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskResponse> {
        self.client.execute(action: "CreateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建任务
    @inlinable
    public func createTask(_ input: CreateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskResponse {
        try await self.client.execute(action: "CreateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建任务
    @inlinable
    public func createTask(taskName: String, taskContent: String, executeType: String, taskType: String, timeOut: UInt64, groupId: String, taskRule: TaskRule? = nil, retryCount: UInt64? = nil, retryInterval: UInt64? = nil, shardCount: Int64? = nil, shardArguments: [ShardArgument]? = nil, successOperator: String? = nil, successRatio: String? = nil, advanceSettings: AdvanceSettings? = nil, taskArgument: String? = nil, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskResponse> {
        self.createTask(.init(taskName: taskName, taskContent: taskContent, executeType: executeType, taskType: taskType, timeOut: timeOut, groupId: groupId, taskRule: taskRule, retryCount: retryCount, retryInterval: retryInterval, shardCount: shardCount, shardArguments: shardArguments, successOperator: successOperator, successRatio: successRatio, advanceSettings: advanceSettings, taskArgument: taskArgument, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 创建任务
    @inlinable
    public func createTask(taskName: String, taskContent: String, executeType: String, taskType: String, timeOut: UInt64, groupId: String, taskRule: TaskRule? = nil, retryCount: UInt64? = nil, retryInterval: UInt64? = nil, shardCount: Int64? = nil, shardArguments: [ShardArgument]? = nil, successOperator: String? = nil, successRatio: String? = nil, advanceSettings: AdvanceSettings? = nil, taskArgument: String? = nil, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskResponse {
        try await self.createTask(.init(taskName: taskName, taskContent: taskContent, executeType: executeType, taskType: taskType, timeOut: timeOut, groupId: groupId, taskRule: taskRule, retryCount: retryCount, retryInterval: retryInterval, shardCount: shardCount, shardArguments: shardArguments, successOperator: successOperator, successRatio: successRatio, advanceSettings: advanceSettings, taskArgument: taskArgument, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }
}
