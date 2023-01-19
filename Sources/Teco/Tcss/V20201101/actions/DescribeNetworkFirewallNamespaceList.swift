//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tcss {
    /// DescribeNetworkFirewallNamespaceList请求参数结构体
    public struct DescribeNetworkFirewallNamespaceListRequest: TCRequestModel {
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
    }

    /// DescribeNetworkFirewallNamespaceList返回参数结构体
    public struct DescribeNetworkFirewallNamespaceListResponse: TCResponseModel {
        /// 集群总数
        public let totalCount: UInt64

        /// 集群的详细信息
        public let clusterNamespaceList: [NetworkClusterNamespaceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusterNamespaceList = "ClusterNamespaceList"
            case requestId = "RequestId"
        }
    }

    /// 查询集群网络空间列表
    @inlinable
    public func describeNetworkFirewallNamespaceList(_ input: DescribeNetworkFirewallNamespaceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallNamespaceListResponse> {
        self.client.execute(action: "DescribeNetworkFirewallNamespaceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群网络空间列表
    @inlinable
    public func describeNetworkFirewallNamespaceList(_ input: DescribeNetworkFirewallNamespaceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallNamespaceListResponse {
        try await self.client.execute(action: "DescribeNetworkFirewallNamespaceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群网络空间列表
    @inlinable
    public func describeNetworkFirewallNamespaceList(clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallNamespaceListResponse> {
        self.describeNetworkFirewallNamespaceList(DescribeNetworkFirewallNamespaceListRequest(clusterId: clusterId, offset: offset, limit: limit, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群网络空间列表
    @inlinable
    public func describeNetworkFirewallNamespaceList(clusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallNamespaceListResponse {
        try await self.describeNetworkFirewallNamespaceList(DescribeNetworkFirewallNamespaceListRequest(clusterId: clusterId, offset: offset, limit: limit, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }
}
