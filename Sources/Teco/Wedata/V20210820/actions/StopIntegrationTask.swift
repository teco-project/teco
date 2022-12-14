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

extension Wedata {
    /// StopIntegrationTask请求参数结构体
    public struct StopIntegrationTaskRequest: TCRequestModel {
        /// 任务id
        public let taskId: String

        /// 项目id
        public let projectId: String

        public init(taskId: String, projectId: String) {
            self.taskId = taskId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case projectId = "ProjectId"
        }
    }

    /// StopIntegrationTask返回参数结构体
    public struct StopIntegrationTaskResponse: TCResponseModel {
        /// 操作成功与否标识
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 停止集成任务
    @inlinable
    public func stopIntegrationTask(_ input: StopIntegrationTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopIntegrationTaskResponse > {
        self.client.execute(action: "StopIntegrationTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止集成任务
    @inlinable
    public func stopIntegrationTask(_ input: StopIntegrationTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopIntegrationTaskResponse {
        try await self.client.execute(action: "StopIntegrationTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止集成任务
    @inlinable
    public func stopIntegrationTask(taskId: String, projectId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopIntegrationTaskResponse > {
        self.stopIntegrationTask(StopIntegrationTaskRequest(taskId: taskId, projectId: projectId), logger: logger, on: eventLoop)
    }

    /// 停止集成任务
    @inlinable
    public func stopIntegrationTask(taskId: String, projectId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopIntegrationTaskResponse {
        try await self.stopIntegrationTask(StopIntegrationTaskRequest(taskId: taskId, projectId: projectId), logger: logger, on: eventLoop)
    }
}
