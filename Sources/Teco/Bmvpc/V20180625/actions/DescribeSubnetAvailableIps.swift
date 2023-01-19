//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Bmvpc {
    /// DescribeSubnetAvailableIps请求参数结构体
    public struct DescribeSubnetAvailableIpsRequest: TCRequestModel {
        /// 私有网络子网ID
        public let subnetId: String

        /// CIDR前缀，例如10.0.1
        public let cidr: String?

        public init(subnetId: String, cidr: String? = nil) {
            self.subnetId = subnetId
            self.cidr = cidr
        }

        enum CodingKeys: String, CodingKey {
            case subnetId = "SubnetId"
            case cidr = "Cidr"
        }
    }

    /// DescribeSubnetAvailableIps返回参数结构体
    public struct DescribeSubnetAvailableIpsResponse: TCResponseModel {
        /// 可用IP的范围列表
        public let ipSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ipSet = "IpSet"
            case requestId = "RequestId"
        }
    }

    /// 获取子网内可用IP列表
    @inlinable
    public func describeSubnetAvailableIps(_ input: DescribeSubnetAvailableIpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubnetAvailableIpsResponse> {
        self.client.execute(action: "DescribeSubnetAvailableIps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取子网内可用IP列表
    @inlinable
    public func describeSubnetAvailableIps(_ input: DescribeSubnetAvailableIpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetAvailableIpsResponse {
        try await self.client.execute(action: "DescribeSubnetAvailableIps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取子网内可用IP列表
    @inlinable
    public func describeSubnetAvailableIps(subnetId: String, cidr: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubnetAvailableIpsResponse> {
        self.describeSubnetAvailableIps(DescribeSubnetAvailableIpsRequest(subnetId: subnetId, cidr: cidr), region: region, logger: logger, on: eventLoop)
    }

    /// 获取子网内可用IP列表
    @inlinable
    public func describeSubnetAvailableIps(subnetId: String, cidr: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetAvailableIpsResponse {
        try await self.describeSubnetAvailableIps(DescribeSubnetAvailableIpsRequest(subnetId: subnetId, cidr: cidr), region: region, logger: logger, on: eventLoop)
    }
}
