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
    /// StartIntegrationTask请求参数结构体
    public struct StartIntegrationTaskRequest: TCRequestModel {
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

    /// StartIntegrationTask返回参数结构体
    public struct StartIntegrationTaskResponse: TCResponseModel {
        /// 操作成功与否标识
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 启动集成任务
    @inlinable
    public func startIntegrationTask(_ input: StartIntegrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartIntegrationTaskResponse> {
        self.client.execute(action: "StartIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动集成任务
    @inlinable
    public func startIntegrationTask(_ input: StartIntegrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartIntegrationTaskResponse {
        try await self.client.execute(action: "StartIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启动集成任务
    @inlinable
    public func startIntegrationTask(taskId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartIntegrationTaskResponse> {
        let input = StartIntegrationTaskRequest(taskId: taskId, projectId: projectId)
        return self.client.execute(action: "StartIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动集成任务
    @inlinable
    public func startIntegrationTask(taskId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartIntegrationTaskResponse {
        let input = StartIntegrationTaskRequest(taskId: taskId, projectId: projectId)
        return try await self.client.execute(action: "StartIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
