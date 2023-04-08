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

extension Gaap {
    /// InquiryPriceCreateProxy请求参数结构体
    public struct InquiryPriceCreateProxyRequest: TCRequestModel {
        /// 加速区域名称。
        public let accessRegion: String

        /// 通道带宽上限，单位：Mbps。
        public let bandwidth: Int64

        /// （旧参数，请切换到RealServerRegion）源站区域名称。
        public let destRegion: String?

        /// （旧参数，请切换到Concurrent）通道并发量上限，表示同时在线的连接数，单位：万。
        public let concurrency: Int64?

        /// （新参数）源站区域名称。
        public let realServerRegion: String?

        /// （新参数）通道并发量上限，表示同时在线的连接数，单位：万。
        public let concurrent: Int64?

        /// 计费方式，0表示按带宽计费，1表示按流量计费。默认按带宽计费
        public let billingType: Int64?

        /// IP版本，可取值：IPv4、IPv6，默认值IPv4
        public let ipAddressVersion: String?

        /// 网络类型，可取值：normal、cn2，默认值normal
        public let networkType: String?

        /// 通道套餐类型，Thunder表示标准通道组，Accelerator表示游戏加速器通道，CrossBorder表示跨境通道。
        public let packageType: String?

        /// 该字段已废弃，当IPAddressVersion为IPv4时，所创建的通道默认支持Http3.0；当为IPv6，默认不支持Http3.0。
        public let http3Supported: Int64?

        public init(accessRegion: String, bandwidth: Int64, destRegion: String? = nil, concurrency: Int64? = nil, realServerRegion: String? = nil, concurrent: Int64? = nil, billingType: Int64? = nil, ipAddressVersion: String? = nil, networkType: String? = nil, packageType: String? = nil, http3Supported: Int64? = nil) {
            self.accessRegion = accessRegion
            self.bandwidth = bandwidth
            self.destRegion = destRegion
            self.concurrency = concurrency
            self.realServerRegion = realServerRegion
            self.concurrent = concurrent
            self.billingType = billingType
            self.ipAddressVersion = ipAddressVersion
            self.networkType = networkType
            self.packageType = packageType
            self.http3Supported = http3Supported
        }

        enum CodingKeys: String, CodingKey {
            case accessRegion = "AccessRegion"
            case bandwidth = "Bandwidth"
            case destRegion = "DestRegion"
            case concurrency = "Concurrency"
            case realServerRegion = "RealServerRegion"
            case concurrent = "Concurrent"
            case billingType = "BillingType"
            case ipAddressVersion = "IPAddressVersion"
            case networkType = "NetworkType"
            case packageType = "PackageType"
            case http3Supported = "Http3Supported"
        }
    }

    /// InquiryPriceCreateProxy返回参数结构体
    public struct InquiryPriceCreateProxyResponse: TCResponseModel {
        /// 通道基础费用价格，单位：元/天。
        public let proxyDailyPrice: Float

        /// 通道带宽费用梯度价格。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bandwidthUnitPrice: [BandwidthPriceGradient]?

        /// 通道基础费用折扣价格，单位：元/天。
        public let discountProxyDailyPrice: Float

        /// 价格使用的货币，支持人民币，美元等。
        public let currency: String

        /// 通道的流量费用价格，单位: 元/GB
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowUnitPrice: Float?

        /// 通道的流量费用折扣价格，单位:元/GB
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let discountFlowUnitPrice: Float?

        /// 精品BGP的带宽费用价格，单位: 元/Mbps/天
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cn2BandwidthPrice: Float?

        /// 精品BGP的折后带宽费用价格，单位: 元/Mbps/天
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cn2BandwidthPriceWithDiscount: Float?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case proxyDailyPrice = "ProxyDailyPrice"
            case bandwidthUnitPrice = "BandwidthUnitPrice"
            case discountProxyDailyPrice = "DiscountProxyDailyPrice"
            case currency = "Currency"
            case flowUnitPrice = "FlowUnitPrice"
            case discountFlowUnitPrice = "DiscountFlowUnitPrice"
            case cn2BandwidthPrice = "Cn2BandwidthPrice"
            case cn2BandwidthPriceWithDiscount = "Cn2BandwidthPriceWithDiscount"
            case requestId = "RequestId"
        }
    }

    /// 创建加速通道询价
    ///
    /// 本接口（InquiryPriceCreateProxy）用于创建加速通道询价。
    @inlinable
    public func inquiryPriceCreateProxy(_ input: InquiryPriceCreateProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceCreateProxyResponse> {
        self.client.execute(action: "InquiryPriceCreateProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建加速通道询价
    ///
    /// 本接口（InquiryPriceCreateProxy）用于创建加速通道询价。
    @inlinable
    public func inquiryPriceCreateProxy(_ input: InquiryPriceCreateProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateProxyResponse {
        try await self.client.execute(action: "InquiryPriceCreateProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建加速通道询价
    ///
    /// 本接口（InquiryPriceCreateProxy）用于创建加速通道询价。
    @inlinable
    public func inquiryPriceCreateProxy(accessRegion: String, bandwidth: Int64, destRegion: String? = nil, concurrency: Int64? = nil, realServerRegion: String? = nil, concurrent: Int64? = nil, billingType: Int64? = nil, ipAddressVersion: String? = nil, networkType: String? = nil, packageType: String? = nil, http3Supported: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceCreateProxyResponse> {
        self.inquiryPriceCreateProxy(.init(accessRegion: accessRegion, bandwidth: bandwidth, destRegion: destRegion, concurrency: concurrency, realServerRegion: realServerRegion, concurrent: concurrent, billingType: billingType, ipAddressVersion: ipAddressVersion, networkType: networkType, packageType: packageType, http3Supported: http3Supported), region: region, logger: logger, on: eventLoop)
    }

    /// 创建加速通道询价
    ///
    /// 本接口（InquiryPriceCreateProxy）用于创建加速通道询价。
    @inlinable
    public func inquiryPriceCreateProxy(accessRegion: String, bandwidth: Int64, destRegion: String? = nil, concurrency: Int64? = nil, realServerRegion: String? = nil, concurrent: Int64? = nil, billingType: Int64? = nil, ipAddressVersion: String? = nil, networkType: String? = nil, packageType: String? = nil, http3Supported: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateProxyResponse {
        try await self.inquiryPriceCreateProxy(.init(accessRegion: accessRegion, bandwidth: bandwidth, destRegion: destRegion, concurrency: concurrency, realServerRegion: realServerRegion, concurrent: concurrent, billingType: billingType, ipAddressVersion: ipAddressVersion, networkType: networkType, packageType: packageType, http3Supported: http3Supported), region: region, logger: logger, on: eventLoop)
    }
}
