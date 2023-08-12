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
import TecoPaginationHelpers

extension Cynosdb {
    /// DescribeBinlogs请求参数结构体
    public struct DescribeBinlogsRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 开始时间
        public let startTime: String?

        /// 结束时间
        public let endTime: String?

        /// 偏移量
        public let offset: Int64?

        /// 限制条数
        public let limit: Int64?

        public init(clusterId: String, startTime: String? = nil, endTime: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.clusterId = clusterId
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBinlogsResponse) -> DescribeBinlogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBinlogsRequest(clusterId: self.clusterId, startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeBinlogs返回参数结构体
    public struct DescribeBinlogsResponse: TCPaginatedResponse {
        /// 记录总条数
        public let totalCount: Int64

        /// Binlog列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let binlogs: [BinlogItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case binlogs = "Binlogs"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BinlogItem`` list from the paginated response.
        public func getItems() -> [BinlogItem] {
            self.binlogs ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询Binlog列表
    ///
    /// 此接口（DescribeBinlogs）用来查询集群Binlog日志列表。
    @inlinable
    public func describeBinlogs(_ input: DescribeBinlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBinlogsResponse> {
        self.client.execute(action: "DescribeBinlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Binlog列表
    ///
    /// 此接口（DescribeBinlogs）用来查询集群Binlog日志列表。
    @inlinable
    public func describeBinlogs(_ input: DescribeBinlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBinlogsResponse {
        try await self.client.execute(action: "DescribeBinlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Binlog列表
    ///
    /// 此接口（DescribeBinlogs）用来查询集群Binlog日志列表。
    @inlinable
    public func describeBinlogs(clusterId: String, startTime: String? = nil, endTime: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBinlogsResponse> {
        self.describeBinlogs(.init(clusterId: clusterId, startTime: startTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Binlog列表
    ///
    /// 此接口（DescribeBinlogs）用来查询集群Binlog日志列表。
    @inlinable
    public func describeBinlogs(clusterId: String, startTime: String? = nil, endTime: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBinlogsResponse {
        try await self.describeBinlogs(.init(clusterId: clusterId, startTime: startTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Binlog列表
    ///
    /// 此接口（DescribeBinlogs）用来查询集群Binlog日志列表。
    @inlinable
    public func describeBinlogsPaginated(_ input: DescribeBinlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BinlogItem])> {
        self.client.paginate(input: input, region: region, command: self.describeBinlogs, logger: logger, on: eventLoop)
    }

    /// 查询Binlog列表
    ///
    /// 此接口（DescribeBinlogs）用来查询集群Binlog日志列表。
    @inlinable @discardableResult
    public func describeBinlogsPaginated(_ input: DescribeBinlogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBinlogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBinlogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询Binlog列表
    ///
    /// 此接口（DescribeBinlogs）用来查询集群Binlog日志列表。
    ///
    /// - Returns: `AsyncSequence`s of ``BinlogItem`` and ``DescribeBinlogsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBinlogsPaginator(_ input: DescribeBinlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBinlogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBinlogs, logger: logger, on: eventLoop)
    }
}
