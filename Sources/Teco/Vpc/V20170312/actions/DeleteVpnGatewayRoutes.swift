//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Vpc {
    /// DeleteVpnGatewayRoutes请求参数结构体
    public struct DeleteVpnGatewayRoutesRequest: TCRequestModel {
        /// VPN网关实例ID
        public let vpnGatewayId: String

        /// 路由ID信息列表
        public let routeIds: [String]

        public init(vpnGatewayId: String, routeIds: [String]) {
            self.vpnGatewayId = vpnGatewayId
            self.routeIds = routeIds
        }

        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case routeIds = "RouteIds"
        }
    }

    /// DeleteVpnGatewayRoutes返回参数结构体
    public struct DeleteVpnGatewayRoutesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除VPN网关路由
    ///
    /// 本接口（DeleteVpnGatewayCcnRoutes）用于删除VPN网关路由
    @inlinable @discardableResult
    public func deleteVpnGatewayRoutes(_ input: DeleteVpnGatewayRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpnGatewayRoutesResponse> {
        self.client.execute(action: "DeleteVpnGatewayRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除VPN网关路由
    ///
    /// 本接口（DeleteVpnGatewayCcnRoutes）用于删除VPN网关路由
    @inlinable @discardableResult
    public func deleteVpnGatewayRoutes(_ input: DeleteVpnGatewayRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpnGatewayRoutesResponse {
        try await self.client.execute(action: "DeleteVpnGatewayRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除VPN网关路由
    ///
    /// 本接口（DeleteVpnGatewayCcnRoutes）用于删除VPN网关路由
    @inlinable @discardableResult
    public func deleteVpnGatewayRoutes(vpnGatewayId: String, routeIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpnGatewayRoutesResponse> {
        self.deleteVpnGatewayRoutes(DeleteVpnGatewayRoutesRequest(vpnGatewayId: vpnGatewayId, routeIds: routeIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除VPN网关路由
    ///
    /// 本接口（DeleteVpnGatewayCcnRoutes）用于删除VPN网关路由
    @inlinable @discardableResult
    public func deleteVpnGatewayRoutes(vpnGatewayId: String, routeIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpnGatewayRoutesResponse {
        try await self.deleteVpnGatewayRoutes(DeleteVpnGatewayRoutesRequest(vpnGatewayId: vpnGatewayId, routeIds: routeIds), region: region, logger: logger, on: eventLoop)
    }
}
