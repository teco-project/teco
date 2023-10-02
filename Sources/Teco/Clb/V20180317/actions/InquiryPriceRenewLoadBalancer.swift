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
    /// InquiryPriceRenewLoadBalancer请求参数结构体
    public struct InquiryPriceRenewLoadBalancerRequest: TCRequest {
        /// 负载均衡实例ID
        public let loadBalancerId: String

        /// 续费周期
        public let loadBalancerChargePrepaid: LBChargePrepaid

        public init(loadBalancerId: String, loadBalancerChargePrepaid: LBChargePrepaid) {
            self.loadBalancerId = loadBalancerId
            self.loadBalancerChargePrepaid = loadBalancerChargePrepaid
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case loadBalancerChargePrepaid = "LoadBalancerChargePrepaid"
        }
    }

    /// InquiryPriceRenewLoadBalancer返回参数结构体
    public struct InquiryPriceRenewLoadBalancerResponse: TCResponse {
        /// 表示续费价格
        public let price: Price

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 续费预付费负载均衡实例询价
    ///
    /// InquiryPriceRenewLoadBalancer接口查询对负载均衡续费的价格，只支持预付费负载均衡续费。
    @inlinable
    public func inquiryPriceRenewLoadBalancer(_ input: InquiryPriceRenewLoadBalancerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceRenewLoadBalancerResponse> {
        self.client.execute(action: "InquiryPriceRenewLoadBalancer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费预付费负载均衡实例询价
    ///
    /// InquiryPriceRenewLoadBalancer接口查询对负载均衡续费的价格，只支持预付费负载均衡续费。
    @inlinable
    public func inquiryPriceRenewLoadBalancer(_ input: InquiryPriceRenewLoadBalancerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewLoadBalancerResponse {
        try await self.client.execute(action: "InquiryPriceRenewLoadBalancer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费预付费负载均衡实例询价
    ///
    /// InquiryPriceRenewLoadBalancer接口查询对负载均衡续费的价格，只支持预付费负载均衡续费。
    @inlinable
    public func inquiryPriceRenewLoadBalancer(loadBalancerId: String, loadBalancerChargePrepaid: LBChargePrepaid, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceRenewLoadBalancerResponse> {
        self.inquiryPriceRenewLoadBalancer(.init(loadBalancerId: loadBalancerId, loadBalancerChargePrepaid: loadBalancerChargePrepaid), region: region, logger: logger, on: eventLoop)
    }

    /// 续费预付费负载均衡实例询价
    ///
    /// InquiryPriceRenewLoadBalancer接口查询对负载均衡续费的价格，只支持预付费负载均衡续费。
    @inlinable
    public func inquiryPriceRenewLoadBalancer(loadBalancerId: String, loadBalancerChargePrepaid: LBChargePrepaid, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewLoadBalancerResponse {
        try await self.inquiryPriceRenewLoadBalancer(.init(loadBalancerId: loadBalancerId, loadBalancerChargePrepaid: loadBalancerChargePrepaid), region: region, logger: logger, on: eventLoop)
    }
}