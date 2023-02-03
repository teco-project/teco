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

extension Mps {
    /// EnableWorkflow请求参数结构体
    public struct EnableWorkflowRequest: TCRequestModel {
        /// 工作流 ID。
        public let workflowId: Int64

        public init(workflowId: Int64) {
            self.workflowId = workflowId
        }

        enum CodingKeys: String, CodingKey {
            case workflowId = "WorkflowId"
        }
    }

    /// EnableWorkflow返回参数结构体
    public struct EnableWorkflowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启用工作流
    ///
    /// 启用工作流。
    @inlinable @discardableResult
    public func enableWorkflow(_ input: EnableWorkflowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableWorkflowResponse> {
        self.client.execute(action: "EnableWorkflow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用工作流
    ///
    /// 启用工作流。
    @inlinable @discardableResult
    public func enableWorkflow(_ input: EnableWorkflowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableWorkflowResponse {
        try await self.client.execute(action: "EnableWorkflow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用工作流
    ///
    /// 启用工作流。
    @inlinable @discardableResult
    public func enableWorkflow(workflowId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableWorkflowResponse> {
        let input = EnableWorkflowRequest(workflowId: workflowId)
        return self.client.execute(action: "EnableWorkflow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用工作流
    ///
    /// 启用工作流。
    @inlinable @discardableResult
    public func enableWorkflow(workflowId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableWorkflowResponse {
        let input = EnableWorkflowRequest(workflowId: workflowId)
        return try await self.client.execute(action: "EnableWorkflow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
