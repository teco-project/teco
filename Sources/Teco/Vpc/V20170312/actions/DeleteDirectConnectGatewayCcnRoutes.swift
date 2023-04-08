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

extension Vpc {
    /// DeleteDirectConnectGatewayCcnRoutes请求参数结构体
    public struct DeleteDirectConnectGatewayCcnRoutesRequest: TCRequestModel {
        /// 专线网关ID，形如：dcg-prpqlmg1
        public let directConnectGatewayId: String

        /// 路由ID。形如：ccnr-f49l6u0z。
        public let routeIds: [String]

        public init(directConnectGatewayId: String, routeIds: [String]) {
            self.directConnectGatewayId = directConnectGatewayId
            self.routeIds = routeIds
        }

        enum CodingKeys: String, CodingKey {
            case directConnectGatewayId = "DirectConnectGatewayId"
            case routeIds = "RouteIds"
        }
    }

    /// DeleteDirectConnectGatewayCcnRoutes返回参数结构体
    public struct DeleteDirectConnectGatewayCcnRoutesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除专线网关云联网路由
    ///
    /// 本接口（DeleteDirectConnectGatewayCcnRoutes）用于删除专线网关的云联网路由（IDC网段）
    @inlinable @discardableResult
    public func deleteDirectConnectGatewayCcnRoutes(_ input: DeleteDirectConnectGatewayCcnRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDirectConnectGatewayCcnRoutesResponse> {
        self.client.execute(action: "DeleteDirectConnectGatewayCcnRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除专线网关云联网路由
    ///
    /// 本接口（DeleteDirectConnectGatewayCcnRoutes）用于删除专线网关的云联网路由（IDC网段）
    @inlinable @discardableResult
    public func deleteDirectConnectGatewayCcnRoutes(_ input: DeleteDirectConnectGatewayCcnRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDirectConnectGatewayCcnRoutesResponse {
        try await self.client.execute(action: "DeleteDirectConnectGatewayCcnRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除专线网关云联网路由
    ///
    /// 本接口（DeleteDirectConnectGatewayCcnRoutes）用于删除专线网关的云联网路由（IDC网段）
    @inlinable @discardableResult
    public func deleteDirectConnectGatewayCcnRoutes(directConnectGatewayId: String, routeIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDirectConnectGatewayCcnRoutesResponse> {
        self.deleteDirectConnectGatewayCcnRoutes(.init(directConnectGatewayId: directConnectGatewayId, routeIds: routeIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除专线网关云联网路由
    ///
    /// 本接口（DeleteDirectConnectGatewayCcnRoutes）用于删除专线网关的云联网路由（IDC网段）
    @inlinable @discardableResult
    public func deleteDirectConnectGatewayCcnRoutes(directConnectGatewayId: String, routeIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDirectConnectGatewayCcnRoutesResponse {
        try await self.deleteDirectConnectGatewayCcnRoutes(.init(directConnectGatewayId: directConnectGatewayId, routeIds: routeIds), region: region, logger: logger, on: eventLoop)
    }
}
