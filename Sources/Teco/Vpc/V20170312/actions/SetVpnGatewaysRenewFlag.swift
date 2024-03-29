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
    /// SetVpnGatewaysRenewFlag请求参数结构体
    public struct SetVpnGatewaysRenewFlagRequest: TCRequest {
        /// VPNGW字符型ID列表。可通过[DescribeVpnGateways](https://cloud.tencent.com/document/api/215/17514)接口返回值VpnGatewaySet中的VpnGatewayId获取。
        public let vpnGatewayIds: [String]

        /// 自动续费标记 [0, 1, 2]
        /// 0表示默认状态(初始状态)， 1表示自动续费，2表示明确不自动续费。
        public let autoRenewFlag: Int64

        /// VPNGW类型['IPSEC', 'SSL']， 默认为IPSEC。
        public let type: String?

        public init(vpnGatewayIds: [String], autoRenewFlag: Int64, type: String? = nil) {
            self.vpnGatewayIds = vpnGatewayIds
            self.autoRenewFlag = autoRenewFlag
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case vpnGatewayIds = "VpnGatewayIds"
            case autoRenewFlag = "AutoRenewFlag"
            case type = "Type"
        }
    }

    /// SetVpnGatewaysRenewFlag返回参数结构体
    public struct SetVpnGatewaysRenewFlagResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置VPNGW续费标记
    ///
    /// 本接口（SetVpnGatewaysRenewFlag）用于设置VPNGW续费标记。
    @inlinable @discardableResult
    public func setVpnGatewaysRenewFlag(_ input: SetVpnGatewaysRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetVpnGatewaysRenewFlagResponse> {
        self.client.execute(action: "SetVpnGatewaysRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置VPNGW续费标记
    ///
    /// 本接口（SetVpnGatewaysRenewFlag）用于设置VPNGW续费标记。
    @inlinable @discardableResult
    public func setVpnGatewaysRenewFlag(_ input: SetVpnGatewaysRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetVpnGatewaysRenewFlagResponse {
        try await self.client.execute(action: "SetVpnGatewaysRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置VPNGW续费标记
    ///
    /// 本接口（SetVpnGatewaysRenewFlag）用于设置VPNGW续费标记。
    @inlinable @discardableResult
    public func setVpnGatewaysRenewFlag(vpnGatewayIds: [String], autoRenewFlag: Int64, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetVpnGatewaysRenewFlagResponse> {
        self.setVpnGatewaysRenewFlag(.init(vpnGatewayIds: vpnGatewayIds, autoRenewFlag: autoRenewFlag, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 设置VPNGW续费标记
    ///
    /// 本接口（SetVpnGatewaysRenewFlag）用于设置VPNGW续费标记。
    @inlinable @discardableResult
    public func setVpnGatewaysRenewFlag(vpnGatewayIds: [String], autoRenewFlag: Int64, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetVpnGatewaysRenewFlagResponse {
        try await self.setVpnGatewaysRenewFlag(.init(vpnGatewayIds: vpnGatewayIds, autoRenewFlag: autoRenewFlag, type: type), region: region, logger: logger, on: eventLoop)
    }
}
