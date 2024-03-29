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

extension Tdcpg {
    /// DescribeClusters请求参数结构体
    public struct DescribeClustersRequest: TCPaginatedRequest {
        /// 页码，取值范围为[1,INF)，默认值为1
        public let pageNumber: UInt64?

        /// 每页条数，取值范围为默认为[1,100]，默认值为20
        public let pageSize: UInt64?

        /// 目前支持查询条件包括：
        ///  - ClusterId : 集群ID
        ///  - ClusterName : 集群名
        ///  - ProjectId : 项目ID
        ///  - Status : 集群状态
        ///  - PayMode : 付费模式
        public let filters: [Filter]?

        /// 排序字段，可选字段：
        ///  - CreateTime : 集群创建时间(默认值)
        ///  - PayPeriodEndTime : 集群过期时间
        public let orderBy: String?

        /// 排序方式，可选字段：
        ///  - DESC : 降序(默认值)
        ///  - ASC : 升序
        public let orderByType: String?

        public init(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
            self.orderBy = orderBy
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeClustersResponse) -> DescribeClustersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, filters: self.filters, orderBy: self.orderBy, orderByType: self.orderByType)
        }
    }

    /// DescribeClusters返回参数结构体
    public struct DescribeClustersResponse: TCPaginatedResponse {
        /// 总条数
        public let totalCount: Int64

        /// 集群列表信息
        public let clusterSet: [Cluster]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusterSet = "ClusterSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Cluster`` list from the paginated response.
        public func getItems() -> [Cluster] {
            self.clusterSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询集群
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClustersResponse> {
        self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        try await self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群
    @inlinable
    public func describeClusters(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClustersResponse> {
        self.describeClusters(.init(pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群
    @inlinable
    public func describeClusters(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        try await self.describeClusters(.init(pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群
    @inlinable
    public func describeClustersPaginated(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Cluster])> {
        self.client.paginate(input: input, region: region, command: self.describeClusters, logger: logger, on: eventLoop)
    }

    /// 查询集群
    @inlinable @discardableResult
    public func describeClustersPaginated(_ input: DescribeClustersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClustersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClusters, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群
    ///
    /// - Returns: `AsyncSequence`s of ``Cluster`` and ``DescribeClustersResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeClustersPaginator(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeClustersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClusters, logger: logger, on: eventLoop)
    }
}
