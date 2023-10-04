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

extension Cvm {
    /// DescribeHpcClusters请求参数结构体
    public struct DescribeHpcClustersRequest: TCPaginatedRequest {
        /// 高性能计算集群ID数组。
        public let hpcClusterIds: [String]?

        /// 高性能计算集群名称。
        public let name: String?

        /// 可用区。
        public let zone: String?

        /// 偏移量, 默认值0。
        public let offset: UInt64?

        /// 本次请求量, 默认值20。
        public let limit: UInt64?

        public init(hpcClusterIds: [String]? = nil, name: String? = nil, zone: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.hpcClusterIds = hpcClusterIds
            self.name = name
            self.zone = zone
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case hpcClusterIds = "HpcClusterIds"
            case name = "Name"
            case zone = "Zone"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeHpcClustersResponse) -> DescribeHpcClustersRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(hpcClusterIds: self.hpcClusterIds, name: self.name, zone: self.zone, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeHpcClusters返回参数结构体
    public struct DescribeHpcClustersResponse: TCPaginatedResponse {
        /// 高性能计算集群信息。
        public let hpcClusterSet: [HpcClusterInfo]

        /// 高性能计算集群总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hpcClusterSet = "HpcClusterSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``HpcClusterInfo`` list from the paginated response.
        public func getItems() -> [HpcClusterInfo] {
            self.hpcClusterSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询高性能集群信息
    @inlinable
    public func describeHpcClusters(_ input: DescribeHpcClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHpcClustersResponse> {
        self.client.execute(action: "DescribeHpcClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询高性能集群信息
    @inlinable
    public func describeHpcClusters(_ input: DescribeHpcClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHpcClustersResponse {
        try await self.client.execute(action: "DescribeHpcClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询高性能集群信息
    @inlinable
    public func describeHpcClusters(hpcClusterIds: [String]? = nil, name: String? = nil, zone: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHpcClustersResponse> {
        self.describeHpcClusters(.init(hpcClusterIds: hpcClusterIds, name: name, zone: zone, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询高性能集群信息
    @inlinable
    public func describeHpcClusters(hpcClusterIds: [String]? = nil, name: String? = nil, zone: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHpcClustersResponse {
        try await self.describeHpcClusters(.init(hpcClusterIds: hpcClusterIds, name: name, zone: zone, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询高性能集群信息
    @inlinable
    public func describeHpcClustersPaginated(_ input: DescribeHpcClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [HpcClusterInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeHpcClusters, logger: logger, on: eventLoop)
    }

    /// 查询高性能集群信息
    @inlinable @discardableResult
    public func describeHpcClustersPaginated(_ input: DescribeHpcClustersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHpcClustersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHpcClusters, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询高性能集群信息
    ///
    /// - Returns: `AsyncSequence`s of ``HpcClusterInfo`` and ``DescribeHpcClustersResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeHpcClustersPaginator(_ input: DescribeHpcClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeHpcClustersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeHpcClusters, logger: logger, on: eventLoop)
    }
}
