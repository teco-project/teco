//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tsf {
    /// RedoTaskFlowBatch请求参数结构体
    public struct RedoTaskFlowBatchRequest: TCRequestModel {
        /// 工作流批次 ID
        public let flowBatchId: String

        public init(flowBatchId: String) {
            self.flowBatchId = flowBatchId
        }

        enum CodingKeys: String, CodingKey {
            case flowBatchId = "FlowBatchId"
        }
    }

    /// RedoTaskFlowBatch返回参数结构体
    public struct RedoTaskFlowBatchResponse: TCResponseModel {
        /// 工作流批次历史 ID
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 重新执行工作流批次
    @inlinable
    public func redoTaskFlowBatch(_ input: RedoTaskFlowBatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RedoTaskFlowBatchResponse > {
        self.client.execute(action: "RedoTaskFlowBatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重新执行工作流批次
    @inlinable
    public func redoTaskFlowBatch(_ input: RedoTaskFlowBatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RedoTaskFlowBatchResponse {
        try await self.client.execute(action: "RedoTaskFlowBatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重新执行工作流批次
    @inlinable
    public func redoTaskFlowBatch(flowBatchId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RedoTaskFlowBatchResponse > {
        self.redoTaskFlowBatch(RedoTaskFlowBatchRequest(flowBatchId: flowBatchId), logger: logger, on: eventLoop)
    }

    /// 重新执行工作流批次
    @inlinable
    public func redoTaskFlowBatch(flowBatchId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RedoTaskFlowBatchResponse {
        try await self.redoTaskFlowBatch(RedoTaskFlowBatchRequest(flowBatchId: flowBatchId), logger: logger, on: eventLoop)
    }
}
