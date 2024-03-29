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
    /// MakeUpTasksByWorkflow请求参数结构体
    public struct MakeUpTasksByWorkflowRequest: TCRequest {
        /// 工作流id
        public let workflowId: String

        /// 项目id
        public let projectId: String

        /// 补数据开始时间 格式：2023-03-02 15:00:00
        public let startTime: String

        /// 补数据结束时间 格式：2023-03-03 15:00:00
        public let endTime: String

        public init(workflowId: String, projectId: String, startTime: String, endTime: String) {
            self.workflowId = workflowId
            self.projectId = projectId
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case workflowId = "WorkflowId"
            case projectId = "ProjectId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// MakeUpTasksByWorkflow返回参数结构体
    public struct MakeUpTasksByWorkflowResponse: TCResponse {
        /// 补数据结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: BatchOperationOpsDto?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 工作流补数据
    @inlinable
    public func makeUpTasksByWorkflow(_ input: MakeUpTasksByWorkflowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MakeUpTasksByWorkflowResponse> {
        self.client.execute(action: "MakeUpTasksByWorkflow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 工作流补数据
    @inlinable
    public func makeUpTasksByWorkflow(_ input: MakeUpTasksByWorkflowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MakeUpTasksByWorkflowResponse {
        try await self.client.execute(action: "MakeUpTasksByWorkflow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 工作流补数据
    @inlinable
    public func makeUpTasksByWorkflow(workflowId: String, projectId: String, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MakeUpTasksByWorkflowResponse> {
        self.makeUpTasksByWorkflow(.init(workflowId: workflowId, projectId: projectId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 工作流补数据
    @inlinable
    public func makeUpTasksByWorkflow(workflowId: String, projectId: String, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MakeUpTasksByWorkflowResponse {
        try await self.makeUpTasksByWorkflow(.init(workflowId: workflowId, projectId: projectId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
