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
    /// DescribeEdgeUnitNodeUnitTemplates请求参数结构体
    public struct DescribeEdgeUnitNodeUnitTemplatesRequest: TCPaginatedRequest {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// 命名空间，默认为default
        public let namespace: String?

        /// 分页查询offset，默认为0
        public let offset: UInt64?

        /// 分页查询limit，默认为20
        public let limit: UInt64?

        /// 模糊匹配，精确匹配时失效
        public let nameFilter: String?

        /// 精确匹配
        public let nameMatched: String?

        /// 按时间排序顺序，默认为DESC
        public let order: String?

        public init(edgeUnitId: UInt64, namespace: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, nameFilter: String? = nil, nameMatched: String? = nil, order: String? = nil) {
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
        public func makeNextRequest(with response: DescribeEdgeUnitNodeUnitTemplatesResponse) -> DescribeEdgeUnitNodeUnitTemplatesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(edgeUnitId: self.edgeUnitId, namespace: self.namespace, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, nameFilter: self.nameFilter, nameMatched: self.nameMatched, order: self.order)
        }
    }

    /// DescribeEdgeUnitNodeUnitTemplates返回参数结构体
    public struct DescribeEdgeUnitNodeUnitTemplatesResponse: TCPaginatedResponse {
        /// 符合查询条件的记录总数
        public let total: UInt64

        /// NodeUnit模板列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeUnitTemplates: [NodeUnitTemplate]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case nodeUnitTemplates = "NodeUnitTemplates"
            case requestId = "RequestId"
        }

        /// Extract the returned ``NodeUnitTemplate`` list from the paginated response.
        public func getItems() -> [NodeUnitTemplate] {
            self.nodeUnitTemplates ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询边缘单元EdgeUnit模板列表
    @inlinable
    public func describeEdgeUnitNodeUnitTemplates(_ input: DescribeEdgeUnitNodeUnitTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitNodeUnitTemplatesResponse> {
        self.client.execute(action: "DescribeEdgeUnitNodeUnitTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元EdgeUnit模板列表
    @inlinable
    public func describeEdgeUnitNodeUnitTemplates(_ input: DescribeEdgeUnitNodeUnitTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitNodeUnitTemplatesResponse {
        try await self.client.execute(action: "DescribeEdgeUnitNodeUnitTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘单元EdgeUnit模板列表
    @inlinable
    public func describeEdgeUnitNodeUnitTemplates(edgeUnitId: UInt64, namespace: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, nameFilter: String? = nil, nameMatched: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitNodeUnitTemplatesResponse> {
        self.describeEdgeUnitNodeUnitTemplates(.init(edgeUnitId: edgeUnitId, namespace: namespace, offset: offset, limit: limit, nameFilter: nameFilter, nameMatched: nameMatched, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元EdgeUnit模板列表
    @inlinable
    public func describeEdgeUnitNodeUnitTemplates(edgeUnitId: UInt64, namespace: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, nameFilter: String? = nil, nameMatched: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitNodeUnitTemplatesResponse {
        try await self.describeEdgeUnitNodeUnitTemplates(.init(edgeUnitId: edgeUnitId, namespace: namespace, offset: offset, limit: limit, nameFilter: nameFilter, nameMatched: nameMatched, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元EdgeUnit模板列表
    @inlinable
    public func describeEdgeUnitNodeUnitTemplatesPaginated(_ input: DescribeEdgeUnitNodeUnitTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NodeUnitTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeEdgeUnitNodeUnitTemplates, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元EdgeUnit模板列表
    @inlinable @discardableResult
    public func describeEdgeUnitNodeUnitTemplatesPaginated(_ input: DescribeEdgeUnitNodeUnitTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEdgeUnitNodeUnitTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEdgeUnitNodeUnitTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元EdgeUnit模板列表
    ///
    /// - Returns: `AsyncSequence`s of ``NodeUnitTemplate`` and ``DescribeEdgeUnitNodeUnitTemplatesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeEdgeUnitNodeUnitTemplatesPaginator(_ input: DescribeEdgeUnitNodeUnitTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEdgeUnitNodeUnitTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEdgeUnitNodeUnitTemplates, logger: logger, on: eventLoop)
    }
}
