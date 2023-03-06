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

extension Yunjing {
    /// DescribeOpenPortStatistics请求参数结构体
    public struct DescribeOpenPortStatisticsRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Port - Uint64 - 是否必填：否 - 端口号</li>
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
        public func getNextPaginatedRequest(with response: DescribeOpenPortStatisticsResponse) -> DescribeOpenPortStatisticsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeOpenPortStatisticsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeOpenPortStatistics返回参数结构体
    public struct DescribeOpenPortStatisticsResponse: TCPaginatedResponse {
        /// 端口统计列表总数
        public let totalCount: UInt64

        /// 端口统计数据列表
        public let openPortStatistics: [OpenPortStatistics]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case openPortStatistics = "OpenPortStatistics"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [OpenPortStatistics] {
            self.openPortStatistics
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取端口统计列表
    ///
    /// 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。
    @inlinable
    public func describeOpenPortStatistics(_ input: DescribeOpenPortStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOpenPortStatisticsResponse> {
        self.client.execute(action: "DescribeOpenPortStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取端口统计列表
    ///
    /// 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。
    @inlinable
    public func describeOpenPortStatistics(_ input: DescribeOpenPortStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOpenPortStatisticsResponse {
        try await self.client.execute(action: "DescribeOpenPortStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取端口统计列表
    ///
    /// 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。
    @inlinable
    public func describeOpenPortStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOpenPortStatisticsResponse> {
        let input = DescribeOpenPortStatisticsRequest(limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeOpenPortStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取端口统计列表
    ///
    /// 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。
    @inlinable
    public func describeOpenPortStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOpenPortStatisticsResponse {
        let input = DescribeOpenPortStatisticsRequest(limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeOpenPortStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取端口统计列表
    ///
    /// 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。
    @inlinable
    public func describeOpenPortStatisticsPaginated(_ input: DescribeOpenPortStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [OpenPortStatistics])> {
        self.client.paginate(input: input, region: region, command: self.describeOpenPortStatistics, logger: logger, on: eventLoop)
    }

    /// 获取端口统计列表
    ///
    /// 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。
    @inlinable @discardableResult
    public func describeOpenPortStatisticsPaginated(_ input: DescribeOpenPortStatisticsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeOpenPortStatisticsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeOpenPortStatistics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取端口统计列表
    ///
    /// 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。
    @inlinable
    public func describeOpenPortStatisticsPaginator(_ input: DescribeOpenPortStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeOpenPortStatisticsRequest, DescribeOpenPortStatisticsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeOpenPortStatisticsRequest, DescribeOpenPortStatisticsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeOpenPortStatistics, logger: logger, on: eventLoop)
    }
}
