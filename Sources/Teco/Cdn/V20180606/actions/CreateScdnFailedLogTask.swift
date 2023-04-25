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

extension Cdn {
    /// CreateScdnFailedLogTask请求参数结构体
    public struct CreateScdnFailedLogTaskRequest: TCRequestModel {
        /// 重试失败任务的taskID
        public let taskId: String

        /// 地域：mainland或overseas
        public let area: String?

        public init(taskId: String, area: String? = nil) {
            self.taskId = taskId
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case area = "Area"
        }
    }

    /// CreateScdnFailedLogTask返回参数结构体
    public struct CreateScdnFailedLogTaskResponse: TCResponseModel {
        /// 创建结果,
        /// "0" -> 创建成功
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 重试创建事件日志任务
    ///
    /// CreateScdnFailedLogTask 用于重试创建失败的事件日志任务
    @inlinable
    public func createScdnFailedLogTask(_ input: CreateScdnFailedLogTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateScdnFailedLogTaskResponse> {
        self.client.execute(action: "CreateScdnFailedLogTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重试创建事件日志任务
    ///
    /// CreateScdnFailedLogTask 用于重试创建失败的事件日志任务
    @inlinable
    public func createScdnFailedLogTask(_ input: CreateScdnFailedLogTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScdnFailedLogTaskResponse {
        try await self.client.execute(action: "CreateScdnFailedLogTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重试创建事件日志任务
    ///
    /// CreateScdnFailedLogTask 用于重试创建失败的事件日志任务
    @inlinable
    public func createScdnFailedLogTask(taskId: String, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateScdnFailedLogTaskResponse> {
        self.createScdnFailedLogTask(.init(taskId: taskId, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 重试创建事件日志任务
    ///
    /// CreateScdnFailedLogTask 用于重试创建失败的事件日志任务
    @inlinable
    public func createScdnFailedLogTask(taskId: String, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScdnFailedLogTaskResponse {
        try await self.createScdnFailedLogTask(.init(taskId: taskId, area: area), region: region, logger: logger, on: eventLoop)
    }
}
