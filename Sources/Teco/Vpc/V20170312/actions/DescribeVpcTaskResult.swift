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

extension Vpc {
    /// DescribeVpcTaskResult请求参数结构体
    public struct DescribeVpcTaskResultRequest: TCRequest {
        /// 异步任务请求返回的RequestId。
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeVpcTaskResult返回参数结构体
    public struct DescribeVpcTaskResultResponse: TCResponse {
        /// 异步任务执行结果。结果：SUCCESS、FAILED、RUNNING。3者其中之一。其中SUCCESS表示任务执行成功，FAILED表示任务执行失败，RUNNING表示任务执行中。
        public let status: String

        /// 异步任务执行输出。
        public let output: String

        /// 异步任务详细结果。只用于特殊场景，如批量删除弹性网卡时查询成功的网卡列表和失败的列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [VpcTaskResultDetailInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case output = "Output"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询VPC异步任务执行结果
    ///
    /// 本接口（DescribeVpcTaskResult）用于查询VPC任务执行结果。
    @inlinable
    public func describeVpcTaskResult(_ input: DescribeVpcTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcTaskResultResponse> {
        self.client.execute(action: "DescribeVpcTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询VPC异步任务执行结果
    ///
    /// 本接口（DescribeVpcTaskResult）用于查询VPC任务执行结果。
    @inlinable
    public func describeVpcTaskResult(_ input: DescribeVpcTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcTaskResultResponse {
        try await self.client.execute(action: "DescribeVpcTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询VPC异步任务执行结果
    ///
    /// 本接口（DescribeVpcTaskResult）用于查询VPC任务执行结果。
    @inlinable
    public func describeVpcTaskResult(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcTaskResultResponse> {
        self.describeVpcTaskResult(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPC异步任务执行结果
    ///
    /// 本接口（DescribeVpcTaskResult）用于查询VPC任务执行结果。
    @inlinable
    public func describeVpcTaskResult(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcTaskResultResponse {
        try await self.describeVpcTaskResult(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
