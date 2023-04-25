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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Iecp {
    /// DescribeEdgeUnitDeployGrid请求参数结构体
    public struct DescribeEdgeUnitDeployGridRequest: TCPaginatedRequest {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// 命名空间，默认为default
        public let namespace: String?

        /// 模糊匹配
        public let namePattern: String?

        /// 分页offset，默认为0
        public let offset: Int64?

        /// 分页limit，默认为20
        public let limit: Int64?

        /// 排序，默认为ASC
        public let order: String?

        public init(edgeUnitId: UInt64, namespace: String? = nil, namePattern: String? = nil, offset: Int64? = nil, limit: Int64? = nil, order: String? = nil) {
            self.edgeUnitId = edgeUnitId
            self.namespace = namespace
            self.namePattern = namePattern
            self.offset = offset
            self.limit = limit
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case namespace = "Namespace"
            case namePattern = "NamePattern"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeEdgeUnitDeployGridResponse) -> DescribeEdgeUnitDeployGridRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeEdgeUnitDeployGridRequest(edgeUnitId: self.edgeUnitId, namespace: self.namespace, namePattern: self.namePattern, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order)
        }
    }

    /// DescribeEdgeUnitDeployGrid返回参数结构体
    public struct DescribeEdgeUnitDeployGridResponse: TCPaginatedResponse {
        /// 记录总数
        public let totalCount: Int64

        /// Grid列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gridSet: [GridInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case gridSet = "GridSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [GridInfo] {
            self.gridSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询边缘单元Grid列表
    @inlinable
    public func describeEdgeUnitDeployGrid(_ input: DescribeEdgeUnitDeployGridRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitDeployGridResponse> {
        self.client.execute(action: "DescribeEdgeUnitDeployGrid", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元Grid列表
    @inlinable
    public func describeEdgeUnitDeployGrid(_ input: DescribeEdgeUnitDeployGridRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitDeployGridResponse {
        try await self.client.execute(action: "DescribeEdgeUnitDeployGrid", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘单元Grid列表
    @inlinable
    public func describeEdgeUnitDeployGrid(edgeUnitId: UInt64, namespace: String? = nil, namePattern: String? = nil, offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitDeployGridResponse> {
        self.describeEdgeUnitDeployGrid(.init(edgeUnitId: edgeUnitId, namespace: namespace, namePattern: namePattern, offset: offset, limit: limit, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元Grid列表
    @inlinable
    public func describeEdgeUnitDeployGrid(edgeUnitId: UInt64, namespace: String? = nil, namePattern: String? = nil, offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitDeployGridResponse {
        try await self.describeEdgeUnitDeployGrid(.init(edgeUnitId: edgeUnitId, namespace: namespace, namePattern: namePattern, offset: offset, limit: limit, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元Grid列表
    @inlinable
    public func describeEdgeUnitDeployGridPaginated(_ input: DescribeEdgeUnitDeployGridRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [GridInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeEdgeUnitDeployGrid, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元Grid列表
    @inlinable @discardableResult
    public func describeEdgeUnitDeployGridPaginated(_ input: DescribeEdgeUnitDeployGridRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEdgeUnitDeployGridResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEdgeUnitDeployGrid, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元Grid列表
    ///
    /// - Returns: `AsyncSequence`s of `GridInfo` and `DescribeEdgeUnitDeployGridResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeEdgeUnitDeployGridPaginator(_ input: DescribeEdgeUnitDeployGridRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEdgeUnitDeployGridRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEdgeUnitDeployGrid, logger: logger, on: eventLoop)
    }
}
