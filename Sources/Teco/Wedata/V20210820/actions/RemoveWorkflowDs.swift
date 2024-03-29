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
    /// RemoveWorkflowDs请求参数结构体
    public struct RemoveWorkflowDsRequest: TCRequest {
        /// 项目ID
        public let projectId: String

        /// 工作流ID
        public let workflowId: String

        public init(projectId: String, workflowId: String) {
            self.projectId = projectId
            self.workflowId = workflowId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case workflowId = "WorkflowId"
        }
    }

    /// RemoveWorkflowDs返回参数结构体
    public struct RemoveWorkflowDsResponse: TCResponse {
        /// 工作流ID
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 删除编排空间工作流
    @inlinable
    public func removeWorkflowDs(_ input: RemoveWorkflowDsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveWorkflowDsResponse> {
        self.client.execute(action: "RemoveWorkflowDs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除编排空间工作流
    @inlinable
    public func removeWorkflowDs(_ input: RemoveWorkflowDsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveWorkflowDsResponse {
        try await self.client.execute(action: "RemoveWorkflowDs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除编排空间工作流
    @inlinable
    public func removeWorkflowDs(projectId: String, workflowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveWorkflowDsResponse> {
        self.removeWorkflowDs(.init(projectId: projectId, workflowId: workflowId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除编排空间工作流
    @inlinable
    public func removeWorkflowDs(projectId: String, workflowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveWorkflowDsResponse {
        try await self.removeWorkflowDs(.init(projectId: projectId, workflowId: workflowId), region: region, logger: logger, on: eventLoop)
    }
}
