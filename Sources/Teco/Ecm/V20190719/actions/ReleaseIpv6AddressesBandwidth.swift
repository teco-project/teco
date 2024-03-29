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
    /// ReleaseIpv6AddressesBandwidth请求参数结构体
    public struct ReleaseIpv6AddressesBandwidthRequest: TCRequest {
        /// ECM 地域。
        public let ecmRegion: String

        /// IPV6地址。Ipv6Addresses和Ipv6AddressIds必须且只能传一个。
        public let ipv6Addresses: [String]?

        /// IPV6地址对应的唯一ID，形如eip-xxxxxxxx。Ipv6Addresses和Ipv6AddressIds必须且只能传一个。
        public let ipv6AddressIds: [String]?

        public init(ecmRegion: String, ipv6Addresses: [String]? = nil, ipv6AddressIds: [String]? = nil) {
            self.ecmRegion = ecmRegion
            self.ipv6Addresses = ipv6Addresses
            self.ipv6AddressIds = ipv6AddressIds
        }

        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case ipv6Addresses = "Ipv6Addresses"
            case ipv6AddressIds = "Ipv6AddressIds"
        }
    }

    /// ReleaseIpv6AddressesBandwidth返回参数结构体
    public struct ReleaseIpv6AddressesBandwidthResponse: TCResponse {
        /// 异步任务TaskId。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 释放弹性公网IPv6地址带宽
    ///
    /// 该接口用于给弹性公网IPv6地址释放带宽。
    @inlinable
    public func releaseIpv6AddressesBandwidth(_ input: ReleaseIpv6AddressesBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseIpv6AddressesBandwidthResponse> {
        self.client.execute(action: "ReleaseIpv6AddressesBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 释放弹性公网IPv6地址带宽
    ///
    /// 该接口用于给弹性公网IPv6地址释放带宽。
    @inlinable
    public func releaseIpv6AddressesBandwidth(_ input: ReleaseIpv6AddressesBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseIpv6AddressesBandwidthResponse {
        try await self.client.execute(action: "ReleaseIpv6AddressesBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 释放弹性公网IPv6地址带宽
    ///
    /// 该接口用于给弹性公网IPv6地址释放带宽。
    @inlinable
    public func releaseIpv6AddressesBandwidth(ecmRegion: String, ipv6Addresses: [String]? = nil, ipv6AddressIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseIpv6AddressesBandwidthResponse> {
        self.releaseIpv6AddressesBandwidth(.init(ecmRegion: ecmRegion, ipv6Addresses: ipv6Addresses, ipv6AddressIds: ipv6AddressIds), region: region, logger: logger, on: eventLoop)
    }

    /// 释放弹性公网IPv6地址带宽
    ///
    /// 该接口用于给弹性公网IPv6地址释放带宽。
    @inlinable
    public func releaseIpv6AddressesBandwidth(ecmRegion: String, ipv6Addresses: [String]? = nil, ipv6AddressIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseIpv6AddressesBandwidthResponse {
        try await self.releaseIpv6AddressesBandwidth(.init(ecmRegion: ecmRegion, ipv6Addresses: ipv6Addresses, ipv6AddressIds: ipv6AddressIds), region: region, logger: logger, on: eventLoop)
    }
}
