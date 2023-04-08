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

extension Vpc {
    /// ReleaseIp6AddressesBandwidth请求参数结构体
    public struct ReleaseIp6AddressesBandwidthRequest: TCRequestModel {
        /// IPV6地址。Ip6Addresses和Ip6AddressIds必须且只能传一个
        public let ip6Addresses: [String]?

        /// IPV6地址对应的唯一ID，形如eip-xxxxxxxx。Ip6Addresses和Ip6AddressIds必须且只能传一个。
        public let ip6AddressIds: [String]?

        public init(ip6Addresses: [String]? = nil, ip6AddressIds: [String]? = nil) {
            self.ip6Addresses = ip6Addresses
            self.ip6AddressIds = ip6AddressIds
        }

        enum CodingKeys: String, CodingKey {
            case ip6Addresses = "Ip6Addresses"
            case ip6AddressIds = "Ip6AddressIds"
        }
    }

    /// ReleaseIp6AddressesBandwidth返回参数结构体
    public struct ReleaseIp6AddressesBandwidthResponse: TCResponseModel {
        /// 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
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
    public func releaseIp6AddressesBandwidth(_ input: ReleaseIp6AddressesBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseIp6AddressesBandwidthResponse> {
        self.client.execute(action: "ReleaseIp6AddressesBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 释放弹性公网IPv6地址带宽
    ///
    /// 该接口用于给弹性公网IPv6地址释放带宽。
    @inlinable
    public func releaseIp6AddressesBandwidth(_ input: ReleaseIp6AddressesBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseIp6AddressesBandwidthResponse {
        try await self.client.execute(action: "ReleaseIp6AddressesBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 释放弹性公网IPv6地址带宽
    ///
    /// 该接口用于给弹性公网IPv6地址释放带宽。
    @inlinable
    public func releaseIp6AddressesBandwidth(ip6Addresses: [String]? = nil, ip6AddressIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseIp6AddressesBandwidthResponse> {
        self.releaseIp6AddressesBandwidth(.init(ip6Addresses: ip6Addresses, ip6AddressIds: ip6AddressIds), region: region, logger: logger, on: eventLoop)
    }

    /// 释放弹性公网IPv6地址带宽
    ///
    /// 该接口用于给弹性公网IPv6地址释放带宽。
    @inlinable
    public func releaseIp6AddressesBandwidth(ip6Addresses: [String]? = nil, ip6AddressIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseIp6AddressesBandwidthResponse {
        try await self.releaseIp6AddressesBandwidth(.init(ip6Addresses: ip6Addresses, ip6AddressIds: ip6AddressIds), region: region, logger: logger, on: eventLoop)
    }
}
