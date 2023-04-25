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

extension Ecm {
    /// EnableRoutes请求参数结构体
    public struct EnableRoutesRequest: TCRequestModel {
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

    /// EnableRoutes返回参数结构体
    public struct EnableRoutesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启用子网路由
    ///
    /// 启用已禁用的子网路由。
    /// 本接口会校验启用后，是否与已有路由冲突，如果冲突，则无法启用，失败处理。路由冲突时，需要先禁用与之冲突的路由，才能启用该路由。
    @inlinable @discardableResult
    public func enableRoutes(_ input: EnableRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableRoutesResponse> {
        self.client.execute(action: "EnableRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用子网路由
    ///
    /// 启用已禁用的子网路由。
    /// 本接口会校验启用后，是否与已有路由冲突，如果冲突，则无法启用，失败处理。路由冲突时，需要先禁用与之冲突的路由，才能启用该路由。
    @inlinable @discardableResult
    public func enableRoutes(_ input: EnableRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableRoutesResponse {
        try await self.client.execute(action: "EnableRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用子网路由
    ///
    /// 启用已禁用的子网路由。
    /// 本接口会校验启用后，是否与已有路由冲突，如果冲突，则无法启用，失败处理。路由冲突时，需要先禁用与之冲突的路由，才能启用该路由。
    @inlinable @discardableResult
    public func enableRoutes(routeTableId: String, routeIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableRoutesResponse> {
        self.enableRoutes(.init(routeTableId: routeTableId, routeIds: routeIds), region: region, logger: logger, on: eventLoop)
    }

    /// 启用子网路由
    ///
    /// 启用已禁用的子网路由。
    /// 本接口会校验启用后，是否与已有路由冲突，如果冲突，则无法启用，失败处理。路由冲突时，需要先禁用与之冲突的路由，才能启用该路由。
    @inlinable @discardableResult
    public func enableRoutes(routeTableId: String, routeIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableRoutesResponse {
        try await self.enableRoutes(.init(routeTableId: routeTableId, routeIds: routeIds), region: region, logger: logger, on: eventLoop)
    }
}
