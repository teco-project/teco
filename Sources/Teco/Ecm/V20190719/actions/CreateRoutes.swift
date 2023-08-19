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
    /// CreateRoutes请求参数结构体
    public struct CreateRoutesRequest: TCRequest {
        /// 路由表实例ID。
        public let routeTableId: String

        /// 要创建的路由策略对象。
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

    /// CreateRoutes返回参数结构体
    public struct CreateRoutesResponse: TCResponse {
        /// 新增的实例个数。
        public let totalCount: UInt64

        /// 路由表对象。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let routeTableSet: [RouteTable]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case routeTableSet = "RouteTableSet"
            case requestId = "RequestId"
        }
    }

    /// 创建路由策略
    @inlinable
    public func createRoutes(_ input: CreateRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRoutesResponse> {
        self.client.execute(action: "CreateRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建路由策略
    @inlinable
    public func createRoutes(_ input: CreateRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRoutesResponse {
        try await self.client.execute(action: "CreateRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建路由策略
    @inlinable
    public func createRoutes(routeTableId: String, routes: [Route], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRoutesResponse> {
        self.createRoutes(.init(routeTableId: routeTableId, routes: routes), region: region, logger: logger, on: eventLoop)
    }

    /// 创建路由策略
    @inlinable
    public func createRoutes(routeTableId: String, routes: [Route], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRoutesResponse {
        try await self.createRoutes(.init(routeTableId: routeTableId, routes: routes), region: region, logger: logger, on: eventLoop)
    }
}
