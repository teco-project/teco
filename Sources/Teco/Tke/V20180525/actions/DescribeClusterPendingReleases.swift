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
    /// DescribeClusterPendingReleases请求参数结构体
    public struct DescribeClusterPendingReleasesRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 返回数量限制，默认20，最大100
        public let limit: Int64?

        /// 偏移量，默认0
        public let offset: Int64?

        /// 集群类型
        public let clusterType: String?

        public init(clusterId: String, limit: Int64? = nil, offset: Int64? = nil, clusterType: String? = nil) {
            self.clusterId = clusterId
            self.limit = limit
            self.offset = offset
            self.clusterType = clusterType
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case limit = "Limit"
            case offset = "Offset"
            case clusterType = "ClusterType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeClusterPendingReleasesResponse) -> DescribeClusterPendingReleasesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClusterPendingReleasesRequest(clusterId: self.clusterId, limit: self.limit, offset: (self.offset ?? 0) + (response.limit ?? 0), clusterType: self.clusterType)
        }
    }

    /// DescribeClusterPendingReleases返回参数结构体
    public struct DescribeClusterPendingReleasesResponse: TCPaginatedResponse {
        /// 正在安装中应用列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let releaseSet: [PendingRelease]?

        /// 每页返回数量限制
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let limit: Int64?

        /// 页偏移量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offset: Int64?

        /// 总数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case releaseSet = "ReleaseSet"
            case limit = "Limit"
            case offset = "Offset"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PendingRelease] {
            self.releaseSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询集群安装中的应用列表
    ///
    /// 在应用市场中查询正在安装中的应用列表
    @inlinable
    public func describeClusterPendingReleases(_ input: DescribeClusterPendingReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterPendingReleasesResponse> {
        self.client.execute(action: "DescribeClusterPendingReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群安装中的应用列表
    ///
    /// 在应用市场中查询正在安装中的应用列表
    @inlinable
    public func describeClusterPendingReleases(_ input: DescribeClusterPendingReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterPendingReleasesResponse {
        try await self.client.execute(action: "DescribeClusterPendingReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群安装中的应用列表
    ///
    /// 在应用市场中查询正在安装中的应用列表
    @inlinable
    public func describeClusterPendingReleases(clusterId: String, limit: Int64? = nil, offset: Int64? = nil, clusterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterPendingReleasesResponse> {
        let input = DescribeClusterPendingReleasesRequest(clusterId: clusterId, limit: limit, offset: offset, clusterType: clusterType)
        return self.client.execute(action: "DescribeClusterPendingReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群安装中的应用列表
    ///
    /// 在应用市场中查询正在安装中的应用列表
    @inlinable
    public func describeClusterPendingReleases(clusterId: String, limit: Int64? = nil, offset: Int64? = nil, clusterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterPendingReleasesResponse {
        let input = DescribeClusterPendingReleasesRequest(clusterId: clusterId, limit: limit, offset: offset, clusterType: clusterType)
        return try await self.client.execute(action: "DescribeClusterPendingReleases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群安装中的应用列表
    ///
    /// 在应用市场中查询正在安装中的应用列表
    @inlinable
    public func describeClusterPendingReleasesPaginated(_ input: DescribeClusterPendingReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [PendingRelease])> {
        self.client.paginate(input: input, region: region, command: self.describeClusterPendingReleases, logger: logger, on: eventLoop)
    }

    /// 查询集群安装中的应用列表
    ///
    /// 在应用市场中查询正在安装中的应用列表
    @inlinable
    public func describeClusterPendingReleasesPaginated(_ input: DescribeClusterPendingReleasesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClusterPendingReleasesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClusterPendingReleases, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群安装中的应用列表
    ///
    /// 在应用市场中查询正在安装中的应用列表
    @inlinable
    public func describeClusterPendingReleasesPaginator(_ input: DescribeClusterPendingReleasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeClusterPendingReleasesRequest, DescribeClusterPendingReleasesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeClusterPendingReleasesRequest, DescribeClusterPendingReleasesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeClusterPendingReleasesRequest, DescribeClusterPendingReleasesResponse>.ResultSequence(input: input, region: region, command: self.describeClusterPendingReleases, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeClusterPendingReleasesRequest, DescribeClusterPendingReleasesResponse>.ResponseSequence(input: input, region: region, command: self.describeClusterPendingReleases, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
