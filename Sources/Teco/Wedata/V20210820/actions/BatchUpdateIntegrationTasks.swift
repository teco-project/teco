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
    /// BatchUpdateIntegrationTasks请求参数结构体
    public struct BatchUpdateIntegrationTasksRequest: TCRequestModel {
        /// 任务id
        public let taskIds: [String]

        /// 责任人（多个责任人用小写分号隔开；离线任务传入的是账号名，实时任务传入的是账号id）
        public let incharge: String

        /// 任务类型
        public let taskType: Int64

        /// 项目id
        public let projectId: String

        public init(taskIds: [String], incharge: String, taskType: Int64, projectId: String) {
            self.taskIds = taskIds
            self.incharge = incharge
            self.taskType = taskType
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case taskIds = "TaskIds"
            case incharge = "Incharge"
            case taskType = "TaskType"
            case projectId = "ProjectId"
        }
    }

    /// BatchUpdateIntegrationTasks返回参数结构体
    public struct BatchUpdateIntegrationTasksResponse: TCResponseModel {
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

    /// 批量更新集成任务
    ///
    /// 批量更新集成任务（暂时仅支持批量更新责任人）
    @inlinable
    public func batchUpdateIntegrationTasks(_ input: BatchUpdateIntegrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchUpdateIntegrationTasksResponse> {
        self.client.execute(action: "BatchUpdateIntegrationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量更新集成任务
    ///
    /// 批量更新集成任务（暂时仅支持批量更新责任人）
    @inlinable
    public func batchUpdateIntegrationTasks(_ input: BatchUpdateIntegrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchUpdateIntegrationTasksResponse {
        try await self.client.execute(action: "BatchUpdateIntegrationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量更新集成任务
    ///
    /// 批量更新集成任务（暂时仅支持批量更新责任人）
    @inlinable
    public func batchUpdateIntegrationTasks(taskIds: [String], incharge: String, taskType: Int64, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchUpdateIntegrationTasksResponse> {
        self.batchUpdateIntegrationTasks(.init(taskIds: taskIds, incharge: incharge, taskType: taskType, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 批量更新集成任务
    ///
    /// 批量更新集成任务（暂时仅支持批量更新责任人）
    @inlinable
    public func batchUpdateIntegrationTasks(taskIds: [String], incharge: String, taskType: Int64, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchUpdateIntegrationTasksResponse {
        try await self.batchUpdateIntegrationTasks(.init(taskIds: taskIds, incharge: incharge, taskType: taskType, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
