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

extension Msp {
    /// ModifyMigrationTaskBelongToProject请求参数结构体
    public struct ModifyMigrationTaskBelongToProjectRequest: TCRequestModel {
        /// 任务ID，例如msp-jitoh33n
        public let taskId: String

        /// 项目ID，例如10005
        public let projectId: UInt64

        public init(taskId: String, projectId: UInt64) {
            self.taskId = taskId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case projectId = "ProjectId"
        }
    }

    /// ModifyMigrationTaskBelongToProject返回参数结构体
    public struct ModifyMigrationTaskBelongToProjectResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更改迁移任务所属项目
    @inlinable
    public func modifyMigrationTaskBelongToProject(_ input: ModifyMigrationTaskBelongToProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyMigrationTaskBelongToProjectResponse > {
        self.client.execute(action: "ModifyMigrationTaskBelongToProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更改迁移任务所属项目
    @inlinable
    public func modifyMigrationTaskBelongToProject(_ input: ModifyMigrationTaskBelongToProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMigrationTaskBelongToProjectResponse {
        try await self.client.execute(action: "ModifyMigrationTaskBelongToProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更改迁移任务所属项目
    @inlinable
    public func modifyMigrationTaskBelongToProject(taskId: String, projectId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyMigrationTaskBelongToProjectResponse > {
        self.modifyMigrationTaskBelongToProject(ModifyMigrationTaskBelongToProjectRequest(taskId: taskId, projectId: projectId), logger: logger, on: eventLoop)
    }

    /// 更改迁移任务所属项目
    @inlinable
    public func modifyMigrationTaskBelongToProject(taskId: String, projectId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMigrationTaskBelongToProjectResponse {
        try await self.modifyMigrationTaskBelongToProject(ModifyMigrationTaskBelongToProjectRequest(taskId: taskId, projectId: projectId), logger: logger, on: eventLoop)
    }
}
