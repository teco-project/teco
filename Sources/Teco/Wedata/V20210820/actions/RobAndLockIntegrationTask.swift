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

extension Wedata {
    /// RobAndLockIntegrationTask请求参数结构体
    public struct RobAndLockIntegrationTaskRequest: TCRequestModel {
        /// 任务id
        public let taskId: String

        /// 项目id
        public let projectId: String

        /// 任务类型：201. stream,   202. offline
        public let taskType: UInt64

        public init(taskId: String, projectId: String, taskType: UInt64) {
            self.taskId = taskId
            self.projectId = projectId
            self.taskType = taskType
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case projectId = "ProjectId"
            case taskType = "TaskType"
        }
    }

    /// RobAndLockIntegrationTask返回参数结构体
    public struct RobAndLockIntegrationTaskResponse: TCResponseModel {
        /// 抢锁状态
        public let robLockState: RobLockState

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case robLockState = "RobLockState"
            case requestId = "RequestId"
        }
    }

    /// 抢占锁定集成任务
    @inlinable
    public func robAndLockIntegrationTask(_ input: RobAndLockIntegrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RobAndLockIntegrationTaskResponse> {
        self.client.execute(action: "RobAndLockIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 抢占锁定集成任务
    @inlinable
    public func robAndLockIntegrationTask(_ input: RobAndLockIntegrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RobAndLockIntegrationTaskResponse {
        try await self.client.execute(action: "RobAndLockIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 抢占锁定集成任务
    @inlinable
    public func robAndLockIntegrationTask(taskId: String, projectId: String, taskType: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RobAndLockIntegrationTaskResponse> {
        self.robAndLockIntegrationTask(.init(taskId: taskId, projectId: projectId, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }

    /// 抢占锁定集成任务
    @inlinable
    public func robAndLockIntegrationTask(taskId: String, projectId: String, taskType: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RobAndLockIntegrationTaskResponse {
        try await self.robAndLockIntegrationTask(.init(taskId: taskId, projectId: projectId, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }
}
