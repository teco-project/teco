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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tsf {
    /// TerminateTaskFlowBatch请求参数结构体
    public struct TerminateTaskFlowBatchRequest: TCRequestModel {
        /// 工作流批次 ID
        public let flowBatchId: String

        public init(flowBatchId: String) {
            self.flowBatchId = flowBatchId
        }

        enum CodingKeys: String, CodingKey {
            case flowBatchId = "FlowBatchId"
        }
    }

    /// TerminateTaskFlowBatch返回参数结构体
    public struct TerminateTaskFlowBatchResponse: TCResponseModel {
        /// 是否停止成功
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 停止一个工作流批次
    @inlinable
    public func terminateTaskFlowBatch(_ input: TerminateTaskFlowBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateTaskFlowBatchResponse> {
        self.client.execute(action: "TerminateTaskFlowBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止一个工作流批次
    @inlinable
    public func terminateTaskFlowBatch(_ input: TerminateTaskFlowBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateTaskFlowBatchResponse {
        try await self.client.execute(action: "TerminateTaskFlowBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止一个工作流批次
    @inlinable
    public func terminateTaskFlowBatch(flowBatchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateTaskFlowBatchResponse> {
        self.terminateTaskFlowBatch(.init(flowBatchId: flowBatchId), region: region, logger: logger, on: eventLoop)
    }

    /// 停止一个工作流批次
    @inlinable
    public func terminateTaskFlowBatch(flowBatchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateTaskFlowBatchResponse {
        try await self.terminateTaskFlowBatch(.init(flowBatchId: flowBatchId), region: region, logger: logger, on: eventLoop)
    }
}
