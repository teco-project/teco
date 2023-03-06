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

extension Iecp {
    /// DescribeEdgeNodes请求参数结构体
    public struct DescribeEdgeNodesRequest: TCPaginatedRequest {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// 边缘节点名称模糊搜索串
        public let namePattern: String?

        /// 边缘节点名称列表，支持批量查询 ，优先于模糊查询
        public let nameMatchedList: [String]?

        /// 排序信息列表
        public let sort: [Sort]?

        /// 偏移量
        public let offset: UInt64?

        /// 页面大小Limit
        public let limit: UInt64?

        /// 节点类型
        public let nodeType: Int64?

        public init(edgeUnitId: UInt64, namePattern: String? = nil, nameMatchedList: [String]? = nil, sort: [Sort]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, nodeType: Int64? = nil) {
            self.edgeUnitId = edgeUnitId
            self.namePattern = namePattern
            self.nameMatchedList = nameMatchedList
            self.sort = sort
            self.offset = offset
            self.limit = limit
            self.nodeType = nodeType
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case namePattern = "NamePattern"
            case nameMatchedList = "NameMatchedList"
            case sort = "Sort"
            case offset = "Offset"
            case limit = "Limit"
            case nodeType = "NodeType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeEdgeNodesResponse) -> DescribeEdgeNodesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeEdgeNodesRequest(edgeUnitId: self.edgeUnitId, namePattern: self.namePattern, nameMatchedList: self.nameMatchedList, sort: self.sort, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, nodeType: self.nodeType)
        }
    }

    /// DescribeEdgeNodes返回参数结构体
    public struct DescribeEdgeNodesResponse: TCPaginatedResponse {
        /// 边缘节点数量
        public let totalCount: UInt64

        /// 节点列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeSet: [EdgeNodeInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case nodeSet = "NodeSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [EdgeNodeInfo] {
            self.nodeSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询边缘节点列表
    @inlinable
    public func describeEdgeNodes(_ input: DescribeEdgeNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeNodesResponse> {
        self.client.execute(action: "DescribeEdgeNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘节点列表
    @inlinable
    public func describeEdgeNodes(_ input: DescribeEdgeNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeNodesResponse {
        try await self.client.execute(action: "DescribeEdgeNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘节点列表
    @inlinable
    public func describeEdgeNodes(edgeUnitId: UInt64, namePattern: String? = nil, nameMatchedList: [String]? = nil, sort: [Sort]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, nodeType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeNodesResponse> {
        let input = DescribeEdgeNodesRequest(edgeUnitId: edgeUnitId, namePattern: namePattern, nameMatchedList: nameMatchedList, sort: sort, offset: offset, limit: limit, nodeType: nodeType)
        return self.client.execute(action: "DescribeEdgeNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘节点列表
    @inlinable
    public func describeEdgeNodes(edgeUnitId: UInt64, namePattern: String? = nil, nameMatchedList: [String]? = nil, sort: [Sort]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, nodeType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeNodesResponse {
        let input = DescribeEdgeNodesRequest(edgeUnitId: edgeUnitId, namePattern: namePattern, nameMatchedList: nameMatchedList, sort: sort, offset: offset, limit: limit, nodeType: nodeType)
        return try await self.client.execute(action: "DescribeEdgeNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘节点列表
    @inlinable
    public func describeEdgeNodesPaginated(_ input: DescribeEdgeNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [EdgeNodeInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeEdgeNodes, logger: logger, on: eventLoop)
    }

    /// 查询边缘节点列表
    @inlinable @discardableResult
    public func describeEdgeNodesPaginated(_ input: DescribeEdgeNodesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEdgeNodesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEdgeNodes, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询边缘节点列表
    ///
    /// - Returns: `AsyncSequence`s of `EdgeNodeInfo` and `DescribeEdgeNodesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeEdgeNodesPaginator(_ input: DescribeEdgeNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEdgeNodesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEdgeNodes, logger: logger, on: eventLoop)
    }
}
