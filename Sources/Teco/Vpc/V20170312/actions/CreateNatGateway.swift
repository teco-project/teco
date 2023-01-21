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
    /// CreateNatGateway请求参数结构体
    public struct CreateNatGatewayRequest: TCRequestModel {
        /// NAT网关名称
        public let natGatewayName: String

        /// VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        public let vpcId: String

        /// NAT网关最大外网出带宽(单位:Mbps)，支持的参数值：`20, 50, 100, 200, 500, 1000, 2000, 5000`，默认: `100Mbps`。
        public let internetMaxBandwidthOut: UInt64?

        /// NAT网关并发连接上限，支持参数值：`1000000、3000000、10000000`，默认值为`100000`。
        public let maxConcurrentConnection: UInt64?

        /// 需要申请的弹性IP个数，系统会按您的要求生产N个弹性IP，其中AddressCount和PublicAddresses至少传递一个。
        public let addressCount: UInt64?

        /// 绑定NAT网关的弹性IP数组，其中AddressCount和PublicAddresses至少传递一个。
        public let publicIpAddresses: [String]?

        /// 可用区，形如：`ap-guangzhou-1`。
        public let zone: String?

        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        public let tags: [Tag]?

        /// NAT网关所属子网
        public let subnetId: String?

        /// 绑定NAT网关的弹性IP带宽大小（单位Mbps），默认为当前用户类型所能使用的最大值。
        public let stockPublicIpAddressesBandwidthOut: UInt64?

        /// 需要申请公网IP带宽大小（单位Mbps），默认为当前用户类型所能使用的最大值。
        public let publicIpAddressesBandwidthOut: UInt64?

        /// 公网IP是否强制与NAT网关来自同可用区，true表示需要与NAT网关同可用区；false表示可与NAT网关不是同一个可用区。此参数只有当参数Zone存在时才能生效。
        public let publicIpFromSameZone: Bool?

        public init(natGatewayName: String, vpcId: String, internetMaxBandwidthOut: UInt64? = nil, maxConcurrentConnection: UInt64? = nil, addressCount: UInt64? = nil, publicIpAddresses: [String]? = nil, zone: String? = nil, tags: [Tag]? = nil, subnetId: String? = nil, stockPublicIpAddressesBandwidthOut: UInt64? = nil, publicIpAddressesBandwidthOut: UInt64? = nil, publicIpFromSameZone: Bool? = nil) {
            self.natGatewayName = natGatewayName
            self.vpcId = vpcId
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
            self.maxConcurrentConnection = maxConcurrentConnection
            self.addressCount = addressCount
            self.publicIpAddresses = publicIpAddresses
            self.zone = zone
            self.tags = tags
            self.subnetId = subnetId
            self.stockPublicIpAddressesBandwidthOut = stockPublicIpAddressesBandwidthOut
            self.publicIpAddressesBandwidthOut = publicIpAddressesBandwidthOut
            self.publicIpFromSameZone = publicIpFromSameZone
        }

        enum CodingKeys: String, CodingKey {
            case natGatewayName = "NatGatewayName"
            case vpcId = "VpcId"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case maxConcurrentConnection = "MaxConcurrentConnection"
            case addressCount = "AddressCount"
            case publicIpAddresses = "PublicIpAddresses"
            case zone = "Zone"
            case tags = "Tags"
            case subnetId = "SubnetId"
            case stockPublicIpAddressesBandwidthOut = "StockPublicIpAddressesBandwidthOut"
            case publicIpAddressesBandwidthOut = "PublicIpAddressesBandwidthOut"
            case publicIpFromSameZone = "PublicIpFromSameZone"
        }
    }

    /// CreateNatGateway返回参数结构体
    public struct CreateNatGatewayResponse: TCResponseModel {
        /// NAT网关对象数组。
        public let natGatewaySet: [NatGateway]

        /// 符合条件的 NAT网关对象数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case natGatewaySet = "NatGatewaySet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 创建NAT网关
    ///
    /// 本接口(CreateNatGateway)用于创建NAT网关。
    /// 在对新建的NAT网关做其他操作前，需先确认此网关已被创建完成（DescribeNatGateway接口返回的实例State字段为AVAILABLE）。
    @inlinable
    public func createNatGateway(_ input: CreateNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNatGatewayResponse> {
        self.client.execute(action: "CreateNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建NAT网关
    ///
    /// 本接口(CreateNatGateway)用于创建NAT网关。
    /// 在对新建的NAT网关做其他操作前，需先确认此网关已被创建完成（DescribeNatGateway接口返回的实例State字段为AVAILABLE）。
    @inlinable
    public func createNatGateway(_ input: CreateNatGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNatGatewayResponse {
        try await self.client.execute(action: "CreateNatGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建NAT网关
    ///
    /// 本接口(CreateNatGateway)用于创建NAT网关。
    /// 在对新建的NAT网关做其他操作前，需先确认此网关已被创建完成（DescribeNatGateway接口返回的实例State字段为AVAILABLE）。
    @inlinable
    public func createNatGateway(natGatewayName: String, vpcId: String, internetMaxBandwidthOut: UInt64? = nil, maxConcurrentConnection: UInt64? = nil, addressCount: UInt64? = nil, publicIpAddresses: [String]? = nil, zone: String? = nil, tags: [Tag]? = nil, subnetId: String? = nil, stockPublicIpAddressesBandwidthOut: UInt64? = nil, publicIpAddressesBandwidthOut: UInt64? = nil, publicIpFromSameZone: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNatGatewayResponse> {
        self.createNatGateway(CreateNatGatewayRequest(natGatewayName: natGatewayName, vpcId: vpcId, internetMaxBandwidthOut: internetMaxBandwidthOut, maxConcurrentConnection: maxConcurrentConnection, addressCount: addressCount, publicIpAddresses: publicIpAddresses, zone: zone, tags: tags, subnetId: subnetId, stockPublicIpAddressesBandwidthOut: stockPublicIpAddressesBandwidthOut, publicIpAddressesBandwidthOut: publicIpAddressesBandwidthOut, publicIpFromSameZone: publicIpFromSameZone), region: region, logger: logger, on: eventLoop)
    }

    /// 创建NAT网关
    ///
    /// 本接口(CreateNatGateway)用于创建NAT网关。
    /// 在对新建的NAT网关做其他操作前，需先确认此网关已被创建完成（DescribeNatGateway接口返回的实例State字段为AVAILABLE）。
    @inlinable
    public func createNatGateway(natGatewayName: String, vpcId: String, internetMaxBandwidthOut: UInt64? = nil, maxConcurrentConnection: UInt64? = nil, addressCount: UInt64? = nil, publicIpAddresses: [String]? = nil, zone: String? = nil, tags: [Tag]? = nil, subnetId: String? = nil, stockPublicIpAddressesBandwidthOut: UInt64? = nil, publicIpAddressesBandwidthOut: UInt64? = nil, publicIpFromSameZone: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNatGatewayResponse {
        try await self.createNatGateway(CreateNatGatewayRequest(natGatewayName: natGatewayName, vpcId: vpcId, internetMaxBandwidthOut: internetMaxBandwidthOut, maxConcurrentConnection: maxConcurrentConnection, addressCount: addressCount, publicIpAddresses: publicIpAddresses, zone: zone, tags: tags, subnetId: subnetId, stockPublicIpAddressesBandwidthOut: stockPublicIpAddressesBandwidthOut, publicIpAddressesBandwidthOut: publicIpAddressesBandwidthOut, publicIpFromSameZone: publicIpFromSameZone), region: region, logger: logger, on: eventLoop)
    }
}
