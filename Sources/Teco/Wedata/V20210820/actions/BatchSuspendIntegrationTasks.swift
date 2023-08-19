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
    /// BatchSuspendIntegrationTasks请求参数结构体
    public struct BatchSuspendIntegrationTasksRequest: TCRequest {
        /// 任务id
        public let taskIds: [String]

        /// 任务类型
        public let taskType: Int64

        /// 项目id
        public let projectId: String

        public init(taskIds: [String], taskType: Int64, projectId: String) {
            self.taskIds = taskIds
            self.taskType = taskType
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case taskIds = "TaskIds"
            case taskType = "TaskType"
            case projectId = "ProjectId"
        }
    }

    /// BatchSuspendIntegrationTasks返回参数结构体
    public struct BatchSuspendIntegrationTasksResponse: TCResponse {
        /// 操作成功的任务数
        public let successCount: Int64

        /// 操作失败的任务数
        public let failedCount: Int64

        /// 任务总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successCount = "SuccessCount"
            case failedCount = "FailedCount"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 批量暂停集成任务
    @inlinable
    public func batchSuspendIntegrationTasks(_ input: BatchSuspendIntegrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchSuspendIntegrationTasksResponse> {
        self.client.execute(action: "BatchSuspendIntegrationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量暂停集成任务
    @inlinable
    public func batchSuspendIntegrationTasks(_ input: BatchSuspendIntegrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchSuspendIntegrationTasksResponse {
        try await self.client.execute(action: "BatchSuspendIntegrationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量暂停集成任务
    @inlinable
    public func batchSuspendIntegrationTasks(taskIds: [String], taskType: Int64, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchSuspendIntegrationTasksResponse> {
        self.batchSuspendIntegrationTasks(.init(taskIds: taskIds, taskType: taskType, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 批量暂停集成任务
    @inlinable
    public func batchSuspendIntegrationTasks(taskIds: [String], taskType: Int64, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchSuspendIntegrationTasksResponse {
        try await self.batchSuspendIntegrationTasks(.init(taskIds: taskIds, taskType: taskType, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
