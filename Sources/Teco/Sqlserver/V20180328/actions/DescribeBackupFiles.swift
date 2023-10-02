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
    /// DescribeBackupFiles请求参数结构体
    public struct DescribeBackupFilesRequest: TCPaginatedRequest {
        /// 实例ID，形如mssql-njj2mtpl
        public let instanceId: String

        /// 单库备份的聚合ID, 可通过接口DescribeBackups获取（不支持查询打包备份记录）
        public let groupId: String

        /// 分页返回，每页返回的数目，取值为1-100，默认值为20
        public let limit: Int64?

        /// 分页返回，页编号，默认值为第0页
        public let offset: Int64?

        /// 按照备份的库名称筛选，不填则不筛选此项
        public let databaseName: String?

        /// 列表项排序，目前只按照备份大小排序（desc-降序，asc-升序），默认desc
        public let orderBy: String?

        public init(instanceId: String, groupId: String, limit: Int64? = nil, offset: Int64? = nil, databaseName: String? = nil, orderBy: String? = nil) {
            self.instanceId = instanceId
            self.groupId = groupId
            self.limit = limit
            self.offset = offset
            self.databaseName = databaseName
            self.orderBy = orderBy
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case groupId = "GroupId"
            case limit = "Limit"
            case offset = "Offset"
            case databaseName = "DatabaseName"
            case orderBy = "OrderBy"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBackupFilesResponse) -> DescribeBackupFilesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(instanceId: self.instanceId, groupId: self.groupId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), databaseName: self.databaseName, orderBy: self.orderBy)
        }
    }

    /// DescribeBackupFiles返回参数结构体
    public struct DescribeBackupFilesResponse: TCPaginatedResponse {
        /// 备份总数量
        public let totalCount: Int64

        /// 备份文件列表详情
        public let backupFiles: [BackupFile]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case backupFiles = "BackupFiles"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BackupFile`` list from the paginated response.
        public func getItems() -> [BackupFile] {
            self.backupFiles
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询单库备份文件明细
    ///
    /// 本接口(DescribeBackupFiles)用于查询单库备份明细
    @inlinable
    public func describeBackupFiles(_ input: DescribeBackupFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupFilesResponse> {
        self.client.execute(action: "DescribeBackupFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询单库备份文件明细
    ///
    /// 本接口(DescribeBackupFiles)用于查询单库备份明细
    @inlinable
    public func describeBackupFiles(_ input: DescribeBackupFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupFilesResponse {
        try await self.client.execute(action: "DescribeBackupFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询单库备份文件明细
    ///
    /// 本接口(DescribeBackupFiles)用于查询单库备份明细
    @inlinable
    public func describeBackupFiles(instanceId: String, groupId: String, limit: Int64? = nil, offset: Int64? = nil, databaseName: String? = nil, orderBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupFilesResponse> {
        self.describeBackupFiles(.init(instanceId: instanceId, groupId: groupId, limit: limit, offset: offset, databaseName: databaseName, orderBy: orderBy), region: region, logger: logger, on: eventLoop)
    }

    /// 查询单库备份文件明细
    ///
    /// 本接口(DescribeBackupFiles)用于查询单库备份明细
    @inlinable
    public func describeBackupFiles(instanceId: String, groupId: String, limit: Int64? = nil, offset: Int64? = nil, databaseName: String? = nil, orderBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupFilesResponse {
        try await self.describeBackupFiles(.init(instanceId: instanceId, groupId: groupId, limit: limit, offset: offset, databaseName: databaseName, orderBy: orderBy), region: region, logger: logger, on: eventLoop)
    }

    /// 查询单库备份文件明细
    ///
    /// 本接口(DescribeBackupFiles)用于查询单库备份明细
    @inlinable
    public func describeBackupFilesPaginated(_ input: DescribeBackupFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BackupFile])> {
        self.client.paginate(input: input, region: region, command: self.describeBackupFiles, logger: logger, on: eventLoop)
    }

    /// 查询单库备份文件明细
    ///
    /// 本接口(DescribeBackupFiles)用于查询单库备份明细
    @inlinable @discardableResult
    public func describeBackupFilesPaginated(_ input: DescribeBackupFilesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBackupFilesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBackupFiles, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询单库备份文件明细
    ///
    /// 本接口(DescribeBackupFiles)用于查询单库备份明细
    ///
    /// - Returns: `AsyncSequence`s of ``BackupFile`` and ``DescribeBackupFilesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBackupFilesPaginator(_ input: DescribeBackupFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBackupFilesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBackupFiles, logger: logger, on: eventLoop)
    }
}
