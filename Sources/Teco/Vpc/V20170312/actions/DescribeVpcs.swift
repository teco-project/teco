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
    /// DescribeVpcs请求参数结构体
    public struct DescribeVpcsRequest: TCRequestModel {
        /// VPC实例ID。形如：vpc-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpcIds和Filters。
        public let vpcIds: [String]?

        /// 过滤条件，不支持同时指定VpcIds和Filters参数。
        /// 支持的过滤条件如下：
        /// - vpc-name：VPC实例名称，支持模糊查询。
        /// - is-default ：是否默认VPC。
        /// - vpc-id ：VPC实例ID，例如：vpc-f49l6u0z。
        /// - cidr-block：VPC的CIDR。
        /// - tag-key ：按照标签键进行过滤，非必填参数。
        /// - tag:tag-key：按照标签键值对进行过滤，非必填参数。 其中 tag-key 请使用具体的标签键进行替换，可参考示例2。
        ///
        ///   **说明：**若同一个过滤条件（Filter）存在多个Values，则同一Filter下Values间的关系为逻辑或（OR）关系；若存在多个过滤条件（Filter），Filter之间的关系为逻辑与（AND）关系。
        /// - ipv6-cidr-block - String - （过滤条件）IPv6子网网段，形如: 2402:4e00:1717:8700::/64 。
        /// - isp-type  - String - （过滤条件）运营商类型，形如: BGP 取值范围：'BGP'-默认, 'CMCC'-中国移动, 'CTCC'-中国电信, 'CUCC'-中国联调。
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: String?

        /// 返回数量，默认为20，最大值为100。
        public let limit: String?

        public init(vpcIds: [String]? = nil, filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil) {
            self.vpcIds = vpcIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case vpcIds = "VpcIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeVpcs返回参数结构体
    public struct DescribeVpcsResponse: TCResponseModel {
        /// 符合条件的对象数。
        public let totalCount: UInt64

        /// VPC对象。
        public let vpcSet: [Vpc]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case vpcSet = "VpcSet"
            case requestId = "RequestId"
        }
    }

    /// 查询VPC列表
    ///
    /// 本接口（DescribeVpcs）用于查询私有网络列表。
    @inlinable
    public func describeVpcs(_ input: DescribeVpcsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcsResponse> {
        self.client.execute(action: "DescribeVpcs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询VPC列表
    ///
    /// 本接口（DescribeVpcs）用于查询私有网络列表。
    @inlinable
    public func describeVpcs(_ input: DescribeVpcsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcsResponse {
        try await self.client.execute(action: "DescribeVpcs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询VPC列表
    ///
    /// 本接口（DescribeVpcs）用于查询私有网络列表。
    @inlinable
    public func describeVpcs(vpcIds: [String]? = nil, filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcsResponse> {
        self.describeVpcs(.init(vpcIds: vpcIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPC列表
    ///
    /// 本接口（DescribeVpcs）用于查询私有网络列表。
    @inlinable
    public func describeVpcs(vpcIds: [String]? = nil, filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcsResponse {
        try await self.describeVpcs(.init(vpcIds: vpcIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
