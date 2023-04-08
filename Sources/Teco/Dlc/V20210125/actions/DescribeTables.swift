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

extension Dlc {
    /// DescribeTables请求参数结构体
    public struct DescribeTablesRequest: TCPaginatedRequest {
        /// 列出该数据库下所属数据表。
        public let databaseName: String

        /// 返回数量，默认为10，最大值为100。
        public let limit: Int64?

        /// 数据偏移量，从0开始，默认为0。
        public let offset: UInt64?

        /// 过滤条件，如下支持的过滤类型，传参Name应为其一
        /// table-name - String - （过滤条件）数据表名称,形如：table-001。
        /// table-id - String - （过滤条件）table id形如：12342。
        public let filters: [Filter]?

        /// 指定查询的数据源名称，默认为DataLakeCatalog
        public let datasourceConnectionName: String?

        /// 起始时间：用于对更新时间的筛选
        public let startTime: String?

        /// 终止时间：用于对更新时间的筛选
        public let endTime: String?

        /// 排序字段，支持：CreateTime、UpdateTime、StorageSize、RecordCount、Name（不传则默认按name升序）
        public let sort: String?

        /// 排序字段，false：降序（默认）；true：升序
        public let asc: Bool?

        /// table type，表类型查询,可用值:EXTERNAL_TABLE,INDEX_TABLE,MANAGED_TABLE,MATERIALIZED_VIEW,TABLE,VIEW,VIRTUAL_VIEW
        public let tableType: String?

        /// 筛选字段-表格式：不传（默认）为查全部；LAKEFS：托管表；ICEBERG：非托管iceberg表；HIVE：非托管hive表；OTHER：非托管其它；
        public let tableFormat: String?

        public init(databaseName: String, limit: Int64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, datasourceConnectionName: String? = nil, startTime: String? = nil, endTime: String? = nil, sort: String? = nil, asc: Bool? = nil, tableType: String? = nil, tableFormat: String? = nil) {
            self.databaseName = databaseName
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.datasourceConnectionName = datasourceConnectionName
            self.startTime = startTime
            self.endTime = endTime
            self.sort = sort
            self.asc = asc
            self.tableType = tableType
            self.tableFormat = tableFormat
        }

        enum CodingKeys: String, CodingKey {
            case databaseName = "DatabaseName"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case datasourceConnectionName = "DatasourceConnectionName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case sort = "Sort"
            case asc = "Asc"
            case tableType = "TableType"
            case tableFormat = "TableFormat"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTablesResponse) -> DescribeTablesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTablesRequest(databaseName: self.databaseName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, datasourceConnectionName: self.datasourceConnectionName, startTime: self.startTime, endTime: self.endTime, sort: self.sort, asc: self.asc, tableType: self.tableType, tableFormat: self.tableFormat)
        }
    }

    /// DescribeTables返回参数结构体
    public struct DescribeTablesResponse: TCPaginatedResponse {
        /// 数据表对象列表。
        public let tableList: [TableResponseInfo]

        /// 实例总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tableList = "TableList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TableResponseInfo] {
            self.tableList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询数据表列表
    ///
    /// 本接口（DescribeTables）用于查询数据表列表。
    @inlinable
    public func describeTables(_ input: DescribeTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTablesResponse> {
        self.client.execute(action: "DescribeTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据表列表
    ///
    /// 本接口（DescribeTables）用于查询数据表列表。
    @inlinable
    public func describeTables(_ input: DescribeTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTablesResponse {
        try await self.client.execute(action: "DescribeTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据表列表
    ///
    /// 本接口（DescribeTables）用于查询数据表列表。
    @inlinable
    public func describeTables(databaseName: String, limit: Int64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, datasourceConnectionName: String? = nil, startTime: String? = nil, endTime: String? = nil, sort: String? = nil, asc: Bool? = nil, tableType: String? = nil, tableFormat: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTablesResponse> {
        self.describeTables(.init(databaseName: databaseName, limit: limit, offset: offset, filters: filters, datasourceConnectionName: datasourceConnectionName, startTime: startTime, endTime: endTime, sort: sort, asc: asc, tableType: tableType, tableFormat: tableFormat), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据表列表
    ///
    /// 本接口（DescribeTables）用于查询数据表列表。
    @inlinable
    public func describeTables(databaseName: String, limit: Int64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, datasourceConnectionName: String? = nil, startTime: String? = nil, endTime: String? = nil, sort: String? = nil, asc: Bool? = nil, tableType: String? = nil, tableFormat: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTablesResponse {
        try await self.describeTables(.init(databaseName: databaseName, limit: limit, offset: offset, filters: filters, datasourceConnectionName: datasourceConnectionName, startTime: startTime, endTime: endTime, sort: sort, asc: asc, tableType: tableType, tableFormat: tableFormat), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据表列表
    ///
    /// 本接口（DescribeTables）用于查询数据表列表。
    @inlinable
    public func describeTablesPaginated(_ input: DescribeTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TableResponseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTables, logger: logger, on: eventLoop)
    }

    /// 查询数据表列表
    ///
    /// 本接口（DescribeTables）用于查询数据表列表。
    @inlinable @discardableResult
    public func describeTablesPaginated(_ input: DescribeTablesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTablesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTables, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询数据表列表
    ///
    /// 本接口（DescribeTables）用于查询数据表列表。
    ///
    /// - Returns: `AsyncSequence`s of `TableResponseInfo` and `DescribeTablesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTablesPaginator(_ input: DescribeTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTablesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTables, logger: logger, on: eventLoop)
    }
}
