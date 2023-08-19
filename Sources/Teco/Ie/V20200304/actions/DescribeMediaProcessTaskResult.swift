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

extension Ie {
    /// DescribeMediaProcessTaskResult请求参数结构体
    public struct DescribeMediaProcessTaskResultRequest: TCRequest {
        /// 编辑处理任务ID。
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeMediaProcessTaskResult返回参数结构体
    public struct DescribeMediaProcessTaskResultResponse: TCResponse {
        /// 任务处理结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskResult: MediaProcessTaskResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskResult = "TaskResult"
            case requestId = "RequestId"
        }
    }

    /// 获取编辑处理任务结果
    ///
    /// 用于获取编辑处理任务的结果。
    @inlinable
    public func describeMediaProcessTaskResult(_ input: DescribeMediaProcessTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMediaProcessTaskResultResponse> {
        self.client.execute(action: "DescribeMediaProcessTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取编辑处理任务结果
    ///
    /// 用于获取编辑处理任务的结果。
    @inlinable
    public func describeMediaProcessTaskResult(_ input: DescribeMediaProcessTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMediaProcessTaskResultResponse {
        try await self.client.execute(action: "DescribeMediaProcessTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取编辑处理任务结果
    ///
    /// 用于获取编辑处理任务的结果。
    @inlinable
    public func describeMediaProcessTaskResult(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMediaProcessTaskResultResponse> {
        self.describeMediaProcessTaskResult(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取编辑处理任务结果
    ///
    /// 用于获取编辑处理任务的结果。
    @inlinable
    public func describeMediaProcessTaskResult(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMediaProcessTaskResultResponse {
        try await self.describeMediaProcessTaskResult(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
