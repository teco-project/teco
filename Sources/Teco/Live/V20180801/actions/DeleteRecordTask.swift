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

extension Live {
    /// DeleteRecordTask请求参数结构体
    public struct DeleteRecordTaskRequest: TCRequestModel {
        /// 任务ID，CreateRecordTask返回。删除TaskId指定的录制任务。
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DeleteRecordTask返回参数结构体
    public struct DeleteRecordTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除录制任务（新）
    ///
    /// 删除录制任务配置。删除操作不影响正在运行当中的任务，仅对删除之后新的推流有效。
    @inlinable @discardableResult
    public func deleteRecordTask(_ input: DeleteRecordTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRecordTaskResponse> {
        self.client.execute(action: "DeleteRecordTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除录制任务（新）
    ///
    /// 删除录制任务配置。删除操作不影响正在运行当中的任务，仅对删除之后新的推流有效。
    @inlinable @discardableResult
    public func deleteRecordTask(_ input: DeleteRecordTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecordTaskResponse {
        try await self.client.execute(action: "DeleteRecordTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除录制任务（新）
    ///
    /// 删除录制任务配置。删除操作不影响正在运行当中的任务，仅对删除之后新的推流有效。
    @inlinable @discardableResult
    public func deleteRecordTask(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRecordTaskResponse> {
        self.deleteRecordTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除录制任务（新）
    ///
    /// 删除录制任务配置。删除操作不影响正在运行当中的任务，仅对删除之后新的推流有效。
    @inlinable @discardableResult
    public func deleteRecordTask(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecordTaskResponse {
        try await self.deleteRecordTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
