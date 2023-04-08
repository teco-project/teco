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

extension Postgres {
    /// DescribeBaseBackups请求参数结构体
    public struct DescribeBaseBackupsRequest: TCPaginatedRequest {
        /// 备份的最小结束时间，形如2018-01-01 00:00:00。默认为7天前。
        public let minFinishTime: String?

        /// 备份的最大结束时间，形如2018-01-01 00:00:00。默认为当前时间。
        public let maxFinishTime: String?

        /// 按照一个或者多个过滤条件进行查询，目前支持的过滤条件有：
        /// db-instance-id：按照实例ID过滤，类型为string。
        /// db-instance-name：按照实例名过滤，类型为string。
        /// db-instance-ip：按照实例私有网络IP地址过滤，类型为string。
        public let filters: [Filter]?

        /// 每页显示数量，取值范围为1-100，默认为返回10条。
        public let limit: UInt64?

        /// 数据偏移量，从0开始。
        public let offset: UInt64?

        /// 排序字段，支持StartTime,FinishTime,Size。
        public let orderBy: String?

        /// 排序方式，包括升序：asc，降序：desc。
        public let orderByType: String?

        public init(minFinishTime: String? = nil, maxFinishTime: String? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.minFinishTime = minFinishTime
            self.maxFinishTime = maxFinishTime
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case minFinishTime = "MinFinishTime"
            case maxFinishTime = "MaxFinishTime"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBaseBackupsResponse) -> DescribeBaseBackupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBaseBackupsRequest(minFinishTime: self.minFinishTime, maxFinishTime: self.maxFinishTime, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderBy: self.orderBy, orderByType: self.orderByType)
        }
    }

    /// DescribeBaseBackups返回参数结构体
    public struct DescribeBaseBackupsResponse: TCPaginatedResponse {
        /// 查询到的基础备份数量。
        public let totalCount: UInt64

        /// 基础备份详细信息列表。
        public let baseBackupSet: [BaseBackup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case baseBackupSet = "BaseBackupSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BaseBackup] {
            self.baseBackupSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询基础备份列表
    ///
    /// 本接口 (DescribeBaseBackups) 用于查询基础备份列表。
    @inlinable
    public func describeBaseBackups(_ input: DescribeBaseBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaseBackupsResponse> {
        self.client.execute(action: "DescribeBaseBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询基础备份列表
    ///
    /// 本接口 (DescribeBaseBackups) 用于查询基础备份列表。
    @inlinable
    public func describeBaseBackups(_ input: DescribeBaseBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaseBackupsResponse {
        try await self.client.execute(action: "DescribeBaseBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询基础备份列表
    ///
    /// 本接口 (DescribeBaseBackups) 用于查询基础备份列表。
    @inlinable
    public func describeBaseBackups(minFinishTime: String? = nil, maxFinishTime: String? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaseBackupsResponse> {
        self.describeBaseBackups(.init(minFinishTime: minFinishTime, maxFinishTime: maxFinishTime, filters: filters, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询基础备份列表
    ///
    /// 本接口 (DescribeBaseBackups) 用于查询基础备份列表。
    @inlinable
    public func describeBaseBackups(minFinishTime: String? = nil, maxFinishTime: String? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaseBackupsResponse {
        try await self.describeBaseBackups(.init(minFinishTime: minFinishTime, maxFinishTime: maxFinishTime, filters: filters, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询基础备份列表
    ///
    /// 本接口 (DescribeBaseBackups) 用于查询基础备份列表。
    @inlinable
    public func describeBaseBackupsPaginated(_ input: DescribeBaseBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BaseBackup])> {
        self.client.paginate(input: input, region: region, command: self.describeBaseBackups, logger: logger, on: eventLoop)
    }

    /// 查询基础备份列表
    ///
    /// 本接口 (DescribeBaseBackups) 用于查询基础备份列表。
    @inlinable @discardableResult
    public func describeBaseBackupsPaginated(_ input: DescribeBaseBackupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBaseBackupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBaseBackups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询基础备份列表
    ///
    /// 本接口 (DescribeBaseBackups) 用于查询基础备份列表。
    ///
    /// - Returns: `AsyncSequence`s of `BaseBackup` and `DescribeBaseBackupsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBaseBackupsPaginator(_ input: DescribeBaseBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBaseBackupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBaseBackups, logger: logger, on: eventLoop)
    }
}
