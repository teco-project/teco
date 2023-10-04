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
    /// DescribeBackupMigration请求参数结构体
    public struct DescribeBackupMigrationRequest: TCPaginatedRequest {
        /// 导入目标实例ID
        public let instanceId: String

        /// 备份导入任务ID，由CreateBackupMigration接口返回
        public let backupMigrationId: String?

        /// 导入任务名称
        public let migrationName: String?

        /// 备份文件名称
        public let backupFileName: String?

        /// 导入任务状态集合
        public let statusSet: [Int64]?

        /// 导入任务恢复类型，FULL,FULL_LOG,FULL_DIFF
        public let recoveryType: String?

        /// COS_URL-备份放在用户的对象存储上，提供URL。COS_UPLOAD-备份放在业务的对象存储上，用户上传
        public let uploadType: String?

        /// 分页，页大小，默认值：100
        public let limit: Int64?

        /// 分页，页数，默认值：0
        public let offset: Int64?

        /// 排序字段，name；createTime；startTime；endTime，默认按照createTime递增排序。
        public let orderBy: String?

        /// 排序方式，desc-递减排序，asc-递增排序。默认按照asc排序，且在OrderBy为有效值时，本参数有效
        public let orderByType: String?

        public init(instanceId: String, backupMigrationId: String? = nil, migrationName: String? = nil, backupFileName: String? = nil, statusSet: [Int64]? = nil, recoveryType: String? = nil, uploadType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.instanceId = instanceId
            self.backupMigrationId = backupMigrationId
            self.migrationName = migrationName
            self.backupFileName = backupFileName
            self.statusSet = statusSet
            self.recoveryType = recoveryType
            self.uploadType = uploadType
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupMigrationId = "BackupMigrationId"
            case migrationName = "MigrationName"
            case backupFileName = "BackupFileName"
            case statusSet = "StatusSet"
            case recoveryType = "RecoveryType"
            case uploadType = "UploadType"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBackupMigrationResponse) -> DescribeBackupMigrationRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, backupMigrationId: self.backupMigrationId, migrationName: self.migrationName, backupFileName: self.backupFileName, statusSet: self.statusSet, recoveryType: self.recoveryType, uploadType: self.uploadType, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderBy: self.orderBy, orderByType: self.orderByType)
        }
    }

    /// DescribeBackupMigration返回参数结构体
    public struct DescribeBackupMigrationResponse: TCPaginatedResponse {
        /// 迁移任务总数
        public let totalCount: Int64

        /// 迁移任务集合
        public let backupMigrationSet: [Migration]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case backupMigrationSet = "BackupMigrationSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Migration`` list from the paginated response.
        public func getItems() -> [Migration] {
            self.backupMigrationSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询备份导入任务
    ///
    /// 本接口（DescribeBackupMigration）用于创建增量备份导入任务。
    @inlinable
    public func describeBackupMigration(_ input: DescribeBackupMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupMigrationResponse> {
        self.client.execute(action: "DescribeBackupMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份导入任务
    ///
    /// 本接口（DescribeBackupMigration）用于创建增量备份导入任务。
    @inlinable
    public func describeBackupMigration(_ input: DescribeBackupMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupMigrationResponse {
        try await self.client.execute(action: "DescribeBackupMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份导入任务
    ///
    /// 本接口（DescribeBackupMigration）用于创建增量备份导入任务。
    @inlinable
    public func describeBackupMigration(instanceId: String, backupMigrationId: String? = nil, migrationName: String? = nil, backupFileName: String? = nil, statusSet: [Int64]? = nil, recoveryType: String? = nil, uploadType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupMigrationResponse> {
        self.describeBackupMigration(.init(instanceId: instanceId, backupMigrationId: backupMigrationId, migrationName: migrationName, backupFileName: backupFileName, statusSet: statusSet, recoveryType: recoveryType, uploadType: uploadType, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份导入任务
    ///
    /// 本接口（DescribeBackupMigration）用于创建增量备份导入任务。
    @inlinable
    public func describeBackupMigration(instanceId: String, backupMigrationId: String? = nil, migrationName: String? = nil, backupFileName: String? = nil, statusSet: [Int64]? = nil, recoveryType: String? = nil, uploadType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupMigrationResponse {
        try await self.describeBackupMigration(.init(instanceId: instanceId, backupMigrationId: backupMigrationId, migrationName: migrationName, backupFileName: backupFileName, statusSet: statusSet, recoveryType: recoveryType, uploadType: uploadType, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份导入任务
    ///
    /// 本接口（DescribeBackupMigration）用于创建增量备份导入任务。
    @inlinable
    public func describeBackupMigrationPaginated(_ input: DescribeBackupMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Migration])> {
        self.client.paginate(input: input, region: region, command: self.describeBackupMigration, logger: logger, on: eventLoop)
    }

    /// 查询备份导入任务
    ///
    /// 本接口（DescribeBackupMigration）用于创建增量备份导入任务。
    @inlinable @discardableResult
    public func describeBackupMigrationPaginated(_ input: DescribeBackupMigrationRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBackupMigrationResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBackupMigration, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询备份导入任务
    ///
    /// 本接口（DescribeBackupMigration）用于创建增量备份导入任务。
    ///
    /// - Returns: `AsyncSequence`s of ``Migration`` and ``DescribeBackupMigrationResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBackupMigrationPaginator(_ input: DescribeBackupMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBackupMigrationRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBackupMigration, logger: logger, on: eventLoop)
    }
}
