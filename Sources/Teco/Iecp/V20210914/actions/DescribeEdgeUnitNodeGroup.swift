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

extension Iecp {
    /// DescribeEdgeUnitNodeGroup请求参数结构体
    public struct DescribeEdgeUnitNodeGroupRequest: TCPaginatedRequest {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// 命名空间，默认为default
        public let namespace: String?

        /// 分页offset，默认为0
        public let offset: Int64?

        /// 分页limit，默认为20
        public let limit: Int64?

        /// 模糊匹配参数，精确匹配时失效
        public let nameFilter: String?

        /// 精确匹配参数
        public let nameMatched: String?

        /// 按时间排序，ASC/DESC，默认为DESC
        public let order: String?

        public init(edgeUnitId: UInt64, namespace: String? = nil, offset: Int64? = nil, limit: Int64? = nil, nameFilter: String? = nil, nameMatched: String? = nil, order: String? = nil) {
            self.edgeUnitId = edgeUnitId
            self.namespace = namespace
            self.offset = offset
            self.limit = limit
            self.nameFilter = nameFilter
            self.nameMatched = nameMatched
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case namespace = "Namespace"
            case offset = "Offset"
            case limit = "Limit"
            case nameFilter = "NameFilter"
            case nameMatched = "NameMatched"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeEdgeUnitNodeGroupResponse) -> DescribeEdgeUnitNodeGroupRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(edgeUnitId: self.edgeUnitId, namespace: self.namespace, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, nameFilter: self.nameFilter, nameMatched: self.nameMatched, order: self.order)
        }
    }

    /// DescribeEdgeUnitNodeGroup返回参数结构体
    public struct DescribeEdgeUnitNodeGroupResponse: TCPaginatedResponse {
        /// 记录总数
        public let total: Int64

        /// NodeGroup数组
        public let nodeGroupInfo: [NodeGroupInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case nodeGroupInfo = "NodeGroupInfo"
            case requestId = "RequestId"
        }

        /// Extract the returned ``NodeGroupInfo`` list from the paginated response.
        public func getItems() -> [NodeGroupInfo] {
            self.nodeGroupInfo
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询边缘单元NodeGroup列表
    ///
    /// 查询边缘集群NodeGroup
    @inlinable
    public func describeEdgeUnitNodeGroup(_ input: DescribeEdgeUnitNodeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitNodeGroupResponse> {
        self.client.execute(action: "DescribeEdgeUnitNodeGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元NodeGroup列表
    ///
    /// 查询边缘集群NodeGroup
    @inlinable
    public func describeEdgeUnitNodeGroup(_ input: DescribeEdgeUnitNodeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitNodeGroupResponse {
        try await self.client.execute(action: "DescribeEdgeUnitNodeGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘单元NodeGroup列表
    ///
    /// 查询边缘集群NodeGroup
    @inlinable
    public func describeEdgeUnitNodeGroup(edgeUnitId: UInt64, namespace: String? = nil, offset: Int64? = nil, limit: Int64? = nil, nameFilter: String? = nil, nameMatched: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitNodeGroupResponse> {
        self.describeEdgeUnitNodeGroup(.init(edgeUnitId: edgeUnitId, namespace: namespace, offset: offset, limit: limit, nameFilter: nameFilter, nameMatched: nameMatched, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元NodeGroup列表
    ///
    /// 查询边缘集群NodeGroup
    @inlinable
    public func describeEdgeUnitNodeGroup(edgeUnitId: UInt64, namespace: String? = nil, offset: Int64? = nil, limit: Int64? = nil, nameFilter: String? = nil, nameMatched: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitNodeGroupResponse {
        try await self.describeEdgeUnitNodeGroup(.init(edgeUnitId: edgeUnitId, namespace: namespace, offset: offset, limit: limit, nameFilter: nameFilter, nameMatched: nameMatched, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元NodeGroup列表
    ///
    /// 查询边缘集群NodeGroup
    @inlinable
    public func describeEdgeUnitNodeGroupPaginated(_ input: DescribeEdgeUnitNodeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [NodeGroupInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeEdgeUnitNodeGroup, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元NodeGroup列表
    ///
    /// 查询边缘集群NodeGroup
    @inlinable @discardableResult
    public func describeEdgeUnitNodeGroupPaginated(_ input: DescribeEdgeUnitNodeGroupRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEdgeUnitNodeGroupResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEdgeUnitNodeGroup, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元NodeGroup列表
    ///
    /// 查询边缘集群NodeGroup
    ///
    /// - Returns: `AsyncSequence`s of ``NodeGroupInfo`` and ``DescribeEdgeUnitNodeGroupResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeEdgeUnitNodeGroupPaginator(_ input: DescribeEdgeUnitNodeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEdgeUnitNodeGroupRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEdgeUnitNodeGroup, logger: logger, on: eventLoop)
    }
}
