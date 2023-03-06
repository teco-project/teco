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

extension Wedata {
    /// DescribeTableQualityDetails请求参数结构体
    public struct DescribeTableQualityDetailsRequest: TCPaginatedRequest {
        /// 统计日期
        public let statisticsDate: Int64

        /// 项目id
        public let projectId: String

        /// 分页序号
        public let pageNumber: Int64

        /// 分页大小
        public let pageSize: Int64

        /// 过滤参数TableName、DatabaseId 、DatabaseName、OwnerUserName
        public let filters: [Filter]?

        /// 排序参数 排序方式 DESC 或者 ASC，表得分排序 TableScore
        public let orderFields: [OrderField]?

        /// 数据来源id
        public let datasourceId: String?

        public init(statisticsDate: Int64, projectId: String, pageNumber: Int64, pageSize: Int64, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, datasourceId: String? = nil) {
            self.statisticsDate = statisticsDate
            self.projectId = projectId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
            self.orderFields = orderFields
            self.datasourceId = datasourceId
        }

        enum CodingKeys: String, CodingKey {
            case statisticsDate = "StatisticsDate"
            case projectId = "ProjectId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
            case orderFields = "OrderFields"
            case datasourceId = "DatasourceId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTableQualityDetailsResponse) -> DescribeTableQualityDetailsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTableQualityDetailsRequest(statisticsDate: self.statisticsDate, projectId: self.projectId, pageNumber: self.pageNumber + 1, pageSize: self.pageSize, filters: self.filters, orderFields: self.orderFields, datasourceId: self.datasourceId)
        }
    }

    /// DescribeTableQualityDetails返回参数结构体
    public struct DescribeTableQualityDetailsResponse: TCPaginatedResponse {
        /// 表质量分详情结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: TableQualityDetailPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TableQualityDetail] {
            self.data?.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data?.totalCount
        }
    }

    /// 查询表质量详情
    ///
    /// 质量报告-查询表质量详情
    @inlinable
    public func describeTableQualityDetails(_ input: DescribeTableQualityDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableQualityDetailsResponse> {
        self.client.execute(action: "DescribeTableQualityDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询表质量详情
    ///
    /// 质量报告-查询表质量详情
    @inlinable
    public func describeTableQualityDetails(_ input: DescribeTableQualityDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTableQualityDetailsResponse {
        try await self.client.execute(action: "DescribeTableQualityDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询表质量详情
    ///
    /// 质量报告-查询表质量详情
    @inlinable
    public func describeTableQualityDetails(statisticsDate: Int64, projectId: String, pageNumber: Int64, pageSize: Int64, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, datasourceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableQualityDetailsResponse> {
        let input = DescribeTableQualityDetailsRequest(statisticsDate: statisticsDate, projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, datasourceId: datasourceId)
        return self.client.execute(action: "DescribeTableQualityDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询表质量详情
    ///
    /// 质量报告-查询表质量详情
    @inlinable
    public func describeTableQualityDetails(statisticsDate: Int64, projectId: String, pageNumber: Int64, pageSize: Int64, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, datasourceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTableQualityDetailsResponse {
        let input = DescribeTableQualityDetailsRequest(statisticsDate: statisticsDate, projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, datasourceId: datasourceId)
        return try await self.client.execute(action: "DescribeTableQualityDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询表质量详情
    ///
    /// 质量报告-查询表质量详情
    @inlinable
    public func describeTableQualityDetailsPaginated(_ input: DescribeTableQualityDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TableQualityDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeTableQualityDetails, logger: logger, on: eventLoop)
    }

    /// 查询表质量详情
    ///
    /// 质量报告-查询表质量详情
    @inlinable
    public func describeTableQualityDetailsPaginated(_ input: DescribeTableQualityDetailsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTableQualityDetailsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTableQualityDetails, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询表质量详情
    ///
    /// 质量报告-查询表质量详情
    @inlinable
    public func describeTableQualityDetailsPaginator(_ input: DescribeTableQualityDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeTableQualityDetailsRequest, DescribeTableQualityDetailsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeTableQualityDetailsRequest, DescribeTableQualityDetailsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeTableQualityDetailsRequest, DescribeTableQualityDetailsResponse>.ResultSequence(input: input, region: region, command: self.describeTableQualityDetails, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeTableQualityDetailsRequest, DescribeTableQualityDetailsResponse>.ResponseSequence(input: input, region: region, command: self.describeTableQualityDetails, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
