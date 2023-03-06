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

extension Cdb {
    /// DescribeBackupDatabases请求参数结构体
    public struct DescribeBackupDatabasesRequest: TCPaginatedRequest {
        /// 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 开始时间，格式为：2017-07-12 10:29:20。
        public let startTime: String

        /// 要查询的数据库名前缀。
        public let searchDatabase: String?

        /// 分页偏移量。
        public let offset: Int64?

        /// 分页大小，最小值为1，最大值为2000。
        public let limit: Int64?

        public init(instanceId: String, startTime: String, searchDatabase: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.searchDatabase = searchDatabase
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case searchDatabase = "SearchDatabase"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeBackupDatabasesResponse) -> DescribeBackupDatabasesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBackupDatabasesRequest(instanceId: self.instanceId, startTime: self.startTime, searchDatabase: self.searchDatabase, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeBackupDatabases返回参数结构体
    public struct DescribeBackupDatabasesResponse: TCPaginatedResponse {
        /// 返回的数据个数。
        public let totalCount: Int64

        /// 符合查询条件的数据库数组。
        public let items: [DatabaseName]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DatabaseName] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询备份数据库列表
    ///
    /// 本接口(DescribeBackupDatabases)用于查询备份文件包含的库 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    @inlinable
    public func describeBackupDatabases(_ input: DescribeBackupDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupDatabasesResponse> {
        self.client.execute(action: "DescribeBackupDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份数据库列表
    ///
    /// 本接口(DescribeBackupDatabases)用于查询备份文件包含的库 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    @inlinable
    public func describeBackupDatabases(_ input: DescribeBackupDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupDatabasesResponse {
        try await self.client.execute(action: "DescribeBackupDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份数据库列表
    ///
    /// 本接口(DescribeBackupDatabases)用于查询备份文件包含的库 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    @inlinable
    public func describeBackupDatabases(instanceId: String, startTime: String, searchDatabase: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupDatabasesResponse> {
        let input = DescribeBackupDatabasesRequest(instanceId: instanceId, startTime: startTime, searchDatabase: searchDatabase, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeBackupDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份数据库列表
    ///
    /// 本接口(DescribeBackupDatabases)用于查询备份文件包含的库 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    @inlinable
    public func describeBackupDatabases(instanceId: String, startTime: String, searchDatabase: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupDatabasesResponse {
        let input = DescribeBackupDatabasesRequest(instanceId: instanceId, startTime: startTime, searchDatabase: searchDatabase, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeBackupDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份数据库列表
    ///
    /// 本接口(DescribeBackupDatabases)用于查询备份文件包含的库 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    @inlinable
    public func describeBackupDatabasesPaginated(_ input: DescribeBackupDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DatabaseName])> {
        self.client.paginate(input: input, region: region, command: self.describeBackupDatabases, logger: logger, on: eventLoop)
    }

    /// 查询备份数据库列表
    ///
    /// 本接口(DescribeBackupDatabases)用于查询备份文件包含的库 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    @inlinable @discardableResult
    public func describeBackupDatabasesPaginated(_ input: DescribeBackupDatabasesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBackupDatabasesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBackupDatabases, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询备份数据库列表
    ///
    /// 本接口(DescribeBackupDatabases)用于查询备份文件包含的库 (已废弃)。
    /// 旧版本支持全量备份后，用户如果分库表下载逻辑备份文件，需要用到此接口。
    /// 新版本支持(CreateBackup)创建逻辑备份的时候，直接发起指定库表备份，用户直接下载该备份文件即可。
    @inlinable
    public func describeBackupDatabasesPaginator(_ input: DescribeBackupDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBackupDatabasesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBackupDatabases, logger: logger, on: eventLoop)
    }
}
