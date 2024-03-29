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
    /// DisableGatewayFlowMonitor请求参数结构体
    public struct DisableGatewayFlowMonitorRequest: TCRequest {
        /// 网关实例ID，目前我们支持的网关实例类型有，
        /// 专线网关实例ID，形如，`dcg-ltjahce6`；
        /// Nat网关实例ID，形如，`nat-ltjahce6`；
        /// VPN网关实例ID，形如，`vpn-ltjahce6`。
        public let gatewayId: String

        public init(gatewayId: String) {
            self.gatewayId = gatewayId
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
        }
    }

    /// DisableGatewayFlowMonitor返回参数结构体
    public struct DisableGatewayFlowMonitorResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 关闭网关流量监控
    ///
    /// 本接口（DisableGatewayFlowMonitor）用于关闭网关流量监控。
    @inlinable @discardableResult
    public func disableGatewayFlowMonitor(_ input: DisableGatewayFlowMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableGatewayFlowMonitorResponse> {
        self.client.execute(action: "DisableGatewayFlowMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭网关流量监控
    ///
    /// 本接口（DisableGatewayFlowMonitor）用于关闭网关流量监控。
    @inlinable @discardableResult
    public func disableGatewayFlowMonitor(_ input: DisableGatewayFlowMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableGatewayFlowMonitorResponse {
        try await self.client.execute(action: "DisableGatewayFlowMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭网关流量监控
    ///
    /// 本接口（DisableGatewayFlowMonitor）用于关闭网关流量监控。
    @inlinable @discardableResult
    public func disableGatewayFlowMonitor(gatewayId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableGatewayFlowMonitorResponse> {
        self.disableGatewayFlowMonitor(.init(gatewayId: gatewayId), region: region, logger: logger, on: eventLoop)
    }

    /// 关闭网关流量监控
    ///
    /// 本接口（DisableGatewayFlowMonitor）用于关闭网关流量监控。
    @inlinable @discardableResult
    public func disableGatewayFlowMonitor(gatewayId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableGatewayFlowMonitorResponse {
        try await self.disableGatewayFlowMonitor(.init(gatewayId: gatewayId), region: region, logger: logger, on: eventLoop)
    }
}
