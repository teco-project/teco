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

extension Tke {
    /// DescribePrometheusOverviews请求参数结构体
    public struct DescribePrometheusOverviewsRequest: TCPaginatedRequest {
        /// 用于分页
        public let offset: UInt64?

        /// 用于分页
        public let limit: UInt64?

        /// 过滤实例，目前支持：
        /// ID: 通过实例ID来过滤
        /// Name: 通过实例名称来过滤
        public let filters: [Filter]?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePrometheusOverviewsResponse) -> DescribePrometheusOverviewsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePrometheusOverviewsRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribePrometheusOverviews返回参数结构体
    public struct DescribePrometheusOverviewsResponse: TCPaginatedResponse {
        /// 实例列表
        public let instances: [PrometheusInstanceOverview]

        /// 实例总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instances = "Instances"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PrometheusInstanceOverview] {
            self.instances
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取实例列表
    @inlinable
    public func describePrometheusOverviews(_ input: DescribePrometheusOverviewsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusOverviewsResponse> {
        self.client.execute(action: "DescribePrometheusOverviews", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例列表
    @inlinable
    public func describePrometheusOverviews(_ input: DescribePrometheusOverviewsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusOverviewsResponse {
        try await self.client.execute(action: "DescribePrometheusOverviews", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例列表
    @inlinable
    public func describePrometheusOverviews(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusOverviewsResponse> {
        let input = DescribePrometheusOverviewsRequest(offset: offset, limit: limit, filters: filters)
        return self.client.execute(action: "DescribePrometheusOverviews", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例列表
    @inlinable
    public func describePrometheusOverviews(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusOverviewsResponse {
        let input = DescribePrometheusOverviewsRequest(offset: offset, limit: limit, filters: filters)
        return try await self.client.execute(action: "DescribePrometheusOverviews", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例列表
    @inlinable
    public func describePrometheusOverviewsPaginated(_ input: DescribePrometheusOverviewsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PrometheusInstanceOverview])> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusOverviews, logger: logger, on: eventLoop)
    }

    /// 获取实例列表
    @inlinable @discardableResult
    public func describePrometheusOverviewsPaginated(_ input: DescribePrometheusOverviewsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrometheusOverviewsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusOverviews, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取实例列表
    @inlinable
    public func describePrometheusOverviewsPaginator(_ input: DescribePrometheusOverviewsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePrometheusOverviewsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrometheusOverviews, logger: logger, on: eventLoop)
    }
}
