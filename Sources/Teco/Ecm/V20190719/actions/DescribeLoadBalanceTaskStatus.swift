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

extension Ecm {
    /// DescribeLoadBalanceTaskStatus请求参数结构体
    public struct DescribeLoadBalanceTaskStatusRequest: TCRequestModel {
        /// 请求ID，即接口返回的 RequestId 参数
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeLoadBalanceTaskStatus返回参数结构体
    public struct DescribeLoadBalanceTaskStatusResponse: TCResponseModel {
        /// 任务的当前状态。 0：成功，1：失败，2：进行中。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 查询负载均衡相关的任务状态
    @inlinable
    public func describeLoadBalanceTaskStatus(_ input: DescribeLoadBalanceTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalanceTaskStatusResponse> {
        self.client.execute(action: "DescribeLoadBalanceTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡相关的任务状态
    @inlinable
    public func describeLoadBalanceTaskStatus(_ input: DescribeLoadBalanceTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalanceTaskStatusResponse {
        try await self.client.execute(action: "DescribeLoadBalanceTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询负载均衡相关的任务状态
    @inlinable
    public func describeLoadBalanceTaskStatus(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalanceTaskStatusResponse> {
        self.describeLoadBalanceTaskStatus(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡相关的任务状态
    @inlinable
    public func describeLoadBalanceTaskStatus(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalanceTaskStatusResponse {
        try await self.describeLoadBalanceTaskStatus(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
