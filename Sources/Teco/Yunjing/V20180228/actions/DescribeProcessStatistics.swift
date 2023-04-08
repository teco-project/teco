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

extension Yunjing {
    /// DescribeProcessStatistics请求参数结构体
    public struct DescribeProcessStatisticsRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>ProcessName - String - 是否必填：否 - 进程名</li>
        public let filters: [Filter]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProcessStatisticsResponse) -> DescribeProcessStatisticsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProcessStatisticsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeProcessStatistics返回参数结构体
    public struct DescribeProcessStatisticsResponse: TCPaginatedResponse {
        /// 进程统计列表记录总数。
        public let totalCount: UInt64

        /// 进程统计列表数据数组。
        public let processStatistics: [ProcessStatistics]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case processStatistics = "ProcessStatistics"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ProcessStatistics] {
            self.processStatistics
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取进程统计列表
    ///
    /// 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。
    @inlinable
    public func describeProcessStatistics(_ input: DescribeProcessStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProcessStatisticsResponse> {
        self.client.execute(action: "DescribeProcessStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取进程统计列表
    ///
    /// 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。
    @inlinable
    public func describeProcessStatistics(_ input: DescribeProcessStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProcessStatisticsResponse {
        try await self.client.execute(action: "DescribeProcessStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取进程统计列表
    ///
    /// 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。
    @inlinable
    public func describeProcessStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProcessStatisticsResponse> {
        self.describeProcessStatistics(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取进程统计列表
    ///
    /// 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。
    @inlinable
    public func describeProcessStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProcessStatisticsResponse {
        try await self.describeProcessStatistics(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取进程统计列表
    ///
    /// 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。
    @inlinable
    public func describeProcessStatisticsPaginated(_ input: DescribeProcessStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProcessStatistics])> {
        self.client.paginate(input: input, region: region, command: self.describeProcessStatistics, logger: logger, on: eventLoop)
    }

    /// 获取进程统计列表
    ///
    /// 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。
    @inlinable @discardableResult
    public func describeProcessStatisticsPaginated(_ input: DescribeProcessStatisticsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProcessStatisticsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProcessStatistics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取进程统计列表
    ///
    /// 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。
    ///
    /// - Returns: `AsyncSequence`s of `ProcessStatistics` and `DescribeProcessStatisticsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProcessStatisticsPaginator(_ input: DescribeProcessStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProcessStatisticsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProcessStatistics, logger: logger, on: eventLoop)
    }
}
