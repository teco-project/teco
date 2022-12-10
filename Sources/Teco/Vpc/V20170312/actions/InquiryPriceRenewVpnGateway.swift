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
    /// 续费VPN网关询价
    ///
    /// 本接口（InquiryPriceRenewVpnGateway）用于续费VPN网关询价。目前仅支持IPSEC类型网关的询价。
    @inlinable
    public func inquiryPriceRenewVpnGateway(_ input: InquiryPriceRenewVpnGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceRenewVpnGatewayResponse > {
        self.client.execute(action: "InquiryPriceRenewVpnGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 续费VPN网关询价
    ///
    /// 本接口（InquiryPriceRenewVpnGateway）用于续费VPN网关询价。目前仅支持IPSEC类型网关的询价。
    @inlinable
    public func inquiryPriceRenewVpnGateway(_ input: InquiryPriceRenewVpnGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewVpnGatewayResponse {
        try await self.client.execute(action: "InquiryPriceRenewVpnGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// InquiryPriceRenewVpnGateway请求参数结构体
    public struct InquiryPriceRenewVpnGatewayRequest: TCRequestModel {
        /// VPN网关实例ID。
        public let vpnGatewayId: String
        
        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid
        
        public init (vpnGatewayId: String, instanceChargePrepaid: InstanceChargePrepaid) {
            self.vpnGatewayId = vpnGatewayId
            self.instanceChargePrepaid = instanceChargePrepaid
        }
        
        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case instanceChargePrepaid = "InstanceChargePrepaid"
        }
    }
    
    /// InquiryPriceRenewVpnGateway返回参数结构体
    public struct InquiryPriceRenewVpnGatewayResponse: TCResponseModel {
        /// 商品价格。
        public let price: Price
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }
}
