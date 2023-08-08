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

extension Live {
    /// DescribeLivePullStreamTaskStatus请求参数结构体
    public struct DescribeLivePullStreamTaskStatusRequest: TCRequestModel {
        /// 任务 ID。
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeLivePullStreamTaskStatus返回参数结构体
    public struct DescribeLivePullStreamTaskStatusResponse: TCResponseModel {
        /// 任务状态信息。
        public let taskStatusInfo: TaskStatusInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskStatusInfo = "TaskStatusInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询直播拉流任务状态
    ///
    /// 查询直播拉流任务状态信息。
    @inlinable
    public func describeLivePullStreamTaskStatus(_ input: DescribeLivePullStreamTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLivePullStreamTaskStatusResponse> {
        self.client.execute(action: "DescribeLivePullStreamTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询直播拉流任务状态
    ///
    /// 查询直播拉流任务状态信息。
    @inlinable
    public func describeLivePullStreamTaskStatus(_ input: DescribeLivePullStreamTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLivePullStreamTaskStatusResponse {
        try await self.client.execute(action: "DescribeLivePullStreamTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询直播拉流任务状态
    ///
    /// 查询直播拉流任务状态信息。
    @inlinable
    public func describeLivePullStreamTaskStatus(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLivePullStreamTaskStatusResponse> {
        self.describeLivePullStreamTaskStatus(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询直播拉流任务状态
    ///
    /// 查询直播拉流任务状态信息。
    @inlinable
    public func describeLivePullStreamTaskStatus(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLivePullStreamTaskStatusResponse {
        try await self.describeLivePullStreamTaskStatus(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}