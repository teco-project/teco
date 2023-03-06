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

extension Apm {
    /// DescribeServiceOverview请求参数结构体
    public struct DescribeServiceOverviewRequest: TCPaginatedRequest {
        /// 过滤条件
        public let filters: [Filter]

        /// 指标列表
        public let metrics: [QueryMetricItem]

        /// 聚合维度
        public let groupBy: [String]

        /// 排序
        public let orderBy: OrderBy?

        /// 实例ID
        public let instanceId: String?

        /// 每页大小
        public let limit: Int64?

        /// 开始时间
        public let startTime: UInt64?

        /// 分页起始点
        public let offset: Int64?

        /// 结束时间
        public let endTime: UInt64?

        public init(filters: [Filter], metrics: [QueryMetricItem], groupBy: [String], orderBy: OrderBy? = nil, instanceId: String? = nil, limit: Int64? = nil, startTime: UInt64? = nil, offset: Int64? = nil, endTime: UInt64? = nil) {
            self.filters = filters
            self.metrics = metrics
            self.groupBy = groupBy
            self.orderBy = orderBy
            self.instanceId = instanceId
            self.limit = limit
            self.startTime = startTime
            self.offset = offset
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case metrics = "Metrics"
            case groupBy = "GroupBy"
            case orderBy = "OrderBy"
            case instanceId = "InstanceId"
            case limit = "Limit"
            case startTime = "StartTime"
            case offset = "Offset"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeServiceOverviewResponse) -> DescribeServiceOverviewRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeServiceOverviewRequest(filters: self.filters, metrics: self.metrics, groupBy: self.groupBy, orderBy: self.orderBy, instanceId: self.instanceId, limit: self.limit, startTime: self.startTime, offset: (self.offset ?? 0) + .init(response.getItems().count), endTime: self.endTime)
        }
    }

    /// DescribeServiceOverview返回参数结构体
    public struct DescribeServiceOverviewResponse: TCPaginatedResponse {
        /// 指标结果集
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let records: [ApmMetricRecord]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case records = "Records"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApmMetricRecord] {
            self.records ?? []
        }
    }

    /// 获取服务概览数据
    ///
    /// 服务概览数据拉取
    @inlinable
    public func describeServiceOverview(_ input: DescribeServiceOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceOverviewResponse> {
        self.client.execute(action: "DescribeServiceOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取服务概览数据
    ///
    /// 服务概览数据拉取
    @inlinable
    public func describeServiceOverview(_ input: DescribeServiceOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceOverviewResponse {
        try await self.client.execute(action: "DescribeServiceOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取服务概览数据
    ///
    /// 服务概览数据拉取
    @inlinable
    public func describeServiceOverview(filters: [Filter], metrics: [QueryMetricItem], groupBy: [String], orderBy: OrderBy? = nil, instanceId: String? = nil, limit: Int64? = nil, startTime: UInt64? = nil, offset: Int64? = nil, endTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceOverviewResponse> {
        let input = DescribeServiceOverviewRequest(filters: filters, metrics: metrics, groupBy: groupBy, orderBy: orderBy, instanceId: instanceId, limit: limit, startTime: startTime, offset: offset, endTime: endTime)
        return self.client.execute(action: "DescribeServiceOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取服务概览数据
    ///
    /// 服务概览数据拉取
    @inlinable
    public func describeServiceOverview(filters: [Filter], metrics: [QueryMetricItem], groupBy: [String], orderBy: OrderBy? = nil, instanceId: String? = nil, limit: Int64? = nil, startTime: UInt64? = nil, offset: Int64? = nil, endTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceOverviewResponse {
        let input = DescribeServiceOverviewRequest(filters: filters, metrics: metrics, groupBy: groupBy, orderBy: orderBy, instanceId: instanceId, limit: limit, startTime: startTime, offset: offset, endTime: endTime)
        return try await self.client.execute(action: "DescribeServiceOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
