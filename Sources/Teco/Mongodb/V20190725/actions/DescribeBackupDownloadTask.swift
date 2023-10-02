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

extension Mongodb {
    /// DescribeBackupDownloadTask请求参数结构体
    public struct DescribeBackupDownloadTaskRequest: TCPaginatedRequest {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceId: String

        /// 备份文件名，用来过滤指定文件的下载任务
        public let backupName: String?

        /// 指定查询时间范围内的任务，StartTime指定开始时间，不填默认不限制开始时间
        public let startTime: String?

        /// 指定查询时间范围内的任务，EndTime指定截止时间，不填默认不限制截止时间
        public let endTime: String?

        /// 此次查询返回的条数，取值范围为1-100，默认为20
        public let limit: Int64?

        /// 指定此次查询返回的页数，默认为0
        public let offset: Int64?

        /// 排序字段，取值为createTime，finishTime两种，默认为createTime
        public let orderBy: String?

        /// 排序方式，取值为asc，desc两种，默认desc
        public let orderByType: String?

        /// 根据任务状态过滤。0-等待执行，1-正在下载，2-下载完成，3-下载失败，4-等待重试。不填默认返回所有类型
        public let status: [Int64]?

        public init(instanceId: String, backupName: String? = nil, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, status: [Int64]? = nil) {
            self.instanceId = instanceId
            self.backupName = backupName
            self.startTime = startTime
            self.endTime = endTime
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupName = "BackupName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case status = "Status"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBackupDownloadTaskResponse) -> DescribeBackupDownloadTaskRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(instanceId: self.instanceId, backupName: self.backupName, startTime: self.startTime, endTime: self.endTime, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderBy: self.orderBy, orderByType: self.orderByType, status: self.status)
        }
    }

    /// DescribeBackupDownloadTask返回参数结构体
    public struct DescribeBackupDownloadTaskResponse: TCPaginatedResponse {
        /// 满足查询条件的所有条数
        public let totalCount: Int64

        /// 下载任务列表
        public let tasks: [BackupDownloadTask]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tasks = "Tasks"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BackupDownloadTask`` list from the paginated response.
        public func getItems() -> [BackupDownloadTask] {
            self.tasks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询备份下载任务信息
    @inlinable
    public func describeBackupDownloadTask(_ input: DescribeBackupDownloadTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupDownloadTaskResponse> {
        self.client.execute(action: "DescribeBackupDownloadTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份下载任务信息
    @inlinable
    public func describeBackupDownloadTask(_ input: DescribeBackupDownloadTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupDownloadTaskResponse {
        try await self.client.execute(action: "DescribeBackupDownloadTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份下载任务信息
    @inlinable
    public func describeBackupDownloadTask(instanceId: String, backupName: String? = nil, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, status: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupDownloadTaskResponse> {
        self.describeBackupDownloadTask(.init(instanceId: instanceId, backupName: backupName, startTime: startTime, endTime: endTime, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份下载任务信息
    @inlinable
    public func describeBackupDownloadTask(instanceId: String, backupName: String? = nil, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, status: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupDownloadTaskResponse {
        try await self.describeBackupDownloadTask(.init(instanceId: instanceId, backupName: backupName, startTime: startTime, endTime: endTime, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份下载任务信息
    @inlinable
    public func describeBackupDownloadTaskPaginated(_ input: DescribeBackupDownloadTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BackupDownloadTask])> {
        self.client.paginate(input: input, region: region, command: self.describeBackupDownloadTask, logger: logger, on: eventLoop)
    }

    /// 查询备份下载任务信息
    @inlinable @discardableResult
    public func describeBackupDownloadTaskPaginated(_ input: DescribeBackupDownloadTaskRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBackupDownloadTaskResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBackupDownloadTask, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询备份下载任务信息
    ///
    /// - Returns: `AsyncSequence`s of ``BackupDownloadTask`` and ``DescribeBackupDownloadTaskResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBackupDownloadTaskPaginator(_ input: DescribeBackupDownloadTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBackupDownloadTaskRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBackupDownloadTask, logger: logger, on: eventLoop)
    }
}
