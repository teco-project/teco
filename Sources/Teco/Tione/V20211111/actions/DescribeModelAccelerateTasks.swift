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
    /// DescribeModelAccelerateTasks请求参数结构体
    public struct DescribeModelAccelerateTasksRequest: TCPaginatedRequest {
        /// 过滤器
        /// ModelAccTaskName 任务名称
        /// ModelSource 模型来源
        public let filters: [Filter]?

        /// 排序字段，默认CreateTime
        public let orderField: String?

        /// 排序方式：ASC/DESC，默认DESC
        public let order: String?

        /// 偏移量
        public let offset: UInt64?

        /// 返回记录条数，默认10
        public let limit: UInt64?

        /// 标签过滤
        public let tagFilters: [TagFilter]?

        public init(filters: [Filter]? = nil, orderField: String? = nil, order: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, tagFilters: [TagFilter]? = nil) {
            self.filters = filters
            self.orderField = orderField
            self.order = order
            self.offset = offset
            self.limit = limit
            self.tagFilters = tagFilters
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case orderField = "OrderField"
            case order = "Order"
            case offset = "Offset"
            case limit = "Limit"
            case tagFilters = "TagFilters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeModelAccelerateTasksResponse) -> DescribeModelAccelerateTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeModelAccelerateTasksRequest(filters: self.filters, orderField: self.orderField, order: self.order, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, tagFilters: self.tagFilters)
        }
    }

    /// DescribeModelAccelerateTasks返回参数结构体
    public struct DescribeModelAccelerateTasksResponse: TCPaginatedResponse {
        /// 模型加速任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modelAccelerateTasks: [ModelAccelerateTask]?

        /// 任务总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case modelAccelerateTasks = "ModelAccelerateTasks"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ModelAccelerateTask] {
            self.modelAccelerateTasks ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询模型加速任务列表
    @inlinable
    public func describeModelAccelerateTasks(_ input: DescribeModelAccelerateTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelAccelerateTasksResponse> {
        self.client.execute(action: "DescribeModelAccelerateTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询模型加速任务列表
    @inlinable
    public func describeModelAccelerateTasks(_ input: DescribeModelAccelerateTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelAccelerateTasksResponse {
        try await self.client.execute(action: "DescribeModelAccelerateTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询模型加速任务列表
    @inlinable
    public func describeModelAccelerateTasks(filters: [Filter]? = nil, orderField: String? = nil, order: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelAccelerateTasksResponse> {
        let input = DescribeModelAccelerateTasksRequest(filters: filters, orderField: orderField, order: order, offset: offset, limit: limit, tagFilters: tagFilters)
        return self.client.execute(action: "DescribeModelAccelerateTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询模型加速任务列表
    @inlinable
    public func describeModelAccelerateTasks(filters: [Filter]? = nil, orderField: String? = nil, order: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelAccelerateTasksResponse {
        let input = DescribeModelAccelerateTasksRequest(filters: filters, orderField: orderField, order: order, offset: offset, limit: limit, tagFilters: tagFilters)
        return try await self.client.execute(action: "DescribeModelAccelerateTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询模型加速任务列表
    @inlinable
    public func describeModelAccelerateTasksPaginated(_ input: DescribeModelAccelerateTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ModelAccelerateTask])> {
        self.client.paginate(input: input, region: region, command: self.describeModelAccelerateTasks, logger: logger, on: eventLoop)
    }

    /// 查询模型加速任务列表
    @inlinable @discardableResult
    public func describeModelAccelerateTasksPaginated(_ input: DescribeModelAccelerateTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeModelAccelerateTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeModelAccelerateTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询模型加速任务列表
    @inlinable
    public func describeModelAccelerateTasksPaginator(_ input: DescribeModelAccelerateTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeModelAccelerateTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeModelAccelerateTasks, logger: logger, on: eventLoop)
    }
}
