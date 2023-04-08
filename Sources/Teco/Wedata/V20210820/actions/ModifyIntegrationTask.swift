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
    /// ModifyIntegrationTask请求参数结构体
    public struct ModifyIntegrationTaskRequest: TCRequestModel {
        /// 任务信息
        public let taskInfo: IntegrationTaskInfo

        /// 项目id
        public let projectId: String

        /// 默认false . 为true时表示走回滚节点逻辑
        public let rollbackFlag: Bool?

        public init(taskInfo: IntegrationTaskInfo, projectId: String, rollbackFlag: Bool? = nil) {
            self.taskInfo = taskInfo
            self.projectId = projectId
            self.rollbackFlag = rollbackFlag
        }

        enum CodingKeys: String, CodingKey {
            case taskInfo = "TaskInfo"
            case projectId = "ProjectId"
            case rollbackFlag = "RollbackFlag"
        }
    }

    /// ModifyIntegrationTask返回参数结构体
    public struct ModifyIntegrationTaskResponse: TCResponseModel {
        /// 任务id
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 更新集成任务
    @inlinable
    public func modifyIntegrationTask(_ input: ModifyIntegrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyIntegrationTaskResponse> {
        self.client.execute(action: "ModifyIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新集成任务
    @inlinable
    public func modifyIntegrationTask(_ input: ModifyIntegrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyIntegrationTaskResponse {
        try await self.client.execute(action: "ModifyIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新集成任务
    @inlinable
    public func modifyIntegrationTask(taskInfo: IntegrationTaskInfo, projectId: String, rollbackFlag: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyIntegrationTaskResponse> {
        self.modifyIntegrationTask(.init(taskInfo: taskInfo, projectId: projectId, rollbackFlag: rollbackFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 更新集成任务
    @inlinable
    public func modifyIntegrationTask(taskInfo: IntegrationTaskInfo, projectId: String, rollbackFlag: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyIntegrationTaskResponse {
        try await self.modifyIntegrationTask(.init(taskInfo: taskInfo, projectId: projectId, rollbackFlag: rollbackFlag), region: region, logger: logger, on: eventLoop)
    }
}
