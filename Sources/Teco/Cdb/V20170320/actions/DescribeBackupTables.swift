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

extension Cdb {
    /// DescribeBackupTables请求参数结构体
    public struct DescribeBackupTablesRequest: TCPaginatedRequest {
        /// 实例ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例ID相同。
        public let instanceId: String

        /// 开始时间，格式为：2017-07-12 10:29:20。
        public let startTime: String

        /// 指定的数据库名。
        public let databaseName: String

        /// 要查询的数据表名前缀。
        public let searchTable: String?

        /// 分页偏移。
        public let offset: Int64?

        /// 分页大小，最小值为1，最大值为2000。
        public let limit: Int64?

        public init(instanceId: String, startTime: String, databaseName: String, searchTable: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.databaseName = databaseName
            self.searchTable = searchTable
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case databaseName = "DatabaseName"
            case searchTable = "SearchTable"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBackupTablesResponse) -> DescribeBackupTablesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBackupTablesRequest(instanceId: self.instanceId, startTime: self.startTime, databaseName: self.databaseName, searchTable: self.searchTable, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeBackupTables返回参数结构体
    public struct DescribeBackupTablesResponse: TCPaginatedResponse {
        /// 返回的数据个数。
        public let totalCount: Int64

        /// 符合条件的数据表数组。
        public let items: [TableName]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TableName] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询指定数据库的备份数据表
    ///
    /// 本接口(DescribeBackupTables)用于查询指定的数据库的备份数据表名 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    @inlinable
    public func describeBackupTables(_ input: DescribeBackupTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupTablesResponse> {
        self.client.execute(action: "DescribeBackupTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指定数据库的备份数据表
    ///
    /// 本接口(DescribeBackupTables)用于查询指定的数据库的备份数据表名 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    @inlinable
    public func describeBackupTables(_ input: DescribeBackupTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupTablesResponse {
        try await self.client.execute(action: "DescribeBackupTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询指定数据库的备份数据表
    ///
    /// 本接口(DescribeBackupTables)用于查询指定的数据库的备份数据表名 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    @inlinable
    public func describeBackupTables(instanceId: String, startTime: String, databaseName: String, searchTable: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupTablesResponse> {
        self.describeBackupTables(.init(instanceId: instanceId, startTime: startTime, databaseName: databaseName, searchTable: searchTable, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询指定数据库的备份数据表
    ///
    /// 本接口(DescribeBackupTables)用于查询指定的数据库的备份数据表名 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    @inlinable
    public func describeBackupTables(instanceId: String, startTime: String, databaseName: String, searchTable: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupTablesResponse {
        try await self.describeBackupTables(.init(instanceId: instanceId, startTime: startTime, databaseName: databaseName, searchTable: searchTable, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询指定数据库的备份数据表
    ///
    /// 本接口(DescribeBackupTables)用于查询指定的数据库的备份数据表名 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    @inlinable
    public func describeBackupTablesPaginated(_ input: DescribeBackupTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TableName])> {
        self.client.paginate(input: input, region: region, command: self.describeBackupTables, logger: logger, on: eventLoop)
    }

    /// 查询指定数据库的备份数据表
    ///
    /// 本接口(DescribeBackupTables)用于查询指定的数据库的备份数据表名 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    @inlinable @discardableResult
    public func describeBackupTablesPaginated(_ input: DescribeBackupTablesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBackupTablesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBackupTables, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询指定数据库的备份数据表
    ///
    /// 本接口(DescribeBackupTables)用于查询指定的数据库的备份数据表名 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    ///
    /// - Returns: `AsyncSequence`s of `TableName` and `DescribeBackupTablesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBackupTablesPaginator(_ input: DescribeBackupTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBackupTablesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBackupTables, logger: logger, on: eventLoop)
    }
}
