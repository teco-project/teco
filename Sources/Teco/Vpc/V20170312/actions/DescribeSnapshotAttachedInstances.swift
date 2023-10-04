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

extension Vpc {
    /// DescribeSnapshotAttachedInstances请求参数结构体
    public struct DescribeSnapshotAttachedInstancesRequest: TCPaginatedRequest {
        /// 快照策略Id。
        public let snapshotPolicyId: String

        /// 过滤条件。
        /// 支持的过滤条件如下：
        /// - instance-id：实例ID。
        /// - instance-region：实例所在地域。
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大为200。
        public let limit: UInt64?

        public init(snapshotPolicyId: String, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.snapshotPolicyId = snapshotPolicyId
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case snapshotPolicyId = "SnapshotPolicyId"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSnapshotAttachedInstancesResponse) -> DescribeSnapshotAttachedInstancesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(snapshotPolicyId: self.snapshotPolicyId, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeSnapshotAttachedInstances返回参数结构体
    public struct DescribeSnapshotAttachedInstancesResponse: TCPaginatedResponse {
        /// 实例列表
        public let instanceSet: [SnapshotInstance]

        /// 符合条件的对象数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceSet = "InstanceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SnapshotInstance`` list from the paginated response.
        public func getItems() -> [SnapshotInstance] {
            self.instanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询快照策略关联实例列表
    ///
    /// 本接口（DescribeSnapshotAttachedInstances）用于查询快照策略关联实例列表。
    @inlinable
    public func describeSnapshotAttachedInstances(_ input: DescribeSnapshotAttachedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotAttachedInstancesResponse> {
        self.client.execute(action: "DescribeSnapshotAttachedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询快照策略关联实例列表
    ///
    /// 本接口（DescribeSnapshotAttachedInstances）用于查询快照策略关联实例列表。
    @inlinable
    public func describeSnapshotAttachedInstances(_ input: DescribeSnapshotAttachedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotAttachedInstancesResponse {
        try await self.client.execute(action: "DescribeSnapshotAttachedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询快照策略关联实例列表
    ///
    /// 本接口（DescribeSnapshotAttachedInstances）用于查询快照策略关联实例列表。
    @inlinable
    public func describeSnapshotAttachedInstances(snapshotPolicyId: String, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotAttachedInstancesResponse> {
        self.describeSnapshotAttachedInstances(.init(snapshotPolicyId: snapshotPolicyId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询快照策略关联实例列表
    ///
    /// 本接口（DescribeSnapshotAttachedInstances）用于查询快照策略关联实例列表。
    @inlinable
    public func describeSnapshotAttachedInstances(snapshotPolicyId: String, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotAttachedInstancesResponse {
        try await self.describeSnapshotAttachedInstances(.init(snapshotPolicyId: snapshotPolicyId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询快照策略关联实例列表
    ///
    /// 本接口（DescribeSnapshotAttachedInstances）用于查询快照策略关联实例列表。
    @inlinable
    public func describeSnapshotAttachedInstancesPaginated(_ input: DescribeSnapshotAttachedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SnapshotInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeSnapshotAttachedInstances, logger: logger, on: eventLoop)
    }

    /// 查询快照策略关联实例列表
    ///
    /// 本接口（DescribeSnapshotAttachedInstances）用于查询快照策略关联实例列表。
    @inlinable @discardableResult
    public func describeSnapshotAttachedInstancesPaginated(_ input: DescribeSnapshotAttachedInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSnapshotAttachedInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSnapshotAttachedInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询快照策略关联实例列表
    ///
    /// 本接口（DescribeSnapshotAttachedInstances）用于查询快照策略关联实例列表。
    ///
    /// - Returns: `AsyncSequence`s of ``SnapshotInstance`` and ``DescribeSnapshotAttachedInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSnapshotAttachedInstancesPaginator(_ input: DescribeSnapshotAttachedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSnapshotAttachedInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSnapshotAttachedInstances, logger: logger, on: eventLoop)
    }
}
