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
    /// AssociateNatGatewayAddress请求参数结构体
    public struct AssociateNatGatewayAddressRequest: TCRequestModel {
        /// NAT网关的ID，形如：`nat-df45454`。
        public let natGatewayId: String

        /// 需要申请的弹性IP个数，系统会按您的要求生产N个弹性IP, 其中AddressCount和PublicAddresses至少传递一个。
        public let addressCount: UInt64?

        /// 绑定NAT网关的弹性IP数组，其中AddressCount和PublicAddresses至少传递一个。
        public let publicIpAddresses: [String]?

        /// 弹性IP可用区，自动分配弹性IP时传递。
        public let zone: String?

        /// 绑定NAT网关的弹性IP带宽大小（单位Mbps），默认为当前用户类型所能使用的最大值。
        public let stockPublicIpAddressesBandwidthOut: UInt64?

        /// 需要申请公网IP带宽大小（单位Mbps），默认为当前用户类型所能使用的最大值。
        public let publicIpAddressesBandwidthOut: UInt64?

        /// 公网IP是否强制与NAT网关来自同可用区，true表示需要与NAT网关同可用区；false表示可与NAT网关不是同一个可用区。此参数只有当参数Zone存在时才能生效。
        public let publicIpFromSameZone: Bool?

        public init(natGatewayId: String, addressCount: UInt64? = nil, publicIpAddresses: [String]? = nil, zone: String? = nil, stockPublicIpAddressesBandwidthOut: UInt64? = nil, publicIpAddressesBandwidthOut: UInt64? = nil, publicIpFromSameZone: Bool? = nil) {
            self.natGatewayId = natGatewayId
            self.addressCount = addressCount
            self.publicIpAddresses = publicIpAddresses
            self.zone = zone
            self.stockPublicIpAddressesBandwidthOut = stockPublicIpAddressesBandwidthOut
            self.publicIpAddressesBandwidthOut = publicIpAddressesBandwidthOut
            self.publicIpFromSameZone = publicIpFromSameZone
        }

        enum CodingKeys: String, CodingKey {
            case natGatewayId = "NatGatewayId"
            case addressCount = "AddressCount"
            case publicIpAddresses = "PublicIpAddresses"
            case zone = "Zone"
            case stockPublicIpAddressesBandwidthOut = "StockPublicIpAddressesBandwidthOut"
            case publicIpAddressesBandwidthOut = "PublicIpAddressesBandwidthOut"
            case publicIpFromSameZone = "PublicIpFromSameZone"
        }
    }

    /// AssociateNatGatewayAddress返回参数结构体
    public struct AssociateNatGatewayAddressResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// NAT网关绑定弹性IP
    ///
    /// 本接口(AssociateNatGatewayAddress)用于NAT网关绑定弹性IP（EIP）。
    @inlinable @discardableResult
    public func associateNatGatewayAddress(_ input: AssociateNatGatewayAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateNatGatewayAddressResponse> {
        self.client.execute(action: "AssociateNatGatewayAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// NAT网关绑定弹性IP
    ///
    /// 本接口(AssociateNatGatewayAddress)用于NAT网关绑定弹性IP（EIP）。
    @inlinable @discardableResult
    public func associateNatGatewayAddress(_ input: AssociateNatGatewayAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateNatGatewayAddressResponse {
        try await self.client.execute(action: "AssociateNatGatewayAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// NAT网关绑定弹性IP
    ///
    /// 本接口(AssociateNatGatewayAddress)用于NAT网关绑定弹性IP（EIP）。
    @inlinable @discardableResult
    public func associateNatGatewayAddress(natGatewayId: String, addressCount: UInt64? = nil, publicIpAddresses: [String]? = nil, zone: String? = nil, stockPublicIpAddressesBandwidthOut: UInt64? = nil, publicIpAddressesBandwidthOut: UInt64? = nil, publicIpFromSameZone: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateNatGatewayAddressResponse> {
        self.associateNatGatewayAddress(AssociateNatGatewayAddressRequest(natGatewayId: natGatewayId, addressCount: addressCount, publicIpAddresses: publicIpAddresses, zone: zone, stockPublicIpAddressesBandwidthOut: stockPublicIpAddressesBandwidthOut, publicIpAddressesBandwidthOut: publicIpAddressesBandwidthOut, publicIpFromSameZone: publicIpFromSameZone), region: region, logger: logger, on: eventLoop)
    }

    /// NAT网关绑定弹性IP
    ///
    /// 本接口(AssociateNatGatewayAddress)用于NAT网关绑定弹性IP（EIP）。
    @inlinable @discardableResult
    public func associateNatGatewayAddress(natGatewayId: String, addressCount: UInt64? = nil, publicIpAddresses: [String]? = nil, zone: String? = nil, stockPublicIpAddressesBandwidthOut: UInt64? = nil, publicIpAddressesBandwidthOut: UInt64? = nil, publicIpFromSameZone: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateNatGatewayAddressResponse {
        try await self.associateNatGatewayAddress(AssociateNatGatewayAddressRequest(natGatewayId: natGatewayId, addressCount: addressCount, publicIpAddresses: publicIpAddresses, zone: zone, stockPublicIpAddressesBandwidthOut: stockPublicIpAddressesBandwidthOut, publicIpAddressesBandwidthOut: publicIpAddressesBandwidthOut, publicIpFromSameZone: publicIpFromSameZone), region: region, logger: logger, on: eventLoop)
    }
}
