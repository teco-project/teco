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

import TecoCore
import TecoPaginationHelpers

extension Yunjing {
    /// DescribeComponentStatistics请求参数结构体
    public struct DescribeComponentStatisticsRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// ComponentName - String - 是否必填：否 - 组件名称
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
        public func makeNextRequest(with response: DescribeComponentStatisticsResponse) -> DescribeComponentStatisticsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeComponentStatisticsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeComponentStatistics返回参数结构体
    public struct DescribeComponentStatisticsResponse: TCPaginatedResponse {
        /// 组件统计列表记录总数。
        public let totalCount: UInt64

        /// 组件统计列表数据数组。
        public let componentStatistics: [ComponentStatistics]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case componentStatistics = "ComponentStatistics"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ComponentStatistics] {
            self.componentStatistics
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取组件统计列表
    ///
    /// 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。
    @inlinable
    public func describeComponentStatistics(_ input: DescribeComponentStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComponentStatisticsResponse> {
        self.client.execute(action: "DescribeComponentStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取组件统计列表
    ///
    /// 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。
    @inlinable
    public func describeComponentStatistics(_ input: DescribeComponentStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComponentStatisticsResponse {
        try await self.client.execute(action: "DescribeComponentStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取组件统计列表
    ///
    /// 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。
    @inlinable
    public func describeComponentStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComponentStatisticsResponse> {
        self.describeComponentStatistics(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取组件统计列表
    ///
    /// 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。
    @inlinable
    public func describeComponentStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComponentStatisticsResponse {
        try await self.describeComponentStatistics(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取组件统计列表
    ///
    /// 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。
    @inlinable
    public func describeComponentStatisticsPaginated(_ input: DescribeComponentStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ComponentStatistics])> {
        self.client.paginate(input: input, region: region, command: self.describeComponentStatistics, logger: logger, on: eventLoop)
    }

    /// 获取组件统计列表
    ///
    /// 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。
    @inlinable @discardableResult
    public func describeComponentStatisticsPaginated(_ input: DescribeComponentStatisticsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeComponentStatisticsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeComponentStatistics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取组件统计列表
    ///
    /// 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。
    ///
    /// - Returns: `AsyncSequence`s of `ComponentStatistics` and `DescribeComponentStatisticsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeComponentStatisticsPaginator(_ input: DescribeComponentStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeComponentStatisticsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeComponentStatistics, logger: logger, on: eventLoop)
    }
}
