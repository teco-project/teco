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
    /// ExecuteTask请求参数结构体
    public struct ExecuteTaskRequest: TCRequestModel {
        /// 任务 ID。
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// ExecuteTask返回参数结构体
    public struct ExecuteTaskResponse: TCResponseModel {
        /// 成功/失败
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 手动执行一次任务。
    @inlinable
    public func executeTask(_ input: ExecuteTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ExecuteTaskResponse > {
        self.client.execute(action: "ExecuteTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 手动执行一次任务。
    @inlinable
    public func executeTask(_ input: ExecuteTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteTaskResponse {
        try await self.client.execute(action: "ExecuteTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 手动执行一次任务。
    @inlinable
    public func executeTask(taskId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ExecuteTaskResponse > {
        self.executeTask(ExecuteTaskRequest(taskId: taskId), logger: logger, on: eventLoop)
    }

    /// 手动执行一次任务。
    @inlinable
    public func executeTask(taskId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteTaskResponse {
        try await self.executeTask(ExecuteTaskRequest(taskId: taskId), logger: logger, on: eventLoop)
    }
}
