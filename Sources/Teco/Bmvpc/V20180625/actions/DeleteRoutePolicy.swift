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

extension Bmvpc {
    /// DeleteRoutePolicy请求参数结构体
    public struct DeleteRoutePolicyRequest: TCRequestModel {
        /// 路由表ID
        public let routeTableId: String

        /// 路由表策略ID
        public let routePolicyId: String

        public init(routeTableId: String, routePolicyId: String) {
            self.routeTableId = routeTableId
            self.routePolicyId = routePolicyId
        }

        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case routePolicyId = "RoutePolicyId"
        }
    }

    /// DeleteRoutePolicy返回参数结构体
    public struct DeleteRoutePolicyResponse: TCResponseModel {
        /// 异步任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 删除黑石路由表路由规则
    @inlinable
    public func deleteRoutePolicy(_ input: DeleteRoutePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRoutePolicyResponse> {
        self.client.execute(action: "DeleteRoutePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除黑石路由表路由规则
    @inlinable
    public func deleteRoutePolicy(_ input: DeleteRoutePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRoutePolicyResponse {
        try await self.client.execute(action: "DeleteRoutePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除黑石路由表路由规则
    @inlinable
    public func deleteRoutePolicy(routeTableId: String, routePolicyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRoutePolicyResponse> {
        self.deleteRoutePolicy(.init(routeTableId: routeTableId, routePolicyId: routePolicyId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除黑石路由表路由规则
    @inlinable
    public func deleteRoutePolicy(routeTableId: String, routePolicyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRoutePolicyResponse {
        try await self.deleteRoutePolicy(.init(routeTableId: routeTableId, routePolicyId: routePolicyId), region: region, logger: logger, on: eventLoop)
    }
}
