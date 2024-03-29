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
    /// DescribeTaskInstance请求参数结构体
    public struct DescribeTaskInstanceRequest: TCRequest {
        /// WeData项目ID
        public let projectId: String

        /// 任务ID
        public let taskId: String

        /// 任务实例数据时间
        public let curRunDate: String?

        /// 任务实例运行时间
        public let issueDate: String?

        public init(projectId: String, taskId: String, curRunDate: String? = nil, issueDate: String? = nil) {
            self.projectId = projectId
            self.taskId = taskId
            self.curRunDate = curRunDate
            self.issueDate = issueDate
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskId = "TaskId"
            case curRunDate = "CurRunDate"
            case issueDate = "IssueDate"
        }
    }

    /// DescribeTaskInstance返回参数结构体
    public struct DescribeTaskInstanceResponse: TCResponse {
        /// 任务实例详情
        public let taskInstanceDetail: TaskInstanceDetail

        /// 任务实例详情。与TaskInstanceDetail相同含义，优先取Data，Data为空时，取TaskInstanceDetail
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: TaskInstanceDetail?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskInstanceDetail = "TaskInstanceDetail"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 离线任务实例详情
    @inlinable
    public func describeTaskInstance(_ input: DescribeTaskInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskInstanceResponse> {
        self.client.execute(action: "DescribeTaskInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 离线任务实例详情
    @inlinable
    public func describeTaskInstance(_ input: DescribeTaskInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskInstanceResponse {
        try await self.client.execute(action: "DescribeTaskInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 离线任务实例详情
    @inlinable
    public func describeTaskInstance(projectId: String, taskId: String, curRunDate: String? = nil, issueDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskInstanceResponse> {
        self.describeTaskInstance(.init(projectId: projectId, taskId: taskId, curRunDate: curRunDate, issueDate: issueDate), region: region, logger: logger, on: eventLoop)
    }

    /// 离线任务实例详情
    @inlinable
    public func describeTaskInstance(projectId: String, taskId: String, curRunDate: String? = nil, issueDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskInstanceResponse {
        try await self.describeTaskInstance(.init(projectId: projectId, taskId: taskId, curRunDate: curRunDate, issueDate: issueDate), region: region, logger: logger, on: eventLoop)
    }
}
