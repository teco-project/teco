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

extension Bmvpc {
    /// DescribeTaskStatus请求参数结构体
    public struct DescribeTaskStatusRequest: TCRequestModel {
        /// 任务ID
        public let taskId: UInt64

        public init(taskId: UInt64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeTaskStatus返回参数结构体
    public struct DescribeTaskStatusResponse: TCResponseModel {
        /// 任务状态，其中0表示任务执行成功，1表示任务执行失败，2表示任务正在执行中
        public let status: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 获取任务状态
    ///
    /// 根据任务ID，获取任务的执行状态
    @inlinable
    public func describeTaskStatus(_ input: DescribeTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskStatusResponse> {
        self.client.execute(action: "DescribeTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取任务状态
    ///
    /// 根据任务ID，获取任务的执行状态
    @inlinable
    public func describeTaskStatus(_ input: DescribeTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskStatusResponse {
        try await self.client.execute(action: "DescribeTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取任务状态
    ///
    /// 根据任务ID，获取任务的执行状态
    @inlinable
    public func describeTaskStatus(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskStatusResponse> {
        self.describeTaskStatus(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取任务状态
    ///
    /// 根据任务ID，获取任务的执行状态
    @inlinable
    public func describeTaskStatus(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskStatusResponse {
        try await self.describeTaskStatus(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
