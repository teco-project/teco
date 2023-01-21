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

extension Cfg {
    /// ExecuteTask请求参数结构体
    public struct ExecuteTaskRequest: TCRequestModel {
        /// 需要执行的任务ID
        public let taskId: Int64

        public init(taskId: Int64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// ExecuteTask返回参数结构体
    public struct ExecuteTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 执行任务
    @inlinable @discardableResult
    public func executeTask(_ input: ExecuteTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteTaskResponse> {
        self.client.execute(action: "ExecuteTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 执行任务
    @inlinable @discardableResult
    public func executeTask(_ input: ExecuteTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteTaskResponse {
        try await self.client.execute(action: "ExecuteTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 执行任务
    @inlinable @discardableResult
    public func executeTask(taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteTaskResponse> {
        self.executeTask(ExecuteTaskRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 执行任务
    @inlinable @discardableResult
    public func executeTask(taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteTaskResponse {
        try await self.executeTask(ExecuteTaskRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
