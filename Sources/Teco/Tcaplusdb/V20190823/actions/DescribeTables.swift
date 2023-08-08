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
    /// DescribeTables请求参数结构体
    public struct DescribeTablesRequest: TCPaginatedRequest {
        /// 待查询表格所属集群ID
        public let clusterId: String?

        /// 待查询表格所属表格组ID列表
        public let tableGroupIds: [String]?

        /// 待查询表格信息列表，用户不用关注，过滤请使用filter
        public let selectedTables: [SelectedTableInfoNew]?

        /// 过滤条件，本接口支持：TableName，TableInstanceId
        public let filters: [Filter]?

        /// 查询结果偏移量
        public let offset: Int64?

        /// 查询结果返回记录数量
        public let limit: Int64?

        public init(clusterId: String? = nil, tableGroupIds: [String]? = nil, selectedTables: [SelectedTableInfoNew]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.clusterId = clusterId
            self.tableGroupIds = tableGroupIds
            self.selectedTables = selectedTables
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableGroupIds = "TableGroupIds"
            case selectedTables = "SelectedTables"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTablesResponse) -> DescribeTablesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTablesRequest(clusterId: self.clusterId, tableGroupIds: self.tableGroupIds, selectedTables: self.selectedTables, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeTables返回参数结构体
    public struct DescribeTablesResponse: TCPaginatedResponse {
        /// 表格数量
        public let totalCount: UInt64

        /// 表格详情结果列表
        public let tableInfos: [TableInfoNew]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableInfos = "TableInfos"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TableInfoNew] {
            self.tableInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询表详情
    @inlinable
    public func describeTables(_ input: DescribeTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTablesResponse> {
        self.client.execute(action: "DescribeTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询表详情
    @inlinable
    public func describeTables(_ input: DescribeTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTablesResponse {
        try await self.client.execute(action: "DescribeTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询表详情
    @inlinable
    public func describeTables(clusterId: String? = nil, tableGroupIds: [String]? = nil, selectedTables: [SelectedTableInfoNew]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTablesResponse> {
        self.describeTables(.init(clusterId: clusterId, tableGroupIds: tableGroupIds, selectedTables: selectedTables, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询表详情
    @inlinable
    public func describeTables(clusterId: String? = nil, tableGroupIds: [String]? = nil, selectedTables: [SelectedTableInfoNew]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTablesResponse {
        try await self.describeTables(.init(clusterId: clusterId, tableGroupIds: tableGroupIds, selectedTables: selectedTables, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询表详情
    @inlinable
    public func describeTablesPaginated(_ input: DescribeTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TableInfoNew])> {
        self.client.paginate(input: input, region: region, command: self.describeTables, logger: logger, on: eventLoop)
    }

    /// 查询表详情
    @inlinable @discardableResult
    public func describeTablesPaginated(_ input: DescribeTablesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTablesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTables, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询表详情
    ///
    /// - Returns: `AsyncSequence`s of `TableInfoNew` and `DescribeTablesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTablesPaginator(_ input: DescribeTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTablesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTables, logger: logger, on: eventLoop)
    }
}
