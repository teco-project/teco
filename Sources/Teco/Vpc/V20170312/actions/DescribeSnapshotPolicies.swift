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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Vpc {
    /// DescribeSnapshotPolicies请求参数结构体
    public struct DescribeSnapshotPoliciesRequest: TCPaginatedRequest {
        /// 快照策略Id。
        public let snapshotPolicyIds: [String]?

        /// 过滤条件，参数不支持同时指定SnapshotPolicyIds和Filters。
        /// <li>snapshot-policy-id - String -（过滤条件）快照策略ID。</li>
        /// <li>snapshot-policy-name - String -（过滤条件）快照策略名称。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大为200。
        public let limit: UInt64?

        public init(snapshotPolicyIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.snapshotPolicyIds = snapshotPolicyIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case snapshotPolicyIds = "SnapshotPolicyIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSnapshotPoliciesResponse) -> DescribeSnapshotPoliciesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSnapshotPoliciesRequest(snapshotPolicyIds: self.snapshotPolicyIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeSnapshotPolicies返回参数结构体
    public struct DescribeSnapshotPoliciesResponse: TCPaginatedResponse {
        /// 快照策略。
        public let snapshotPolicySet: [SnapshotPolicy]

        /// 符合条件的对象数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case snapshotPolicySet = "SnapshotPolicySet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SnapshotPolicy] {
            self.snapshotPolicySet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询快照策略
    ///
    /// 本接口（DescribeSnapshotPolicies）用于查询快照策略。
    @inlinable
    public func describeSnapshotPolicies(_ input: DescribeSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotPoliciesResponse> {
        self.client.execute(action: "DescribeSnapshotPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询快照策略
    ///
    /// 本接口（DescribeSnapshotPolicies）用于查询快照策略。
    @inlinable
    public func describeSnapshotPolicies(_ input: DescribeSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotPoliciesResponse {
        try await self.client.execute(action: "DescribeSnapshotPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询快照策略
    ///
    /// 本接口（DescribeSnapshotPolicies）用于查询快照策略。
    @inlinable
    public func describeSnapshotPolicies(snapshotPolicyIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotPoliciesResponse> {
        self.describeSnapshotPolicies(.init(snapshotPolicyIds: snapshotPolicyIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询快照策略
    ///
    /// 本接口（DescribeSnapshotPolicies）用于查询快照策略。
    @inlinable
    public func describeSnapshotPolicies(snapshotPolicyIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotPoliciesResponse {
        try await self.describeSnapshotPolicies(.init(snapshotPolicyIds: snapshotPolicyIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询快照策略
    ///
    /// 本接口（DescribeSnapshotPolicies）用于查询快照策略。
    @inlinable
    public func describeSnapshotPoliciesPaginated(_ input: DescribeSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SnapshotPolicy])> {
        self.client.paginate(input: input, region: region, command: self.describeSnapshotPolicies, logger: logger, on: eventLoop)
    }

    /// 查询快照策略
    ///
    /// 本接口（DescribeSnapshotPolicies）用于查询快照策略。
    @inlinable @discardableResult
    public func describeSnapshotPoliciesPaginated(_ input: DescribeSnapshotPoliciesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSnapshotPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSnapshotPolicies, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询快照策略
    ///
    /// 本接口（DescribeSnapshotPolicies）用于查询快照策略。
    ///
    /// - Returns: `AsyncSequence`s of `SnapshotPolicy` and `DescribeSnapshotPoliciesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSnapshotPoliciesPaginator(_ input: DescribeSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSnapshotPoliciesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSnapshotPolicies, logger: logger, on: eventLoop)
    }
}
