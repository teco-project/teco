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
    /// DescribeWorkflowCanvasInfo请求参数结构体
    public struct DescribeWorkflowCanvasInfoRequest: TCRequest {
        /// 工作流id
        public let workflowId: String

        /// 项目id
        public let projectId: String

        public init(workflowId: String, projectId: String) {
            self.workflowId = workflowId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case workflowId = "WorkflowId"
            case projectId = "ProjectId"
        }
    }

    /// DescribeWorkflowCanvasInfo返回参数结构体
    public struct DescribeWorkflowCanvasInfoResponse: TCResponse {
        /// 工作流调度详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: WorkflowCanvasOpsDto?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询工作流画布
    @inlinable
    public func describeWorkflowCanvasInfo(_ input: DescribeWorkflowCanvasInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkflowCanvasInfoResponse> {
        self.client.execute(action: "DescribeWorkflowCanvasInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询工作流画布
    @inlinable
    public func describeWorkflowCanvasInfo(_ input: DescribeWorkflowCanvasInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkflowCanvasInfoResponse {
        try await self.client.execute(action: "DescribeWorkflowCanvasInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询工作流画布
    @inlinable
    public func describeWorkflowCanvasInfo(workflowId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkflowCanvasInfoResponse> {
        self.describeWorkflowCanvasInfo(.init(workflowId: workflowId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询工作流画布
    @inlinable
    public func describeWorkflowCanvasInfo(workflowId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkflowCanvasInfoResponse {
        try await self.describeWorkflowCanvasInfo(.init(workflowId: workflowId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
