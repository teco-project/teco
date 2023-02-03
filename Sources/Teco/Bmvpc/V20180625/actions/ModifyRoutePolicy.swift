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

extension Bmvpc {
    /// ModifyRoutePolicy请求参数结构体
    public struct ModifyRoutePolicyRequest: TCRequestModel {
        /// 路由表ID
        public let routeTableId: String

        /// 修改的路由
        public let routePolicy: RoutePolicy

        public init(routeTableId: String, routePolicy: RoutePolicy) {
            self.routeTableId = routeTableId
            self.routePolicy = routePolicy
        }

        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case routePolicy = "RoutePolicy"
        }
    }

    /// ModifyRoutePolicy返回参数结构体
    public struct ModifyRoutePolicyResponse: TCResponseModel {
        /// 异步任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 修改自定义路由
    @inlinable
    public func modifyRoutePolicy(_ input: ModifyRoutePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRoutePolicyResponse> {
        self.client.execute(action: "ModifyRoutePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改自定义路由
    @inlinable
    public func modifyRoutePolicy(_ input: ModifyRoutePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRoutePolicyResponse {
        try await self.client.execute(action: "ModifyRoutePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改自定义路由
    @inlinable
    public func modifyRoutePolicy(routeTableId: String, routePolicy: RoutePolicy, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRoutePolicyResponse> {
        let input = ModifyRoutePolicyRequest(routeTableId: routeTableId, routePolicy: routePolicy)
        return self.client.execute(action: "ModifyRoutePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改自定义路由
    @inlinable
    public func modifyRoutePolicy(routeTableId: String, routePolicy: RoutePolicy, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRoutePolicyResponse {
        let input = ModifyRoutePolicyRequest(routeTableId: routeTableId, routePolicy: routePolicy)
        return try await self.client.execute(action: "ModifyRoutePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
