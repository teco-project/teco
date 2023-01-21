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
    /// ModifyTaskName请求参数结构体
    public struct ModifyTaskNameRequest: TCRequestModel {
        /// 名称
        public let taskName: String

        /// id
        public let taskId: String

        /// 项目/工作空间id
        public let projectId: String

        /// 备注
        public let notes: String?

        public init(taskName: String, taskId: String, projectId: String, notes: String? = nil) {
            self.taskName = taskName
            self.taskId = taskId
            self.projectId = projectId
            self.notes = notes
        }

        enum CodingKeys: String, CodingKey {
            case taskName = "TaskName"
            case taskId = "TaskId"
            case projectId = "ProjectId"
            case notes = "Notes"
        }
    }

    /// ModifyTaskName返回参数结构体
    public struct ModifyTaskNameResponse: TCResponseModel {
        /// 结果
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 重命名任务（任务编辑）
    @inlinable
    public func modifyTaskName(_ input: ModifyTaskNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTaskNameResponse> {
        self.client.execute(action: "ModifyTaskName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重命名任务（任务编辑）
    @inlinable
    public func modifyTaskName(_ input: ModifyTaskNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTaskNameResponse {
        try await self.client.execute(action: "ModifyTaskName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重命名任务（任务编辑）
    @inlinable
    public func modifyTaskName(taskName: String, taskId: String, projectId: String, notes: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTaskNameResponse> {
        self.modifyTaskName(ModifyTaskNameRequest(taskName: taskName, taskId: taskId, projectId: projectId, notes: notes), region: region, logger: logger, on: eventLoop)
    }

    /// 重命名任务（任务编辑）
    @inlinable
    public func modifyTaskName(taskName: String, taskId: String, projectId: String, notes: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTaskNameResponse {
        try await self.modifyTaskName(ModifyTaskNameRequest(taskName: taskName, taskId: taskId, projectId: projectId, notes: notes), region: region, logger: logger, on: eventLoop)
    }
}
