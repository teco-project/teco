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

extension Tcss {
    /// DescribeUserCluster请求参数结构体
    public struct DescribeUserClusterRequest: TCPaginatedRequest {
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

        public init(offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUserClusterResponse) -> DescribeUserClusterRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUserClusterRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, by: self.by, order: self.order)
        }
    }

    /// DescribeUserCluster返回参数结构体
    public struct DescribeUserClusterResponse: TCPaginatedResponse {
        /// 集群总数
        public let totalCount: UInt64

        /// 集群的详细信息
        public let clusterInfoList: [ClusterInfoItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusterInfoList = "ClusterInfoList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ClusterInfoItem] {
            self.clusterInfoList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 用户集群资产查询
    ///
    /// 安全概览和集群安全页进入调用该接口，查询用户集群相关信息。
    @inlinable
    public func describeUserCluster(_ input: DescribeUserClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserClusterResponse> {
        self.client.execute(action: "DescribeUserCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用户集群资产查询
    ///
    /// 安全概览和集群安全页进入调用该接口，查询用户集群相关信息。
    @inlinable
    public func describeUserCluster(_ input: DescribeUserClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserClusterResponse {
        try await self.client.execute(action: "DescribeUserCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 用户集群资产查询
    ///
    /// 安全概览和集群安全页进入调用该接口，查询用户集群相关信息。
    @inlinable
    public func describeUserCluster(offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserClusterResponse> {
        self.describeUserCluster(.init(offset: offset, limit: limit, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 用户集群资产查询
    ///
    /// 安全概览和集群安全页进入调用该接口，查询用户集群相关信息。
    @inlinable
    public func describeUserCluster(offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserClusterResponse {
        try await self.describeUserCluster(.init(offset: offset, limit: limit, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 用户集群资产查询
    ///
    /// 安全概览和集群安全页进入调用该接口，查询用户集群相关信息。
    @inlinable
    public func describeUserClusterPaginated(_ input: DescribeUserClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ClusterInfoItem])> {
        self.client.paginate(input: input, region: region, command: self.describeUserCluster, logger: logger, on: eventLoop)
    }

    /// 用户集群资产查询
    ///
    /// 安全概览和集群安全页进入调用该接口，查询用户集群相关信息。
    @inlinable @discardableResult
    public func describeUserClusterPaginated(_ input: DescribeUserClusterRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUserClusterResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUserCluster, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 用户集群资产查询
    ///
    /// 安全概览和集群安全页进入调用该接口，查询用户集群相关信息。
    ///
    /// - Returns: `AsyncSequence`s of `ClusterInfoItem` and `DescribeUserClusterResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUserClusterPaginator(_ input: DescribeUserClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUserClusterRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUserCluster, logger: logger, on: eventLoop)
    }
}
