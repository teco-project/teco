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

extension Cfs {
    /// DescribeAutoSnapshotPolicies请求参数结构体
    public struct DescribeAutoSnapshotPoliciesRequest: TCPaginatedRequest {
        /// 快照策略ID
        public let autoSnapshotPolicyId: String?

        /// 分页码
        public let offset: UInt64?

        /// 页面长
        public let limit: UInt64?

        /// 过滤条件
        public let filters: [Filter]?

        /// 升序，降序
        public let order: String?

        /// 排序字段
        public let orderField: String?

        public init(autoSnapshotPolicyId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, order: String? = nil, orderField: String? = nil) {
            self.autoSnapshotPolicyId = autoSnapshotPolicyId
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.order = order
            self.orderField = orderField
        }

        enum CodingKeys: String, CodingKey {
            case autoSnapshotPolicyId = "AutoSnapshotPolicyId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case order = "Order"
            case orderField = "OrderField"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAutoSnapshotPoliciesResponse) -> DescribeAutoSnapshotPoliciesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAutoSnapshotPoliciesRequest(autoSnapshotPolicyId: self.autoSnapshotPolicyId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, order: self.order, orderField: self.orderField)
        }
    }

    /// DescribeAutoSnapshotPolicies返回参数结构体
    public struct DescribeAutoSnapshotPoliciesResponse: TCPaginatedResponse {
        /// 快照策略总个数
        public let totalCount: UInt64

        /// 快照策略信息
        public let autoSnapshotPolicies: [AutoSnapshotPolicyInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case autoSnapshotPolicies = "AutoSnapshotPolicies"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AutoSnapshotPolicyInfo] {
            self.autoSnapshotPolicies
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询文件系统快照策略列表信息
    ///
    /// 查询文件系统快照定期策略列表信息
    @inlinable
    public func describeAutoSnapshotPolicies(_ input: DescribeAutoSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoSnapshotPoliciesResponse> {
        self.client.execute(action: "DescribeAutoSnapshotPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件系统快照策略列表信息
    ///
    /// 查询文件系统快照定期策略列表信息
    @inlinable
    public func describeAutoSnapshotPolicies(_ input: DescribeAutoSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoSnapshotPoliciesResponse {
        try await self.client.execute(action: "DescribeAutoSnapshotPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询文件系统快照策略列表信息
    ///
    /// 查询文件系统快照定期策略列表信息
    @inlinable
    public func describeAutoSnapshotPolicies(autoSnapshotPolicyId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoSnapshotPoliciesResponse> {
        let input = DescribeAutoSnapshotPoliciesRequest(autoSnapshotPolicyId: autoSnapshotPolicyId, offset: offset, limit: limit, filters: filters, order: order, orderField: orderField)
        return self.client.execute(action: "DescribeAutoSnapshotPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件系统快照策略列表信息
    ///
    /// 查询文件系统快照定期策略列表信息
    @inlinable
    public func describeAutoSnapshotPolicies(autoSnapshotPolicyId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoSnapshotPoliciesResponse {
        let input = DescribeAutoSnapshotPoliciesRequest(autoSnapshotPolicyId: autoSnapshotPolicyId, offset: offset, limit: limit, filters: filters, order: order, orderField: orderField)
        return try await self.client.execute(action: "DescribeAutoSnapshotPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询文件系统快照策略列表信息
    ///
    /// 查询文件系统快照定期策略列表信息
    @inlinable
    public func describeAutoSnapshotPoliciesPaginated(_ input: DescribeAutoSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AutoSnapshotPolicyInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAutoSnapshotPolicies, logger: logger, on: eventLoop)
    }

    /// 查询文件系统快照策略列表信息
    ///
    /// 查询文件系统快照定期策略列表信息
    @inlinable @discardableResult
    public func describeAutoSnapshotPoliciesPaginated(_ input: DescribeAutoSnapshotPoliciesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAutoSnapshotPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAutoSnapshotPolicies, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询文件系统快照策略列表信息
    ///
    /// 查询文件系统快照定期策略列表信息
    ///
    /// - Returns: `AsyncSequence`s of `AutoSnapshotPolicyInfo` and `DescribeAutoSnapshotPoliciesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAutoSnapshotPoliciesPaginator(_ input: DescribeAutoSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAutoSnapshotPoliciesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAutoSnapshotPolicies, logger: logger, on: eventLoop)
    }
}
