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
    /// DescribeWorkflowOpsCanvasInfo请求参数结构体
    public struct DescribeWorkflowOpsCanvasInfoRequest: TCRequestModel {
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

    /// DescribeWorkflowOpsCanvasInfo返回参数结构体
    public struct DescribeWorkflowOpsCanvasInfoResponse: TCResponseModel {
        /// 删除结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: WorkflowCanvasOpsDto?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询运维画布信息，只需要获取边和节点
    @inlinable
    public func describeWorkflowOpsCanvasInfo(_ input: DescribeWorkflowOpsCanvasInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkflowOpsCanvasInfoResponse> {
        self.client.execute(action: "DescribeWorkflowOpsCanvasInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询运维画布信息，只需要获取边和节点
    @inlinable
    public func describeWorkflowOpsCanvasInfo(_ input: DescribeWorkflowOpsCanvasInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkflowOpsCanvasInfoResponse {
        try await self.client.execute(action: "DescribeWorkflowOpsCanvasInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询运维画布信息，只需要获取边和节点
    @inlinable
    public func describeWorkflowOpsCanvasInfo(workflowId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkflowOpsCanvasInfoResponse> {
        self.describeWorkflowOpsCanvasInfo(.init(workflowId: workflowId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询运维画布信息，只需要获取边和节点
    @inlinable
    public func describeWorkflowOpsCanvasInfo(workflowId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkflowOpsCanvasInfoResponse {
        try await self.describeWorkflowOpsCanvasInfo(.init(workflowId: workflowId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}