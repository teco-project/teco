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

extension Cfg {
    /// DeleteTask请求参数结构体
    public struct DeleteTaskRequest: TCRequestModel {
        /// 任务ID
        public let taskId: Int64

        public init(taskId: Int64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DeleteTask返回参数结构体
    public struct DeleteTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除任务
    @inlinable @discardableResult
    public func deleteTask(_ input: DeleteTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTaskResponse> {
        self.client.execute(action: "DeleteTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除任务
    @inlinable @discardableResult
    public func deleteTask(_ input: DeleteTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTaskResponse {
        try await self.client.execute(action: "DeleteTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除任务
    @inlinable @discardableResult
    public func deleteTask(taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTaskResponse> {
        self.deleteTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除任务
    @inlinable @discardableResult
    public func deleteTask(taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTaskResponse {
        try await self.deleteTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
