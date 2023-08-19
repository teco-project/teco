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
    /// UnassignIpv6SubnetCidrBlock请求参数结构体
    public struct UnassignIpv6SubnetCidrBlockRequest: TCRequest {
        /// 子网所在私有网络`ID`。形如：`vpc-f49l6u0z`。
        public let vpcId: String

        /// `IPv6` 子网段列表。
        public let ipv6SubnetCidrBlocks: [Ipv6SubnetCidrBlock]

        /// ECM地域。
        public let ecmRegion: String?

        public init(vpcId: String, ipv6SubnetCidrBlocks: [Ipv6SubnetCidrBlock], ecmRegion: String? = nil) {
            self.vpcId = vpcId
            self.ipv6SubnetCidrBlocks = ipv6SubnetCidrBlocks
            self.ecmRegion = ecmRegion
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case ipv6SubnetCidrBlocks = "Ipv6SubnetCidrBlocks"
            case ecmRegion = "EcmRegion"
        }
    }

    /// UnassignIpv6SubnetCidrBlock返回参数结构体
    public struct UnassignIpv6SubnetCidrBlockResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 释放IPv6子网段
    ///
    /// 本接口（UnassignIpv6SubnetCidrBlock）用于释放IPv6子网段。
    /// 子网段如果还有IP占用且未回收，则子网段无法释放。
    @inlinable @discardableResult
    public func unassignIpv6SubnetCidrBlock(_ input: UnassignIpv6SubnetCidrBlockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnassignIpv6SubnetCidrBlockResponse> {
        self.client.execute(action: "UnassignIpv6SubnetCidrBlock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 释放IPv6子网段
    ///
    /// 本接口（UnassignIpv6SubnetCidrBlock）用于释放IPv6子网段。
    /// 子网段如果还有IP占用且未回收，则子网段无法释放。
    @inlinable @discardableResult
    public func unassignIpv6SubnetCidrBlock(_ input: UnassignIpv6SubnetCidrBlockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnassignIpv6SubnetCidrBlockResponse {
        try await self.client.execute(action: "UnassignIpv6SubnetCidrBlock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 释放IPv6子网段
    ///
    /// 本接口（UnassignIpv6SubnetCidrBlock）用于释放IPv6子网段。
    /// 子网段如果还有IP占用且未回收，则子网段无法释放。
    @inlinable @discardableResult
    public func unassignIpv6SubnetCidrBlock(vpcId: String, ipv6SubnetCidrBlocks: [Ipv6SubnetCidrBlock], ecmRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnassignIpv6SubnetCidrBlockResponse> {
        self.unassignIpv6SubnetCidrBlock(.init(vpcId: vpcId, ipv6SubnetCidrBlocks: ipv6SubnetCidrBlocks, ecmRegion: ecmRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 释放IPv6子网段
    ///
    /// 本接口（UnassignIpv6SubnetCidrBlock）用于释放IPv6子网段。
    /// 子网段如果还有IP占用且未回收，则子网段无法释放。
    @inlinable @discardableResult
    public func unassignIpv6SubnetCidrBlock(vpcId: String, ipv6SubnetCidrBlocks: [Ipv6SubnetCidrBlock], ecmRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnassignIpv6SubnetCidrBlockResponse {
        try await self.unassignIpv6SubnetCidrBlock(.init(vpcId: vpcId, ipv6SubnetCidrBlocks: ipv6SubnetCidrBlocks, ecmRegion: ecmRegion), region: region, logger: logger, on: eventLoop)
    }
}
