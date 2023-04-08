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
    /// CreateTask请求参数结构体
    public struct CreateTaskRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String

        /// 工作流id
        public let workflowId: String

        /// 任务名
        public let taskName: String

        /// 26离线同步，30Python，31PySpark，32DLC，33Impala，34Hive SQL，35Shell，36Spark SQL，39Spark，40CDW PG，92MapReduce
        public let taskType: Int64

        /// 扩展属性
        public let taskExt: [TaskExtInfo]?

        public init(projectId: String, workflowId: String, taskName: String, taskType: Int64, taskExt: [TaskExtInfo]? = nil) {
            self.projectId = projectId
            self.workflowId = workflowId
            self.taskName = taskName
            self.taskType = taskType
            self.taskExt = taskExt
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case workflowId = "WorkflowId"
            case taskName = "TaskName"
            case taskType = "TaskType"
            case taskExt = "TaskExt"
        }
    }

    /// CreateTask返回参数结构体
    public struct CreateTaskResponse: TCResponseModel {
        /// 返回任务Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: CommonId?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 创建任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 创建任务
    @inlinable
    public func createTask(_ input: CreateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskResponse> {
        self.client.execute(action: "CreateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 创建任务
    @inlinable
    public func createTask(_ input: CreateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskResponse {
        try await self.client.execute(action: "CreateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 创建任务
    @inlinable
    public func createTask(projectId: String, workflowId: String, taskName: String, taskType: Int64, taskExt: [TaskExtInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskResponse> {
        self.createTask(.init(projectId: projectId, workflowId: workflowId, taskName: taskName, taskType: taskType, taskExt: taskExt), region: region, logger: logger, on: eventLoop)
    }

    /// 创建任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 创建任务
    @inlinable
    public func createTask(projectId: String, workflowId: String, taskName: String, taskType: Int64, taskExt: [TaskExtInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskResponse {
        try await self.createTask(.init(projectId: projectId, workflowId: workflowId, taskName: taskName, taskType: taskType, taskExt: taskExt), region: region, logger: logger, on: eventLoop)
    }
}
