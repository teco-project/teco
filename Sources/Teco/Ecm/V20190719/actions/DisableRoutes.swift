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

extension Ecm {
    /// DisableRoutes请求参数结构体
    public struct DisableRoutesRequest: TCRequestModel {
        /// 路由表唯一ID。
        public let routeTableId: String

        /// 路由策略ID。
        public let routeIds: [UInt64]

        public init(routeTableId: String, routeIds: [UInt64]) {
            self.routeTableId = routeTableId
            self.routeIds = routeIds
        }

        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case routeIds = "RouteIds"
        }
    }

    /// DisableRoutes返回参数结构体
    public struct DisableRoutesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 禁用子网路由
    ///
    /// 禁用已启用的子网路由
    @inlinable
    public func disableRoutes(_ input: DisableRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisableRoutesResponse > {
        self.client.execute(action: "DisableRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用子网路由
    ///
    /// 禁用已启用的子网路由
    @inlinable
    public func disableRoutes(_ input: DisableRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableRoutesResponse {
        try await self.client.execute(action: "DisableRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用子网路由
    ///
    /// 禁用已启用的子网路由
    @inlinable
    public func disableRoutes(routeTableId: String, routeIds: [UInt64], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisableRoutesResponse > {
        self.disableRoutes(DisableRoutesRequest(routeTableId: routeTableId, routeIds: routeIds), logger: logger, on: eventLoop)
    }

    /// 禁用子网路由
    ///
    /// 禁用已启用的子网路由
    @inlinable
    public func disableRoutes(routeTableId: String, routeIds: [UInt64], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableRoutesResponse {
        try await self.disableRoutes(DisableRoutesRequest(routeTableId: routeTableId, routeIds: routeIds), logger: logger, on: eventLoop)
    }
}
