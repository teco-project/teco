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
    /// ResetVpnConnection请求参数结构体
    public struct ResetVpnConnectionRequest: TCRequestModel {
        /// VPN网关实例ID。
        public let vpnGatewayId: String

        /// VPN通道实例ID。形如：vpnx-f49l6u0z。
        public let vpnConnectionId: String

        public init(vpnGatewayId: String, vpnConnectionId: String) {
            self.vpnGatewayId = vpnGatewayId
            self.vpnConnectionId = vpnConnectionId
        }

        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case vpnConnectionId = "VpnConnectionId"
        }
    }

    /// ResetVpnConnection返回参数结构体
    public struct ResetVpnConnectionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重置VPN通道
    ///
    /// 本接口(ResetVpnConnection)用于重置VPN通道。
    @inlinable @discardableResult
    public func resetVpnConnection(_ input: ResetVpnConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetVpnConnectionResponse> {
        self.client.execute(action: "ResetVpnConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置VPN通道
    ///
    /// 本接口(ResetVpnConnection)用于重置VPN通道。
    @inlinable @discardableResult
    public func resetVpnConnection(_ input: ResetVpnConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetVpnConnectionResponse {
        try await self.client.execute(action: "ResetVpnConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置VPN通道
    ///
    /// 本接口(ResetVpnConnection)用于重置VPN通道。
    @inlinable @discardableResult
    public func resetVpnConnection(vpnGatewayId: String, vpnConnectionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetVpnConnectionResponse> {
        self.resetVpnConnection(.init(vpnGatewayId: vpnGatewayId, vpnConnectionId: vpnConnectionId), region: region, logger: logger, on: eventLoop)
    }

    /// 重置VPN通道
    ///
    /// 本接口(ResetVpnConnection)用于重置VPN通道。
    @inlinable @discardableResult
    public func resetVpnConnection(vpnGatewayId: String, vpnConnectionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetVpnConnectionResponse {
        try await self.resetVpnConnection(.init(vpnGatewayId: vpnGatewayId, vpnConnectionId: vpnConnectionId), region: region, logger: logger, on: eventLoop)
    }
}
