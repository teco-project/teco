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

extension Dbbrain {
    /// DescribeProxySessionKillTasks请求参数结构体
    public struct DescribeProxySessionKillTasksRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String

        /// kill 会话异步任务 ID,  接口 CreateProxySessionKillTask 调用成功后获取。
        public let asyncRequestIds: [Int64]

        /// 服务产品类型，支持值包括： "redis" - 云数据库 Redis。
        public let product: String

        public init(instanceId: String, asyncRequestIds: [Int64], product: String) {
            self.instanceId = instanceId
            self.asyncRequestIds = asyncRequestIds
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case asyncRequestIds = "AsyncRequestIds"
            case product = "Product"
        }
    }

    /// DescribeProxySessionKillTasks返回参数结构体
    public struct DescribeProxySessionKillTasksResponse: TCResponseModel {
        /// kill 任务的详情。
        public let tasks: [TaskInfo]

        /// 任务总数。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tasks = "Tasks"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询代理节点 kill 会话任务执行状态
    ///
    /// 用于查询 redis 执行 kill 会话任务后代理节点的执行结果，入参异步任务 ID 从接口 CreateProxySessionKillTask 调用成功后取得。当前 product 只支持：redis。
    @inlinable
    public func describeProxySessionKillTasks(_ input: DescribeProxySessionKillTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxySessionKillTasksResponse> {
        self.client.execute(action: "DescribeProxySessionKillTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询代理节点 kill 会话任务执行状态
    ///
    /// 用于查询 redis 执行 kill 会话任务后代理节点的执行结果，入参异步任务 ID 从接口 CreateProxySessionKillTask 调用成功后取得。当前 product 只支持：redis。
    @inlinable
    public func describeProxySessionKillTasks(_ input: DescribeProxySessionKillTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxySessionKillTasksResponse {
        try await self.client.execute(action: "DescribeProxySessionKillTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询代理节点 kill 会话任务执行状态
    ///
    /// 用于查询 redis 执行 kill 会话任务后代理节点的执行结果，入参异步任务 ID 从接口 CreateProxySessionKillTask 调用成功后取得。当前 product 只支持：redis。
    @inlinable
    public func describeProxySessionKillTasks(instanceId: String, asyncRequestIds: [Int64], product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxySessionKillTasksResponse> {
        self.describeProxySessionKillTasks(.init(instanceId: instanceId, asyncRequestIds: asyncRequestIds, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 查询代理节点 kill 会话任务执行状态
    ///
    /// 用于查询 redis 执行 kill 会话任务后代理节点的执行结果，入参异步任务 ID 从接口 CreateProxySessionKillTask 调用成功后取得。当前 product 只支持：redis。
    @inlinable
    public func describeProxySessionKillTasks(instanceId: String, asyncRequestIds: [Int64], product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxySessionKillTasksResponse {
        try await self.describeProxySessionKillTasks(.init(instanceId: instanceId, asyncRequestIds: asyncRequestIds, product: product), region: region, logger: logger, on: eventLoop)
    }
}
