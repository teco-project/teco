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
import TecoPaginationHelpers

extension Keewidb {
    /// DescribeProjectSecurityGroups请求参数结构体
    public struct DescribeProjectSecurityGroupsRequest: TCPaginatedRequest {
        /// 数据库引擎名称。该产品固定为 keewidb。
        public let product: String

        /// 项目 ID。
        /// 登录 [账号中心](https://console.cloud.tencent.com/developer)，在<b>项目管理</b>中可获取项目 ID。
        public let projectId: UInt64?

        /// 分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
        public let offset: UInt64?

        /// 每页安全组的数量限制。默认为 20，最多输出100条。
        public let limit: UInt64?

        /// 搜索关键词，支持根据安全组 ID 或者安全组名称搜索。
        public let searchKey: String?

        public init(product: String, projectId: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, searchKey: String? = nil) {
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
        public func makeNextRequest(with response: DescribeProjectSecurityGroupsResponse) -> DescribeProjectSecurityGroupsRequest? {
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
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groups = "Groups"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SecurityGroup`` list from the paginated response.
        public func getItems() -> [SecurityGroup] {
            self.groups
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
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
    public func describeProjectSecurityGroups(product: String, projectId: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectSecurityGroupsResponse> {
        self.describeProjectSecurityGroups(.init(product: product, projectId: projectId, offset: offset, limit: limit, searchKey: searchKey), region: region, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组详情
    ///
    /// 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。
    @inlinable
    public func describeProjectSecurityGroups(product: String, projectId: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectSecurityGroupsResponse {
        try await self.describeProjectSecurityGroups(.init(product: product, projectId: projectId, offset: offset, limit: limit, searchKey: searchKey), region: region, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组详情
    ///
    /// 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。
    @inlinable
    public func describeProjectSecurityGroupsPaginated(_ input: DescribeProjectSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SecurityGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeProjectSecurityGroups, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组详情
    ///
    /// 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。
    @inlinable @discardableResult
    public func describeProjectSecurityGroupsPaginated(_ input: DescribeProjectSecurityGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProjectSecurityGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProjectSecurityGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组详情
    ///
    /// 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。
    ///
    /// - Returns: `AsyncSequence`s of `SecurityGroup` and `DescribeProjectSecurityGroupsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProjectSecurityGroupsPaginator(_ input: DescribeProjectSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProjectSecurityGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProjectSecurityGroups, logger: logger, on: eventLoop)
    }
}
