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

extension Tke {
    /// DescribeClusters请求参数结构体
    public struct DescribeClustersRequest: TCPaginatedRequest {
        /// 集群ID列表(为空时，
        /// 表示获取账号下所有集群)
        public let clusterIds: [String]?

        /// 偏移量,默认0
        public let offset: Int64?

        /// 最大输出条数，默认20，最大为100
        public let limit: Int64?

        /// ·  ClusterName
        ///     按照【集群名】进行过滤。
        ///     类型：String
        ///     必选：否
        ///
        /// ·  ClusterType
        ///     按照【集群类型】进行过滤。
        ///     类型：String
        ///     必选：否
        ///
        /// ·  ClusterStatus
        ///     按照【集群状态】进行过滤。
        ///     类型：String
        ///     必选：否
        ///
        /// ·  Tags
        ///     按照【标签键值对】进行过滤。
        ///     类型：String
        ///     必选：否
        ///
        /// ·  vpc-id
        ///     按照【VPC】进行过滤。
        ///     类型：String
        ///     必选：否
        ///
        /// ·  tag-key
        ///     按照【标签键】进行过滤。
        ///     类型：String
        ///     必选：否
        ///
        /// ·  tag-value
        ///     按照【标签值】进行过滤。
        ///     类型：String
        ///     必选：否
        ///
        /// ·  tag:tag-key
        ///     按照【标签键值对】进行过滤。
        ///     类型：String
        ///     必选：否
        public let filters: [Filter]?

        /// 集群类型，例如：MANAGED_CLUSTER
        public let clusterType: String?

        public init(clusterIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, clusterType: String? = nil) {
            self.clusterIds = clusterIds
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.clusterType = clusterType
        }

        enum CodingKeys: String, CodingKey {
            case clusterIds = "ClusterIds"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case clusterType = "ClusterType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeClustersResponse) -> DescribeClustersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClustersRequest(clusterIds: self.clusterIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, clusterType: self.clusterType)
        }
    }

    /// DescribeClusters返回参数结构体
    public struct DescribeClustersResponse: TCPaginatedResponse {
        /// 集群总个数
        public let totalCount: Int64

        /// 集群信息列表
        public let clusters: [Cluster]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusters = "Clusters"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Cluster] {
            self.clusters
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询集群列表
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClustersResponse> {
        self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        try await self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群列表
    @inlinable
    public func describeClusters(clusterIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, clusterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClustersResponse> {
        let input = DescribeClustersRequest(clusterIds: clusterIds, offset: offset, limit: limit, filters: filters, clusterType: clusterType)
        return self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    @inlinable
    public func describeClusters(clusterIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, clusterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        let input = DescribeClustersRequest(clusterIds: clusterIds, offset: offset, limit: limit, filters: filters, clusterType: clusterType)
        return try await self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
