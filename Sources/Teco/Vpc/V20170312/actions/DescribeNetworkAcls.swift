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
    /// DescribeNetworkAcls请求参数结构体
    public struct DescribeNetworkAclsRequest: TCRequestModel {
        /// 过滤条件，参数不支持同时指定NetworkAclIds和Filters。
        /// <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-12345678。</li>
        /// <li>network-acl-id - String - （过滤条件）网络ACL实例ID，形如：acl-12345678。</li>
        /// <li>network-acl-name - String - （过滤条件）网络ACL实例名称。</li>
        public let filters: [Filter]?

        /// 网络ACL实例ID数组。形如：[acl-12345678]。每次请求的实例的上限为100。参数不支持同时指定NetworkAclIds和Filters。
        public let networkAclIds: [String]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最小值为1，最大值为100。
        public let limit: UInt64?

        public init(filters: [Filter]? = nil, networkAclIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.filters = filters
            self.networkAclIds = networkAclIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case networkAclIds = "NetworkAclIds"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeNetworkAcls返回参数结构体
    public struct DescribeNetworkAclsResponse: TCResponseModel {
        /// 实例详细信息列表。
        public let networkAclSet: [NetworkAcl]

        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case networkAclSet = "NetworkAclSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询网络ACL列表
    ///
    /// 本接口（DescribeNetworkAcls）用于查询网络ACL列表。
    @inlinable
    public func describeNetworkAcls(_ input: DescribeNetworkAclsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkAclsResponse> {
        self.client.execute(action: "DescribeNetworkAcls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网络ACL列表
    ///
    /// 本接口（DescribeNetworkAcls）用于查询网络ACL列表。
    @inlinable
    public func describeNetworkAcls(_ input: DescribeNetworkAclsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkAclsResponse {
        try await self.client.execute(action: "DescribeNetworkAcls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网络ACL列表
    ///
    /// 本接口（DescribeNetworkAcls）用于查询网络ACL列表。
    @inlinable
    public func describeNetworkAcls(filters: [Filter]? = nil, networkAclIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkAclsResponse> {
        let input = DescribeNetworkAclsRequest(filters: filters, networkAclIds: networkAclIds, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeNetworkAcls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网络ACL列表
    ///
    /// 本接口（DescribeNetworkAcls）用于查询网络ACL列表。
    @inlinable
    public func describeNetworkAcls(filters: [Filter]? = nil, networkAclIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkAclsResponse {
        let input = DescribeNetworkAclsRequest(filters: filters, networkAclIds: networkAclIds, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeNetworkAcls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
