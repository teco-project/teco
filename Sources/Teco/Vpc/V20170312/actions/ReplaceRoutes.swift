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

extension Vpc {
    /// ReplaceRoutes请求参数结构体
    public struct ReplaceRoutesRequest: TCRequestModel {
        /// 路由表实例ID，例如：rtb-azd4dt1c。
        public let routeTableId: String

        /// 路由策略对象。需要指定路由策略ID（RouteId）。
        public let routes: [Route]

        public init(routeTableId: String, routes: [Route]) {
            self.routeTableId = routeTableId
            self.routes = routes
        }

        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case routes = "Routes"
        }
    }

    /// ReplaceRoutes返回参数结构体
    public struct ReplaceRoutesResponse: TCResponseModel {
        /// 原路由策略信息。
        public let oldRouteSet: [Route]

        /// 修改后的路由策略信息。
        public let newRouteSet: [Route]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case oldRouteSet = "OldRouteSet"
            case newRouteSet = "NewRouteSet"
            case requestId = "RequestId"
        }
    }

    /// 替换路由策略
    ///
    /// 本接口（ReplaceRoutes）根据路由策略ID（RouteId）修改指定的路由策略（Route），支持批量修改。
    @inlinable
    public func replaceRoutes(_ input: ReplaceRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplaceRoutesResponse> {
        self.client.execute(action: "ReplaceRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 替换路由策略
    ///
    /// 本接口（ReplaceRoutes）根据路由策略ID（RouteId）修改指定的路由策略（Route），支持批量修改。
    @inlinable
    public func replaceRoutes(_ input: ReplaceRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplaceRoutesResponse {
        try await self.client.execute(action: "ReplaceRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 替换路由策略
    ///
    /// 本接口（ReplaceRoutes）根据路由策略ID（RouteId）修改指定的路由策略（Route），支持批量修改。
    @inlinable
    public func replaceRoutes(routeTableId: String, routes: [Route], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplaceRoutesResponse> {
        self.replaceRoutes(.init(routeTableId: routeTableId, routes: routes), region: region, logger: logger, on: eventLoop)
    }

    /// 替换路由策略
    ///
    /// 本接口（ReplaceRoutes）根据路由策略ID（RouteId）修改指定的路由策略（Route），支持批量修改。
    @inlinable
    public func replaceRoutes(routeTableId: String, routes: [Route], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplaceRoutesResponse {
        try await self.replaceRoutes(.init(routeTableId: routeTableId, routes: routes), region: region, logger: logger, on: eventLoop)
    }
}
