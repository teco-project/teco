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
    /// DescribeNetworkFirewallPodLabelsList请求参数结构体
    public struct DescribeNetworkFirewallPodLabelsListRequest: TCPaginatedRequest {
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
        public func getNextPaginatedRequest(with response: DescribeNetworkFirewallPodLabelsListResponse) -> DescribeNetworkFirewallPodLabelsListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNetworkFirewallPodLabelsListRequest(clusterId: self.clusterId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, by: self.by, order: self.order)
        }
    }

    /// DescribeNetworkFirewallPodLabelsList返回参数结构体
    public struct DescribeNetworkFirewallPodLabelsListResponse: TCPaginatedResponse {
        /// 集群pod总数
        public let totalCount: UInt64

        /// 集群pod详细信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let podList: [NetworkClusterPodInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case podList = "PodList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [NetworkClusterPodInfo] {
            self.podList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询集群网络pod标签
    @inlinable
    public func describeNetworkFirewallPodLabelsList(_ input: DescribeNetworkFirewallPodLabelsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallPodLabelsListResponse> {
        self.client.execute(action: "DescribeNetworkFirewallPodLabelsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群网络pod标签
    @inlinable
    public func describeNetworkFirewallPodLabelsList(_ input: DescribeNetworkFirewallPodLabelsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallPodLabelsListResponse {
        try await self.client.execute(action: "DescribeNetworkFirewallPodLabelsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群网络pod标签
    @inlinable
    public func describeNetworkFirewallPodLabelsList(clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallPodLabelsListResponse> {
        let input = DescribeNetworkFirewallPodLabelsListRequest(clusterId: clusterId, offset: offset, limit: limit, filters: filters, by: by, order: order)
        return self.client.execute(action: "DescribeNetworkFirewallPodLabelsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群网络pod标签
    @inlinable
    public func describeNetworkFirewallPodLabelsList(clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallPodLabelsListResponse {
        let input = DescribeNetworkFirewallPodLabelsListRequest(clusterId: clusterId, offset: offset, limit: limit, filters: filters, by: by, order: order)
        return try await self.client.execute(action: "DescribeNetworkFirewallPodLabelsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群网络pod标签
    @inlinable
    public func describeNetworkFirewallPodLabelsListPaginated(_ input: DescribeNetworkFirewallPodLabelsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NetworkClusterPodInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeNetworkFirewallPodLabelsList, logger: logger, on: eventLoop)
    }

    /// 查询集群网络pod标签
    @inlinable
    public func describeNetworkFirewallPodLabelsListPaginated(_ input: DescribeNetworkFirewallPodLabelsListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNetworkFirewallPodLabelsListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNetworkFirewallPodLabelsList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群网络pod标签
    @inlinable
    public func describeNetworkFirewallPodLabelsListPaginator(_ input: DescribeNetworkFirewallPodLabelsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeNetworkFirewallPodLabelsListRequest, DescribeNetworkFirewallPodLabelsListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeNetworkFirewallPodLabelsListRequest, DescribeNetworkFirewallPodLabelsListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeNetworkFirewallPodLabelsListRequest, DescribeNetworkFirewallPodLabelsListResponse>.ResultSequence(input: input, region: region, command: self.describeNetworkFirewallPodLabelsList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeNetworkFirewallPodLabelsListRequest, DescribeNetworkFirewallPodLabelsListResponse>.ResponseSequence(input: input, region: region, command: self.describeNetworkFirewallPodLabelsList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
