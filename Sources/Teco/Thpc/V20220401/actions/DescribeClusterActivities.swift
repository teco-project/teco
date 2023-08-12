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
import TecoPaginationHelpers

extension Thpc {
    /// DescribeClusterActivities请求参数结构体
    public struct DescribeClusterActivitiesRequest: TCPaginatedRequest {
        /// 集群ID。通过该参数指定需要查询活动历史记录的集群。
        public let clusterId: String

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        public init(clusterId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.clusterId = clusterId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeClusterActivitiesResponse) -> DescribeClusterActivitiesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClusterActivitiesRequest(clusterId: self.clusterId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeClusterActivities返回参数结构体
    public struct DescribeClusterActivitiesResponse: TCPaginatedResponse {
        /// 集群活动历史记录列表。
        public let clusterActivitySet: [ClusterActivity]

        /// 集群活动历史记录数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterActivitySet = "ClusterActivitySet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ClusterActivity`` list from the paginated response.
        public func getItems() -> [ClusterActivity] {
            self.clusterActivitySet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询集群活动历史记录
    ///
    /// 本接口（DescribeClusterActivities）用于查询集群活动历史记录列表。
    @inlinable
    public func describeClusterActivities(_ input: DescribeClusterActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterActivitiesResponse> {
        self.client.execute(action: "DescribeClusterActivities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群活动历史记录
    ///
    /// 本接口（DescribeClusterActivities）用于查询集群活动历史记录列表。
    @inlinable
    public func describeClusterActivities(_ input: DescribeClusterActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterActivitiesResponse {
        try await self.client.execute(action: "DescribeClusterActivities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群活动历史记录
    ///
    /// 本接口（DescribeClusterActivities）用于查询集群活动历史记录列表。
    @inlinable
    public func describeClusterActivities(clusterId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterActivitiesResponse> {
        self.describeClusterActivities(.init(clusterId: clusterId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群活动历史记录
    ///
    /// 本接口（DescribeClusterActivities）用于查询集群活动历史记录列表。
    @inlinable
    public func describeClusterActivities(clusterId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterActivitiesResponse {
        try await self.describeClusterActivities(.init(clusterId: clusterId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群活动历史记录
    ///
    /// 本接口（DescribeClusterActivities）用于查询集群活动历史记录列表。
    @inlinable
    public func describeClusterActivitiesPaginated(_ input: DescribeClusterActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ClusterActivity])> {
        self.client.paginate(input: input, region: region, command: self.describeClusterActivities, logger: logger, on: eventLoop)
    }

    /// 查询集群活动历史记录
    ///
    /// 本接口（DescribeClusterActivities）用于查询集群活动历史记录列表。
    @inlinable @discardableResult
    public func describeClusterActivitiesPaginated(_ input: DescribeClusterActivitiesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClusterActivitiesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClusterActivities, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群活动历史记录
    ///
    /// 本接口（DescribeClusterActivities）用于查询集群活动历史记录列表。
    ///
    /// - Returns: `AsyncSequence`s of `ClusterActivity` and `DescribeClusterActivitiesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeClusterActivitiesPaginator(_ input: DescribeClusterActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeClusterActivitiesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClusterActivities, logger: logger, on: eventLoop)
    }
}
