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
    /// DeleteVpnGateway请求参数结构体
    public struct DeleteVpnGatewayRequest: TCRequest {
        /// VPN网关实例ID。
        public let vpnGatewayId: String

        public init(vpnGatewayId: String) {
            self.vpnGatewayId = vpnGatewayId
        }

        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
        }
    }

    /// DeleteVpnGateway返回参数结构体
    public struct DeleteVpnGatewayResponse: TCResponse {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 删除VPN网关
    ///
    /// 本接口（DeleteVpnGateway）用于删除VPN网关。
    @inlinable
    public func deleteVpnGateway(_ input: DeleteVpnGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpnGatewayResponse> {
        self.client.execute(action: "DeleteVpnGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除VPN网关
    ///
    /// 本接口（DeleteVpnGateway）用于删除VPN网关。
    @inlinable
    public func deleteVpnGateway(_ input: DeleteVpnGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpnGatewayResponse {
        try await self.client.execute(action: "DeleteVpnGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除VPN网关
    ///
    /// 本接口（DeleteVpnGateway）用于删除VPN网关。
    @inlinable
    public func deleteVpnGateway(vpnGatewayId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpnGatewayResponse> {
        self.deleteVpnGateway(.init(vpnGatewayId: vpnGatewayId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除VPN网关
    ///
    /// 本接口（DeleteVpnGateway）用于删除VPN网关。
    @inlinable
    public func deleteVpnGateway(vpnGatewayId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpnGatewayResponse {
        try await self.deleteVpnGateway(.init(vpnGatewayId: vpnGatewayId), region: region, logger: logger, on: eventLoop)
    }
}
