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
    /// DescribePrometheusInstancesOverview请求参数结构体
    public struct DescribePrometheusInstancesOverviewRequest: TCPaginatedRequest {
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
        public func getNextPaginatedRequest(with response: DescribePrometheusInstancesOverviewResponse) -> DescribePrometheusInstancesOverviewRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePrometheusInstancesOverviewRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribePrometheusInstancesOverview返回参数结构体
    public struct DescribePrometheusInstancesOverviewResponse: TCPaginatedResponse {
        /// 实例列表
        public let instances: [PrometheusInstancesOverview]

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
        public func getItems() -> [PrometheusInstancesOverview] {
            self.instances
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取2.0实例列表
    ///
    /// 获取与云监控融合实例列表
    @inlinable
    public func describePrometheusInstancesOverview(_ input: DescribePrometheusInstancesOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusInstancesOverviewResponse> {
        self.client.execute(action: "DescribePrometheusInstancesOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取2.0实例列表
    ///
    /// 获取与云监控融合实例列表
    @inlinable
    public func describePrometheusInstancesOverview(_ input: DescribePrometheusInstancesOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusInstancesOverviewResponse {
        try await self.client.execute(action: "DescribePrometheusInstancesOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取2.0实例列表
    ///
    /// 获取与云监控融合实例列表
    @inlinable
    public func describePrometheusInstancesOverview(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusInstancesOverviewResponse> {
        let input = DescribePrometheusInstancesOverviewRequest(offset: offset, limit: limit, filters: filters)
        return self.client.execute(action: "DescribePrometheusInstancesOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取2.0实例列表
    ///
    /// 获取与云监控融合实例列表
    @inlinable
    public func describePrometheusInstancesOverview(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusInstancesOverviewResponse {
        let input = DescribePrometheusInstancesOverviewRequest(offset: offset, limit: limit, filters: filters)
        return try await self.client.execute(action: "DescribePrometheusInstancesOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取2.0实例列表
    ///
    /// 获取与云监控融合实例列表
    @inlinable
    public func describePrometheusInstancesOverviewPaginated(_ input: DescribePrometheusInstancesOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PrometheusInstancesOverview])> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusInstancesOverview, logger: logger, on: eventLoop)
    }

    /// 获取2.0实例列表
    ///
    /// 获取与云监控融合实例列表
    @inlinable @discardableResult
    public func describePrometheusInstancesOverviewPaginated(_ input: DescribePrometheusInstancesOverviewRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrometheusInstancesOverviewResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusInstancesOverview, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取2.0实例列表
    ///
    /// 获取与云监控融合实例列表
    ///
    /// - Returns: `AsyncSequence`s of `PrometheusInstancesOverview` and `DescribePrometheusInstancesOverviewResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePrometheusInstancesOverviewPaginator(_ input: DescribePrometheusInstancesOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePrometheusInstancesOverviewRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrometheusInstancesOverview, logger: logger, on: eventLoop)
    }
}
