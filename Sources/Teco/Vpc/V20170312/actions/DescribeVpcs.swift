//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeVpcs请求参数结构体
    public struct DescribeVpcsRequest: TCRequestModel {
        /// VPC实例ID。形如：vpc-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpcIds和Filters。
        public let vpcIds: [String]?

        /// 过滤条件，不支持同时指定VpcIds和Filters参数。
        /// 支持的过滤条件如下：
        /// <li>vpc-name：VPC实例名称，支持模糊查询。</li>
        /// <li>is-default ：是否默认VPC。</li>
        /// <li>vpc-id ：VPC实例ID，例如：vpc-f49l6u0z。</li>
        /// <li>cidr-block：VPC的CIDR。</li>
        /// <li>tag-key ：按照标签键进行过滤，非必填参数。</li>
        /// <li>tag:tag-key：按照标签键值对进行过滤，非必填参数。 其中 tag-key 请使用具体的标签键进行替换，可参考示例2。</li>
        ///   **说明：**若同一个过滤条件（Filter）存在多个Values，则同一Filter下Values间的关系为逻辑或（OR）关系；若存在多个过滤条件（Filter），Filter之间的关系为逻辑与（AND）关系。
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
    public func describeVpcs(_ input: DescribeVpcsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVpcsResponse > {
        self.client.execute(action: "DescribeVpcs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询VPC列表
    ///
    /// 本接口（DescribeVpcs）用于查询私有网络列表。
    @inlinable
    public func describeVpcs(_ input: DescribeVpcsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcsResponse {
        try await self.client.execute(action: "DescribeVpcs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询VPC列表
    ///
    /// 本接口（DescribeVpcs）用于查询私有网络列表。
    @inlinable
    public func describeVpcs(vpcIds: [String]? = nil, filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVpcsResponse > {
        self.describeVpcs(DescribeVpcsRequest(vpcIds: vpcIds, filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 查询VPC列表
    ///
    /// 本接口（DescribeVpcs）用于查询私有网络列表。
    @inlinable
    public func describeVpcs(vpcIds: [String]? = nil, filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcsResponse {
        try await self.describeVpcs(DescribeVpcsRequest(vpcIds: vpcIds, filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
