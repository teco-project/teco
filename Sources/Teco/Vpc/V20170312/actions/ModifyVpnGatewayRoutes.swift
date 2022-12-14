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

extension Vpc {
    /// ModifyVpnGatewayRoutes请求参数结构体
    public struct ModifyVpnGatewayRoutesRequest: TCRequestModel {
        /// Vpn网关id
        public let vpnGatewayId: String

        /// 路由修改参数
        public let routes: [VpnGatewayRouteModify]

        public init(vpnGatewayId: String, routes: [VpnGatewayRouteModify]) {
            self.vpnGatewayId = vpnGatewayId
            self.routes = routes
        }

        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case routes = "Routes"
        }
    }

    /// ModifyVpnGatewayRoutes返回参数结构体
    public struct ModifyVpnGatewayRoutesResponse: TCResponseModel {
        /// VPN路由信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let routes: [VpnGatewayRoute]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case routes = "Routes"
            case requestId = "RequestId"
        }
    }

    /// 修改VPN路由状态
    ///
    /// 修改VPN路由是否启用
    @inlinable
    public func modifyVpnGatewayRoutes(_ input: ModifyVpnGatewayRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyVpnGatewayRoutesResponse > {
        self.client.execute(action: "ModifyVpnGatewayRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改VPN路由状态
    ///
    /// 修改VPN路由是否启用
    @inlinable
    public func modifyVpnGatewayRoutes(_ input: ModifyVpnGatewayRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpnGatewayRoutesResponse {
        try await self.client.execute(action: "ModifyVpnGatewayRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改VPN路由状态
    ///
    /// 修改VPN路由是否启用
    @inlinable
    public func modifyVpnGatewayRoutes(vpnGatewayId: String, routes: [VpnGatewayRouteModify], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyVpnGatewayRoutesResponse > {
        self.modifyVpnGatewayRoutes(ModifyVpnGatewayRoutesRequest(vpnGatewayId: vpnGatewayId, routes: routes), logger: logger, on: eventLoop)
    }

    /// 修改VPN路由状态
    ///
    /// 修改VPN路由是否启用
    @inlinable
    public func modifyVpnGatewayRoutes(vpnGatewayId: String, routes: [VpnGatewayRouteModify], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpnGatewayRoutesResponse {
        try await self.modifyVpnGatewayRoutes(ModifyVpnGatewayRoutesRequest(vpnGatewayId: vpnGatewayId, routes: routes), logger: logger, on: eventLoop)
    }
}
