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

extension Tsf {
    /// RedoTaskExecute请求参数结构体
    public struct RedoTaskExecuteRequest: TCRequestModel {
        /// 任务批次ID
        public let batchId: String

        /// 任务执行ID
        public let executeId: String

        /// 任务ID
        public let taskId: String

        public init(batchId: String, executeId: String, taskId: String) {
            self.batchId = batchId
            self.executeId = executeId
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
            case executeId = "ExecuteId"
            case taskId = "TaskId"
        }
    }

    /// RedoTaskExecute返回参数结构体
    public struct RedoTaskExecuteResponse: TCResponseModel {
        /// 成功失败
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 重新执行任务的一次执行
    ///
    /// 重新执行在某个节点上执行任务。
    @inlinable
    public func redoTaskExecute(_ input: RedoTaskExecuteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RedoTaskExecuteResponse> {
        self.client.execute(action: "RedoTaskExecute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重新执行任务的一次执行
    ///
    /// 重新执行在某个节点上执行任务。
    @inlinable
    public func redoTaskExecute(_ input: RedoTaskExecuteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RedoTaskExecuteResponse {
        try await self.client.execute(action: "RedoTaskExecute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重新执行任务的一次执行
    ///
    /// 重新执行在某个节点上执行任务。
    @inlinable
    public func redoTaskExecute(batchId: String, executeId: String, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RedoTaskExecuteResponse> {
        self.redoTaskExecute(.init(batchId: batchId, executeId: executeId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 重新执行任务的一次执行
    ///
    /// 重新执行在某个节点上执行任务。
    @inlinable
    public func redoTaskExecute(batchId: String, executeId: String, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RedoTaskExecuteResponse {
        try await self.redoTaskExecute(.init(batchId: batchId, executeId: executeId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
