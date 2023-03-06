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

extension Tione {
    /// DescribeDatasets请求参数结构体
    public struct DescribeDatasetsRequest: TCPaginatedRequest {
        /// 数据集id列表
        public let datasetIds: [String]?

        /// 数据集查询过滤条件，多个Filter之间的关系为逻辑与（AND）关系，过滤字段Filter.Name，类型为String
        /// DatasetName，数据集名称
        /// DatasetScope，数据集范围，SCOPE_DATASET_PRIVATE或SCOPE_DATASET_PUBLIC
        public let filters: [Filter]?

        /// 标签过滤条件
        public let tagFilters: [TagFilter]?

        /// 排序值，支持Asc或Desc，默认Desc
        public let order: String?

        /// 排序字段，支持CreateTime或UpdateTime，默认CreateTime
        public let orderField: String?

        /// 偏移值
        public let offset: UInt64?

        /// 返回数据个数，默认20，最大支持200
        public let limit: UInt64?

        public init(datasetIds: [String]? = nil, filters: [Filter]? = nil, tagFilters: [TagFilter]? = nil, order: String? = nil, orderField: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.datasetIds = datasetIds
            self.filters = filters
            self.tagFilters = tagFilters
            self.order = order
            self.orderField = orderField
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case datasetIds = "DatasetIds"
            case filters = "Filters"
            case tagFilters = "TagFilters"
            case order = "Order"
            case orderField = "OrderField"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeDatasetsResponse) -> DescribeDatasetsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDatasetsRequest(datasetIds: self.datasetIds, filters: self.filters, tagFilters: self.tagFilters, order: self.order, orderField: self.orderField, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDatasets返回参数结构体
    public struct DescribeDatasetsResponse: TCPaginatedResponse {
        /// 数据集总量（名称维度）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 数据集按照数据集名称聚合的分组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let datasetGroups: [DatasetGroup]?

        /// 数据集ID总量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let datasetIdNums: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case datasetGroups = "DatasetGroups"
            case datasetIdNums = "DatasetIdNums"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DatasetGroup] {
            self.datasetGroups ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询数据集列表
    @inlinable
    public func describeDatasets(_ input: DescribeDatasetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetsResponse> {
        self.client.execute(action: "DescribeDatasets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据集列表
    @inlinable
    public func describeDatasets(_ input: DescribeDatasetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatasetsResponse {
        try await self.client.execute(action: "DescribeDatasets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据集列表
    @inlinable
    public func describeDatasets(datasetIds: [String]? = nil, filters: [Filter]? = nil, tagFilters: [TagFilter]? = nil, order: String? = nil, orderField: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetsResponse> {
        let input = DescribeDatasetsRequest(datasetIds: datasetIds, filters: filters, tagFilters: tagFilters, order: order, orderField: orderField, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeDatasets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据集列表
    @inlinable
    public func describeDatasets(datasetIds: [String]? = nil, filters: [Filter]? = nil, tagFilters: [TagFilter]? = nil, order: String? = nil, orderField: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatasetsResponse {
        let input = DescribeDatasetsRequest(datasetIds: datasetIds, filters: filters, tagFilters: tagFilters, order: order, orderField: orderField, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeDatasets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据集列表
    @inlinable
    public func describeDatasetsPaginated(_ input: DescribeDatasetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DatasetGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeDatasets, logger: logger, on: eventLoop)
    }

    /// 查询数据集列表
    @inlinable
    public func describeDatasetsPaginated(_ input: DescribeDatasetsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDatasetsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDatasets, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询数据集列表
    @inlinable
    public func describeDatasetsPaginator(_ input: DescribeDatasetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeDatasetsRequest, DescribeDatasetsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeDatasetsRequest, DescribeDatasetsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeDatasetsRequest, DescribeDatasetsResponse>.ResultSequence(input: input, region: region, command: self.describeDatasets, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeDatasetsRequest, DescribeDatasetsResponse>.ResponseSequence(input: input, region: region, command: self.describeDatasets, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
