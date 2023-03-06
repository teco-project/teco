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
    /// DescribeMetricRecords请求参数结构体
    public struct DescribeMetricRecordsRequest: TCPaginatedRequest {
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
        public let limit: UInt64?

        /// 开始时间
        public let startTime: UInt64?

        /// 分页起始点
        public let offset: Int64?

        /// 结束时间
        public let endTime: UInt64?

        /// 业务名称（默认值：taw）
        public let businessName: String?

        /// 页码
        public let pageIndex: Int64?

        /// 页长
        public let pageSize: Int64?

        public init(filters: [Filter], metrics: [QueryMetricItem], groupBy: [String], orderBy: OrderBy? = nil, instanceId: String? = nil, limit: UInt64? = nil, startTime: UInt64? = nil, offset: Int64? = nil, endTime: UInt64? = nil, businessName: String? = nil, pageIndex: Int64? = nil, pageSize: Int64? = nil) {
            self.filters = filters
            self.metrics = metrics
            self.groupBy = groupBy
            self.orderBy = orderBy
            self.instanceId = instanceId
            self.limit = limit
            self.startTime = startTime
            self.offset = offset
            self.endTime = endTime
            self.businessName = businessName
            self.pageIndex = pageIndex
            self.pageSize = pageSize
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
            case businessName = "BusinessName"
            case pageIndex = "PageIndex"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeMetricRecordsResponse) -> DescribeMetricRecordsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMetricRecordsRequest(filters: self.filters, metrics: self.metrics, groupBy: self.groupBy, orderBy: self.orderBy, instanceId: self.instanceId, limit: self.limit, startTime: self.startTime, offset: (self.offset ?? 0) + .init(response.getItems().count), endTime: self.endTime, businessName: self.businessName, pageIndex: self.pageIndex, pageSize: self.pageSize)
        }
    }

    /// DescribeMetricRecords返回参数结构体
    public struct DescribeMetricRecordsResponse: TCPaginatedResponse {
        /// 指标结果集
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let records: [ApmMetricRecord]?

        /// 查询指标结果集条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case records = "Records"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApmMetricRecord] {
            self.records ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 通用指标列表接口
    ///
    /// 拉取通用指标列表
    @inlinable
    public func describeMetricRecords(_ input: DescribeMetricRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMetricRecordsResponse> {
        self.client.execute(action: "DescribeMetricRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通用指标列表接口
    ///
    /// 拉取通用指标列表
    @inlinable
    public func describeMetricRecords(_ input: DescribeMetricRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMetricRecordsResponse {
        try await self.client.execute(action: "DescribeMetricRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通用指标列表接口
    ///
    /// 拉取通用指标列表
    @inlinable
    public func describeMetricRecords(filters: [Filter], metrics: [QueryMetricItem], groupBy: [String], orderBy: OrderBy? = nil, instanceId: String? = nil, limit: UInt64? = nil, startTime: UInt64? = nil, offset: Int64? = nil, endTime: UInt64? = nil, businessName: String? = nil, pageIndex: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMetricRecordsResponse> {
        let input = DescribeMetricRecordsRequest(filters: filters, metrics: metrics, groupBy: groupBy, orderBy: orderBy, instanceId: instanceId, limit: limit, startTime: startTime, offset: offset, endTime: endTime, businessName: businessName, pageIndex: pageIndex, pageSize: pageSize)
        return self.client.execute(action: "DescribeMetricRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通用指标列表接口
    ///
    /// 拉取通用指标列表
    @inlinable
    public func describeMetricRecords(filters: [Filter], metrics: [QueryMetricItem], groupBy: [String], orderBy: OrderBy? = nil, instanceId: String? = nil, limit: UInt64? = nil, startTime: UInt64? = nil, offset: Int64? = nil, endTime: UInt64? = nil, businessName: String? = nil, pageIndex: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMetricRecordsResponse {
        let input = DescribeMetricRecordsRequest(filters: filters, metrics: metrics, groupBy: groupBy, orderBy: orderBy, instanceId: instanceId, limit: limit, startTime: startTime, offset: offset, endTime: endTime, businessName: businessName, pageIndex: pageIndex, pageSize: pageSize)
        return try await self.client.execute(action: "DescribeMetricRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
