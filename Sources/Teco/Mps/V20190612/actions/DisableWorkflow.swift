//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Mps {
    /// DisableWorkflow请求参数结构体
    public struct DisableWorkflowRequest: TCRequestModel {
        /// 工作流 ID。
        public let workflowId: Int64

        public init(workflowId: Int64) {
            self.workflowId = workflowId
        }

        enum CodingKeys: String, CodingKey {
            case workflowId = "WorkflowId"
        }
    }

    /// DisableWorkflow返回参数结构体
    public struct DisableWorkflowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 禁用工作流
    ///
    /// 禁用工作流。
    @inlinable @discardableResult
    public func disableWorkflow(_ input: DisableWorkflowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableWorkflowResponse> {
        self.client.execute(action: "DisableWorkflow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用工作流
    ///
    /// 禁用工作流。
    @inlinable @discardableResult
    public func disableWorkflow(_ input: DisableWorkflowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableWorkflowResponse {
        try await self.client.execute(action: "DisableWorkflow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用工作流
    ///
    /// 禁用工作流。
    @inlinable @discardableResult
    public func disableWorkflow(workflowId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableWorkflowResponse> {
        self.disableWorkflow(DisableWorkflowRequest(workflowId: workflowId), region: region, logger: logger, on: eventLoop)
    }

    /// 禁用工作流
    ///
    /// 禁用工作流。
    @inlinable @discardableResult
    public func disableWorkflow(workflowId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableWorkflowResponse {
        try await self.disableWorkflow(DisableWorkflowRequest(workflowId: workflowId), region: region, logger: logger, on: eventLoop)
    }
}
