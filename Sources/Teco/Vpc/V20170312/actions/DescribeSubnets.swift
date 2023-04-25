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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Vpc {
    /// DescribeSubnets请求参数结构体
    public struct DescribeSubnetsRequest: TCRequestModel {
        /// 子网实例ID查询。形如：subnet-pxir56ns。每次请求的实例的上限为100。参数不支持同时指定SubnetIds和Filters。
        public let subnetIds: [String]?

        /// 过滤条件，参数不支持同时指定SubnetIds和Filters。
        /// <li>subnet-id - String - （过滤条件）Subnet实例名称。</li>
        /// <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。</li>
        /// <li>cidr-block - String - （过滤条件）子网网段，形如: 192.168.1.0 。</li>
        /// <li>is-default - Boolean - （过滤条件）是否是默认子网。</li>
        /// <li>is-remote-vpc-snat - Boolean - （过滤条件）是否为VPC SNAT地址池子网。</li>
        /// <li>subnet-name - String - （过滤条件）子网名称。</li>
        /// <li>zone - String - （过滤条件）可用区。</li>
        /// <li>tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。</li>
        /// <li>tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例2。</li>
        /// <li>cdc-id - String - 是否必填：否 - （过滤条件）按照cdc信息进行过滤。过滤出来制定cdc下的子网。</li>
        /// <li>is-cdc-subnet - String - 是否必填：否 - （过滤条件）按照是否是cdc子网进行过滤。取值：“0”-非cdc子网，“1”--cdc子网</li>
        /// <li>ipv6-cidr-block - String - （过滤条件）IPv6子网网段，形如: 2402:4e00:1717:8700::/64 。</li>
        /// <li>isp-type  - String - （过滤条件）运营商类型，形如: BGP 。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: String?

        /// 返回数量，默认为20，最大值为100。
        public let limit: String?

        public init(subnetIds: [String]? = nil, filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil) {
            self.subnetIds = subnetIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case subnetIds = "SubnetIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeSubnets返回参数结构体
    public struct DescribeSubnetsResponse: TCResponseModel {
        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 子网对象。
        public let subnetSet: [Subnet]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case subnetSet = "SubnetSet"
            case requestId = "RequestId"
        }
    }

    /// 查询子网列表
    ///
    /// 本接口（DescribeSubnets）用于查询子网列表。
    @inlinable
    public func describeSubnets(_ input: DescribeSubnetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubnetsResponse> {
        self.client.execute(action: "DescribeSubnets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询子网列表
    ///
    /// 本接口（DescribeSubnets）用于查询子网列表。
    @inlinable
    public func describeSubnets(_ input: DescribeSubnetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetsResponse {
        try await self.client.execute(action: "DescribeSubnets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询子网列表
    ///
    /// 本接口（DescribeSubnets）用于查询子网列表。
    @inlinable
    public func describeSubnets(subnetIds: [String]? = nil, filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubnetsResponse> {
        self.describeSubnets(.init(subnetIds: subnetIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询子网列表
    ///
    /// 本接口（DescribeSubnets）用于查询子网列表。
    @inlinable
    public func describeSubnets(subnetIds: [String]? = nil, filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetsResponse {
        try await self.describeSubnets(.init(subnetIds: subnetIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
