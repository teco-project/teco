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

extension Iotcloud {
    /// CreateTask请求参数结构体
    public struct CreateTaskRequest: TCRequest {
        /// 任务类型，取值为 “UpdateShadow” 或者 “PublishMessage”
        public let taskType: String

        /// 执行任务的产品ID
        public let productId: String

        /// 执行任务的设备名的正则表达式
        public let deviceNameFilter: String

        /// 任务开始执行的时间。 取值为 Unix 时间戳，单位秒，且需大于等于当前时间时间戳，0为系统当前时间时间戳，即立即执行，最大为当前时间86400秒后，超过则取值为当前时间86400秒后
        public let scheduleTimeInSeconds: UInt64

        /// 任务描述细节，描述见下 Task
        public let tasks: Task

        /// 最长执行时间，单位秒，被调度后超过此时间仍未有结果则视为任务失败。取值为0-86400，默认为86400
        public let maxExecutionTimeInSeconds: UInt64?

        public init(taskType: String, productId: String, deviceNameFilter: String, scheduleTimeInSeconds: UInt64, tasks: Task, maxExecutionTimeInSeconds: UInt64? = nil) {
            self.taskType = taskType
            self.productId = productId
            self.deviceNameFilter = deviceNameFilter
            self.scheduleTimeInSeconds = scheduleTimeInSeconds
            self.tasks = tasks
            self.maxExecutionTimeInSeconds = maxExecutionTimeInSeconds
        }

        enum CodingKeys: String, CodingKey {
            case taskType = "TaskType"
            case productId = "ProductId"
            case deviceNameFilter = "DeviceNameFilter"
            case scheduleTimeInSeconds = "ScheduleTimeInSeconds"
            case tasks = "Tasks"
            case maxExecutionTimeInSeconds = "MaxExecutionTimeInSeconds"
        }
    }

    /// CreateTask返回参数结构体
    public struct CreateTaskResponse: TCResponse {
        /// 创建的任务ID
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建任务
    ///
    /// 本接口（CreateTask）用于创建一个批量任务。目前此接口可以创建批量更新影子以及批量下发消息的任务
    @inlinable
    public func createTask(_ input: CreateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskResponse> {
        self.client.execute(action: "CreateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建任务
    ///
    /// 本接口（CreateTask）用于创建一个批量任务。目前此接口可以创建批量更新影子以及批量下发消息的任务
    @inlinable
    public func createTask(_ input: CreateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskResponse {
        try await self.client.execute(action: "CreateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建任务
    ///
    /// 本接口（CreateTask）用于创建一个批量任务。目前此接口可以创建批量更新影子以及批量下发消息的任务
    @inlinable
    public func createTask(taskType: String, productId: String, deviceNameFilter: String, scheduleTimeInSeconds: UInt64, tasks: Task, maxExecutionTimeInSeconds: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskResponse> {
        self.createTask(.init(taskType: taskType, productId: productId, deviceNameFilter: deviceNameFilter, scheduleTimeInSeconds: scheduleTimeInSeconds, tasks: tasks, maxExecutionTimeInSeconds: maxExecutionTimeInSeconds), region: region, logger: logger, on: eventLoop)
    }

    /// 创建任务
    ///
    /// 本接口（CreateTask）用于创建一个批量任务。目前此接口可以创建批量更新影子以及批量下发消息的任务
    @inlinable
    public func createTask(taskType: String, productId: String, deviceNameFilter: String, scheduleTimeInSeconds: UInt64, tasks: Task, maxExecutionTimeInSeconds: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskResponse {
        try await self.createTask(.init(taskType: taskType, productId: productId, deviceNameFilter: deviceNameFilter, scheduleTimeInSeconds: scheduleTimeInSeconds, tasks: tasks, maxExecutionTimeInSeconds: maxExecutionTimeInSeconds), region: region, logger: logger, on: eventLoop)
    }
}
