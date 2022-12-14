//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Bmvpc {
    /// CreateRoutePolicies请求参数结构体
    public struct CreateRoutePoliciesRequest: TCRequestModel {
        /// 路由表ID
        public let routeTableId: String

        /// 新增的路由
        public let routePolicySet: [RoutePolicy]

        public init(routeTableId: String, routePolicySet: [RoutePolicy]) {
            self.routeTableId = routeTableId
            self.routePolicySet = routePolicySet
        }

        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case routePolicySet = "RoutePolicySet"
        }
    }

    /// CreateRoutePolicies返回参数结构体
    public struct CreateRoutePoliciesResponse: TCResponseModel {
        /// 异步任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建黑石路由表的路由规则
    @inlinable
    public func createRoutePolicies(_ input: CreateRoutePoliciesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateRoutePoliciesResponse > {
        self.client.execute(action: "CreateRoutePolicies", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建黑石路由表的路由规则
    @inlinable
    public func createRoutePolicies(_ input: CreateRoutePoliciesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRoutePoliciesResponse {
        try await self.client.execute(action: "CreateRoutePolicies", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建黑石路由表的路由规则
    @inlinable
    public func createRoutePolicies(routeTableId: String, routePolicySet: [RoutePolicy], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateRoutePoliciesResponse > {
        self.createRoutePolicies(CreateRoutePoliciesRequest(routeTableId: routeTableId, routePolicySet: routePolicySet), logger: logger, on: eventLoop)
    }

    /// 创建黑石路由表的路由规则
    @inlinable
    public func createRoutePolicies(routeTableId: String, routePolicySet: [RoutePolicy], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRoutePoliciesResponse {
        try await self.createRoutePolicies(CreateRoutePoliciesRequest(routeTableId: routeTableId, routePolicySet: routePolicySet), logger: logger, on: eventLoop)
    }
}
