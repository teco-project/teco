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

extension Tcaplusdb {
    /// DescribeTableGroups请求参数结构体
    public struct DescribeTableGroupsRequest: TCPaginatedRequest {
        /// 表格组所属集群ID
        public let clusterId: String

        /// 表格组ID列表
        public let tableGroupIds: [String]?

        /// 过滤条件，本接口支持：TableGroupName，TableGroupId
        public let filters: [Filter]?

        /// 查询列表偏移量
        public let offset: Int64?

        /// 查询列表返回记录数
        public let limit: Int64?

        public init(clusterId: String, tableGroupIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.clusterId = clusterId
            self.tableGroupIds = tableGroupIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableGroupIds = "TableGroupIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTableGroupsResponse) -> DescribeTableGroupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTableGroupsRequest(clusterId: self.clusterId, tableGroupIds: self.tableGroupIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeTableGroups返回参数结构体
    public struct DescribeTableGroupsResponse: TCPaginatedResponse {
        /// 表格组数量
        public let totalCount: Int64

        /// 表格组信息列表
        public let tableGroups: [TableGroupInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableGroups = "TableGroups"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TableGroupInfo`` list from the paginated response.
        public func getItems() -> [TableGroupInfo] {
            self.tableGroups
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询表格组列表
    @inlinable
    public func describeTableGroups(_ input: DescribeTableGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableGroupsResponse> {
        self.client.execute(action: "DescribeTableGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询表格组列表
    @inlinable
    public func describeTableGroups(_ input: DescribeTableGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTableGroupsResponse {
        try await self.client.execute(action: "DescribeTableGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询表格组列表
    @inlinable
    public func describeTableGroups(clusterId: String, tableGroupIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableGroupsResponse> {
        self.describeTableGroups(.init(clusterId: clusterId, tableGroupIds: tableGroupIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询表格组列表
    @inlinable
    public func describeTableGroups(clusterId: String, tableGroupIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTableGroupsResponse {
        try await self.describeTableGroups(.init(clusterId: clusterId, tableGroupIds: tableGroupIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询表格组列表
    @inlinable
    public func describeTableGroupsPaginated(_ input: DescribeTableGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TableGroupInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTableGroups, logger: logger, on: eventLoop)
    }

    /// 查询表格组列表
    @inlinable @discardableResult
    public func describeTableGroupsPaginated(_ input: DescribeTableGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTableGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTableGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询表格组列表
    ///
    /// - Returns: `AsyncSequence`s of ``TableGroupInfo`` and ``DescribeTableGroupsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTableGroupsPaginator(_ input: DescribeTableGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTableGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTableGroups, logger: logger, on: eventLoop)
    }
}
