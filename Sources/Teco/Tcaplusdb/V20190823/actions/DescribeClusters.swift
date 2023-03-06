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

extension Tcaplusdb {
    /// DescribeClusters请求参数结构体
    public struct DescribeClustersRequest: TCPaginatedRequest {
        /// 指定查询的集群ID列表
        public let clusterIds: [String]?

        /// 查询过滤条件
        public let filters: [Filter]?

        /// 查询列表偏移量
        public let offset: Int64?

        /// 查询列表返回记录数，默认值20
        public let limit: Int64?

        /// 是否启用Ipv6
        public let ipv6Enable: Int64?

        public init(clusterIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, ipv6Enable: Int64? = nil) {
            self.clusterIds = clusterIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.ipv6Enable = ipv6Enable
        }

        enum CodingKeys: String, CodingKey {
            case clusterIds = "ClusterIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case ipv6Enable = "Ipv6Enable"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeClustersResponse) -> DescribeClustersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClustersRequest(clusterIds: self.clusterIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, ipv6Enable: self.ipv6Enable)
        }
    }

    /// DescribeClusters返回参数结构体
    public struct DescribeClustersResponse: TCPaginatedResponse {
        /// 集群实例数
        public let totalCount: Int64

        /// 集群实例列表
        public let clusters: [ClusterInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusters = "Clusters"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ClusterInfo] {
            self.clusters
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询集群信息列表
    ///
    /// 查询TcaplusDB集群列表，包含集群详细信息。
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClustersResponse> {
        self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群信息列表
    ///
    /// 查询TcaplusDB集群列表，包含集群详细信息。
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        try await self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群信息列表
    ///
    /// 查询TcaplusDB集群列表，包含集群详细信息。
    @inlinable
    public func describeClusters(clusterIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, ipv6Enable: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClustersResponse> {
        let input = DescribeClustersRequest(clusterIds: clusterIds, filters: filters, offset: offset, limit: limit, ipv6Enable: ipv6Enable)
        return self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群信息列表
    ///
    /// 查询TcaplusDB集群列表，包含集群详细信息。
    @inlinable
    public func describeClusters(clusterIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, ipv6Enable: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        let input = DescribeClustersRequest(clusterIds: clusterIds, filters: filters, offset: offset, limit: limit, ipv6Enable: ipv6Enable)
        return try await self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群信息列表
    ///
    /// 查询TcaplusDB集群列表，包含集群详细信息。
    @inlinable
    public func describeClustersPaginated(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ClusterInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeClusters, logger: logger, on: eventLoop)
    }

    /// 查询集群信息列表
    ///
    /// 查询TcaplusDB集群列表，包含集群详细信息。
    @inlinable @discardableResult
    public func describeClustersPaginated(_ input: DescribeClustersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClustersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClusters, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群信息列表
    ///
    /// 查询TcaplusDB集群列表，包含集群详细信息。
    @inlinable
    public func describeClustersPaginator(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeClustersRequest, DescribeClustersResponse>.ResultSequence, responses: TCClient.Paginator<DescribeClustersRequest, DescribeClustersResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClusters, logger: logger, on: eventLoop)
    }
}
