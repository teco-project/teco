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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Postgres {
    /// DescribeDBErrlogs请求参数结构体
    public struct DescribeDBErrlogsRequest: TCPaginatedRequest {
        /// 实例ID，形如postgres-5bq3wfjd
        public let dbInstanceId: String

        /// 查询起始时间，形如2018-01-01 00:00:00，起始时间不得小于7天以前
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间，形如2018-01-01 00:00:00
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 数据库名字
        public let databaseName: String?

        /// 搜索关键字
        public let searchKeys: [String]?

        /// 分页返回，每页返回的最大数量。取值为1-100
        public let limit: Int64?

        /// 分页返回，返回第几页的数据，从第0页开始计数
        public let offset: Int64?

        public init(dbInstanceId: String, startTime: Date, endTime: Date, databaseName: String? = nil, searchKeys: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.dbInstanceId = dbInstanceId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.databaseName = databaseName
            self.searchKeys = searchKeys
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case databaseName = "DatabaseName"
            case searchKeys = "SearchKeys"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDBErrlogsResponse) -> DescribeDBErrlogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDBErrlogsRequest(dbInstanceId: self.dbInstanceId, startTime: self.startTime, endTime: self.endTime, databaseName: self.databaseName, searchKeys: self.searchKeys, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeDBErrlogs返回参数结构体
    public struct DescribeDBErrlogsResponse: TCPaginatedResponse {
        /// 本次调用返回了多少条数据
        public let totalCount: Int64

        /// 错误日志列表
        public let details: [ErrLogDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case details = "Details"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ErrLogDetail] {
            self.details
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取错误日志
    ///
    /// 本接口（DescribeDBErrlogs）用于获取错误日志。
    @inlinable
    public func describeDBErrlogs(_ input: DescribeDBErrlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBErrlogsResponse> {
        self.client.execute(action: "DescribeDBErrlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取错误日志
    ///
    /// 本接口（DescribeDBErrlogs）用于获取错误日志。
    @inlinable
    public func describeDBErrlogs(_ input: DescribeDBErrlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBErrlogsResponse {
        try await self.client.execute(action: "DescribeDBErrlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取错误日志
    ///
    /// 本接口（DescribeDBErrlogs）用于获取错误日志。
    @inlinable
    public func describeDBErrlogs(dbInstanceId: String, startTime: Date, endTime: Date, databaseName: String? = nil, searchKeys: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBErrlogsResponse> {
        self.describeDBErrlogs(.init(dbInstanceId: dbInstanceId, startTime: startTime, endTime: endTime, databaseName: databaseName, searchKeys: searchKeys, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取错误日志
    ///
    /// 本接口（DescribeDBErrlogs）用于获取错误日志。
    @inlinable
    public func describeDBErrlogs(dbInstanceId: String, startTime: Date, endTime: Date, databaseName: String? = nil, searchKeys: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBErrlogsResponse {
        try await self.describeDBErrlogs(.init(dbInstanceId: dbInstanceId, startTime: startTime, endTime: endTime, databaseName: databaseName, searchKeys: searchKeys, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取错误日志
    ///
    /// 本接口（DescribeDBErrlogs）用于获取错误日志。
    @inlinable
    public func describeDBErrlogsPaginated(_ input: DescribeDBErrlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ErrLogDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeDBErrlogs, logger: logger, on: eventLoop)
    }

    /// 获取错误日志
    ///
    /// 本接口（DescribeDBErrlogs）用于获取错误日志。
    @inlinable @discardableResult
    public func describeDBErrlogsPaginated(_ input: DescribeDBErrlogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDBErrlogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDBErrlogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取错误日志
    ///
    /// 本接口（DescribeDBErrlogs）用于获取错误日志。
    ///
    /// - Returns: `AsyncSequence`s of `ErrLogDetail` and `DescribeDBErrlogsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDBErrlogsPaginator(_ input: DescribeDBErrlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDBErrlogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDBErrlogs, logger: logger, on: eventLoop)
    }
}
