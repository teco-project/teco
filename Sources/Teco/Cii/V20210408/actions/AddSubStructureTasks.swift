//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cii {
    /// AddSubStructureTasks请求参数结构体
    public struct AddSubStructureTasksRequest: TCRequestModel {
        /// 主任务id
        public let mainTaskId: String

        /// 子任务信息数组
        public let taskInfos: [CreateStructureTaskInfo]

        public init(mainTaskId: String, taskInfos: [CreateStructureTaskInfo]) {
            self.mainTaskId = mainTaskId
            self.taskInfos = taskInfos
        }

        enum CodingKeys: String, CodingKey {
            case mainTaskId = "MainTaskId"
            case taskInfos = "TaskInfos"
        }
    }

    /// AddSubStructureTasks返回参数结构体
    public struct AddSubStructureTasksResponse: TCResponseModel {
        /// 增量子任务id数组
        public let subTaskIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subTaskIds = "SubTaskIds"
            case requestId = "RequestId"
        }
    }

    /// 结构化增量子任务
    ///
    /// 如果主任务下的报告不满足需求，可以基于主任务批量添加子任务
    @inlinable
    public func addSubStructureTasks(_ input: AddSubStructureTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AddSubStructureTasksResponse > {
        self.client.execute(action: "AddSubStructureTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 结构化增量子任务
    ///
    /// 如果主任务下的报告不满足需求，可以基于主任务批量添加子任务
    @inlinable
    public func addSubStructureTasks(_ input: AddSubStructureTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddSubStructureTasksResponse {
        try await self.client.execute(action: "AddSubStructureTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 结构化增量子任务
    ///
    /// 如果主任务下的报告不满足需求，可以基于主任务批量添加子任务
    @inlinable
    public func addSubStructureTasks(mainTaskId: String, taskInfos: [CreateStructureTaskInfo], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AddSubStructureTasksResponse > {
        self.addSubStructureTasks(AddSubStructureTasksRequest(mainTaskId: mainTaskId, taskInfos: taskInfos), logger: logger, on: eventLoop)
    }

    /// 结构化增量子任务
    ///
    /// 如果主任务下的报告不满足需求，可以基于主任务批量添加子任务
    @inlinable
    public func addSubStructureTasks(mainTaskId: String, taskInfos: [CreateStructureTaskInfo], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddSubStructureTasksResponse {
        try await self.addSubStructureTasks(AddSubStructureTasksRequest(mainTaskId: mainTaskId, taskInfos: taskInfos), logger: logger, on: eventLoop)
    }
}
