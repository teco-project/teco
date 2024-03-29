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

extension Lighthouse {
    /// DescribeSnapshots请求参数结构体
    public struct DescribeSnapshotsRequest: TCPaginatedRequest {
        /// 要查询快照的 ID 列表。
        /// 参数不支持同时指定 SnapshotIds 和 Filters。
        public let snapshotIds: [String]?

        /// 过滤器列表。
        /// - snapshot-id
        /// 按照【快照 ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - disk-id
        /// 按照【磁盘 ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - snapshot-name
        /// 按照【快照名称】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - instance-id
        /// 按照【实例 ID 】进行过滤。
        /// 类型：String
        /// 必选：否
        /// 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。参数不支持同时指定 SnapshotIds 和 Filters。
        public let filters: [Filter]?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        public init(snapshotIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.snapshotIds = snapshotIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case snapshotIds = "SnapshotIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSnapshotsResponse) -> DescribeSnapshotsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(snapshotIds: self.snapshotIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeSnapshots返回参数结构体
    public struct DescribeSnapshotsResponse: TCPaginatedResponse {
        /// 快照的数量。
        public let totalCount: Int64

        /// 快照的详情列表。
        public let snapshotSet: [Snapshot]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case snapshotSet = "SnapshotSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Snapshot`` list from the paginated response.
        public func getItems() -> [Snapshot] {
            self.snapshotSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查看快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    @inlinable
    public func describeSnapshots(_ input: DescribeSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotsResponse> {
        self.client.execute(action: "DescribeSnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    @inlinable
    public func describeSnapshots(_ input: DescribeSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotsResponse {
        try await self.client.execute(action: "DescribeSnapshots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    @inlinable
    public func describeSnapshots(snapshotIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotsResponse> {
        self.describeSnapshots(.init(snapshotIds: snapshotIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    @inlinable
    public func describeSnapshots(snapshotIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotsResponse {
        try await self.describeSnapshots(.init(snapshotIds: snapshotIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    @inlinable
    public func describeSnapshotsPaginated(_ input: DescribeSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Snapshot])> {
        self.client.paginate(input: input, region: region, command: self.describeSnapshots, logger: logger, on: eventLoop)
    }

    /// 查看快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    @inlinable @discardableResult
    public func describeSnapshotsPaginated(_ input: DescribeSnapshotsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSnapshotsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSnapshots, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看快照列表
    ///
    /// 本接口（DescribeSnapshots）用于查询快照的详细信息。
    ///
    /// - Returns: `AsyncSequence`s of ``Snapshot`` and ``DescribeSnapshotsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSnapshotsPaginator(_ input: DescribeSnapshotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSnapshotsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSnapshots, logger: logger, on: eventLoop)
    }
}
