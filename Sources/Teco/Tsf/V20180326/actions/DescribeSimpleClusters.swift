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

extension Tsf {
    /// DescribeSimpleClusters请求参数结构体
    public struct DescribeSimpleClustersRequest: TCPaginatedRequest {
        /// 需要查询的集群ID列表，不填或不传入时查询所有内容
        public let clusterIdList: [String]?

        /// 需要查询的集群类型，不填或不传入时查询所有内容
        public let clusterType: String?

        /// 查询偏移量，默认为0
        public let offset: Int64?

        /// 分页个数，默认为20， 取值应为1~50
        public let limit: Int64?

        /// 对id和name进行关键词过滤
        public let searchWord: String?

        public let disableProgramAuthCheck: Bool?

        public init(clusterIdList: [String]? = nil, clusterType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, searchWord: String? = nil, disableProgramAuthCheck: Bool? = nil) {
            self.clusterIdList = clusterIdList
            self.clusterType = clusterType
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
            self.disableProgramAuthCheck = disableProgramAuthCheck
        }

        enum CodingKeys: String, CodingKey {
            case clusterIdList = "ClusterIdList"
            case clusterType = "ClusterType"
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
            case disableProgramAuthCheck = "DisableProgramAuthCheck"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSimpleClustersResponse) -> DescribeSimpleClustersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSimpleClustersRequest(clusterIdList: self.clusterIdList, clusterType: self.clusterType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, searchWord: self.searchWord, disableProgramAuthCheck: self.disableProgramAuthCheck)
        }
    }

    /// DescribeSimpleClusters返回参数结构体
    public struct DescribeSimpleClustersResponse: TCPaginatedResponse {
        /// TSF集群分页对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageCluster?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Cluster`` list from the paginated response.
        public func getItems() -> [Cluster] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询简单集群列表
    @inlinable
    public func describeSimpleClusters(_ input: DescribeSimpleClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimpleClustersResponse> {
        self.client.execute(action: "DescribeSimpleClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询简单集群列表
    @inlinable
    public func describeSimpleClusters(_ input: DescribeSimpleClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSimpleClustersResponse {
        try await self.client.execute(action: "DescribeSimpleClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询简单集群列表
    @inlinable
    public func describeSimpleClusters(clusterIdList: [String]? = nil, clusterType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, searchWord: String? = nil, disableProgramAuthCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimpleClustersResponse> {
        self.describeSimpleClusters(.init(clusterIdList: clusterIdList, clusterType: clusterType, offset: offset, limit: limit, searchWord: searchWord, disableProgramAuthCheck: disableProgramAuthCheck), region: region, logger: logger, on: eventLoop)
    }

    /// 查询简单集群列表
    @inlinable
    public func describeSimpleClusters(clusterIdList: [String]? = nil, clusterType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, searchWord: String? = nil, disableProgramAuthCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSimpleClustersResponse {
        try await self.describeSimpleClusters(.init(clusterIdList: clusterIdList, clusterType: clusterType, offset: offset, limit: limit, searchWord: searchWord, disableProgramAuthCheck: disableProgramAuthCheck), region: region, logger: logger, on: eventLoop)
    }

    /// 查询简单集群列表
    @inlinable
    public func describeSimpleClustersPaginated(_ input: DescribeSimpleClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Cluster])> {
        self.client.paginate(input: input, region: region, command: self.describeSimpleClusters, logger: logger, on: eventLoop)
    }

    /// 查询简单集群列表
    @inlinable @discardableResult
    public func describeSimpleClustersPaginated(_ input: DescribeSimpleClustersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSimpleClustersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSimpleClusters, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询简单集群列表
    ///
    /// - Returns: `AsyncSequence`s of ``Cluster`` and ``DescribeSimpleClustersResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSimpleClustersPaginator(_ input: DescribeSimpleClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSimpleClustersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSimpleClusters, logger: logger, on: eventLoop)
    }
}
