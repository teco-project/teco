//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// InquiryPriceCreateVpnGateway请求参数结构体
    public struct InquiryPriceCreateVpnGatewayRequest: TCRequestModel {
        /// 公网带宽设置。可选带宽规格：5, 10, 20, 50, 100；单位：Mbps。
        public let internetMaxBandwidthOut: UInt64
        
        /// VPN网关计费模式，PREPAID：表示预付费，即包年包月，POSTPAID_BY_HOUR：表示后付费，即按量计费。默认：POSTPAID_BY_HOUR，如果指定预付费模式，参数InstanceChargePrepaid必填。
        public let instanceChargeType: String?
        
        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?
        
        /// SSL VPN连接数设置，可选规格：5, 10, 20, 50, 100；单位：个。
        public let maxConnection: UInt64?
        
        /// 查询的VPN类型，支持IPSEC和SSL两种类型，为SSL类型时，MaxConnection参数必传。
        public let type: String?
        
        public init (internetMaxBandwidthOut: UInt64, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, maxConnection: UInt64? = nil, type: String? = nil) {
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
            self.instanceChargeType = instanceChargeType
            self.instanceChargePrepaid = instanceChargePrepaid
            self.maxConnection = maxConnection
            self.type = type
        }
        
        enum CodingKeys: String, CodingKey {
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case instanceChargeType = "InstanceChargeType"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case maxConnection = "MaxConnection"
            case type = "Type"
        }
    }
    
    /// InquiryPriceCreateVpnGateway返回参数结构体
    public struct InquiryPriceCreateVpnGatewayResponse: TCResponseModel {
        /// 商品价格。
        public let price: Price
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }
    
    /// 创建VPN网关询价
    ///
    /// 本接口（InquiryPriceCreateVpnGateway）用于创建VPN网关询价。
    @inlinable
    public func inquiryPriceCreateVpnGateway(_ input: InquiryPriceCreateVpnGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceCreateVpnGatewayResponse > {
        self.client.execute(action: "InquiryPriceCreateVpnGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建VPN网关询价
    ///
    /// 本接口（InquiryPriceCreateVpnGateway）用于创建VPN网关询价。
    @inlinable
    public func inquiryPriceCreateVpnGateway(_ input: InquiryPriceCreateVpnGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateVpnGatewayResponse {
        try await self.client.execute(action: "InquiryPriceCreateVpnGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
