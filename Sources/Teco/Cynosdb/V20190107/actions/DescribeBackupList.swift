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

extension Cynosdb {
    /// DescribeBackupList请求参数结构体
    public struct DescribeBackupListRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 备份文件列表大小，取值范围(0,100]
        public let limit: Int64?

        /// 备份文件列表偏移，取值范围[0,INF)
        public let offset: Int64?

        /// 数据库类型，取值范围:
        /// - MYSQL
        public let dbType: String?

        /// 备份ID
        public let backupIds: [Int64]?

        /// 备份类型，可选值：snapshot，快照备份； logic，逻辑备份
        public let backupType: String?

        /// 备份方式，可选值：auto，自动备份；manual，手动备
        public let backupMethod: String?

        /// 快照类型，可选值：full，全量；increment，增量
        public let snapShotType: String?

        /// 备份开始时间
        public let startTime: String?

        /// 备份结束时间
        public let endTime: String?

        /// 备份文件名，模糊查询
        public let fileNames: [String]?

        /// 备份备注名，模糊查询
        public let backupNames: [String]?

        /// 快照备份Id列表
        public let snapshotIdList: [Int64]?

        /// 备份地域
        public let backupRegion: String?

        /// 是否跨地域备份
        public let isCrossRegionsBackup: String?

        public init(clusterId: String, limit: Int64? = nil, offset: Int64? = nil, dbType: String? = nil, backupIds: [Int64]? = nil, backupType: String? = nil, backupMethod: String? = nil, snapShotType: String? = nil, startTime: String? = nil, endTime: String? = nil, fileNames: [String]? = nil, backupNames: [String]? = nil, snapshotIdList: [Int64]? = nil, backupRegion: String? = nil, isCrossRegionsBackup: String? = nil) {
            self.clusterId = clusterId
            self.limit = limit
            self.offset = offset
            self.dbType = dbType
            self.backupIds = backupIds
            self.backupType = backupType
            self.backupMethod = backupMethod
            self.snapShotType = snapShotType
            self.startTime = startTime
            self.endTime = endTime
            self.fileNames = fileNames
            self.backupNames = backupNames
            self.snapshotIdList = snapshotIdList
            self.backupRegion = backupRegion
            self.isCrossRegionsBackup = isCrossRegionsBackup
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case limit = "Limit"
            case offset = "Offset"
            case dbType = "DbType"
            case backupIds = "BackupIds"
            case backupType = "BackupType"
            case backupMethod = "BackupMethod"
            case snapShotType = "SnapShotType"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case fileNames = "FileNames"
            case backupNames = "BackupNames"
            case snapshotIdList = "SnapshotIdList"
            case backupRegion = "BackupRegion"
            case isCrossRegionsBackup = "IsCrossRegionsBackup"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBackupListResponse) -> DescribeBackupListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(clusterId: self.clusterId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), dbType: self.dbType, backupIds: self.backupIds, backupType: self.backupType, backupMethod: self.backupMethod, snapShotType: self.snapShotType, startTime: self.startTime, endTime: self.endTime, fileNames: self.fileNames, backupNames: self.backupNames, snapshotIdList: self.snapshotIdList, backupRegion: self.backupRegion, isCrossRegionsBackup: self.isCrossRegionsBackup)
        }
    }

    /// DescribeBackupList返回参数结构体
    public struct DescribeBackupListResponse: TCPaginatedResponse {
        /// 总共备份文件个数
        public let totalCount: Int64

        /// 备份文件列表
        public let backupList: [BackupFileInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case backupList = "BackupList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BackupFileInfo`` list from the paginated response.
        public func getItems() -> [BackupFileInfo] {
            self.backupList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询备份文件列表
    @inlinable
    public func describeBackupList(_ input: DescribeBackupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupListResponse> {
        self.client.execute(action: "DescribeBackupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份文件列表
    @inlinable
    public func describeBackupList(_ input: DescribeBackupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupListResponse {
        try await self.client.execute(action: "DescribeBackupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份文件列表
    @inlinable
    public func describeBackupList(clusterId: String, limit: Int64? = nil, offset: Int64? = nil, dbType: String? = nil, backupIds: [Int64]? = nil, backupType: String? = nil, backupMethod: String? = nil, snapShotType: String? = nil, startTime: String? = nil, endTime: String? = nil, fileNames: [String]? = nil, backupNames: [String]? = nil, snapshotIdList: [Int64]? = nil, backupRegion: String? = nil, isCrossRegionsBackup: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupListResponse> {
        self.describeBackupList(.init(clusterId: clusterId, limit: limit, offset: offset, dbType: dbType, backupIds: backupIds, backupType: backupType, backupMethod: backupMethod, snapShotType: snapShotType, startTime: startTime, endTime: endTime, fileNames: fileNames, backupNames: backupNames, snapshotIdList: snapshotIdList, backupRegion: backupRegion, isCrossRegionsBackup: isCrossRegionsBackup), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份文件列表
    @inlinable
    public func describeBackupList(clusterId: String, limit: Int64? = nil, offset: Int64? = nil, dbType: String? = nil, backupIds: [Int64]? = nil, backupType: String? = nil, backupMethod: String? = nil, snapShotType: String? = nil, startTime: String? = nil, endTime: String? = nil, fileNames: [String]? = nil, backupNames: [String]? = nil, snapshotIdList: [Int64]? = nil, backupRegion: String? = nil, isCrossRegionsBackup: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupListResponse {
        try await self.describeBackupList(.init(clusterId: clusterId, limit: limit, offset: offset, dbType: dbType, backupIds: backupIds, backupType: backupType, backupMethod: backupMethod, snapShotType: snapShotType, startTime: startTime, endTime: endTime, fileNames: fileNames, backupNames: backupNames, snapshotIdList: snapshotIdList, backupRegion: backupRegion, isCrossRegionsBackup: isCrossRegionsBackup), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份文件列表
    @inlinable
    public func describeBackupListPaginated(_ input: DescribeBackupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BackupFileInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeBackupList, logger: logger, on: eventLoop)
    }

    /// 查询备份文件列表
    @inlinable @discardableResult
    public func describeBackupListPaginated(_ input: DescribeBackupListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBackupListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBackupList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询备份文件列表
    ///
    /// - Returns: `AsyncSequence`s of ``BackupFileInfo`` and ``DescribeBackupListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBackupListPaginator(_ input: DescribeBackupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBackupListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBackupList, logger: logger, on: eventLoop)
    }
}
