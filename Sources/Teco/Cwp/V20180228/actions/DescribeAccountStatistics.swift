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

extension Cwp {
    /// DescribeAccountStatistics请求参数结构体
    public struct DescribeAccountStatisticsRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Username - String - 是否必填：否 - 帐号用户名</li>
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
        public func makeNextRequest(with response: DescribeAccountStatisticsResponse) -> DescribeAccountStatisticsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAccountStatisticsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeAccountStatistics返回参数结构体
    public struct DescribeAccountStatisticsResponse: TCPaginatedResponse {
        /// 帐号统计列表记录总数。
        public let totalCount: UInt64

        /// 帐号统计列表。
        public let accountStatistics: [AccountStatistics]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case accountStatistics = "AccountStatistics"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AccountStatistics] {
            self.accountStatistics
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取帐号统计列表数据
    ///
    /// 本接口 (DescribeAccountStatistics) 用于获取帐号统计列表数据。
    @inlinable
    public func describeAccountStatistics(_ input: DescribeAccountStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountStatisticsResponse> {
        self.client.execute(action: "DescribeAccountStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取帐号统计列表数据
    ///
    /// 本接口 (DescribeAccountStatistics) 用于获取帐号统计列表数据。
    @inlinable
    public func describeAccountStatistics(_ input: DescribeAccountStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountStatisticsResponse {
        try await self.client.execute(action: "DescribeAccountStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取帐号统计列表数据
    ///
    /// 本接口 (DescribeAccountStatistics) 用于获取帐号统计列表数据。
    @inlinable
    public func describeAccountStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountStatisticsResponse> {
        self.describeAccountStatistics(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取帐号统计列表数据
    ///
    /// 本接口 (DescribeAccountStatistics) 用于获取帐号统计列表数据。
    @inlinable
    public func describeAccountStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountStatisticsResponse {
        try await self.describeAccountStatistics(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取帐号统计列表数据
    ///
    /// 本接口 (DescribeAccountStatistics) 用于获取帐号统计列表数据。
    @inlinable
    public func describeAccountStatisticsPaginated(_ input: DescribeAccountStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AccountStatistics])> {
        self.client.paginate(input: input, region: region, command: self.describeAccountStatistics, logger: logger, on: eventLoop)
    }

    /// 获取帐号统计列表数据
    ///
    /// 本接口 (DescribeAccountStatistics) 用于获取帐号统计列表数据。
    @inlinable @discardableResult
    public func describeAccountStatisticsPaginated(_ input: DescribeAccountStatisticsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAccountStatisticsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAccountStatistics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取帐号统计列表数据
    ///
    /// 本接口 (DescribeAccountStatistics) 用于获取帐号统计列表数据。
    ///
    /// - Returns: `AsyncSequence`s of `AccountStatistics` and `DescribeAccountStatisticsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAccountStatisticsPaginator(_ input: DescribeAccountStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAccountStatisticsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAccountStatistics, logger: logger, on: eventLoop)
    }
}
