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
    /// ModifyNatGatewayAttribute请求参数结构体
    public struct ModifyNatGatewayAttributeRequest: TCRequest {
        /// NAT网关的ID，形如：`nat-df45454`。
        public let natGatewayId: String

        /// NAT网关的名称，形如：`test_nat`。
        public let natGatewayName: String?

        /// NAT网关最大外网出带宽(单位:Mbps)。
        public let internetMaxBandwidthOut: UInt64?

        /// 是否修改NAT网关绑定的安全组。
        public let modifySecurityGroup: Bool?

        /// NAT网关绑定的安全组列表，最终状态，空列表表示删除所有安全组，形如: `['sg-1n232323', 'sg-o4242424']`
        public let securityGroupIds: [String]?

        public init(natGatewayId: String, natGatewayName: String? = nil, internetMaxBandwidthOut: UInt64? = nil, modifySecurityGroup: Bool? = nil, securityGroupIds: [String]? = nil) {
            self.natGatewayId = natGatewayId
            self.natGatewayName = natGatewayName
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
            self.modifySecurityGroup = modifySecurityGroup
            self.securityGroupIds = securityGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case natGatewayId = "NatGatewayId"
            case natGatewayName = "NatGatewayName"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case modifySecurityGroup = "ModifySecurityGroup"
            case securityGroupIds = "SecurityGroupIds"
        }
    }

    /// ModifyNatGatewayAttribute返回参数结构体
    public struct ModifyNatGatewayAttributeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改NAT网关的属性
    ///
    /// 本接口（ModifyNatGatewayAttribute）用于修改NAT网关的属性。
    @inlinable @discardableResult
    public func modifyNatGatewayAttribute(_ input: ModifyNatGatewayAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNatGatewayAttributeResponse> {
        self.client.execute(action: "ModifyNatGatewayAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改NAT网关的属性
    ///
    /// 本接口（ModifyNatGatewayAttribute）用于修改NAT网关的属性。
    @inlinable @discardableResult
    public func modifyNatGatewayAttribute(_ input: ModifyNatGatewayAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNatGatewayAttributeResponse {
        try await self.client.execute(action: "ModifyNatGatewayAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改NAT网关的属性
    ///
    /// 本接口（ModifyNatGatewayAttribute）用于修改NAT网关的属性。
    @inlinable @discardableResult
    public func modifyNatGatewayAttribute(natGatewayId: String, natGatewayName: String? = nil, internetMaxBandwidthOut: UInt64? = nil, modifySecurityGroup: Bool? = nil, securityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNatGatewayAttributeResponse> {
        self.modifyNatGatewayAttribute(.init(natGatewayId: natGatewayId, natGatewayName: natGatewayName, internetMaxBandwidthOut: internetMaxBandwidthOut, modifySecurityGroup: modifySecurityGroup, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 修改NAT网关的属性
    ///
    /// 本接口（ModifyNatGatewayAttribute）用于修改NAT网关的属性。
    @inlinable @discardableResult
    public func modifyNatGatewayAttribute(natGatewayId: String, natGatewayName: String? = nil, internetMaxBandwidthOut: UInt64? = nil, modifySecurityGroup: Bool? = nil, securityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNatGatewayAttributeResponse {
        try await self.modifyNatGatewayAttribute(.init(natGatewayId: natGatewayId, natGatewayName: natGatewayName, internetMaxBandwidthOut: internetMaxBandwidthOut, modifySecurityGroup: modifySecurityGroup, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
