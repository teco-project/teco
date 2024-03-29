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

extension Tke {
    /// DescribeClusterAsGroups请求参数结构体
    public struct DescribeClusterAsGroupsRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 伸缩组ID列表，如果为空，表示拉取集群关联的所有伸缩组。
        public let autoScalingGroupIds: [String]?

        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        public init(clusterId: String, autoScalingGroupIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.clusterId = clusterId
            self.autoScalingGroupIds = autoScalingGroupIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case autoScalingGroupIds = "AutoScalingGroupIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeClusterAsGroupsResponse) -> DescribeClusterAsGroupsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(clusterId: self.clusterId, autoScalingGroupIds: self.autoScalingGroupIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeClusterAsGroups返回参数结构体
    public struct DescribeClusterAsGroupsResponse: TCPaginatedResponse {
        /// 集群关联的伸缩组总数
        public let totalCount: UInt64

        /// 集群关联的伸缩组列表
        public let clusterAsGroupSet: [ClusterAsGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusterAsGroupSet = "ClusterAsGroupSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ClusterAsGroup`` list from the paginated response.
        public func getItems() -> [ClusterAsGroup] {
            self.clusterAsGroupSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 集群关联的伸缩组列表
    @inlinable
    public func describeClusterAsGroups(_ input: DescribeClusterAsGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterAsGroupsResponse> {
        self.client.execute(action: "DescribeClusterAsGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 集群关联的伸缩组列表
    @inlinable
    public func describeClusterAsGroups(_ input: DescribeClusterAsGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterAsGroupsResponse {
        try await self.client.execute(action: "DescribeClusterAsGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 集群关联的伸缩组列表
    @inlinable
    public func describeClusterAsGroups(clusterId: String, autoScalingGroupIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterAsGroupsResponse> {
        self.describeClusterAsGroups(.init(clusterId: clusterId, autoScalingGroupIds: autoScalingGroupIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 集群关联的伸缩组列表
    @inlinable
    public func describeClusterAsGroups(clusterId: String, autoScalingGroupIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterAsGroupsResponse {
        try await self.describeClusterAsGroups(.init(clusterId: clusterId, autoScalingGroupIds: autoScalingGroupIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 集群关联的伸缩组列表
    @inlinable
    public func describeClusterAsGroupsPaginated(_ input: DescribeClusterAsGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ClusterAsGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeClusterAsGroups, logger: logger, on: eventLoop)
    }

    /// 集群关联的伸缩组列表
    @inlinable @discardableResult
    public func describeClusterAsGroupsPaginated(_ input: DescribeClusterAsGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClusterAsGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClusterAsGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 集群关联的伸缩组列表
    ///
    /// - Returns: `AsyncSequence`s of ``ClusterAsGroup`` and ``DescribeClusterAsGroupsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeClusterAsGroupsPaginator(_ input: DescribeClusterAsGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeClusterAsGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClusterAsGroups, logger: logger, on: eventLoop)
    }
}
