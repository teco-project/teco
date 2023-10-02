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

extension Cdb {
    /// DescribeBinlogs请求参数结构体
    public struct DescribeBinlogsRequest: TCPaginatedRequest {
        /// 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 偏移量，最小值为0。
        public let offset: Int64?

        /// 分页大小，默认值为20，最小值为1，最大值为100。
        public let limit: Int64?

        /// binlog最早开始时间，时间格式：2016-03-17 02:10:37
        public let minStartTime: String?

        /// binlog最晚开始时间，时间格式：2016-03-17 02:10:37
        public let maxStartTime: String?

        public init(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, minStartTime: String? = nil, maxStartTime: String? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self.minStartTime = minStartTime
            self.maxStartTime = maxStartTime
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case minStartTime = "MinStartTime"
            case maxStartTime = "MaxStartTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBinlogsResponse) -> DescribeBinlogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(instanceId: self.instanceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, minStartTime: self.minStartTime, maxStartTime: self.maxStartTime)
        }
    }

    /// DescribeBinlogs返回参数结构体
    public struct DescribeBinlogsResponse: TCPaginatedResponse {
        /// 符合查询条件的日志文件总数。
        public let totalCount: Int64

        /// 符合查询条件的二进制日志文件详情。
        public let items: [BinlogInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BinlogInfo`` list from the paginated response.
        public func getItems() -> [BinlogInfo] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询二进制日志备份文件列表
    ///
    /// 本接口(DescribeBinlogs)用于查询云数据库实例的 binlog 文件列表。
    @inlinable
    public func describeBinlogs(_ input: DescribeBinlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBinlogsResponse> {
        self.client.execute(action: "DescribeBinlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询二进制日志备份文件列表
    ///
    /// 本接口(DescribeBinlogs)用于查询云数据库实例的 binlog 文件列表。
    @inlinable
    public func describeBinlogs(_ input: DescribeBinlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBinlogsResponse {
        try await self.client.execute(action: "DescribeBinlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询二进制日志备份文件列表
    ///
    /// 本接口(DescribeBinlogs)用于查询云数据库实例的 binlog 文件列表。
    @inlinable
    public func describeBinlogs(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, minStartTime: String? = nil, maxStartTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBinlogsResponse> {
        self.describeBinlogs(.init(instanceId: instanceId, offset: offset, limit: limit, minStartTime: minStartTime, maxStartTime: maxStartTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询二进制日志备份文件列表
    ///
    /// 本接口(DescribeBinlogs)用于查询云数据库实例的 binlog 文件列表。
    @inlinable
    public func describeBinlogs(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, minStartTime: String? = nil, maxStartTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBinlogsResponse {
        try await self.describeBinlogs(.init(instanceId: instanceId, offset: offset, limit: limit, minStartTime: minStartTime, maxStartTime: maxStartTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询二进制日志备份文件列表
    ///
    /// 本接口(DescribeBinlogs)用于查询云数据库实例的 binlog 文件列表。
    @inlinable
    public func describeBinlogsPaginated(_ input: DescribeBinlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BinlogInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeBinlogs, logger: logger, on: eventLoop)
    }

    /// 查询二进制日志备份文件列表
    ///
    /// 本接口(DescribeBinlogs)用于查询云数据库实例的 binlog 文件列表。
    @inlinable @discardableResult
    public func describeBinlogsPaginated(_ input: DescribeBinlogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBinlogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBinlogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询二进制日志备份文件列表
    ///
    /// 本接口(DescribeBinlogs)用于查询云数据库实例的 binlog 文件列表。
    ///
    /// - Returns: `AsyncSequence`s of ``BinlogInfo`` and ``DescribeBinlogsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBinlogsPaginator(_ input: DescribeBinlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBinlogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBinlogs, logger: logger, on: eventLoop)
    }
}
