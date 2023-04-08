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

extension Vpc {
    /// UnassignIpv6CidrBlock请求参数结构体
    public struct UnassignIpv6CidrBlockRequest: TCRequestModel {
        /// `VPC`实例`ID`，形如：`vpc-f49l6u0z`。
        public let vpcId: String

        /// `IPv6`网段。形如：`3402:4e00:20:1000::/56`。
        public let ipv6CidrBlock: String?

        public init(vpcId: String, ipv6CidrBlock: String? = nil) {
            self.vpcId = vpcId
            self.ipv6CidrBlock = ipv6CidrBlock
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case ipv6CidrBlock = "Ipv6CidrBlock"
        }
    }

    /// UnassignIpv6CidrBlock返回参数结构体
    public struct UnassignIpv6CidrBlockResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 释放IPv6网段
    ///
    /// 本接口（UnassignIpv6CidrBlock）用于释放IPv6网段。<br />
    /// 网段如果还有IP占用且未回收，则网段无法释放。
    @inlinable @discardableResult
    public func unassignIpv6CidrBlock(_ input: UnassignIpv6CidrBlockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnassignIpv6CidrBlockResponse> {
        self.client.execute(action: "UnassignIpv6CidrBlock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 释放IPv6网段
    ///
    /// 本接口（UnassignIpv6CidrBlock）用于释放IPv6网段。<br />
    /// 网段如果还有IP占用且未回收，则网段无法释放。
    @inlinable @discardableResult
    public func unassignIpv6CidrBlock(_ input: UnassignIpv6CidrBlockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnassignIpv6CidrBlockResponse {
        try await self.client.execute(action: "UnassignIpv6CidrBlock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 释放IPv6网段
    ///
    /// 本接口（UnassignIpv6CidrBlock）用于释放IPv6网段。<br />
    /// 网段如果还有IP占用且未回收，则网段无法释放。
    @inlinable @discardableResult
    public func unassignIpv6CidrBlock(vpcId: String, ipv6CidrBlock: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnassignIpv6CidrBlockResponse> {
        self.unassignIpv6CidrBlock(.init(vpcId: vpcId, ipv6CidrBlock: ipv6CidrBlock), region: region, logger: logger, on: eventLoop)
    }

    /// 释放IPv6网段
    ///
    /// 本接口（UnassignIpv6CidrBlock）用于释放IPv6网段。<br />
    /// 网段如果还有IP占用且未回收，则网段无法释放。
    @inlinable @discardableResult
    public func unassignIpv6CidrBlock(vpcId: String, ipv6CidrBlock: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnassignIpv6CidrBlockResponse {
        try await self.unassignIpv6CidrBlock(.init(vpcId: vpcId, ipv6CidrBlock: ipv6CidrBlock), region: region, logger: logger, on: eventLoop)
    }
}
