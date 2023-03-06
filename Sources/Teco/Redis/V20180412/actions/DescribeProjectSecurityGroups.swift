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

import TecoPaginationHelpers

extension Redis {
    /// DescribeProjectSecurityGroups请求参数结构体
    public struct DescribeProjectSecurityGroupsRequest: TCPaginatedRequest {
        /// 数据库引擎名称，本接口取值：redis。
        public let product: String

        /// 项目 ID。
        public let projectId: UInt64

        /// 偏移量，取值为Limit的整数倍。
        public let offset: UInt64?

        /// 拉取数量限制，默认 20。
        public let limit: UInt64?

        /// 搜索条件，支持安全组 ID 或者安全组名称。
        public let searchKey: String?

        public init(product: String, projectId: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, searchKey: String? = nil) {
            self.product = product
            self.projectId = projectId
            self.offset = offset
            self.limit = limit
            self.searchKey = searchKey
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case projectId = "ProjectId"
            case offset = "Offset"
            case limit = "Limit"
            case searchKey = "SearchKey"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeProjectSecurityGroupsResponse) -> DescribeProjectSecurityGroupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProjectSecurityGroupsRequest(product: self.product, projectId: self.projectId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, searchKey: self.searchKey)
        }
    }

    /// DescribeProjectSecurityGroups返回参数结构体
    public struct DescribeProjectSecurityGroupsResponse: TCPaginatedResponse {
        /// 安全组规则。
        public let groups: [SecurityGroup]

        /// 符合条件的安全组总数量。
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groups = "Groups"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SecurityGroup] {
            self.groups
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询项目安全组详情
    ///
    /// 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。
    @inlinable
    public func describeProjectSecurityGroups(_ input: DescribeProjectSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectSecurityGroupsResponse> {
        self.client.execute(action: "DescribeProjectSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组详情
    ///
    /// 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。
    @inlinable
    public func describeProjectSecurityGroups(_ input: DescribeProjectSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectSecurityGroupsResponse {
        try await self.client.execute(action: "DescribeProjectSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询项目安全组详情
    ///
    /// 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。
    @inlinable
    public func describeProjectSecurityGroups(product: String, projectId: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectSecurityGroupsResponse> {
        let input = DescribeProjectSecurityGroupsRequest(product: product, projectId: projectId, offset: offset, limit: limit, searchKey: searchKey)
        return self.client.execute(action: "DescribeProjectSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组详情
    ///
    /// 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。
    @inlinable
    public func describeProjectSecurityGroups(product: String, projectId: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectSecurityGroupsResponse {
        let input = DescribeProjectSecurityGroupsRequest(product: product, projectId: projectId, offset: offset, limit: limit, searchKey: searchKey)
        return try await self.client.execute(action: "DescribeProjectSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
