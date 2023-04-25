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
    /// BatchCreateIntegrationTaskAlarms请求参数结构体
    public struct BatchCreateIntegrationTaskAlarmsRequest: TCRequestModel {
        /// 任务id
        public let taskIds: [String]

        /// 告警配置信息
        public let taskAlarmInfo: TaskAlarmInfo

        /// 项目id
        public let projectId: String

        public init(taskIds: [String], taskAlarmInfo: TaskAlarmInfo, projectId: String) {
            self.taskIds = taskIds
            self.taskAlarmInfo = taskAlarmInfo
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case taskIds = "TaskIds"
            case taskAlarmInfo = "TaskAlarmInfo"
            case projectId = "ProjectId"
        }
    }

    /// BatchCreateIntegrationTaskAlarms返回参数结构体
    public struct BatchCreateIntegrationTaskAlarmsResponse: TCResponseModel {
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

    /// 批量创建任务告警规则
    @inlinable
    public func batchCreateIntegrationTaskAlarms(_ input: BatchCreateIntegrationTaskAlarmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchCreateIntegrationTaskAlarmsResponse> {
        self.client.execute(action: "BatchCreateIntegrationTaskAlarms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量创建任务告警规则
    @inlinable
    public func batchCreateIntegrationTaskAlarms(_ input: BatchCreateIntegrationTaskAlarmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchCreateIntegrationTaskAlarmsResponse {
        try await self.client.execute(action: "BatchCreateIntegrationTaskAlarms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量创建任务告警规则
    @inlinable
    public func batchCreateIntegrationTaskAlarms(taskIds: [String], taskAlarmInfo: TaskAlarmInfo, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchCreateIntegrationTaskAlarmsResponse> {
        self.batchCreateIntegrationTaskAlarms(.init(taskIds: taskIds, taskAlarmInfo: taskAlarmInfo, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 批量创建任务告警规则
    @inlinable
    public func batchCreateIntegrationTaskAlarms(taskIds: [String], taskAlarmInfo: TaskAlarmInfo, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchCreateIntegrationTaskAlarmsResponse {
        try await self.batchCreateIntegrationTaskAlarms(.init(taskIds: taskIds, taskAlarmInfo: taskAlarmInfo, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
