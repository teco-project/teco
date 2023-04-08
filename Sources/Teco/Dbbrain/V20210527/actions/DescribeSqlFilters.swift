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

import TecoCore
import TecoPaginationHelpers

extension Dbbrain {
    /// DescribeSqlFilters请求参数结构体
    public struct DescribeSqlFiltersRequest: TCPaginatedRequest {
        /// 实例ID。
        public let instanceId: String

        /// 任务ID列表，用于筛选任务列表。
        public let filterIds: [Int64]?

        /// 任务状态列表，用于筛选任务列表，取值包括RUNNING - 运行中, FINISHED - 已完成, TERMINATED - 已终止。
        public let statuses: [String]?

        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?

        public init(instanceId: String, filterIds: [Int64]? = nil, statuses: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.filterIds = filterIds
            self.statuses = statuses
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case filterIds = "FilterIds"
            case statuses = "Statuses"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSqlFiltersResponse) -> DescribeSqlFiltersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSqlFiltersRequest(instanceId: self.instanceId, filterIds: self.filterIds, statuses: self.statuses, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeSqlFilters返回参数结构体
    public struct DescribeSqlFiltersResponse: TCPaginatedResponse {
        /// 限流任务总数目。
        public let totalCount: Int64

        /// 限流任务列表。
        public let items: [SQLFilter]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SQLFilter] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例SQL限流任务列表
    ///
    /// 查询实例SQL限流任务列表。
    @inlinable
    public func describeSqlFilters(_ input: DescribeSqlFiltersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSqlFiltersResponse> {
        self.client.execute(action: "DescribeSqlFilters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例SQL限流任务列表
    ///
    /// 查询实例SQL限流任务列表。
    @inlinable
    public func describeSqlFilters(_ input: DescribeSqlFiltersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSqlFiltersResponse {
        try await self.client.execute(action: "DescribeSqlFilters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例SQL限流任务列表
    ///
    /// 查询实例SQL限流任务列表。
    @inlinable
    public func describeSqlFilters(instanceId: String, filterIds: [Int64]? = nil, statuses: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSqlFiltersResponse> {
        self.describeSqlFilters(.init(instanceId: instanceId, filterIds: filterIds, statuses: statuses, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例SQL限流任务列表
    ///
    /// 查询实例SQL限流任务列表。
    @inlinable
    public func describeSqlFilters(instanceId: String, filterIds: [Int64]? = nil, statuses: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSqlFiltersResponse {
        try await self.describeSqlFilters(.init(instanceId: instanceId, filterIds: filterIds, statuses: statuses, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例SQL限流任务列表
    ///
    /// 查询实例SQL限流任务列表。
    @inlinable
    public func describeSqlFiltersPaginated(_ input: DescribeSqlFiltersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SQLFilter])> {
        self.client.paginate(input: input, region: region, command: self.describeSqlFilters, logger: logger, on: eventLoop)
    }

    /// 查询实例SQL限流任务列表
    ///
    /// 查询实例SQL限流任务列表。
    @inlinable @discardableResult
    public func describeSqlFiltersPaginated(_ input: DescribeSqlFiltersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSqlFiltersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSqlFilters, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例SQL限流任务列表
    ///
    /// 查询实例SQL限流任务列表。
    ///
    /// - Returns: `AsyncSequence`s of `SQLFilter` and `DescribeSqlFiltersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSqlFiltersPaginator(_ input: DescribeSqlFiltersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSqlFiltersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSqlFilters, logger: logger, on: eventLoop)
    }
}
