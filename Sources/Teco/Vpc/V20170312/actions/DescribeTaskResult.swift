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
    /// DescribeTaskResult请求参数结构体
    public struct DescribeTaskResultRequest: TCRequestModel {
        /// 异步任务ID。TaskId和DealName必填一个参数
        public let taskId: UInt64?

        /// 计费订单号。TaskId和DealName必填一个参数
        public let dealName: String?

        public init(taskId: UInt64? = nil, dealName: String? = nil) {
            self.taskId = taskId
            self.dealName = dealName
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case dealName = "DealName"
        }
    }

    /// DescribeTaskResult返回参数结构体
    public struct DescribeTaskResultResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64

        /// 执行结果，包括"SUCCESS", "FAILED", "RUNNING"
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询异步任务执行结果
    ///
    /// 查询EIP异步任务执行结果
    @inlinable
    public func describeTaskResult(_ input: DescribeTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskResultResponse> {
        self.client.execute(action: "DescribeTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询异步任务执行结果
    ///
    /// 查询EIP异步任务执行结果
    @inlinable
    public func describeTaskResult(_ input: DescribeTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskResultResponse {
        try await self.client.execute(action: "DescribeTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询异步任务执行结果
    ///
    /// 查询EIP异步任务执行结果
    @inlinable
    public func describeTaskResult(taskId: UInt64? = nil, dealName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskResultResponse> {
        self.describeTaskResult(.init(taskId: taskId, dealName: dealName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询异步任务执行结果
    ///
    /// 查询EIP异步任务执行结果
    @inlinable
    public func describeTaskResult(taskId: UInt64? = nil, dealName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskResultResponse {
        try await self.describeTaskResult(.init(taskId: taskId, dealName: dealName), region: region, logger: logger, on: eventLoop)
    }
}
