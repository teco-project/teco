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
    /// InquiryPriceResetVpnGatewayInternetMaxBandwidth请求参数结构体
    public struct InquiryPriceResetVpnGatewayInternetMaxBandwidthRequest: TCRequestModel {
        /// VPN网关实例ID。
        public let vpnGatewayId: String

        /// 公网带宽设置。可选带宽规格：5, 10, 20, 50, 100；单位：Mbps。
        public let internetMaxBandwidthOut: UInt64

        public init(vpnGatewayId: String, internetMaxBandwidthOut: UInt64) {
            self.vpnGatewayId = vpnGatewayId
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
        }

        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
        }
    }

    /// InquiryPriceResetVpnGatewayInternetMaxBandwidth返回参数结构体
    public struct InquiryPriceResetVpnGatewayInternetMaxBandwidthResponse: TCResponseModel {
        /// 商品价格。
        public let price: Price

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 调整VPN网关带宽上限询价
    ///
    /// 本接口（InquiryPriceResetVpnGatewayInternetMaxBandwidth）调整VPN网关带宽上限询价。
    @inlinable
    public func inquiryPriceResetVpnGatewayInternetMaxBandwidth(_ input: InquiryPriceResetVpnGatewayInternetMaxBandwidthRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceResetVpnGatewayInternetMaxBandwidthResponse > {
        self.client.execute(action: "InquiryPriceResetVpnGatewayInternetMaxBandwidth", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整VPN网关带宽上限询价
    ///
    /// 本接口（InquiryPriceResetVpnGatewayInternetMaxBandwidth）调整VPN网关带宽上限询价。
    @inlinable
    public func inquiryPriceResetVpnGatewayInternetMaxBandwidth(_ input: InquiryPriceResetVpnGatewayInternetMaxBandwidthRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceResetVpnGatewayInternetMaxBandwidthResponse {
        try await self.client.execute(action: "InquiryPriceResetVpnGatewayInternetMaxBandwidth", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调整VPN网关带宽上限询价
    ///
    /// 本接口（InquiryPriceResetVpnGatewayInternetMaxBandwidth）调整VPN网关带宽上限询价。
    @inlinable
    public func inquiryPriceResetVpnGatewayInternetMaxBandwidth(vpnGatewayId: String, internetMaxBandwidthOut: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceResetVpnGatewayInternetMaxBandwidthResponse > {
        self.inquiryPriceResetVpnGatewayInternetMaxBandwidth(InquiryPriceResetVpnGatewayInternetMaxBandwidthRequest(vpnGatewayId: vpnGatewayId, internetMaxBandwidthOut: internetMaxBandwidthOut), logger: logger, on: eventLoop)
    }

    /// 调整VPN网关带宽上限询价
    ///
    /// 本接口（InquiryPriceResetVpnGatewayInternetMaxBandwidth）调整VPN网关带宽上限询价。
    @inlinable
    public func inquiryPriceResetVpnGatewayInternetMaxBandwidth(vpnGatewayId: String, internetMaxBandwidthOut: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceResetVpnGatewayInternetMaxBandwidthResponse {
        try await self.inquiryPriceResetVpnGatewayInternetMaxBandwidth(InquiryPriceResetVpnGatewayInternetMaxBandwidthRequest(vpnGatewayId: vpnGatewayId, internetMaxBandwidthOut: internetMaxBandwidthOut), logger: logger, on: eventLoop)
    }
}
