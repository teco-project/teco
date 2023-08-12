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

extension Cynosdb {
    /// DescribeProjectSecurityGroups请求参数结构体
    public struct DescribeProjectSecurityGroupsRequest: TCPaginatedRequest {
        /// 项目ID
        public let projectId: Int64?

        /// 限制量
        public let limit: Int64?

        /// 偏移量
        public let offset: Int64?

        /// 搜索关键字
        public let searchKey: String?

        public init(projectId: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, searchKey: String? = nil) {
            self.projectId = projectId
            self.limit = limit
            self.offset = offset
            self.searchKey = searchKey
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case limit = "Limit"
            case offset = "Offset"
            case searchKey = "SearchKey"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProjectSecurityGroupsResponse) -> DescribeProjectSecurityGroupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProjectSecurityGroupsRequest(projectId: self.projectId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), searchKey: self.searchKey)
        }
    }

    /// DescribeProjectSecurityGroups返回参数结构体
    public struct DescribeProjectSecurityGroupsResponse: TCPaginatedResponse {
        /// 安全组详情
        public let groups: [SecurityGroup]

        /// 总数量
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

    /// 查询项目安全组信息
    @inlinable
    public func describeProjectSecurityGroups(_ input: DescribeProjectSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectSecurityGroupsResponse> {
        self.client.execute(action: "DescribeProjectSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组信息
    @inlinable
    public func describeProjectSecurityGroups(_ input: DescribeProjectSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectSecurityGroupsResponse {
        try await self.client.execute(action: "DescribeProjectSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询项目安全组信息
    @inlinable
    public func describeProjectSecurityGroups(projectId: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectSecurityGroupsResponse> {
        self.describeProjectSecurityGroups(.init(projectId: projectId, limit: limit, offset: offset, searchKey: searchKey), region: region, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组信息
    @inlinable
    public func describeProjectSecurityGroups(projectId: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectSecurityGroupsResponse {
        try await self.describeProjectSecurityGroups(.init(projectId: projectId, limit: limit, offset: offset, searchKey: searchKey), region: region, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组信息
    @inlinable
    public func describeProjectSecurityGroupsPaginated(_ input: DescribeProjectSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SecurityGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeProjectSecurityGroups, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组信息
    @inlinable @discardableResult
    public func describeProjectSecurityGroupsPaginated(_ input: DescribeProjectSecurityGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProjectSecurityGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProjectSecurityGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组信息
    ///
    /// - Returns: `AsyncSequence`s of ``SecurityGroup`` and ``DescribeProjectSecurityGroupsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProjectSecurityGroupsPaginator(_ input: DescribeProjectSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProjectSecurityGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProjectSecurityGroups, logger: logger, on: eventLoop)
    }
}
