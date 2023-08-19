//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// UpgradeGateway请求参数结构体
    public struct UpgradeGatewayRequest: TCRequest {
        /// 网关索引ID（从获取网关列表ListGateways接口中获取）
        public let gatewayId: String

        public init(gatewayId: String) {
            self.gatewayId = gatewayId
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
        }
    }

    /// UpgradeGateway返回参数结构体
    public struct UpgradeGatewayResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 网关升级
    ///
    /// 用于网关升级（支持对所有待更新的服务一键升级）。
    @inlinable @discardableResult
    public func upgradeGateway(_ input: UpgradeGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeGatewayResponse> {
        self.client.execute(action: "UpgradeGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 网关升级
    ///
    /// 用于网关升级（支持对所有待更新的服务一键升级）。
    @inlinable @discardableResult
    public func upgradeGateway(_ input: UpgradeGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeGatewayResponse {
        try await self.client.execute(action: "UpgradeGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 网关升级
    ///
    /// 用于网关升级（支持对所有待更新的服务一键升级）。
    @inlinable @discardableResult
    public func upgradeGateway(gatewayId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeGatewayResponse> {
        self.upgradeGateway(.init(gatewayId: gatewayId), region: region, logger: logger, on: eventLoop)
    }

    /// 网关升级
    ///
    /// 用于网关升级（支持对所有待更新的服务一键升级）。
    @inlinable @discardableResult
    public func upgradeGateway(gatewayId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeGatewayResponse {
        try await self.upgradeGateway(.init(gatewayId: gatewayId), region: region, logger: logger, on: eventLoop)
    }
}
