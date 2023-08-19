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

extension Bmvpc {
    /// ResetVpnConnection请求参数结构体
    public struct ResetVpnConnectionRequest: TCRequest {
        /// VPC唯一ID
        public let vpcId: String

        /// VPN通道实例ID。形如：bmvpnx-f49l6u0z。
        public let vpnConnectionId: String

        public init(vpcId: String, vpnConnectionId: String) {
            self.vpcId = vpcId
            self.vpnConnectionId = vpnConnectionId
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case vpnConnectionId = "VpnConnectionId"
        }
    }

    /// ResetVpnConnection返回参数结构体
    public struct ResetVpnConnectionResponse: TCResponse {
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
    public func resetVpnConnection(vpcId: String, vpnConnectionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetVpnConnectionResponse> {
        self.resetVpnConnection(.init(vpcId: vpcId, vpnConnectionId: vpnConnectionId), region: region, logger: logger, on: eventLoop)
    }

    /// 重置VPN通道
    ///
    /// 本接口(ResetVpnConnection)用于重置VPN通道。
    @inlinable @discardableResult
    public func resetVpnConnection(vpcId: String, vpnConnectionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetVpnConnectionResponse {
        try await self.resetVpnConnection(.init(vpcId: vpcId, vpnConnectionId: vpnConnectionId), region: region, logger: logger, on: eventLoop)
    }
}
