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
    /// CreateTaskAlarmRegular请求参数结构体
    public struct CreateTaskAlarmRegularRequest: TCRequestModel {
        /// 告警配置信息
        public let taskAlarmInfo: TaskAlarmInfo

        /// 项目ID
        public let projectId: String

        public init(taskAlarmInfo: TaskAlarmInfo, projectId: String) {
            self.taskAlarmInfo = taskAlarmInfo
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case taskAlarmInfo = "TaskAlarmInfo"
            case projectId = "ProjectId"
        }
    }

    /// CreateTaskAlarmRegular返回参数结构体
    public struct CreateTaskAlarmRegularResponse: TCResponseModel {
        /// 告警ID
        public let alarmId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alarmId = "AlarmId"
            case requestId = "RequestId"
        }
    }

    /// 创建任务告警规则
    @inlinable
    public func createTaskAlarmRegular(_ input: CreateTaskAlarmRegularRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskAlarmRegularResponse> {
        self.client.execute(action: "CreateTaskAlarmRegular", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建任务告警规则
    @inlinable
    public func createTaskAlarmRegular(_ input: CreateTaskAlarmRegularRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskAlarmRegularResponse {
        try await self.client.execute(action: "CreateTaskAlarmRegular", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建任务告警规则
    @inlinable
    public func createTaskAlarmRegular(taskAlarmInfo: TaskAlarmInfo, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskAlarmRegularResponse> {
        self.createTaskAlarmRegular(.init(taskAlarmInfo: taskAlarmInfo, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建任务告警规则
    @inlinable
    public func createTaskAlarmRegular(taskAlarmInfo: TaskAlarmInfo, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskAlarmRegularResponse {
        try await self.createTaskAlarmRegular(.init(taskAlarmInfo: taskAlarmInfo, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
