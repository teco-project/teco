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

import TecoCore
import TecoPaginationHelpers

extension Redis {
    /// DescribeInstanceBackups请求参数结构体
    public struct DescribeInstanceBackupsRequest: TCPaginatedRequest {
        /// 每页输出的备份列表大小。默认大小为20，最大值为 100。
        public let limit: Int64?

        /// 分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
        public let offset: Int64?

        /// 待操作的实例ID，可通过 DescribeInstance 接口返回值中的 InstanceId 获取。
        public let instanceId: String?

        /// 开始时间，格式如：2017-02-08 16:46:34。查询实例在 [beginTime, endTime] 时间段内开始备份的备份列表。
        public let beginTime: String?

        /// 结束时间，格式如：2017-02-08 19:09:26。查询实例在 [beginTime, endTime] 时间段内开始备份的备份列表。
        public let endTime: String?

        /// 备份任务的状态：
        /// 1：备份在流程中。
        /// 2：备份正常。
        /// 3：备份转RDB文件处理中。
        /// 4：已完成RDB转换。
        /// -1：备份已过期。
        /// -2：备份已删除。
        public let status: [Int64]?

        /// 实例名称，支持根据实例名称模糊搜索。
        public let instanceName: String?

        public init(limit: Int64? = nil, offset: Int64? = nil, instanceId: String? = nil, beginTime: String? = nil, endTime: String? = nil, status: [Int64]? = nil, instanceName: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.instanceId = instanceId
            self.beginTime = beginTime
            self.endTime = endTime
            self.status = status
            self.instanceName = instanceName
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case instanceId = "InstanceId"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case status = "Status"
            case instanceName = "InstanceName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstanceBackupsResponse) -> DescribeInstanceBackupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstanceBackupsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), instanceId: self.instanceId, beginTime: self.beginTime, endTime: self.endTime, status: self.status, instanceName: self.instanceName)
        }
    }

    /// DescribeInstanceBackups返回参数结构体
    public struct DescribeInstanceBackupsResponse: TCPaginatedResponse {
        /// 备份总数。
        public let totalCount: Int64

        /// 实例的备份数组。
        public let backupSet: [RedisBackupSet]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case backupSet = "BackupSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RedisBackupSet] {
            self.backupSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询Redis实例备份列表
    ///
    /// 本接口（DescribeInstanceBackups）用于查询实例备份列表。
    @inlinable
    public func describeInstanceBackups(_ input: DescribeInstanceBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceBackupsResponse> {
        self.client.execute(action: "DescribeInstanceBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Redis实例备份列表
    ///
    /// 本接口（DescribeInstanceBackups）用于查询实例备份列表。
    @inlinable
    public func describeInstanceBackups(_ input: DescribeInstanceBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceBackupsResponse {
        try await self.client.execute(action: "DescribeInstanceBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Redis实例备份列表
    ///
    /// 本接口（DescribeInstanceBackups）用于查询实例备份列表。
    @inlinable
    public func describeInstanceBackups(limit: Int64? = nil, offset: Int64? = nil, instanceId: String? = nil, beginTime: String? = nil, endTime: String? = nil, status: [Int64]? = nil, instanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceBackupsResponse> {
        self.describeInstanceBackups(.init(limit: limit, offset: offset, instanceId: instanceId, beginTime: beginTime, endTime: endTime, status: status, instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Redis实例备份列表
    ///
    /// 本接口（DescribeInstanceBackups）用于查询实例备份列表。
    @inlinable
    public func describeInstanceBackups(limit: Int64? = nil, offset: Int64? = nil, instanceId: String? = nil, beginTime: String? = nil, endTime: String? = nil, status: [Int64]? = nil, instanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceBackupsResponse {
        try await self.describeInstanceBackups(.init(limit: limit, offset: offset, instanceId: instanceId, beginTime: beginTime, endTime: endTime, status: status, instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Redis实例备份列表
    ///
    /// 本接口（DescribeInstanceBackups）用于查询实例备份列表。
    @inlinable
    public func describeInstanceBackupsPaginated(_ input: DescribeInstanceBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RedisBackupSet])> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceBackups, logger: logger, on: eventLoop)
    }

    /// 查询Redis实例备份列表
    ///
    /// 本接口（DescribeInstanceBackups）用于查询实例备份列表。
    @inlinable @discardableResult
    public func describeInstanceBackupsPaginated(_ input: DescribeInstanceBackupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstanceBackupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceBackups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询Redis实例备份列表
    ///
    /// 本接口（DescribeInstanceBackups）用于查询实例备份列表。
    ///
    /// - Returns: `AsyncSequence`s of `RedisBackupSet` and `DescribeInstanceBackupsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstanceBackupsPaginator(_ input: DescribeInstanceBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstanceBackupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstanceBackups, logger: logger, on: eventLoop)
    }
}
