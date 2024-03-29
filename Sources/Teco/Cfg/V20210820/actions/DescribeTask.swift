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
    /// DescribeTask请求参数结构体
    public struct DescribeTaskRequest: TCRequest {
        /// 任务ID
        public let taskId: Int64

        public init(taskId: Int64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeTask返回参数结构体
    public struct DescribeTaskResponse: TCResponse {
        /// 任务信息
        public let task: Task

        /// 任务对应的演练报告信息，null表示未导出报告
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reportInfo: TaskReportInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case task = "Task"
            case reportInfo = "ReportInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询任务
    @inlinable
    public func describeTask(_ input: DescribeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskResponse> {
        self.client.execute(action: "DescribeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务
    @inlinable
    public func describeTask(_ input: DescribeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskResponse {
        try await self.client.execute(action: "DescribeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务
    @inlinable
    public func describeTask(taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskResponse> {
        self.describeTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务
    @inlinable
    public func describeTask(taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskResponse {
        try await self.describeTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
