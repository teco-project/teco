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

extension Clb {
    /// DescribeClusterResources请求参数结构体
    public struct DescribeClusterResourcesRequest: TCPaginatedRequest {
        /// 返回集群中资源列表数目，默认为20，最大值为100。
        public let limit: UInt64?

        /// 返回集群中资源列表起始偏移量，默认为0。
        public let offset: UInt64?

        /// 查询集群中资源列表条件，详细的过滤条件如下：
        /// <li> cluster-id - String - 是否必填：否 - （过滤条件）按照 集群 的唯一ID过滤，如 ："tgw-12345678","stgw-12345678","vpcgw-12345678"。</li>
        /// <li> vip - String - 是否必填：否 - （过滤条件）按照vip过滤。</li>
        /// <li> loadblancer-id - String - 是否必填：否 - （过滤条件）按照负载均衡唯一ID过滤。</li>
        /// <li> idle - String 是否必填：否 - （过滤条件）按照是否闲置过滤，如"True","False"。</li>
        public let filters: [Filter]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeClusterResourcesResponse) -> DescribeClusterResourcesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClusterResourcesRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeClusterResources返回参数结构体
    public struct DescribeClusterResourcesResponse: TCPaginatedResponse {
        /// 集群中资源列表。
        public let clusterResourceSet: [ClusterResource]

        /// 集群中资源总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterResourceSet = "ClusterResourceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ClusterResource] {
            self.clusterResourceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询集群中资源列表
    ///
    /// 查询独占集群中的资源列表，支持按集群ID、VIP、负载均衡ID、是否闲置为过滤条件检索。
    @inlinable
    public func describeClusterResources(_ input: DescribeClusterResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterResourcesResponse> {
        self.client.execute(action: "DescribeClusterResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群中资源列表
    ///
    /// 查询独占集群中的资源列表，支持按集群ID、VIP、负载均衡ID、是否闲置为过滤条件检索。
    @inlinable
    public func describeClusterResources(_ input: DescribeClusterResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterResourcesResponse {
        try await self.client.execute(action: "DescribeClusterResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群中资源列表
    ///
    /// 查询独占集群中的资源列表，支持按集群ID、VIP、负载均衡ID、是否闲置为过滤条件检索。
    @inlinable
    public func describeClusterResources(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterResourcesResponse> {
        self.describeClusterResources(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群中资源列表
    ///
    /// 查询独占集群中的资源列表，支持按集群ID、VIP、负载均衡ID、是否闲置为过滤条件检索。
    @inlinable
    public func describeClusterResources(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterResourcesResponse {
        try await self.describeClusterResources(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群中资源列表
    ///
    /// 查询独占集群中的资源列表，支持按集群ID、VIP、负载均衡ID、是否闲置为过滤条件检索。
    @inlinable
    public func describeClusterResourcesPaginated(_ input: DescribeClusterResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ClusterResource])> {
        self.client.paginate(input: input, region: region, command: self.describeClusterResources, logger: logger, on: eventLoop)
    }

    /// 查询集群中资源列表
    ///
    /// 查询独占集群中的资源列表，支持按集群ID、VIP、负载均衡ID、是否闲置为过滤条件检索。
    @inlinable @discardableResult
    public func describeClusterResourcesPaginated(_ input: DescribeClusterResourcesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClusterResourcesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClusterResources, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群中资源列表
    ///
    /// 查询独占集群中的资源列表，支持按集群ID、VIP、负载均衡ID、是否闲置为过滤条件检索。
    ///
    /// - Returns: `AsyncSequence`s of `ClusterResource` and `DescribeClusterResourcesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeClusterResourcesPaginator(_ input: DescribeClusterResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeClusterResourcesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClusterResources, logger: logger, on: eventLoop)
    }
}
