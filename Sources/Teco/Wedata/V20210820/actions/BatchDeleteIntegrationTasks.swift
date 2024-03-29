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
    /// BatchDeleteIntegrationTasks请求参数结构体
    public struct BatchDeleteIntegrationTasksRequest: TCRequest {
        /// 任务id
        public let taskIds: [String]

        /// 任务类型
        public let taskType: Int64

        /// 项目id
        public let projectId: String

        /// 是否删除开发态任务。默认不删除开发态，为 0 不删除 , 为 1 删除
        public let deleteKFFlag: Int64?

        public init(taskIds: [String], taskType: Int64, projectId: String, deleteKFFlag: Int64? = nil) {
            self.taskIds = taskIds
            self.taskType = taskType
            self.projectId = projectId
            self.deleteKFFlag = deleteKFFlag
        }

        enum CodingKeys: String, CodingKey {
            case taskIds = "TaskIds"
            case taskType = "TaskType"
            case projectId = "ProjectId"
            case deleteKFFlag = "DeleteKFFlag"
        }
    }

    /// BatchDeleteIntegrationTasks返回参数结构体
    public struct BatchDeleteIntegrationTasksResponse: TCResponse {
        /// 操作成功的任务数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let successCount: Int64?

        /// 操作失败的任务数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedCount: Int64?

        /// 任务总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successCount = "SuccessCount"
            case failedCount = "FailedCount"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 批量删除集成任务
    @inlinable
    public func batchDeleteIntegrationTasks(_ input: BatchDeleteIntegrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteIntegrationTasksResponse> {
        self.client.execute(action: "BatchDeleteIntegrationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除集成任务
    @inlinable
    public func batchDeleteIntegrationTasks(_ input: BatchDeleteIntegrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteIntegrationTasksResponse {
        try await self.client.execute(action: "BatchDeleteIntegrationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除集成任务
    @inlinable
    public func batchDeleteIntegrationTasks(taskIds: [String], taskType: Int64, projectId: String, deleteKFFlag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteIntegrationTasksResponse> {
        self.batchDeleteIntegrationTasks(.init(taskIds: taskIds, taskType: taskType, projectId: projectId, deleteKFFlag: deleteKFFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除集成任务
    @inlinable
    public func batchDeleteIntegrationTasks(taskIds: [String], taskType: Int64, projectId: String, deleteKFFlag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteIntegrationTasksResponse {
        try await self.batchDeleteIntegrationTasks(.init(taskIds: taskIds, taskType: taskType, projectId: projectId, deleteKFFlag: deleteKFFlag), region: region, logger: logger, on: eventLoop)
    }
}
