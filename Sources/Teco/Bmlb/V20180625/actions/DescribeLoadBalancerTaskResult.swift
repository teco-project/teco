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

import TecoCore

extension Bmlb {
    /// DescribeLoadBalancerTaskResult请求参数结构体
    public struct DescribeLoadBalancerTaskResultRequest: TCRequestModel {
        /// 任务ID。由具体的异步操作接口提供。
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeLoadBalancerTaskResult返回参数结构体
    public struct DescribeLoadBalancerTaskResultResponse: TCResponseModel {
        /// 任务当前状态。0：成功，1：失败，2：进行中。
        public let status: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 查询负载均衡实例异步任务的执行情况
    ///
    /// 查询负载均衡实例异步任务的执行情况。
    @inlinable
    public func describeLoadBalancerTaskResult(_ input: DescribeLoadBalancerTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancerTaskResultResponse> {
        self.client.execute(action: "DescribeLoadBalancerTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡实例异步任务的执行情况
    ///
    /// 查询负载均衡实例异步任务的执行情况。
    @inlinable
    public func describeLoadBalancerTaskResult(_ input: DescribeLoadBalancerTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancerTaskResultResponse {
        try await self.client.execute(action: "DescribeLoadBalancerTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询负载均衡实例异步任务的执行情况
    ///
    /// 查询负载均衡实例异步任务的执行情况。
    @inlinable
    public func describeLoadBalancerTaskResult(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancerTaskResultResponse> {
        self.describeLoadBalancerTaskResult(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡实例异步任务的执行情况
    ///
    /// 查询负载均衡实例异步任务的执行情况。
    @inlinable
    public func describeLoadBalancerTaskResult(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancerTaskResultResponse {
        try await self.describeLoadBalancerTaskResult(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
