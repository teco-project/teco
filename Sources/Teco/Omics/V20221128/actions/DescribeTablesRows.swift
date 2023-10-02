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

extension Omics {
    /// DescribeTablesRows请求参数结构体
    public struct DescribeTablesRowsRequest: TCPaginatedRequest {
        /// 项目ID。
        public let projectId: String

        /// 表格ID。
        public let tableId: String

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤器，支持过滤字段：
        /// - Tr：表格数据，支持模糊查询
        /// - TableRowUuid：表格行UUID
        public let filters: [Filter]?

        public init(projectId: String, tableId: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.projectId = projectId
            self.tableId = tableId
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case tableId = "TableId"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTablesRowsResponse) -> DescribeTablesRowsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(projectId: self.projectId, tableId: self.tableId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeTablesRows返回参数结构体
    public struct DescribeTablesRowsResponse: TCPaginatedResponse {
        /// 结果总数。
        public let totalCount: UInt64

        /// 表格行列表。
        public let rows: [TableRow]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case rows = "Rows"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TableRow`` list from the paginated response.
        public func getItems() -> [TableRow] {
            self.rows
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询表格行数据
    ///
    /// 查询表格行数据。
    @inlinable
    public func describeTablesRows(_ input: DescribeTablesRowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTablesRowsResponse> {
        self.client.execute(action: "DescribeTablesRows", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询表格行数据
    ///
    /// 查询表格行数据。
    @inlinable
    public func describeTablesRows(_ input: DescribeTablesRowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTablesRowsResponse {
        try await self.client.execute(action: "DescribeTablesRows", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询表格行数据
    ///
    /// 查询表格行数据。
    @inlinable
    public func describeTablesRows(projectId: String, tableId: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTablesRowsResponse> {
        self.describeTablesRows(.init(projectId: projectId, tableId: tableId, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询表格行数据
    ///
    /// 查询表格行数据。
    @inlinable
    public func describeTablesRows(projectId: String, tableId: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTablesRowsResponse {
        try await self.describeTablesRows(.init(projectId: projectId, tableId: tableId, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询表格行数据
    ///
    /// 查询表格行数据。
    @inlinable
    public func describeTablesRowsPaginated(_ input: DescribeTablesRowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TableRow])> {
        self.client.paginate(input: input, region: region, command: self.describeTablesRows, logger: logger, on: eventLoop)
    }

    /// 查询表格行数据
    ///
    /// 查询表格行数据。
    @inlinable @discardableResult
    public func describeTablesRowsPaginated(_ input: DescribeTablesRowsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTablesRowsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTablesRows, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询表格行数据
    ///
    /// 查询表格行数据。
    ///
    /// - Returns: `AsyncSequence`s of ``TableRow`` and ``DescribeTablesRowsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTablesRowsPaginator(_ input: DescribeTablesRowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTablesRowsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTablesRows, logger: logger, on: eventLoop)
    }
}
