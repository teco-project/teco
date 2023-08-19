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
    /// AssignIpv6SubnetCidrBlock请求参数结构体
    public struct AssignIpv6SubnetCidrBlockRequest: TCRequest {
        /// 子网所在私有网络`ID`。形如：`vpc-f49l6u0z`。
        public let vpcId: String

        /// 分配 `IPv6` 子网段列表。
        public let ipv6SubnetCidrBlocks: [Ipv6SubnetCidrBlock]

        public init(vpcId: String, ipv6SubnetCidrBlocks: [Ipv6SubnetCidrBlock]) {
            self.vpcId = vpcId
            self.ipv6SubnetCidrBlocks = ipv6SubnetCidrBlocks
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case ipv6SubnetCidrBlocks = "Ipv6SubnetCidrBlocks"
        }
    }

    /// AssignIpv6SubnetCidrBlock返回参数结构体
    public struct AssignIpv6SubnetCidrBlockResponse: TCResponse {
        /// 分配 `IPv6` 子网段列表。
        public let ipv6SubnetCidrBlockSet: [Ipv6SubnetCidrBlock]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ipv6SubnetCidrBlockSet = "Ipv6SubnetCidrBlockSet"
            case requestId = "RequestId"
        }
    }

    /// 分配IPv6子网段
    ///
    /// 本接口（AssignIpv6SubnetCidrBlock）用于分配IPv6子网段。
    /// * 给子网分配 `IPv6` 网段，要求子网所属 `VPC` 已获得 `IPv6` 网段。如果尚未分配，请先通过接口 `AssignIpv6CidrBlock` 给子网所属 `VPC` 分配一个 `IPv6` 网段。否则无法分配 `IPv6` 子网段。
    /// * 每个子网只能分配一个IPv6网段。
    @inlinable
    public func assignIpv6SubnetCidrBlock(_ input: AssignIpv6SubnetCidrBlockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssignIpv6SubnetCidrBlockResponse> {
        self.client.execute(action: "AssignIpv6SubnetCidrBlock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分配IPv6子网段
    ///
    /// 本接口（AssignIpv6SubnetCidrBlock）用于分配IPv6子网段。
    /// * 给子网分配 `IPv6` 网段，要求子网所属 `VPC` 已获得 `IPv6` 网段。如果尚未分配，请先通过接口 `AssignIpv6CidrBlock` 给子网所属 `VPC` 分配一个 `IPv6` 网段。否则无法分配 `IPv6` 子网段。
    /// * 每个子网只能分配一个IPv6网段。
    @inlinable
    public func assignIpv6SubnetCidrBlock(_ input: AssignIpv6SubnetCidrBlockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssignIpv6SubnetCidrBlockResponse {
        try await self.client.execute(action: "AssignIpv6SubnetCidrBlock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分配IPv6子网段
    ///
    /// 本接口（AssignIpv6SubnetCidrBlock）用于分配IPv6子网段。
    /// * 给子网分配 `IPv6` 网段，要求子网所属 `VPC` 已获得 `IPv6` 网段。如果尚未分配，请先通过接口 `AssignIpv6CidrBlock` 给子网所属 `VPC` 分配一个 `IPv6` 网段。否则无法分配 `IPv6` 子网段。
    /// * 每个子网只能分配一个IPv6网段。
    @inlinable
    public func assignIpv6SubnetCidrBlock(vpcId: String, ipv6SubnetCidrBlocks: [Ipv6SubnetCidrBlock], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssignIpv6SubnetCidrBlockResponse> {
        self.assignIpv6SubnetCidrBlock(.init(vpcId: vpcId, ipv6SubnetCidrBlocks: ipv6SubnetCidrBlocks), region: region, logger: logger, on: eventLoop)
    }

    /// 分配IPv6子网段
    ///
    /// 本接口（AssignIpv6SubnetCidrBlock）用于分配IPv6子网段。
    /// * 给子网分配 `IPv6` 网段，要求子网所属 `VPC` 已获得 `IPv6` 网段。如果尚未分配，请先通过接口 `AssignIpv6CidrBlock` 给子网所属 `VPC` 分配一个 `IPv6` 网段。否则无法分配 `IPv6` 子网段。
    /// * 每个子网只能分配一个IPv6网段。
    @inlinable
    public func assignIpv6SubnetCidrBlock(vpcId: String, ipv6SubnetCidrBlocks: [Ipv6SubnetCidrBlock], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssignIpv6SubnetCidrBlockResponse {
        try await self.assignIpv6SubnetCidrBlock(.init(vpcId: vpcId, ipv6SubnetCidrBlocks: ipv6SubnetCidrBlocks), region: region, logger: logger, on: eventLoop)
    }
}
