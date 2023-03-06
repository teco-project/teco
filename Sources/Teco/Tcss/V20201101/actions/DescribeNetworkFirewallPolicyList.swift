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

extension Tcss {
    /// DescribeNetworkFirewallPolicyList请求参数结构体
    public struct DescribeNetworkFirewallPolicyListRequest: TCPaginatedRequest {
        /// 集群id
        public let clusterId: String

        /// 偏移量
        public let offset: UInt64?

        /// 每次查询的最大记录数量
        public let limit: UInt64?

        /// Name - String
        /// Name 可取值：ClusterName,ClusterId,ClusterType,Region,ClusterCheckMode,ClusterAutoCheck
        public let filters: [ComplianceFilters]?

        /// 排序字段
        public let by: String?

        /// 排序方式 asc,desc
        public let order: String?

        public init(clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil) {
            self.clusterId = clusterId
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNetworkFirewallPolicyListResponse) -> DescribeNetworkFirewallPolicyListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNetworkFirewallPolicyListRequest(clusterId: self.clusterId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, by: self.by, order: self.order)
        }
    }

    /// DescribeNetworkFirewallPolicyList返回参数结构体
    public struct DescribeNetworkFirewallPolicyListResponse: TCPaginatedResponse {
        /// 集群总数
        public let totalCount: UInt64

        /// 集群的详细信息
        public let netPolicy: [NetworkPolicyInfoItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case netPolicy = "NetPolicy"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [NetworkPolicyInfoItem] {
            self.netPolicy
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询集群网络策略列表
    @inlinable
    public func describeNetworkFirewallPolicyList(_ input: DescribeNetworkFirewallPolicyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallPolicyListResponse> {
        self.client.execute(action: "DescribeNetworkFirewallPolicyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群网络策略列表
    @inlinable
    public func describeNetworkFirewallPolicyList(_ input: DescribeNetworkFirewallPolicyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallPolicyListResponse {
        try await self.client.execute(action: "DescribeNetworkFirewallPolicyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群网络策略列表
    @inlinable
    public func describeNetworkFirewallPolicyList(clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallPolicyListResponse> {
        let input = DescribeNetworkFirewallPolicyListRequest(clusterId: clusterId, offset: offset, limit: limit, filters: filters, by: by, order: order)
        return self.client.execute(action: "DescribeNetworkFirewallPolicyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群网络策略列表
    @inlinable
    public func describeNetworkFirewallPolicyList(clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallPolicyListResponse {
        let input = DescribeNetworkFirewallPolicyListRequest(clusterId: clusterId, offset: offset, limit: limit, filters: filters, by: by, order: order)
        return try await self.client.execute(action: "DescribeNetworkFirewallPolicyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群网络策略列表
    @inlinable
    public func describeNetworkFirewallPolicyListPaginated(_ input: DescribeNetworkFirewallPolicyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NetworkPolicyInfoItem])> {
        self.client.paginate(input: input, region: region, command: self.describeNetworkFirewallPolicyList, logger: logger, on: eventLoop)
    }

    /// 查询集群网络策略列表
    @inlinable @discardableResult
    public func describeNetworkFirewallPolicyListPaginated(_ input: DescribeNetworkFirewallPolicyListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNetworkFirewallPolicyListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNetworkFirewallPolicyList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群网络策略列表
    ///
    /// - Returns: `AsyncSequence`s of `NetworkPolicyInfoItem` and `DescribeNetworkFirewallPolicyListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNetworkFirewallPolicyListPaginator(_ input: DescribeNetworkFirewallPolicyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNetworkFirewallPolicyListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNetworkFirewallPolicyList, logger: logger, on: eventLoop)
    }
}
