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

extension Bmeip {
    /// DescribeEipTask请求参数结构体
    public struct DescribeEipTaskRequest: TCRequestModel {
        /// EIP查询任务ID
        public let taskId: UInt64

        public init(taskId: UInt64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeEipTask返回参数结构体
    public struct DescribeEipTaskResponse: TCResponseModel {
        /// 当前任务状态码：0-成功，1-失败，2-进行中
        public let status: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 黑石EIP查询任务状态
    @inlinable
    public func describeEipTask(_ input: DescribeEipTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEipTaskResponse> {
        self.client.execute(action: "DescribeEipTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 黑石EIP查询任务状态
    @inlinable
    public func describeEipTask(_ input: DescribeEipTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEipTaskResponse {
        try await self.client.execute(action: "DescribeEipTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 黑石EIP查询任务状态
    @inlinable
    public func describeEipTask(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEipTaskResponse> {
        self.describeEipTask(DescribeEipTaskRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 黑石EIP查询任务状态
    @inlinable
    public func describeEipTask(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEipTaskResponse {
        try await self.describeEipTask(DescribeEipTaskRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
