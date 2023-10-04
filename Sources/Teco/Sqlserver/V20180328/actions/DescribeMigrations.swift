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

extension Sqlserver {
    /// DescribeMigrations请求参数结构体
    public struct DescribeMigrationsRequest: TCPaginatedRequest {
        /// 状态集合。只要符合集合中某一状态的迁移任务，就会查出来
        public let statusSet: [Int64]?

        /// 迁移任务的名称，模糊匹配
        public let migrateName: String?

        /// 分页返回，每页返回的数目，取值为1-100，默认值为100
        public let limit: Int64?

        /// 分页返回，页编号，默认值为第0页
        public let offset: Int64?

        /// 查询结果按照关键字排序，可选值为name、createTime、startTime，endTime，status
        public let orderBy: String?

        /// 排序方式，可选值为desc、asc
        public let orderByType: String?

        public init(statusSet: [Int64]? = nil, migrateName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.statusSet = statusSet
            self.migrateName = migrateName
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case statusSet = "StatusSet"
            case migrateName = "MigrateName"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMigrationsResponse) -> DescribeMigrationsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(statusSet: self.statusSet, migrateName: self.migrateName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderBy: self.orderBy, orderByType: self.orderByType)
        }
    }

    /// DescribeMigrations返回参数结构体
    public struct DescribeMigrationsResponse: TCPaginatedResponse {
        /// 查询结果的总数
        public let totalCount: Int64

        /// 查询结果的列表
        public let migrateTaskSet: [MigrateTask]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case migrateTaskSet = "MigrateTaskSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``MigrateTask`` list from the paginated response.
        public func getItems() -> [MigrateTask] {
            self.migrateTaskSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询迁移任务列表
    ///
    /// 本接口（DescribeMigrations）根据输入的限定条件，查询符合条件的迁移任务列表
    @inlinable
    public func describeMigrations(_ input: DescribeMigrationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrationsResponse> {
        self.client.execute(action: "DescribeMigrations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询迁移任务列表
    ///
    /// 本接口（DescribeMigrations）根据输入的限定条件，查询符合条件的迁移任务列表
    @inlinable
    public func describeMigrations(_ input: DescribeMigrationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrationsResponse {
        try await self.client.execute(action: "DescribeMigrations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询迁移任务列表
    ///
    /// 本接口（DescribeMigrations）根据输入的限定条件，查询符合条件的迁移任务列表
    @inlinable
    public func describeMigrations(statusSet: [Int64]? = nil, migrateName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrationsResponse> {
        self.describeMigrations(.init(statusSet: statusSet, migrateName: migrateName, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询迁移任务列表
    ///
    /// 本接口（DescribeMigrations）根据输入的限定条件，查询符合条件的迁移任务列表
    @inlinable
    public func describeMigrations(statusSet: [Int64]? = nil, migrateName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrationsResponse {
        try await self.describeMigrations(.init(statusSet: statusSet, migrateName: migrateName, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询迁移任务列表
    ///
    /// 本接口（DescribeMigrations）根据输入的限定条件，查询符合条件的迁移任务列表
    @inlinable
    public func describeMigrationsPaginated(_ input: DescribeMigrationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MigrateTask])> {
        self.client.paginate(input: input, region: region, command: self.describeMigrations, logger: logger, on: eventLoop)
    }

    /// 查询迁移任务列表
    ///
    /// 本接口（DescribeMigrations）根据输入的限定条件，查询符合条件的迁移任务列表
    @inlinable @discardableResult
    public func describeMigrationsPaginated(_ input: DescribeMigrationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMigrationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMigrations, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询迁移任务列表
    ///
    /// 本接口（DescribeMigrations）根据输入的限定条件，查询符合条件的迁移任务列表
    ///
    /// - Returns: `AsyncSequence`s of ``MigrateTask`` and ``DescribeMigrationsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMigrationsPaginator(_ input: DescribeMigrationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMigrationsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMigrations, logger: logger, on: eventLoop)
    }
}
