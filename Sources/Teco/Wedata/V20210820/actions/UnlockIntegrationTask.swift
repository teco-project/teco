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
    /// UnlockIntegrationTask请求参数结构体
    public struct UnlockIntegrationTaskRequest: TCRequest {
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

    /// UnlockIntegrationTask返回参数结构体
    public struct UnlockIntegrationTaskResponse: TCResponse {
        /// 操作成功与否标识
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 解锁集成任务
    @inlinable
    public func unlockIntegrationTask(_ input: UnlockIntegrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnlockIntegrationTaskResponse> {
        self.client.execute(action: "UnlockIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解锁集成任务
    @inlinable
    public func unlockIntegrationTask(_ input: UnlockIntegrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnlockIntegrationTaskResponse {
        try await self.client.execute(action: "UnlockIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解锁集成任务
    @inlinable
    public func unlockIntegrationTask(taskId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnlockIntegrationTaskResponse> {
        self.unlockIntegrationTask(.init(taskId: taskId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 解锁集成任务
    @inlinable
    public func unlockIntegrationTask(taskId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnlockIntegrationTaskResponse {
        try await self.unlockIntegrationTask(.init(taskId: taskId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
