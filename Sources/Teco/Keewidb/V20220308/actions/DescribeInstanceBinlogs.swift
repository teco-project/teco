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

extension Keewidb {
    /// DescribeInstanceBinlogs请求参数结构体
    public struct DescribeInstanceBinlogsRequest: TCPaginatedRequest {
        /// 实例 ID。
        public let instanceId: String

        /// 每页输出备份列表大小，默认大小20。
        public let limit: Int64?

        /// 分页偏移量，取Limit整数倍。
        public let offset: Int64?

        /// 开始时间，格式如：2017-02-08 16:46:34。查询实例在 [beginTime, endTime] 时间段内开始备份的备份列表。
        public let beginTime: String?

        /// 结束时间，格式如：2017-02-08 19:09:26。查询实例在 [beginTime, endTime] 时间段内开始备份的备份列表。
        public let endTime: String?

        public init(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, beginTime: String? = nil, endTime: String? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
            self.beginTime = beginTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstanceBinlogsResponse) -> DescribeInstanceBinlogsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), beginTime: self.beginTime, endTime: self.endTime)
        }
    }

    /// DescribeInstanceBinlogs返回参数结构体
    public struct DescribeInstanceBinlogsResponse: TCPaginatedResponse {
        /// 备份总数
        public let totalCount: Int64

        /// 实例的备份信息数组
        public let backupSet: [BinlogInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case backupSet = "BackupSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BinlogInfo`` list from the paginated response.
        public func getItems() -> [BinlogInfo] {
            self.backupSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询增量备份列表
    ///
    /// 本接口（DescribeInstanceBinlogs）用于查询增量备份列表。
    @inlinable
    public func describeInstanceBinlogs(_ input: DescribeInstanceBinlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceBinlogsResponse> {
        self.client.execute(action: "DescribeInstanceBinlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询增量备份列表
    ///
    /// 本接口（DescribeInstanceBinlogs）用于查询增量备份列表。
    @inlinable
    public func describeInstanceBinlogs(_ input: DescribeInstanceBinlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceBinlogsResponse {
        try await self.client.execute(action: "DescribeInstanceBinlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询增量备份列表
    ///
    /// 本接口（DescribeInstanceBinlogs）用于查询增量备份列表。
    @inlinable
    public func describeInstanceBinlogs(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, beginTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceBinlogsResponse> {
        self.describeInstanceBinlogs(.init(instanceId: instanceId, limit: limit, offset: offset, beginTime: beginTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询增量备份列表
    ///
    /// 本接口（DescribeInstanceBinlogs）用于查询增量备份列表。
    @inlinable
    public func describeInstanceBinlogs(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, beginTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceBinlogsResponse {
        try await self.describeInstanceBinlogs(.init(instanceId: instanceId, limit: limit, offset: offset, beginTime: beginTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询增量备份列表
    ///
    /// 本接口（DescribeInstanceBinlogs）用于查询增量备份列表。
    @inlinable
    public func describeInstanceBinlogsPaginated(_ input: DescribeInstanceBinlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BinlogInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceBinlogs, logger: logger, on: eventLoop)
    }

    /// 查询增量备份列表
    ///
    /// 本接口（DescribeInstanceBinlogs）用于查询增量备份列表。
    @inlinable @discardableResult
    public func describeInstanceBinlogsPaginated(_ input: DescribeInstanceBinlogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstanceBinlogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceBinlogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询增量备份列表
    ///
    /// 本接口（DescribeInstanceBinlogs）用于查询增量备份列表。
    ///
    /// - Returns: `AsyncSequence`s of ``BinlogInfo`` and ``DescribeInstanceBinlogsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstanceBinlogsPaginator(_ input: DescribeInstanceBinlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstanceBinlogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstanceBinlogs, logger: logger, on: eventLoop)
    }
}
