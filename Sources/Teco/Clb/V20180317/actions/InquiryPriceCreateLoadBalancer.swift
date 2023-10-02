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

extension Clb {
    /// InquiryPriceCreateLoadBalancer请求参数结构体
    public struct InquiryPriceCreateLoadBalancerRequest: TCRequest {
        /// 询价的负载均衡类型，OPEN为公网类型，INTERNAL为内网类型
        public let loadBalancerType: String

        /// 询价的收费类型，POSTPAID为按量计费，"PREPAID"为预付费包年包月
        public let loadBalancerChargeType: String

        /// 询价的收费周期
        public let loadBalancerChargePrepaid: LBChargePrepaid?

        /// 询价的网络计费方式
        public let internetAccessible: InternetAccessible?

        /// 询价的负载均衡实例个数，默认为1
        public let goodsNum: UInt64?

        /// 指定可用区询价。如：ap-guangzhou-1
        public let zoneId: String?

        /// 包年包月询价时传性能容量型规格，如：clb.c3.small。按量付费询价时传SLA
        public let slaType: String?

        /// IP版本，可取值：IPV4、IPV6、IPv6FullChain，不区分大小写，默认值 IPV4。说明：取值为IPV6表示为IPV6 NAT64版本；取值为IPv6FullChain，表示为IPv6版本。
        public let addressIPVersion: String?

        /// 仅适用于公网负载均衡。CMCC | CTCC | CUCC，分别对应 移动 | 电信 | 联通，如果不指定本参数，则默认使用BGP。
        public let vipIsp: String?

        public init(loadBalancerType: String, loadBalancerChargeType: String, loadBalancerChargePrepaid: LBChargePrepaid? = nil, internetAccessible: InternetAccessible? = nil, goodsNum: UInt64? = nil, zoneId: String? = nil, slaType: String? = nil, addressIPVersion: String? = nil, vipIsp: String? = nil) {
            self.loadBalancerType = loadBalancerType
            self.loadBalancerChargeType = loadBalancerChargeType
            self.loadBalancerChargePrepaid = loadBalancerChargePrepaid
            self.internetAccessible = internetAccessible
            self.goodsNum = goodsNum
            self.zoneId = zoneId
            self.slaType = slaType
            self.addressIPVersion = addressIPVersion
            self.vipIsp = vipIsp
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerType = "LoadBalancerType"
            case loadBalancerChargeType = "LoadBalancerChargeType"
            case loadBalancerChargePrepaid = "LoadBalancerChargePrepaid"
            case internetAccessible = "InternetAccessible"
            case goodsNum = "GoodsNum"
            case zoneId = "ZoneId"
            case slaType = "SlaType"
            case addressIPVersion = "AddressIPVersion"
            case vipIsp = "VipIsp"
        }
    }

    /// InquiryPriceCreateLoadBalancer返回参数结构体
    public struct InquiryPriceCreateLoadBalancerResponse: TCResponse {
        /// 该参数表示对应的价格。
        public let price: Price

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 创建负载均衡实例询价
    ///
    /// InquiryPriceCreateLoadBalancer接口查询创建负载均衡的价格。
    @inlinable
    public func inquiryPriceCreateLoadBalancer(_ input: InquiryPriceCreateLoadBalancerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceCreateLoadBalancerResponse> {
        self.client.execute(action: "InquiryPriceCreateLoadBalancer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建负载均衡实例询价
    ///
    /// InquiryPriceCreateLoadBalancer接口查询创建负载均衡的价格。
    @inlinable
    public func inquiryPriceCreateLoadBalancer(_ input: InquiryPriceCreateLoadBalancerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateLoadBalancerResponse {
        try await self.client.execute(action: "InquiryPriceCreateLoadBalancer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建负载均衡实例询价
    ///
    /// InquiryPriceCreateLoadBalancer接口查询创建负载均衡的价格。
    @inlinable
    public func inquiryPriceCreateLoadBalancer(loadBalancerType: String, loadBalancerChargeType: String, loadBalancerChargePrepaid: LBChargePrepaid? = nil, internetAccessible: InternetAccessible? = nil, goodsNum: UInt64? = nil, zoneId: String? = nil, slaType: String? = nil, addressIPVersion: String? = nil, vipIsp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceCreateLoadBalancerResponse> {
        self.inquiryPriceCreateLoadBalancer(.init(loadBalancerType: loadBalancerType, loadBalancerChargeType: loadBalancerChargeType, loadBalancerChargePrepaid: loadBalancerChargePrepaid, internetAccessible: internetAccessible, goodsNum: goodsNum, zoneId: zoneId, slaType: slaType, addressIPVersion: addressIPVersion, vipIsp: vipIsp), region: region, logger: logger, on: eventLoop)
    }

    /// 创建负载均衡实例询价
    ///
    /// InquiryPriceCreateLoadBalancer接口查询创建负载均衡的价格。
    @inlinable
    public func inquiryPriceCreateLoadBalancer(loadBalancerType: String, loadBalancerChargeType: String, loadBalancerChargePrepaid: LBChargePrepaid? = nil, internetAccessible: InternetAccessible? = nil, goodsNum: UInt64? = nil, zoneId: String? = nil, slaType: String? = nil, addressIPVersion: String? = nil, vipIsp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateLoadBalancerResponse {
        try await self.inquiryPriceCreateLoadBalancer(.init(loadBalancerType: loadBalancerType, loadBalancerChargeType: loadBalancerChargeType, loadBalancerChargePrepaid: loadBalancerChargePrepaid, internetAccessible: internetAccessible, goodsNum: goodsNum, zoneId: zoneId, slaType: slaType, addressIPVersion: addressIPVersion, vipIsp: vipIsp), region: region, logger: logger, on: eventLoop)
    }
}
