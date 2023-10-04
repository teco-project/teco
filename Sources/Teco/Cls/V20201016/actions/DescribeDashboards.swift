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

extension Cls {
    /// DescribeDashboards请求参数结构体
    public struct DescribeDashboardsRequest: TCPaginatedRequest {
        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        /// 分页单页限制数目，默认值为20，最大值100。
        public let limit: Int64?

        /// - dashboardId
        ///
        /// 按照【仪表盘id】进行过滤。
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// - dashboardName
        ///
        /// 按照【仪表盘名字】进行模糊搜索过滤。
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// - dashboardRegion
        ///
        /// 按照【仪表盘地域】进行过滤，为了兼容老的仪表盘，通过云API创建的仪表盘没有地域属性
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// - tagKey
        ///
        /// 按照【标签键】进行过滤。
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// - tag:tagKey
        ///
        /// 按照【标签键值对】进行过滤。tag-key使用具体的标签键进行替换。使用请参考示例2。
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// 每次请求的Filters的上限为10，Filter.Values的上限为100。
        public let filters: [Filter]?

        /// 按照topicId和regionId过滤。
        public let topicIdRegionFilter: [TopicIdAndRegion]?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, topicIdRegionFilter: [TopicIdAndRegion]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.topicIdRegionFilter = topicIdRegionFilter
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case topicIdRegionFilter = "TopicIdRegionFilter"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDashboardsResponse) -> DescribeDashboardsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, topicIdRegionFilter: self.topicIdRegionFilter)
        }
    }

    /// DescribeDashboards返回参数结构体
    public struct DescribeDashboardsResponse: TCPaginatedResponse {
        /// 仪表盘的数量
        public let totalCount: Int64

        /// 仪表盘详细明细
        public let dashboardInfos: [DashboardInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dashboardInfos = "DashboardInfos"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DashboardInfo`` list from the paginated response.
        public func getItems() -> [DashboardInfo] {
            self.dashboardInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取仪表盘
    ///
    /// 本接口用于获取仪表盘
    @inlinable
    public func describeDashboards(_ input: DescribeDashboardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDashboardsResponse> {
        self.client.execute(action: "DescribeDashboards", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取仪表盘
    ///
    /// 本接口用于获取仪表盘
    @inlinable
    public func describeDashboards(_ input: DescribeDashboardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDashboardsResponse {
        try await self.client.execute(action: "DescribeDashboards", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取仪表盘
    ///
    /// 本接口用于获取仪表盘
    @inlinable
    public func describeDashboards(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, topicIdRegionFilter: [TopicIdAndRegion]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDashboardsResponse> {
        self.describeDashboards(.init(offset: offset, limit: limit, filters: filters, topicIdRegionFilter: topicIdRegionFilter), region: region, logger: logger, on: eventLoop)
    }

    /// 获取仪表盘
    ///
    /// 本接口用于获取仪表盘
    @inlinable
    public func describeDashboards(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, topicIdRegionFilter: [TopicIdAndRegion]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDashboardsResponse {
        try await self.describeDashboards(.init(offset: offset, limit: limit, filters: filters, topicIdRegionFilter: topicIdRegionFilter), region: region, logger: logger, on: eventLoop)
    }

    /// 获取仪表盘
    ///
    /// 本接口用于获取仪表盘
    @inlinable
    public func describeDashboardsPaginated(_ input: DescribeDashboardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DashboardInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDashboards, logger: logger, on: eventLoop)
    }

    /// 获取仪表盘
    ///
    /// 本接口用于获取仪表盘
    @inlinable @discardableResult
    public func describeDashboardsPaginated(_ input: DescribeDashboardsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDashboardsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDashboards, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取仪表盘
    ///
    /// 本接口用于获取仪表盘
    ///
    /// - Returns: `AsyncSequence`s of ``DashboardInfo`` and ``DescribeDashboardsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDashboardsPaginator(_ input: DescribeDashboardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDashboardsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDashboards, logger: logger, on: eventLoop)
    }
}
