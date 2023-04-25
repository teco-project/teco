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

extension Tcss {
    /// DescribeRefreshTask请求参数结构体
    public struct DescribeRefreshTaskRequest: TCRequestModel {
        /// 任务ID
        public let taskId: UInt64

        public init(taskId: UInt64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeRefreshTask返回参数结构体
    public struct DescribeRefreshTaskResponse: TCResponseModel {
        /// 刷新任务状态，可能为：Task_New,Task_Running,Task_Finish,Task_Error,Task_NoExist
        public let taskStatus: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskStatus = "TaskStatus"
            case requestId = "RequestId"
        }
    }

    /// 查询刷新任务
    @inlinable
    public func describeRefreshTask(_ input: DescribeRefreshTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRefreshTaskResponse> {
        self.client.execute(action: "DescribeRefreshTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询刷新任务
    @inlinable
    public func describeRefreshTask(_ input: DescribeRefreshTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRefreshTaskResponse {
        try await self.client.execute(action: "DescribeRefreshTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询刷新任务
    @inlinable
    public func describeRefreshTask(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRefreshTaskResponse> {
        self.describeRefreshTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询刷新任务
    @inlinable
    public func describeRefreshTask(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRefreshTaskResponse {
        try await self.describeRefreshTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
