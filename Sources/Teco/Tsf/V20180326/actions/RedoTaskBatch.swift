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

extension Tsf {
    /// RedoTaskBatch请求参数结构体
    public struct RedoTaskBatchRequest: TCRequestModel {
        /// 任务ID
        public let taskId: String

        /// 批次ID
        public let batchId: String

        public init(taskId: String, batchId: String) {
            self.taskId = taskId
            self.batchId = batchId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case batchId = "BatchId"
        }
    }

    /// RedoTaskBatch返回参数结构体
    public struct RedoTaskBatchResponse: TCResponseModel {
        /// 批次ID
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 重新执行任务批次
    @inlinable
    public func redoTaskBatch(_ input: RedoTaskBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RedoTaskBatchResponse> {
        self.client.execute(action: "RedoTaskBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重新执行任务批次
    @inlinable
    public func redoTaskBatch(_ input: RedoTaskBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RedoTaskBatchResponse {
        try await self.client.execute(action: "RedoTaskBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重新执行任务批次
    @inlinable
    public func redoTaskBatch(taskId: String, batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RedoTaskBatchResponse> {
        self.redoTaskBatch(.init(taskId: taskId, batchId: batchId), region: region, logger: logger, on: eventLoop)
    }

    /// 重新执行任务批次
    @inlinable
    public func redoTaskBatch(taskId: String, batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RedoTaskBatchResponse {
        try await self.redoTaskBatch(.init(taskId: taskId, batchId: batchId), region: region, logger: logger, on: eventLoop)
    }
}
