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

extension Tione {
    /// DescribeBatchTasks请求参数结构体
    public struct DescribeBatchTasksRequest: TCPaginatedRequest {
        /// 过滤器，eg：[{ "Name": "Id", "Values": ["train-23091792777383936"] }]
        ///
        /// 取值范围：
        /// Name（名称）：task1
        /// Id（task ID）：train-23091792777383936
        /// Status（状态）：STARTING / RUNNING / STOPPING / STOPPED / FAILED / SUCCEED / SUBMIT_FAILED
        /// ChargeType（计费类型）：PREPAID 包年包月 / POSTPAID_BY_HOUR 按量计费
        /// CHARGE_STATUS（计费状态）：NOT_BILLING（未开始计费）/ BILLING（计费中）/ ARREARS_STOP（欠费停止）
        public let filters: [Filter]?

        /// 标签过滤器，eg：[{ "TagKey": "TagKeyA", "TagValue": ["TagValueA"] }]
        public let tagFilters: [TagFilter]?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为10，最大为50
        public let limit: UInt64?

        /// 输出列表的排列顺序。取值范围：ASC（升序排列）/ DESC（降序排列），默认为DESC
        public let order: String?

        /// 排序的依据字段， 取值范围 "CreateTime" "UpdateTime"
        public let orderField: String?

        public init(filters: [Filter]? = nil, tagFilters: [TagFilter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil) {
            self.filters = filters
            self.tagFilters = tagFilters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.orderField = orderField
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case tagFilters = "TagFilters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case orderField = "OrderField"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBatchTasksResponse) -> DescribeBatchTasksRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, tagFilters: self.tagFilters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, orderField: self.orderField)
        }
    }

    /// DescribeBatchTasks返回参数结构体
    public struct DescribeBatchTasksResponse: TCPaginatedResponse {
        /// 数量
        public let totalCount: UInt64

        /// 任务集
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchTaskSet: [BatchTaskSetItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case batchTaskSet = "BatchTaskSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BatchTaskSetItem`` list from the paginated response.
        public func getItems() -> [BatchTaskSetItem] {
            self.batchTaskSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 跑批任务列表
    ///
    /// 批量预测任务列表信息
    @inlinable
    public func describeBatchTasks(_ input: DescribeBatchTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchTasksResponse> {
        self.client.execute(action: "DescribeBatchTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 跑批任务列表
    ///
    /// 批量预测任务列表信息
    @inlinable
    public func describeBatchTasks(_ input: DescribeBatchTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchTasksResponse {
        try await self.client.execute(action: "DescribeBatchTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 跑批任务列表
    ///
    /// 批量预测任务列表信息
    @inlinable
    public func describeBatchTasks(filters: [Filter]? = nil, tagFilters: [TagFilter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchTasksResponse> {
        self.describeBatchTasks(.init(filters: filters, tagFilters: tagFilters, offset: offset, limit: limit, order: order, orderField: orderField), region: region, logger: logger, on: eventLoop)
    }

    /// 跑批任务列表
    ///
    /// 批量预测任务列表信息
    @inlinable
    public func describeBatchTasks(filters: [Filter]? = nil, tagFilters: [TagFilter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchTasksResponse {
        try await self.describeBatchTasks(.init(filters: filters, tagFilters: tagFilters, offset: offset, limit: limit, order: order, orderField: orderField), region: region, logger: logger, on: eventLoop)
    }

    /// 跑批任务列表
    ///
    /// 批量预测任务列表信息
    @inlinable
    public func describeBatchTasksPaginated(_ input: DescribeBatchTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BatchTaskSetItem])> {
        self.client.paginate(input: input, region: region, command: self.describeBatchTasks, logger: logger, on: eventLoop)
    }

    /// 跑批任务列表
    ///
    /// 批量预测任务列表信息
    @inlinable @discardableResult
    public func describeBatchTasksPaginated(_ input: DescribeBatchTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBatchTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBatchTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 跑批任务列表
    ///
    /// 批量预测任务列表信息
    ///
    /// - Returns: `AsyncSequence`s of ``BatchTaskSetItem`` and ``DescribeBatchTasksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBatchTasksPaginator(_ input: DescribeBatchTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBatchTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBatchTasks, logger: logger, on: eventLoop)
    }
}
