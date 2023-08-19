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
    /// ModifyVpnGatewayCcnRoutes请求参数结构体
    public struct ModifyVpnGatewayCcnRoutesRequest: TCRequest {
        /// VPN网关实例ID。
        public let vpnGatewayId: String

        /// 云联网路由（IDC网段）列表。
        public let routes: [VpngwCcnRoutes]

        public init(vpnGatewayId: String, routes: [VpngwCcnRoutes]) {
            self.vpnGatewayId = vpnGatewayId
            self.routes = routes
        }

        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case routes = "Routes"
        }
    }

    /// ModifyVpnGatewayCcnRoutes返回参数结构体
    public struct ModifyVpnGatewayCcnRoutesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改VPN网关云联网路由
    ///
    /// 本接口（ModifyVpnGatewayCcnRoutes）用于修改VPN网关云联网路由。
    @inlinable @discardableResult
    public func modifyVpnGatewayCcnRoutes(_ input: ModifyVpnGatewayCcnRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpnGatewayCcnRoutesResponse> {
        self.client.execute(action: "ModifyVpnGatewayCcnRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改VPN网关云联网路由
    ///
    /// 本接口（ModifyVpnGatewayCcnRoutes）用于修改VPN网关云联网路由。
    @inlinable @discardableResult
    public func modifyVpnGatewayCcnRoutes(_ input: ModifyVpnGatewayCcnRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpnGatewayCcnRoutesResponse {
        try await self.client.execute(action: "ModifyVpnGatewayCcnRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改VPN网关云联网路由
    ///
    /// 本接口（ModifyVpnGatewayCcnRoutes）用于修改VPN网关云联网路由。
    @inlinable @discardableResult
    public func modifyVpnGatewayCcnRoutes(vpnGatewayId: String, routes: [VpngwCcnRoutes], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpnGatewayCcnRoutesResponse> {
        self.modifyVpnGatewayCcnRoutes(.init(vpnGatewayId: vpnGatewayId, routes: routes), region: region, logger: logger, on: eventLoop)
    }

    /// 修改VPN网关云联网路由
    ///
    /// 本接口（ModifyVpnGatewayCcnRoutes）用于修改VPN网关云联网路由。
    @inlinable @discardableResult
    public func modifyVpnGatewayCcnRoutes(vpnGatewayId: String, routes: [VpngwCcnRoutes], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpnGatewayCcnRoutesResponse {
        try await self.modifyVpnGatewayCcnRoutes(.init(vpnGatewayId: vpnGatewayId, routes: routes), region: region, logger: logger, on: eventLoop)
    }
}
