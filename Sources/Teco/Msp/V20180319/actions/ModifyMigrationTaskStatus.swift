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

import TecoCore

extension Msp {
    /// ModifyMigrationTaskStatus请求参数结构体
    public struct ModifyMigrationTaskStatusRequest: TCRequestModel {
        /// 任务状态，取值为unstart，migrating，finish，fail之一，分别代表该迁移任务状态为迁移未开始，迁移中，迁移完成，迁移失败
        public let status: String

        /// 任务ID，例如msp-jitoh33n
        public let taskId: String

        public init(status: String, taskId: String) {
            self.status = status
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case taskId = "TaskId"
        }
    }

    /// ModifyMigrationTaskStatus返回参数结构体
    public struct ModifyMigrationTaskStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新迁移任务状态
    @inlinable @discardableResult
    public func modifyMigrationTaskStatus(_ input: ModifyMigrationTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMigrationTaskStatusResponse> {
        self.client.execute(action: "ModifyMigrationTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新迁移任务状态
    @inlinable @discardableResult
    public func modifyMigrationTaskStatus(_ input: ModifyMigrationTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMigrationTaskStatusResponse {
        try await self.client.execute(action: "ModifyMigrationTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新迁移任务状态
    @inlinable @discardableResult
    public func modifyMigrationTaskStatus(status: String, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMigrationTaskStatusResponse> {
        self.modifyMigrationTaskStatus(.init(status: status, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新迁移任务状态
    @inlinable @discardableResult
    public func modifyMigrationTaskStatus(status: String, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMigrationTaskStatusResponse {
        try await self.modifyMigrationTaskStatus(.init(status: status, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
