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

extension Dlc {
    /// DescribeDatasourceConnection请求参数结构体
    public struct DescribeDatasourceConnectionRequest: TCPaginatedRequest {
        /// 连接ID列表，指定要查询的连接ID
        public let datasourceConnectionIds: [String]?

        /// 过滤条件，当前支持的过滤键为：DatasourceConnectionName（数据源连接名）。
        /// DatasourceConnectionType   （数据源连接连接类型）
        public let filters: [Filter]?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认20，最大值100
        public let limit: Int64?

        /// 排序字段，支持如下字段类型，create-time（默认，创建时间）、update-time（更新时间）
        public let sortBy: String?

        /// 排序方式，desc表示正序，asc表示反序， 默认为desc
        public let sorting: String?

        /// 筛选字段：起始时间
        public let startTime: String?

        /// 筛选字段：截止时间
        public let endTime: String?

        /// 连接名称列表，指定要查询的连接名称
        public let datasourceConnectionNames: [String]?

        /// 连接类型，支持Mysql/HiveCos/Kafka/DataLakeCatalog
        public let datasourceConnectionTypes: [String]?

        public init(datasourceConnectionIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, sorting: String? = nil, startTime: String? = nil, endTime: String? = nil, datasourceConnectionNames: [String]? = nil, datasourceConnectionTypes: [String]? = nil) {
            self.datasourceConnectionIds = datasourceConnectionIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.sortBy = sortBy
            self.sorting = sorting
            self.startTime = startTime
            self.endTime = endTime
            self.datasourceConnectionNames = datasourceConnectionNames
            self.datasourceConnectionTypes = datasourceConnectionTypes
        }

        enum CodingKeys: String, CodingKey {
            case datasourceConnectionIds = "DatasourceConnectionIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case sortBy = "SortBy"
            case sorting = "Sorting"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case datasourceConnectionNames = "DatasourceConnectionNames"
            case datasourceConnectionTypes = "DatasourceConnectionTypes"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDatasourceConnectionResponse) -> DescribeDatasourceConnectionRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(datasourceConnectionIds: self.datasourceConnectionIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, sortBy: self.sortBy, sorting: self.sorting, startTime: self.startTime, endTime: self.endTime, datasourceConnectionNames: self.datasourceConnectionNames, datasourceConnectionTypes: self.datasourceConnectionTypes)
        }
    }

    /// DescribeDatasourceConnection返回参数结构体
    public struct DescribeDatasourceConnectionResponse: TCPaginatedResponse {
        /// 数据连接总数
        public let totalCount: Int64

        /// 数据连接对象集合
        public let connectionSet: [DatasourceConnectionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case connectionSet = "ConnectionSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DatasourceConnectionInfo`` list from the paginated response.
        public func getItems() -> [DatasourceConnectionInfo] {
            self.connectionSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询数据源信息
    ///
    /// 本接口（DescribeDatasourceConnection）用于查询数据源信息
    @inlinable
    public func describeDatasourceConnection(_ input: DescribeDatasourceConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasourceConnectionResponse> {
        self.client.execute(action: "DescribeDatasourceConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据源信息
    ///
    /// 本接口（DescribeDatasourceConnection）用于查询数据源信息
    @inlinable
    public func describeDatasourceConnection(_ input: DescribeDatasourceConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatasourceConnectionResponse {
        try await self.client.execute(action: "DescribeDatasourceConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据源信息
    ///
    /// 本接口（DescribeDatasourceConnection）用于查询数据源信息
    @inlinable
    public func describeDatasourceConnection(datasourceConnectionIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, sorting: String? = nil, startTime: String? = nil, endTime: String? = nil, datasourceConnectionNames: [String]? = nil, datasourceConnectionTypes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasourceConnectionResponse> {
        self.describeDatasourceConnection(.init(datasourceConnectionIds: datasourceConnectionIds, filters: filters, offset: offset, limit: limit, sortBy: sortBy, sorting: sorting, startTime: startTime, endTime: endTime, datasourceConnectionNames: datasourceConnectionNames, datasourceConnectionTypes: datasourceConnectionTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据源信息
    ///
    /// 本接口（DescribeDatasourceConnection）用于查询数据源信息
    @inlinable
    public func describeDatasourceConnection(datasourceConnectionIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, sorting: String? = nil, startTime: String? = nil, endTime: String? = nil, datasourceConnectionNames: [String]? = nil, datasourceConnectionTypes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatasourceConnectionResponse {
        try await self.describeDatasourceConnection(.init(datasourceConnectionIds: datasourceConnectionIds, filters: filters, offset: offset, limit: limit, sortBy: sortBy, sorting: sorting, startTime: startTime, endTime: endTime, datasourceConnectionNames: datasourceConnectionNames, datasourceConnectionTypes: datasourceConnectionTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据源信息
    ///
    /// 本接口（DescribeDatasourceConnection）用于查询数据源信息
    @inlinable
    public func describeDatasourceConnectionPaginated(_ input: DescribeDatasourceConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DatasourceConnectionInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDatasourceConnection, logger: logger, on: eventLoop)
    }

    /// 查询数据源信息
    ///
    /// 本接口（DescribeDatasourceConnection）用于查询数据源信息
    @inlinable @discardableResult
    public func describeDatasourceConnectionPaginated(_ input: DescribeDatasourceConnectionRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDatasourceConnectionResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDatasourceConnection, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询数据源信息
    ///
    /// 本接口（DescribeDatasourceConnection）用于查询数据源信息
    ///
    /// - Returns: `AsyncSequence`s of ``DatasourceConnectionInfo`` and ``DescribeDatasourceConnectionResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDatasourceConnectionPaginator(_ input: DescribeDatasourceConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDatasourceConnectionRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDatasourceConnection, logger: logger, on: eventLoop)
    }
}