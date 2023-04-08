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

extension Dbbrain {
    /// CreateProxySessionKillTask请求参数结构体
    public struct CreateProxySessionKillTaskRequest: TCRequestModel {
        /// 实例 ID。
        public let instanceId: String

        /// 服务产品类型，支持值包括： "redis" - 云数据库 Redis。
        public let product: String

        public init(instanceId: String, product: String) {
            self.instanceId = instanceId
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case product = "Product"
        }
    }

    /// CreateProxySessionKillTask返回参数结构体
    public struct CreateProxySessionKillTaskResponse: TCResponseModel {
        /// 创建 kill 会话任务返回的异步任务 id
        public let asyncRequestId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 创建中止代理节点会话的任务
    ///
    /// 创建中止所有代理节点连接会话的异步任务。当前仅支持 Redis。得到的返回值为异步任务 id，可以作为参数传入接口 DescribeProxySessionKillTasks 查询kill会话任务执行状态。
    @inlinable
    public func createProxySessionKillTask(_ input: CreateProxySessionKillTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProxySessionKillTaskResponse> {
        self.client.execute(action: "CreateProxySessionKillTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建中止代理节点会话的任务
    ///
    /// 创建中止所有代理节点连接会话的异步任务。当前仅支持 Redis。得到的返回值为异步任务 id，可以作为参数传入接口 DescribeProxySessionKillTasks 查询kill会话任务执行状态。
    @inlinable
    public func createProxySessionKillTask(_ input: CreateProxySessionKillTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProxySessionKillTaskResponse {
        try await self.client.execute(action: "CreateProxySessionKillTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建中止代理节点会话的任务
    ///
    /// 创建中止所有代理节点连接会话的异步任务。当前仅支持 Redis。得到的返回值为异步任务 id，可以作为参数传入接口 DescribeProxySessionKillTasks 查询kill会话任务执行状态。
    @inlinable
    public func createProxySessionKillTask(instanceId: String, product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProxySessionKillTaskResponse> {
        self.createProxySessionKillTask(.init(instanceId: instanceId, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 创建中止代理节点会话的任务
    ///
    /// 创建中止所有代理节点连接会话的异步任务。当前仅支持 Redis。得到的返回值为异步任务 id，可以作为参数传入接口 DescribeProxySessionKillTasks 查询kill会话任务执行状态。
    @inlinable
    public func createProxySessionKillTask(instanceId: String, product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProxySessionKillTaskResponse {
        try await self.createProxySessionKillTask(.init(instanceId: instanceId, product: product), region: region, logger: logger, on: eventLoop)
    }
}
