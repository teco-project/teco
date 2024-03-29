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
    /// RunTasksByMultiWorkflow请求参数结构体
    public struct RunTasksByMultiWorkflowRequest: TCRequest {
        /// 项目id
        public let projectId: String

        /// 工作流id列表
        public let workflowIds: [String]

        /// 是否补录中间实例 0.不补录 1.补录实例
        public let enableMakeUp: UInt64

        public init(projectId: String, workflowIds: [String], enableMakeUp: UInt64) {
            self.projectId = projectId
            self.workflowIds = workflowIds
            self.enableMakeUp = enableMakeUp
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case workflowIds = "WorkflowIds"
            case enableMakeUp = "EnableMakeUp"
        }
    }

    /// RunTasksByMultiWorkflow返回参数结构体
    public struct RunTasksByMultiWorkflowResponse: TCResponse {
        /// 操作返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: OperationOpsDto?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 批量启动工作流
    @inlinable
    public func runTasksByMultiWorkflow(_ input: RunTasksByMultiWorkflowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunTasksByMultiWorkflowResponse> {
        self.client.execute(action: "RunTasksByMultiWorkflow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量启动工作流
    @inlinable
    public func runTasksByMultiWorkflow(_ input: RunTasksByMultiWorkflowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunTasksByMultiWorkflowResponse {
        try await self.client.execute(action: "RunTasksByMultiWorkflow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量启动工作流
    @inlinable
    public func runTasksByMultiWorkflow(projectId: String, workflowIds: [String], enableMakeUp: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunTasksByMultiWorkflowResponse> {
        self.runTasksByMultiWorkflow(.init(projectId: projectId, workflowIds: workflowIds, enableMakeUp: enableMakeUp), region: region, logger: logger, on: eventLoop)
    }

    /// 批量启动工作流
    @inlinable
    public func runTasksByMultiWorkflow(projectId: String, workflowIds: [String], enableMakeUp: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunTasksByMultiWorkflowResponse {
        try await self.runTasksByMultiWorkflow(.init(projectId: projectId, workflowIds: workflowIds, enableMakeUp: enableMakeUp), region: region, logger: logger, on: eventLoop)
    }
}
