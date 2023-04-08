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
    /// ModifyIp6AddressesBandwidth请求参数结构体
    public struct ModifyIp6AddressesBandwidthRequest: TCRequestModel {
        /// 修改的目标带宽，单位Mbps
        public let internetMaxBandwidthOut: Int64

        /// IPV6地址。Ip6Addresses和Ip6AddressId必须且只能传一个
        public let ip6Addresses: [String]?

        /// IPV6地址对应的唯一ID，形如eip-xxxxxxxx。Ip6Addresses和Ip6AddressId必须且只能传一个
        public let ip6AddressIds: [String]?

        public init(internetMaxBandwidthOut: Int64, ip6Addresses: [String]? = nil, ip6AddressIds: [String]? = nil) {
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
            self.ip6Addresses = ip6Addresses
            self.ip6AddressIds = ip6AddressIds
        }

        enum CodingKeys: String, CodingKey {
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case ip6Addresses = "Ip6Addresses"
            case ip6AddressIds = "Ip6AddressIds"
        }
    }

    /// ModifyIp6AddressesBandwidth返回参数结构体
    public struct ModifyIp6AddressesBandwidthResponse: TCResponseModel {
        /// 任务ID
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 修改IPV6访问internet的带宽
    ///
    /// 该接口用于修改IPV6地址访问internet的带宽
    @inlinable
    public func modifyIp6AddressesBandwidth(_ input: ModifyIp6AddressesBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyIp6AddressesBandwidthResponse> {
        self.client.execute(action: "ModifyIp6AddressesBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改IPV6访问internet的带宽
    ///
    /// 该接口用于修改IPV6地址访问internet的带宽
    @inlinable
    public func modifyIp6AddressesBandwidth(_ input: ModifyIp6AddressesBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyIp6AddressesBandwidthResponse {
        try await self.client.execute(action: "ModifyIp6AddressesBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改IPV6访问internet的带宽
    ///
    /// 该接口用于修改IPV6地址访问internet的带宽
    @inlinable
    public func modifyIp6AddressesBandwidth(internetMaxBandwidthOut: Int64, ip6Addresses: [String]? = nil, ip6AddressIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyIp6AddressesBandwidthResponse> {
        self.modifyIp6AddressesBandwidth(.init(internetMaxBandwidthOut: internetMaxBandwidthOut, ip6Addresses: ip6Addresses, ip6AddressIds: ip6AddressIds), region: region, logger: logger, on: eventLoop)
    }

    /// 修改IPV6访问internet的带宽
    ///
    /// 该接口用于修改IPV6地址访问internet的带宽
    @inlinable
    public func modifyIp6AddressesBandwidth(internetMaxBandwidthOut: Int64, ip6Addresses: [String]? = nil, ip6AddressIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyIp6AddressesBandwidthResponse {
        try await self.modifyIp6AddressesBandwidth(.init(internetMaxBandwidthOut: internetMaxBandwidthOut, ip6Addresses: ip6Addresses, ip6AddressIds: ip6AddressIds), region: region, logger: logger, on: eventLoop)
    }
}
