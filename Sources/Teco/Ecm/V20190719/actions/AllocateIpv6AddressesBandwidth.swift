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

extension Ecm {
    /// AllocateIpv6AddressesBandwidth请求参数结构体
    public struct AllocateIpv6AddressesBandwidthRequest: TCRequest {
        /// ECM 地域。
        public let ecmRegion: String

        /// 需要开通公网访问能力的IPV6地址。
        public let ipv6Addresses: [String]

        /// 带宽，单位Mbps，默认是1Mbps。
        public let internetMaxBandwidthOut: Int64?

        /// 网络计费模式，当前支持 BANDWIDTH_PACKAGE。
        public let internetChargeType: String?

        public init(ecmRegion: String, ipv6Addresses: [String], internetMaxBandwidthOut: Int64? = nil, internetChargeType: String? = nil) {
            self.ecmRegion = ecmRegion
            self.ipv6Addresses = ipv6Addresses
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
            self.internetChargeType = internetChargeType
        }

        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case ipv6Addresses = "Ipv6Addresses"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case internetChargeType = "InternetChargeType"
        }
    }

    /// AllocateIpv6AddressesBandwidth返回参数结构体
    public struct AllocateIpv6AddressesBandwidthResponse: TCResponse {
        /// 弹性公网 IPV6 的唯一 ID 列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let addressSet: [String]?

        /// 异步任务TaskId。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case addressSet = "AddressSet"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// IPv6地址分配公网带宽
    ///
    /// 本接口用于给IPv6地址分配公网带宽
    @inlinable
    public func allocateIpv6AddressesBandwidth(_ input: AllocateIpv6AddressesBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AllocateIpv6AddressesBandwidthResponse> {
        self.client.execute(action: "AllocateIpv6AddressesBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// IPv6地址分配公网带宽
    ///
    /// 本接口用于给IPv6地址分配公网带宽
    @inlinable
    public func allocateIpv6AddressesBandwidth(_ input: AllocateIpv6AddressesBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AllocateIpv6AddressesBandwidthResponse {
        try await self.client.execute(action: "AllocateIpv6AddressesBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// IPv6地址分配公网带宽
    ///
    /// 本接口用于给IPv6地址分配公网带宽
    @inlinable
    public func allocateIpv6AddressesBandwidth(ecmRegion: String, ipv6Addresses: [String], internetMaxBandwidthOut: Int64? = nil, internetChargeType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AllocateIpv6AddressesBandwidthResponse> {
        self.allocateIpv6AddressesBandwidth(.init(ecmRegion: ecmRegion, ipv6Addresses: ipv6Addresses, internetMaxBandwidthOut: internetMaxBandwidthOut, internetChargeType: internetChargeType), region: region, logger: logger, on: eventLoop)
    }

    /// IPv6地址分配公网带宽
    ///
    /// 本接口用于给IPv6地址分配公网带宽
    @inlinable
    public func allocateIpv6AddressesBandwidth(ecmRegion: String, ipv6Addresses: [String], internetMaxBandwidthOut: Int64? = nil, internetChargeType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AllocateIpv6AddressesBandwidthResponse {
        try await self.allocateIpv6AddressesBandwidth(.init(ecmRegion: ecmRegion, ipv6Addresses: ipv6Addresses, internetMaxBandwidthOut: internetMaxBandwidthOut, internetChargeType: internetChargeType), region: region, logger: logger, on: eventLoop)
    }
}
