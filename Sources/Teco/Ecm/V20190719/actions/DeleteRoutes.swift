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

extension Ecm {
    /// DeleteRoutes请求参数结构体
    public struct DeleteRoutesRequest: TCRequestModel {
        /// 路由表唯一ID。
        public let routeTableId: String

        /// 路由策略对象。
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

    /// DeleteRoutes返回参数结构体
    public struct DeleteRoutesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除路由策略
    ///
    /// 对某个路由表批量删除路由策略
    @inlinable @discardableResult
    public func deleteRoutes(_ input: DeleteRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRoutesResponse> {
        self.client.execute(action: "DeleteRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除路由策略
    ///
    /// 对某个路由表批量删除路由策略
    @inlinable @discardableResult
    public func deleteRoutes(_ input: DeleteRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRoutesResponse {
        try await self.client.execute(action: "DeleteRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除路由策略
    ///
    /// 对某个路由表批量删除路由策略
    @inlinable @discardableResult
    public func deleteRoutes(routeTableId: String, routes: [Route], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRoutesResponse> {
        let input = DeleteRoutesRequest(routeTableId: routeTableId, routes: routes)
        return self.client.execute(action: "DeleteRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除路由策略
    ///
    /// 对某个路由表批量删除路由策略
    @inlinable @discardableResult
    public func deleteRoutes(routeTableId: String, routes: [Route], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRoutesResponse {
        let input = DeleteRoutesRequest(routeTableId: routeTableId, routes: routes)
        return try await self.client.execute(action: "DeleteRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
