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
    /// DescribeTrainingTasks请求参数结构体
    public struct DescribeTrainingTasksRequest: TCPaginatedRequest {
        /// 过滤器，eg：[{ "Name": "Id", "Values": ["train-23091792777383936"] }]
        ///
        /// 取值范围：
        /// Name（名称）：task1
        /// Id（task ID）：train-23091792777383936
        /// Status（状态）：STARTING / RUNNING / STOPPING / STOPPED / FAILED / SUCCEED / SUBMIT_FAILED
        /// ChargeType（计费类型）：PREPAID（预付费）/ POSTPAID_BY_HOUR（后付费）
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
        public func makeNextRequest(with response: DescribeTrainingTasksResponse) -> DescribeTrainingTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTrainingTasksRequest(filters: self.filters, tagFilters: self.tagFilters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, orderField: self.orderField)
        }
    }

    /// DescribeTrainingTasks返回参数结构体
    public struct DescribeTrainingTasksResponse: TCPaginatedResponse {
        /// 训练任务集
        public let trainingTaskSet: [TrainingTaskSetItem]

        /// 数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case trainingTaskSet = "TrainingTaskSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TrainingTaskSetItem] {
            self.trainingTaskSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 模型训练任务列表
    ///
    /// 训练任务列表
    @inlinable
    public func describeTrainingTasks(_ input: DescribeTrainingTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingTasksResponse> {
        self.client.execute(action: "DescribeTrainingTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 模型训练任务列表
    ///
    /// 训练任务列表
    @inlinable
    public func describeTrainingTasks(_ input: DescribeTrainingTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingTasksResponse {
        try await self.client.execute(action: "DescribeTrainingTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 模型训练任务列表
    ///
    /// 训练任务列表
    @inlinable
    public func describeTrainingTasks(filters: [Filter]? = nil, tagFilters: [TagFilter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingTasksResponse> {
        self.describeTrainingTasks(.init(filters: filters, tagFilters: tagFilters, offset: offset, limit: limit, order: order, orderField: orderField), region: region, logger: logger, on: eventLoop)
    }

    /// 模型训练任务列表
    ///
    /// 训练任务列表
    @inlinable
    public func describeTrainingTasks(filters: [Filter]? = nil, tagFilters: [TagFilter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingTasksResponse {
        try await self.describeTrainingTasks(.init(filters: filters, tagFilters: tagFilters, offset: offset, limit: limit, order: order, orderField: orderField), region: region, logger: logger, on: eventLoop)
    }

    /// 模型训练任务列表
    ///
    /// 训练任务列表
    @inlinable
    public func describeTrainingTasksPaginated(_ input: DescribeTrainingTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TrainingTaskSetItem])> {
        self.client.paginate(input: input, region: region, command: self.describeTrainingTasks, logger: logger, on: eventLoop)
    }

    /// 模型训练任务列表
    ///
    /// 训练任务列表
    @inlinable @discardableResult
    public func describeTrainingTasksPaginated(_ input: DescribeTrainingTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTrainingTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTrainingTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 模型训练任务列表
    ///
    /// 训练任务列表
    ///
    /// - Returns: `AsyncSequence`s of `TrainingTaskSetItem` and `DescribeTrainingTasksResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTrainingTasksPaginator(_ input: DescribeTrainingTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTrainingTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTrainingTasks, logger: logger, on: eventLoop)
    }
}
