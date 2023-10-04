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

extension Thpc {
    /// DescribeNodes请求参数结构体
    public struct DescribeNodesRequest: TCPaginatedRequest {
        /// 集群ID。
        public let clusterId: String

        /// - **queue-name**
        ///
        /// 按照【**队列名称**】进行过滤。队列名称形如：compute。
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// - **node-role**
        ///
        /// 按照【**节点角色**】进行过滤。节点角色形如：Manager。（Manager：管控节点。Compute：计算节点。Login：登录节点。ManagerBackup：备用管控节点。）
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// - **node-type**
        ///
        /// 按照【**节点类型**】进行过滤。节点类型形如：STATIC。(STATIC：静态节点。DYNAMIC：弹性节点。)
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        public init(clusterId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.clusterId = clusterId
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNodesResponse) -> DescribeNodesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(clusterId: self.clusterId, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeNodes返回参数结构体
    public struct DescribeNodesResponse: TCPaginatedResponse {
        /// 节点概览信息列表。
        public let nodeSet: [NodeOverview]

        /// 符合条件的节点数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodeSet = "NodeSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``NodeOverview`` list from the paginated response.
        public func getItems() -> [NodeOverview] {
            self.nodeSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询指定集群节点列表
    ///
    /// 本接口 (DescribeNodes) 用于查询指定集群节点概览信息列表。
    @inlinable
    public func describeNodes(_ input: DescribeNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNodesResponse> {
        self.client.execute(action: "DescribeNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指定集群节点列表
    ///
    /// 本接口 (DescribeNodes) 用于查询指定集群节点概览信息列表。
    @inlinable
    public func describeNodes(_ input: DescribeNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNodesResponse {
        try await self.client.execute(action: "DescribeNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询指定集群节点列表
    ///
    /// 本接口 (DescribeNodes) 用于查询指定集群节点概览信息列表。
    @inlinable
    public func describeNodes(clusterId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNodesResponse> {
        self.describeNodes(.init(clusterId: clusterId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询指定集群节点列表
    ///
    /// 本接口 (DescribeNodes) 用于查询指定集群节点概览信息列表。
    @inlinable
    public func describeNodes(clusterId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNodesResponse {
        try await self.describeNodes(.init(clusterId: clusterId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询指定集群节点列表
    ///
    /// 本接口 (DescribeNodes) 用于查询指定集群节点概览信息列表。
    @inlinable
    public func describeNodesPaginated(_ input: DescribeNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [NodeOverview])> {
        self.client.paginate(input: input, region: region, command: self.describeNodes, logger: logger, on: eventLoop)
    }

    /// 查询指定集群节点列表
    ///
    /// 本接口 (DescribeNodes) 用于查询指定集群节点概览信息列表。
    @inlinable @discardableResult
    public func describeNodesPaginated(_ input: DescribeNodesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNodesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNodes, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询指定集群节点列表
    ///
    /// 本接口 (DescribeNodes) 用于查询指定集群节点概览信息列表。
    ///
    /// - Returns: `AsyncSequence`s of ``NodeOverview`` and ``DescribeNodesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNodesPaginator(_ input: DescribeNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNodesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNodes, logger: logger, on: eventLoop)
    }
}
