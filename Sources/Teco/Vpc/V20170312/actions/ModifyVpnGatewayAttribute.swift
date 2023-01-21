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
    /// ModifyVpnGatewayAttribute请求参数结构体
    public struct ModifyVpnGatewayAttributeRequest: TCRequestModel {
        /// VPN网关实例ID。
        public let vpnGatewayId: String

        /// VPN网关名称，最大长度不能超过60个字节。
        public let vpnGatewayName: String?

        /// VPN网关计费模式，目前只支持预付费（即包年包月）到后付费（即按量计费）的转换。即参数只支持：POSTPAID_BY_HOUR。
        public let instanceChargeType: String?

        public init(vpnGatewayId: String, vpnGatewayName: String? = nil, instanceChargeType: String? = nil) {
            self.vpnGatewayId = vpnGatewayId
            self.vpnGatewayName = vpnGatewayName
            self.instanceChargeType = instanceChargeType
        }

        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case vpnGatewayName = "VpnGatewayName"
            case instanceChargeType = "InstanceChargeType"
        }
    }

    /// ModifyVpnGatewayAttribute返回参数结构体
    public struct ModifyVpnGatewayAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改VPN网关属性
    ///
    /// 本接口（ModifyVpnGatewayAttribute）用于修改VPN网关属性。
    @inlinable @discardableResult
    public func modifyVpnGatewayAttribute(_ input: ModifyVpnGatewayAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpnGatewayAttributeResponse> {
        self.client.execute(action: "ModifyVpnGatewayAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改VPN网关属性
    ///
    /// 本接口（ModifyVpnGatewayAttribute）用于修改VPN网关属性。
    @inlinable @discardableResult
    public func modifyVpnGatewayAttribute(_ input: ModifyVpnGatewayAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpnGatewayAttributeResponse {
        try await self.client.execute(action: "ModifyVpnGatewayAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改VPN网关属性
    ///
    /// 本接口（ModifyVpnGatewayAttribute）用于修改VPN网关属性。
    @inlinable @discardableResult
    public func modifyVpnGatewayAttribute(vpnGatewayId: String, vpnGatewayName: String? = nil, instanceChargeType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpnGatewayAttributeResponse> {
        self.modifyVpnGatewayAttribute(ModifyVpnGatewayAttributeRequest(vpnGatewayId: vpnGatewayId, vpnGatewayName: vpnGatewayName, instanceChargeType: instanceChargeType), region: region, logger: logger, on: eventLoop)
    }

    /// 修改VPN网关属性
    ///
    /// 本接口（ModifyVpnGatewayAttribute）用于修改VPN网关属性。
    @inlinable @discardableResult
    public func modifyVpnGatewayAttribute(vpnGatewayId: String, vpnGatewayName: String? = nil, instanceChargeType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpnGatewayAttributeResponse {
        try await self.modifyVpnGatewayAttribute(ModifyVpnGatewayAttributeRequest(vpnGatewayId: vpnGatewayId, vpnGatewayName: vpnGatewayName, instanceChargeType: instanceChargeType), region: region, logger: logger, on: eventLoop)
    }
}
