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

extension Vpc {
    /// CreateVpnGatewayRoutes请求参数结构体
    public struct CreateVpnGatewayRoutesRequest: TCRequestModel {
        /// VPN网关的ID
        public let vpnGatewayId: String

        /// VPN网关目的路由列表
        public let routes: [VpnGatewayRoute]

        public init(vpnGatewayId: String, routes: [VpnGatewayRoute]) {
            self.vpnGatewayId = vpnGatewayId
            self.routes = routes
        }

        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case routes = "Routes"
        }
    }

    /// CreateVpnGatewayRoutes返回参数结构体
    public struct CreateVpnGatewayRoutesResponse: TCResponseModel {
        /// VPN网关目的路由
        public let routes: [VpnGatewayRoute]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case routes = "Routes"
            case requestId = "RequestId"
        }
    }

    /// 创建VPN网关路由
    ///
    /// 创建路由型VPN网关的目的路由
    @inlinable
    public func createVpnGatewayRoutes(_ input: CreateVpnGatewayRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpnGatewayRoutesResponse> {
        self.client.execute(action: "CreateVpnGatewayRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建VPN网关路由
    ///
    /// 创建路由型VPN网关的目的路由
    @inlinable
    public func createVpnGatewayRoutes(_ input: CreateVpnGatewayRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpnGatewayRoutesResponse {
        try await self.client.execute(action: "CreateVpnGatewayRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建VPN网关路由
    ///
    /// 创建路由型VPN网关的目的路由
    @inlinable
    public func createVpnGatewayRoutes(vpnGatewayId: String, routes: [VpnGatewayRoute], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpnGatewayRoutesResponse> {
        let input = CreateVpnGatewayRoutesRequest(vpnGatewayId: vpnGatewayId, routes: routes)
        return self.client.execute(action: "CreateVpnGatewayRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建VPN网关路由
    ///
    /// 创建路由型VPN网关的目的路由
    @inlinable
    public func createVpnGatewayRoutes(vpnGatewayId: String, routes: [VpnGatewayRoute], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpnGatewayRoutesResponse {
        let input = CreateVpnGatewayRoutesRequest(vpnGatewayId: vpnGatewayId, routes: routes)
        return try await self.client.execute(action: "CreateVpnGatewayRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
