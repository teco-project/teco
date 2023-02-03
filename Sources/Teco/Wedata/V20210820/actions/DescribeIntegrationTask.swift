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
    /// DescribeIntegrationTask请求参数结构体
    public struct DescribeIntegrationTaskRequest: TCRequestModel {
        /// 任务id
        public let taskId: String

        /// 项目id
        public let projectId: String

        /// 任务类型：201. stream,   202. offline
        public let taskType: UInt64?

        public init(taskId: String, projectId: String, taskType: UInt64? = nil) {
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

    /// DescribeIntegrationTask返回参数结构体
    public struct DescribeIntegrationTaskResponse: TCResponseModel {
        /// 任务信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskInfo: IntegrationTaskInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskInfo = "TaskInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询集成任务
    @inlinable
    public func describeIntegrationTask(_ input: DescribeIntegrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationTaskResponse> {
        self.client.execute(action: "DescribeIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集成任务
    @inlinable
    public func describeIntegrationTask(_ input: DescribeIntegrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationTaskResponse {
        try await self.client.execute(action: "DescribeIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集成任务
    @inlinable
    public func describeIntegrationTask(taskId: String, projectId: String, taskType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationTaskResponse> {
        let input = DescribeIntegrationTaskRequest(taskId: taskId, projectId: projectId, taskType: taskType)
        return self.client.execute(action: "DescribeIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集成任务
    @inlinable
    public func describeIntegrationTask(taskId: String, projectId: String, taskType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationTaskResponse {
        let input = DescribeIntegrationTaskRequest(taskId: taskId, projectId: projectId, taskType: taskType)
        return try await self.client.execute(action: "DescribeIntegrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
