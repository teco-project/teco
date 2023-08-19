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

extension Tcb {
    /// ModifyGatewayVersionTraffic请求参数结构体
    public struct ModifyGatewayVersionTrafficRequest: TCRequest {
        /// 环境id
        public let envId: String

        /// 网关id
        public let gatewayId: String

        /// 网关版本流量比例信息
        public let versionsWeight: [GatewayVersionItem]

        public init(envId: String, gatewayId: String, versionsWeight: [GatewayVersionItem]) {
            self.envId = envId
            self.gatewayId = gatewayId
            self.versionsWeight = versionsWeight
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case gatewayId = "GatewayId"
            case versionsWeight = "VersionsWeight"
        }
    }

    /// ModifyGatewayVersionTraffic返回参数结构体
    public struct ModifyGatewayVersionTrafficResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置网关版本的流量比例
    @inlinable @discardableResult
    public func modifyGatewayVersionTraffic(_ input: ModifyGatewayVersionTrafficRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGatewayVersionTrafficResponse> {
        self.client.execute(action: "ModifyGatewayVersionTraffic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置网关版本的流量比例
    @inlinable @discardableResult
    public func modifyGatewayVersionTraffic(_ input: ModifyGatewayVersionTrafficRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGatewayVersionTrafficResponse {
        try await self.client.execute(action: "ModifyGatewayVersionTraffic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置网关版本的流量比例
    @inlinable @discardableResult
    public func modifyGatewayVersionTraffic(envId: String, gatewayId: String, versionsWeight: [GatewayVersionItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGatewayVersionTrafficResponse> {
        self.modifyGatewayVersionTraffic(.init(envId: envId, gatewayId: gatewayId, versionsWeight: versionsWeight), region: region, logger: logger, on: eventLoop)
    }

    /// 设置网关版本的流量比例
    @inlinable @discardableResult
    public func modifyGatewayVersionTraffic(envId: String, gatewayId: String, versionsWeight: [GatewayVersionItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGatewayVersionTrafficResponse {
        try await self.modifyGatewayVersionTraffic(.init(envId: envId, gatewayId: gatewayId, versionsWeight: versionsWeight), region: region, logger: logger, on: eventLoop)
    }
}
