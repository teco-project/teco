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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Sqlserver {
    /// DescribeIncrementalMigration请求参数结构体
    public struct DescribeIncrementalMigrationRequest: TCPaginatedRequest {
        /// 备份导入任务ID，由CreateBackupMigration接口返回
        public let backupMigrationId: String

        /// 导入目标实例ID
        public let instanceId: String

        /// 备份文件名称
        public let backupFileName: String?

        /// 导入任务状态集合
        public let statusSet: [Int64]?

        /// 分页，页大小，默认值：100
        public let limit: Int64?

        /// 分页，页数，默认值：0
        public let offset: Int64?

        /// 排序字段，name；createTime；startTime；endTime，默认按照createTime递增排序。
        public let orderBy: String?

        /// 排序方式，desc-递减排序，asc-递增排序。默认按照asc排序，且在OrderBy为有效值时，本参数有效
        public let orderByType: String?

        /// 增量备份导入任务ID，由CreateIncrementalMigration接口返回
        public let incrementalMigrationId: String?

        public init(backupMigrationId: String, instanceId: String, backupFileName: String? = nil, statusSet: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, incrementalMigrationId: String? = nil) {
            self.backupMigrationId = backupMigrationId
            self.instanceId = instanceId
            self.backupFileName = backupFileName
            self.statusSet = statusSet
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.incrementalMigrationId = incrementalMigrationId
        }

        enum CodingKeys: String, CodingKey {
            case backupMigrationId = "BackupMigrationId"
            case instanceId = "InstanceId"
            case backupFileName = "BackupFileName"
            case statusSet = "StatusSet"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case incrementalMigrationId = "IncrementalMigrationId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeIncrementalMigrationResponse) -> DescribeIncrementalMigrationRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeIncrementalMigrationRequest(backupMigrationId: self.backupMigrationId, instanceId: self.instanceId, backupFileName: self.backupFileName, statusSet: self.statusSet, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderBy: self.orderBy, orderByType: self.orderByType, incrementalMigrationId: self.incrementalMigrationId)
        }
    }

    /// DescribeIncrementalMigration返回参数结构体
    public struct DescribeIncrementalMigrationResponse: TCPaginatedResponse {
        /// 增量导入任务总数
        public let totalCount: Int64

        /// 增量导入任务集合
        public let incrementalMigrationSet: [Migration]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case incrementalMigrationSet = "IncrementalMigrationSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Migration] {
            self.incrementalMigrationSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询增量备份导入任务
    ///
    /// 本接口（DescribeIncrementalMigration）用于查询增量备份导入任务。
    @inlinable
    public func describeIncrementalMigration(_ input: DescribeIncrementalMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIncrementalMigrationResponse> {
        self.client.execute(action: "DescribeIncrementalMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询增量备份导入任务
    ///
    /// 本接口（DescribeIncrementalMigration）用于查询增量备份导入任务。
    @inlinable
    public func describeIncrementalMigration(_ input: DescribeIncrementalMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIncrementalMigrationResponse {
        try await self.client.execute(action: "DescribeIncrementalMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询增量备份导入任务
    ///
    /// 本接口（DescribeIncrementalMigration）用于查询增量备份导入任务。
    @inlinable
    public func describeIncrementalMigration(backupMigrationId: String, instanceId: String, backupFileName: String? = nil, statusSet: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, incrementalMigrationId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIncrementalMigrationResponse> {
        self.describeIncrementalMigration(.init(backupMigrationId: backupMigrationId, instanceId: instanceId, backupFileName: backupFileName, statusSet: statusSet, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType, incrementalMigrationId: incrementalMigrationId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询增量备份导入任务
    ///
    /// 本接口（DescribeIncrementalMigration）用于查询增量备份导入任务。
    @inlinable
    public func describeIncrementalMigration(backupMigrationId: String, instanceId: String, backupFileName: String? = nil, statusSet: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, incrementalMigrationId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIncrementalMigrationResponse {
        try await self.describeIncrementalMigration(.init(backupMigrationId: backupMigrationId, instanceId: instanceId, backupFileName: backupFileName, statusSet: statusSet, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType, incrementalMigrationId: incrementalMigrationId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询增量备份导入任务
    ///
    /// 本接口（DescribeIncrementalMigration）用于查询增量备份导入任务。
    @inlinable
    public func describeIncrementalMigrationPaginated(_ input: DescribeIncrementalMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Migration])> {
        self.client.paginate(input: input, region: region, command: self.describeIncrementalMigration, logger: logger, on: eventLoop)
    }

    /// 查询增量备份导入任务
    ///
    /// 本接口（DescribeIncrementalMigration）用于查询增量备份导入任务。
    @inlinable @discardableResult
    public func describeIncrementalMigrationPaginated(_ input: DescribeIncrementalMigrationRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeIncrementalMigrationResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeIncrementalMigration, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询增量备份导入任务
    ///
    /// 本接口（DescribeIncrementalMigration）用于查询增量备份导入任务。
    ///
    /// - Returns: `AsyncSequence`s of `Migration` and `DescribeIncrementalMigrationResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeIncrementalMigrationPaginator(_ input: DescribeIncrementalMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeIncrementalMigrationRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeIncrementalMigration, logger: logger, on: eventLoop)
    }
}
