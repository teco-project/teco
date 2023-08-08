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
    /// DescribeIntegrationTask请求参数结构体
    public struct DescribeIntegrationTaskRequest: TCRequestModel {
        /// 任务id
        public let taskId: String

        /// 项目id
        public let projectId: String

        /// 任务类型：201. stream,   202. offline
        public let taskType: UInt64?

        /// 提交版本号
        public let instanceVersion: Int64?

        public init(taskId: String, projectId: String, taskType: UInt64? = nil, instanceVersion: Int64? = nil) {
            self.taskId = taskId
            self.projectId = projectId
            self.taskType = taskType
            self.instanceVersion = instanceVersion
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case projectId = "ProjectId"
            case taskType = "TaskType"
            case instanceVersion = "InstanceVersion"
        }
    }

    /// DescribeIntegrationTask返回参数结构体
    public struct DescribeIntegrationTaskResponse: TCResponseModel {
        /// 任务信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskInfo: IntegrationTaskInfo?

        /// 采集器统计信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let agentStatus: AgentStatus?

        /// 任务版本信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskVersion: TaskVersionInstance?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskInfo = "TaskInfo"
            case agentStatus = "AgentStatus"
            case taskVersion = "TaskVersion"
            case requestId = "RequestId"
        }
    }

    /// 查询集成任务详情
    ///
    /// 查询集成任务
    @inlinable
    public func describeIntegrationTask(_ input: DescribeIntegrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationTaskResponse> {
        self.client.execute(action: "DescribeIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集成任务详情
    ///
    /// 查询集成任务
    @inlinable
    public func describeIntegrationTask(_ input: DescribeIntegrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationTaskResponse {
        try await self.client.execute(action: "DescribeIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集成任务详情
    ///
    /// 查询集成任务
    @inlinable
    public func describeIntegrationTask(taskId: String, projectId: String, taskType: UInt64? = nil, instanceVersion: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationTaskResponse> {
        self.describeIntegrationTask(.init(taskId: taskId, projectId: projectId, taskType: taskType, instanceVersion: instanceVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集成任务详情
    ///
    /// 查询集成任务
    @inlinable
    public func describeIntegrationTask(taskId: String, projectId: String, taskType: UInt64? = nil, instanceVersion: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationTaskResponse {
        try await self.describeIntegrationTask(.init(taskId: taskId, projectId: projectId, taskType: taskType, instanceVersion: instanceVersion), region: region, logger: logger, on: eventLoop)
    }
}
