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

extension Tcss {
    /// DescribeRiskList请求参数结构体
    public struct DescribeRiskListRequest: TCPaginatedRequest {
        /// 要查询的集群ID，如果不指定，则查询用户所有的风险项
        public let clusterId: String?

        /// 偏移量
        public let offset: UInt64?

        /// 每次查询的最大记录数量
        public let limit: UInt64?

        /// Name - String
        /// Name 可取值：RiskLevel风险等级, RiskTarget检查对象，风险对象,RiskType风险类别,RiskAttribute检测项所属的风险类型,Name
        public let filters: [ComplianceFilters]?

        /// 排序字段
        public let by: String?

        /// 排序方式 asc,desc
        public let order: String?

        public init(clusterId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil) {
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
        public func makeNextRequest(with response: DescribeRiskListResponse) -> DescribeRiskListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(clusterId: self.clusterId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, by: self.by, order: self.order)
        }
    }

    /// DescribeRiskList返回参数结构体
    public struct DescribeRiskListResponse: TCPaginatedResponse {
        /// 风险详情数组
        public let clusterRiskItems: [ClusterRiskItem]

        /// 风险项的总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterRiskItems = "ClusterRiskItems"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ClusterRiskItem`` list from the paginated response.
        public func getItems() -> [ClusterRiskItem] {
            self.clusterRiskItems
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询集群风险项列表
    ///
    /// 查询最近一次任务发现的风险项的信息列表，支持根据特殊字段进行过滤
    @inlinable
    public func describeRiskList(_ input: DescribeRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskListResponse> {
        self.client.execute(action: "DescribeRiskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群风险项列表
    ///
    /// 查询最近一次任务发现的风险项的信息列表，支持根据特殊字段进行过滤
    @inlinable
    public func describeRiskList(_ input: DescribeRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskListResponse {
        try await self.client.execute(action: "DescribeRiskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群风险项列表
    ///
    /// 查询最近一次任务发现的风险项的信息列表，支持根据特殊字段进行过滤
    @inlinable
    public func describeRiskList(clusterId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskListResponse> {
        self.describeRiskList(.init(clusterId: clusterId, offset: offset, limit: limit, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群风险项列表
    ///
    /// 查询最近一次任务发现的风险项的信息列表，支持根据特殊字段进行过滤
    @inlinable
    public func describeRiskList(clusterId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskListResponse {
        try await self.describeRiskList(.init(clusterId: clusterId, offset: offset, limit: limit, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群风险项列表
    ///
    /// 查询最近一次任务发现的风险项的信息列表，支持根据特殊字段进行过滤
    @inlinable
    public func describeRiskListPaginated(_ input: DescribeRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ClusterRiskItem])> {
        self.client.paginate(input: input, region: region, command: self.describeRiskList, logger: logger, on: eventLoop)
    }

    /// 查询集群风险项列表
    ///
    /// 查询最近一次任务发现的风险项的信息列表，支持根据特殊字段进行过滤
    @inlinable @discardableResult
    public func describeRiskListPaginated(_ input: DescribeRiskListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRiskListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRiskList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群风险项列表
    ///
    /// 查询最近一次任务发现的风险项的信息列表，支持根据特殊字段进行过滤
    ///
    /// - Returns: `AsyncSequence`s of ``ClusterRiskItem`` and ``DescribeRiskListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRiskListPaginator(_ input: DescribeRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRiskListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRiskList, logger: logger, on: eventLoop)
    }
}
