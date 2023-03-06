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

extension Dlc {
    /// DescribeDatabases请求参数结构体
    public struct DescribeDatabasesRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 数据偏移量，从0开始，默认为0。
        public let offset: Int64?

        /// 模糊匹配，库名关键字。
        public let keyWord: String?

        /// 数据源唯名称，该名称可以通过DescribeDatasourceConnection接口查询到。默认为DataLakeCatalog
        public let datasourceConnectionName: String?

        /// 排序字段，当前版本仅支持按库名排序
        public let sort: String?

        /// 排序类型：false：降序（默认）、true：升序
        public let asc: Bool?

        public init(limit: UInt64? = nil, offset: Int64? = nil, keyWord: String? = nil, datasourceConnectionName: String? = nil, sort: String? = nil, asc: Bool? = nil) {
            self.limit = limit
            self.offset = offset
            self.keyWord = keyWord
            self.datasourceConnectionName = datasourceConnectionName
            self.sort = sort
            self.asc = asc
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case keyWord = "KeyWord"
            case datasourceConnectionName = "DatasourceConnectionName"
            case sort = "Sort"
            case asc = "Asc"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDatabasesResponse) -> DescribeDatabasesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDatabasesRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), keyWord: self.keyWord, datasourceConnectionName: self.datasourceConnectionName, sort: self.sort, asc: self.asc)
        }
    }

    /// DescribeDatabases返回参数结构体
    public struct DescribeDatabasesResponse: TCPaginatedResponse {
        /// 数据库对象列表。
        public let databaseList: [DatabaseResponseInfo]

        /// 实例总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case databaseList = "DatabaseList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DatabaseResponseInfo] {
            self.databaseList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询数据库列表。
    @inlinable
    public func describeDatabases(_ input: DescribeDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatabasesResponse> {
        self.client.execute(action: "DescribeDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询数据库列表。
    @inlinable
    public func describeDatabases(_ input: DescribeDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabasesResponse {
        try await self.client.execute(action: "DescribeDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询数据库列表。
    @inlinable
    public func describeDatabases(limit: UInt64? = nil, offset: Int64? = nil, keyWord: String? = nil, datasourceConnectionName: String? = nil, sort: String? = nil, asc: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatabasesResponse> {
        let input = DescribeDatabasesRequest(limit: limit, offset: offset, keyWord: keyWord, datasourceConnectionName: datasourceConnectionName, sort: sort, asc: asc)
        return self.client.execute(action: "DescribeDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询数据库列表。
    @inlinable
    public func describeDatabases(limit: UInt64? = nil, offset: Int64? = nil, keyWord: String? = nil, datasourceConnectionName: String? = nil, sort: String? = nil, asc: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabasesResponse {
        let input = DescribeDatabasesRequest(limit: limit, offset: offset, keyWord: keyWord, datasourceConnectionName: datasourceConnectionName, sort: sort, asc: asc)
        return try await self.client.execute(action: "DescribeDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询数据库列表。
    @inlinable
    public func describeDatabasesPaginated(_ input: DescribeDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DatabaseResponseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDatabases, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询数据库列表。
    @inlinable @discardableResult
    public func describeDatabasesPaginated(_ input: DescribeDatabasesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDatabasesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDatabases, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询数据库列表。
    ///
    /// - Returns: `AsyncSequence`s of `DatabaseResponseInfo` and `DescribeDatabasesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDatabasesPaginator(_ input: DescribeDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDatabasesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDatabases, logger: logger, on: eventLoop)
    }
}
