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
    /// CreateVpnGateway请求参数结构体
    public struct CreateVpnGatewayRequest: TCRequestModel {
        /// VPC实例ID。可通过[DescribeVpcs](https://cloud.tencent.com/document/product/215/15778)接口返回值中的VpcId获取。
        public let vpcId: String

        /// VPN网关名称，最大长度不能超过60个字节。
        public let vpnGatewayName: String

        /// 公网带宽设置。可选带宽规格：5, 10, 20, 50, 100；单位：Mbps
        public let internetMaxBandwidthOut: UInt64

        /// VPN网关计费模式，PREPAID：表示预付费，即包年包月，POSTPAID_BY_HOUR：表示后付费，即按量计费。默认：POSTPAID_BY_HOUR，如果指定预付费模式，参数InstanceChargePrepaid必填。
        public let instanceChargeType: String?

        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?

        /// 可用区，如：ap-guangzhou-2。
        public let zone: String?

        /// VPN网关类型。值“CCN”云联网类型VPN网关，值SSL为SSL-VPN
        public let type: String?

        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        public let tags: [Tag]?

        /// CDC实例ID
        public let cdcId: String?

        /// SSL-VPN 最大CLIENT 连接数。可选 [5, 10, 20, 50, 100]。仅SSL-VPN 需要选这个参数。
        public let maxConnection: UInt64?

        public init(vpcId: String, vpnGatewayName: String, internetMaxBandwidthOut: UInt64, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, zone: String? = nil, type: String? = nil, tags: [Tag]? = nil, cdcId: String? = nil, maxConnection: UInt64? = nil) {
            self.vpcId = vpcId
            self.vpnGatewayName = vpnGatewayName
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
            self.instanceChargeType = instanceChargeType
            self.instanceChargePrepaid = instanceChargePrepaid
            self.zone = zone
            self.type = type
            self.tags = tags
            self.cdcId = cdcId
            self.maxConnection = maxConnection
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case vpnGatewayName = "VpnGatewayName"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case instanceChargeType = "InstanceChargeType"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case zone = "Zone"
            case type = "Type"
            case tags = "Tags"
            case cdcId = "CdcId"
            case maxConnection = "MaxConnection"
        }
    }

    /// CreateVpnGateway返回参数结构体
    public struct CreateVpnGatewayResponse: TCResponseModel {
        /// VPN网关对象
        public let vpnGateway: VpnGateway

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vpnGateway = "VpnGateway"
            case requestId = "RequestId"
        }
    }

    /// 创建VPN网关
    ///
    /// 本接口（CreateVpnGateway）用于创建VPN网关。
    @inlinable
    public func createVpnGateway(_ input: CreateVpnGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpnGatewayResponse> {
        self.client.execute(action: "CreateVpnGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建VPN网关
    ///
    /// 本接口（CreateVpnGateway）用于创建VPN网关。
    @inlinable
    public func createVpnGateway(_ input: CreateVpnGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpnGatewayResponse {
        try await self.client.execute(action: "CreateVpnGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建VPN网关
    ///
    /// 本接口（CreateVpnGateway）用于创建VPN网关。
    @inlinable
    public func createVpnGateway(vpcId: String, vpnGatewayName: String, internetMaxBandwidthOut: UInt64, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, zone: String? = nil, type: String? = nil, tags: [Tag]? = nil, cdcId: String? = nil, maxConnection: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpnGatewayResponse> {
        self.createVpnGateway(.init(vpcId: vpcId, vpnGatewayName: vpnGatewayName, internetMaxBandwidthOut: internetMaxBandwidthOut, instanceChargeType: instanceChargeType, instanceChargePrepaid: instanceChargePrepaid, zone: zone, type: type, tags: tags, cdcId: cdcId, maxConnection: maxConnection), region: region, logger: logger, on: eventLoop)
    }

    /// 创建VPN网关
    ///
    /// 本接口（CreateVpnGateway）用于创建VPN网关。
    @inlinable
    public func createVpnGateway(vpcId: String, vpnGatewayName: String, internetMaxBandwidthOut: UInt64, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, zone: String? = nil, type: String? = nil, tags: [Tag]? = nil, cdcId: String? = nil, maxConnection: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpnGatewayResponse {
        try await self.createVpnGateway(.init(vpcId: vpcId, vpnGatewayName: vpnGatewayName, internetMaxBandwidthOut: internetMaxBandwidthOut, instanceChargeType: instanceChargeType, instanceChargePrepaid: instanceChargePrepaid, zone: zone, type: type, tags: tags, cdcId: cdcId, maxConnection: maxConnection), region: region, logger: logger, on: eventLoop)
    }
}
