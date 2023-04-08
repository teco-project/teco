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

extension Dcdb {
    /// DescribeBackupFiles请求参数结构体
    public struct DescribeBackupFilesRequest: TCPaginatedRequest {
        /// 按实例ID查询
        public let instanceId: String?

        /// 按分片ID查询
        public let shardId: String?

        /// 备份类型，Data:数据备份，Binlog:Binlog备份，Errlog:错误日志，Slowlog:慢日志
        public let backupType: String?

        /// 按开始时间查询
        public let startTime: String?

        /// 按结束时间查询
        public let endTime: String?

        /// 分页参数
        public let limit: Int64?

        /// 分页参数
        public let offset: Int64?

        /// 排序参数，可选值：Time,Size
        public let orderBy: String?

        /// 排序参数，可选值：DESC,ASC
        public let orderType: String?

        public init(instanceId: String? = nil, shardId: String? = nil, backupType: String? = nil, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderType: String? = nil) {
            self.instanceId = instanceId
            self.shardId = shardId
            self.backupType = backupType
            self.startTime = startTime
            self.endTime = endTime
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderType = orderType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case shardId = "ShardId"
            case backupType = "BackupType"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBackupFilesResponse) -> DescribeBackupFilesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBackupFilesRequest(instanceId: self.instanceId, shardId: self.shardId, backupType: self.backupType, startTime: self.startTime, endTime: self.endTime, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderBy: self.orderBy, orderType: self.orderType)
        }
    }

    /// DescribeBackupFiles返回参数结构体
    public struct DescribeBackupFilesResponse: TCPaginatedResponse {
        /// 备份文件列表
        public let files: [InstanceBackupFileItem]

        /// 总条目数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case files = "Files"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InstanceBackupFileItem] {
            self.files
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查看备份文件列表
    ///
    /// 本接口(DescribeBackupFiles)用于查看备份文件列表。
    @inlinable
    public func describeBackupFiles(_ input: DescribeBackupFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupFilesResponse> {
        self.client.execute(action: "DescribeBackupFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看备份文件列表
    ///
    /// 本接口(DescribeBackupFiles)用于查看备份文件列表。
    @inlinable
    public func describeBackupFiles(_ input: DescribeBackupFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupFilesResponse {
        try await self.client.execute(action: "DescribeBackupFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看备份文件列表
    ///
    /// 本接口(DescribeBackupFiles)用于查看备份文件列表。
    @inlinable
    public func describeBackupFiles(instanceId: String? = nil, shardId: String? = nil, backupType: String? = nil, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupFilesResponse> {
        self.describeBackupFiles(.init(instanceId: instanceId, shardId: shardId, backupType: backupType, startTime: startTime, endTime: endTime, limit: limit, offset: offset, orderBy: orderBy, orderType: orderType), region: region, logger: logger, on: eventLoop)
    }

    /// 查看备份文件列表
    ///
    /// 本接口(DescribeBackupFiles)用于查看备份文件列表。
    @inlinable
    public func describeBackupFiles(instanceId: String? = nil, shardId: String? = nil, backupType: String? = nil, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupFilesResponse {
        try await self.describeBackupFiles(.init(instanceId: instanceId, shardId: shardId, backupType: backupType, startTime: startTime, endTime: endTime, limit: limit, offset: offset, orderBy: orderBy, orderType: orderType), region: region, logger: logger, on: eventLoop)
    }

    /// 查看备份文件列表
    ///
    /// 本接口(DescribeBackupFiles)用于查看备份文件列表。
    @inlinable
    public func describeBackupFilesPaginated(_ input: DescribeBackupFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceBackupFileItem])> {
        self.client.paginate(input: input, region: region, command: self.describeBackupFiles, logger: logger, on: eventLoop)
    }

    /// 查看备份文件列表
    ///
    /// 本接口(DescribeBackupFiles)用于查看备份文件列表。
    @inlinable @discardableResult
    public func describeBackupFilesPaginated(_ input: DescribeBackupFilesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBackupFilesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBackupFiles, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看备份文件列表
    ///
    /// 本接口(DescribeBackupFiles)用于查看备份文件列表。
    ///
    /// - Returns: `AsyncSequence`s of `InstanceBackupFileItem` and `DescribeBackupFilesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBackupFilesPaginator(_ input: DescribeBackupFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBackupFilesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBackupFiles, logger: logger, on: eventLoop)
    }
}
