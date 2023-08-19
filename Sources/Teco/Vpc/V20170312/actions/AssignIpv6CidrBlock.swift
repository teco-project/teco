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
    /// AssignIpv6CidrBlock请求参数结构体
    public struct AssignIpv6CidrBlockRequest: TCRequest {
        /// `VPC`实例`ID`，形如：`vpc-f49l6u0z`。
        public let vpcId: String

        public init(vpcId: String) {
            self.vpcId = vpcId
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
        }
    }

    /// AssignIpv6CidrBlock返回参数结构体
    public struct AssignIpv6CidrBlockResponse: TCResponse {
        /// 分配的 `IPv6` 网段。形如：`3402:4e00:20:1000::/56`。
        public let ipv6CidrBlock: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ipv6CidrBlock = "Ipv6CidrBlock"
            case requestId = "RequestId"
        }
    }

    /// 分配IPv6网段
    ///
    /// 本接口（AssignIpv6CidrBlock）用于分配IPv6网段。
    /// * 使用本接口前，您需要已有VPC实例，如果没有可通过接口[CreateVpc](https://cloud.tencent.com/document/api/215/15774)创建。
    /// * 每个VPC只能申请一个IPv6网段。
    @inlinable
    public func assignIpv6CidrBlock(_ input: AssignIpv6CidrBlockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssignIpv6CidrBlockResponse> {
        self.client.execute(action: "AssignIpv6CidrBlock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分配IPv6网段
    ///
    /// 本接口（AssignIpv6CidrBlock）用于分配IPv6网段。
    /// * 使用本接口前，您需要已有VPC实例，如果没有可通过接口[CreateVpc](https://cloud.tencent.com/document/api/215/15774)创建。
    /// * 每个VPC只能申请一个IPv6网段。
    @inlinable
    public func assignIpv6CidrBlock(_ input: AssignIpv6CidrBlockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssignIpv6CidrBlockResponse {
        try await self.client.execute(action: "AssignIpv6CidrBlock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分配IPv6网段
    ///
    /// 本接口（AssignIpv6CidrBlock）用于分配IPv6网段。
    /// * 使用本接口前，您需要已有VPC实例，如果没有可通过接口[CreateVpc](https://cloud.tencent.com/document/api/215/15774)创建。
    /// * 每个VPC只能申请一个IPv6网段。
    @inlinable
    public func assignIpv6CidrBlock(vpcId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssignIpv6CidrBlockResponse> {
        self.assignIpv6CidrBlock(.init(vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }

    /// 分配IPv6网段
    ///
    /// 本接口（AssignIpv6CidrBlock）用于分配IPv6网段。
    /// * 使用本接口前，您需要已有VPC实例，如果没有可通过接口[CreateVpc](https://cloud.tencent.com/document/api/215/15774)创建。
    /// * 每个VPC只能申请一个IPv6网段。
    @inlinable
    public func assignIpv6CidrBlock(vpcId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssignIpv6CidrBlockResponse {
        try await self.assignIpv6CidrBlock(.init(vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }
}
