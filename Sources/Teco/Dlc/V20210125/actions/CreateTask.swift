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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Dlc {
    /// CreateTask请求参数结构体
    public struct CreateTaskRequest: TCRequestModel {
        /// 计算任务，该参数中包含任务类型及其相关配置信息
        public let task: Task

        /// 数据库名称。如果SQL语句中有数据库名称，优先使用SQL语句中的数据库，否则使用该参数指定的数据库（注：当提交建库sql时，该字段传空字符串）。
        public let databaseName: String?

        /// 默认数据源名称。
        public let datasourceConnectionName: String?

        /// 数据引擎名称，不填提交到默认集群
        public let dataEngineName: String?

        public init(task: Task, databaseName: String? = nil, datasourceConnectionName: String? = nil, dataEngineName: String? = nil) {
            self.task = task
            self.databaseName = databaseName
            self.datasourceConnectionName = datasourceConnectionName
            self.dataEngineName = dataEngineName
        }

        enum CodingKeys: String, CodingKey {
            case task = "Task"
            case databaseName = "DatabaseName"
            case datasourceConnectionName = "DatasourceConnectionName"
            case dataEngineName = "DataEngineName"
        }
    }

    /// CreateTask返回参数结构体
    public struct CreateTaskResponse: TCResponseModel {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 任务创建
    ///
    /// 本接口（CreateTask）用于创建sql查询任务。（推荐使用CreateTasks接口）
    @inlinable
    public func createTask(_ input: CreateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskResponse> {
        self.client.execute(action: "CreateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 任务创建
    ///
    /// 本接口（CreateTask）用于创建sql查询任务。（推荐使用CreateTasks接口）
    @inlinable
    public func createTask(_ input: CreateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskResponse {
        try await self.client.execute(action: "CreateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 任务创建
    ///
    /// 本接口（CreateTask）用于创建sql查询任务。（推荐使用CreateTasks接口）
    @inlinable
    public func createTask(task: Task, databaseName: String? = nil, datasourceConnectionName: String? = nil, dataEngineName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskResponse> {
        self.createTask(.init(task: task, databaseName: databaseName, datasourceConnectionName: datasourceConnectionName, dataEngineName: dataEngineName), region: region, logger: logger, on: eventLoop)
    }

    /// 任务创建
    ///
    /// 本接口（CreateTask）用于创建sql查询任务。（推荐使用CreateTasks接口）
    @inlinable
    public func createTask(task: Task, databaseName: String? = nil, datasourceConnectionName: String? = nil, dataEngineName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskResponse {
        try await self.createTask(.init(task: task, databaseName: databaseName, datasourceConnectionName: datasourceConnectionName, dataEngineName: dataEngineName), region: region, logger: logger, on: eventLoop)
    }
}
