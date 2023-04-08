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

extension Wedata {
    /// DeleteTaskAlarmRegular请求参数结构体
    public struct DeleteTaskAlarmRegularRequest: TCRequestModel {
        /// 主键ID
        public let id: String

        /// 项目ID
        public let projectId: String

        /// 任务ID
        public let taskId: String

        /// 任务类型(201表示实时任务，202表示离线任务)
        public let taskType: Int64

        public init(id: String, projectId: String, taskId: String, taskType: Int64) {
            self.id = id
            self.projectId = projectId
            self.taskId = taskId
            self.taskType = taskType
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case projectId = "ProjectId"
            case taskId = "TaskId"
            case taskType = "TaskType"
        }
    }

    /// DeleteTaskAlarmRegular返回参数结构体
    public struct DeleteTaskAlarmRegularResponse: TCResponseModel {
        /// 删除结果(true表示删除成功，false表示删除失败)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 删除任务告警规则
    @inlinable
    public func deleteTaskAlarmRegular(_ input: DeleteTaskAlarmRegularRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTaskAlarmRegularResponse> {
        self.client.execute(action: "DeleteTaskAlarmRegular", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除任务告警规则
    @inlinable
    public func deleteTaskAlarmRegular(_ input: DeleteTaskAlarmRegularRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTaskAlarmRegularResponse {
        try await self.client.execute(action: "DeleteTaskAlarmRegular", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除任务告警规则
    @inlinable
    public func deleteTaskAlarmRegular(id: String, projectId: String, taskId: String, taskType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTaskAlarmRegularResponse> {
        self.deleteTaskAlarmRegular(.init(id: id, projectId: projectId, taskId: taskId, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }

    /// 删除任务告警规则
    @inlinable
    public func deleteTaskAlarmRegular(id: String, projectId: String, taskId: String, taskType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTaskAlarmRegularResponse {
        try await self.deleteTaskAlarmRegular(.init(id: id, projectId: projectId, taskId: taskId, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }
}
