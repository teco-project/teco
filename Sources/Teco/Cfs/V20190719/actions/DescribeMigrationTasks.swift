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
import TecoPaginationHelpers

extension Cfs {
    /// DescribeMigrationTasks请求参数结构体
    public struct DescribeMigrationTasksRequest: TCPaginatedRequest {
        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        /// 分页单页限制数目，默认值为20，最大值100。
        public let limit: Int64?

        /// <br><li> taskId
        ///
        /// 按照【迁移任务id】进行过滤。
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// <br><li> taskName
        ///
        /// 按照【迁移任务名字】进行模糊搜索过滤。
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// 每次请求的Filters的上限为10，Filter.Values的上限为100。
        public let filters: [Filter]?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil) {
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
        public func makeNextRequest(with response: DescribeMigrationTasksResponse) -> DescribeMigrationTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMigrationTasksRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeMigrationTasks返回参数结构体
    public struct DescribeMigrationTasksResponse: TCPaginatedResponse {
        /// 迁移任务的数量
        public let totalCount: Int64

        /// 迁移任务详情
        public let migrationTasks: [MigrationTaskInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case migrationTasks = "MigrationTasks"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [MigrationTaskInfo] {
            self.migrationTasks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取迁移任务列表
    ///
    /// 用于获取迁移任务列表。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable
    public func describeMigrationTasks(_ input: DescribeMigrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrationTasksResponse> {
        self.client.execute(action: "DescribeMigrationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取迁移任务列表
    ///
    /// 用于获取迁移任务列表。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable
    public func describeMigrationTasks(_ input: DescribeMigrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrationTasksResponse {
        try await self.client.execute(action: "DescribeMigrationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取迁移任务列表
    ///
    /// 用于获取迁移任务列表。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable
    public func describeMigrationTasks(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrationTasksResponse> {
        self.describeMigrationTasks(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取迁移任务列表
    ///
    /// 用于获取迁移任务列表。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable
    public func describeMigrationTasks(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrationTasksResponse {
        try await self.describeMigrationTasks(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取迁移任务列表
    ///
    /// 用于获取迁移任务列表。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable
    public func describeMigrationTasksPaginated(_ input: DescribeMigrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MigrationTaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeMigrationTasks, logger: logger, on: eventLoop)
    }

    /// 获取迁移任务列表
    ///
    /// 用于获取迁移任务列表。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable @discardableResult
    public func describeMigrationTasksPaginated(_ input: DescribeMigrationTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMigrationTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMigrationTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取迁移任务列表
    ///
    /// 用于获取迁移任务列表。
    /// 此接口需提交工单，开启白名单之后才能使用。
    ///
    /// - Returns: `AsyncSequence`s of `MigrationTaskInfo` and `DescribeMigrationTasksResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMigrationTasksPaginator(_ input: DescribeMigrationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMigrationTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMigrationTasks, logger: logger, on: eventLoop)
    }
}