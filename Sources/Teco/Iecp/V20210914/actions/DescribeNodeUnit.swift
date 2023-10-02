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
    /// DescribeNodeUnit请求参数结构体
    public struct DescribeNodeUnitRequest: TCPaginatedRequest {
        /// 边缘单元ID
        public let edgeUnitId: UInt64

        /// NodeUnit所属的NodeGroup名称
        public let nodeGroupName: String

        /// 命名空间，默认default
        public let namespace: String?

        /// 分页查询limit，默认20
        public let limit: Int64?

        /// 分页查询offset，默认0
        public let offset: Int64?

        /// 模糊匹配
        public let nameFilter: String?

        public init(edgeUnitId: UInt64, nodeGroupName: String, namespace: String? = nil, limit: Int64? = nil, offset: Int64? = nil, nameFilter: String? = nil) {
            self.edgeUnitId = edgeUnitId
            self.nodeGroupName = nodeGroupName
            self.namespace = namespace
            self.limit = limit
            self.offset = offset
            self.nameFilter = nameFilter
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodeGroupName = "NodeGroupName"
            case namespace = "Namespace"
            case limit = "Limit"
            case offset = "Offset"
            case nameFilter = "NameFilter"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNodeUnitResponse) -> DescribeNodeUnitRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(edgeUnitId: self.edgeUnitId, nodeGroupName: self.nodeGroupName, namespace: self.namespace, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), nameFilter: self.nameFilter)
        }
    }

    /// DescribeNodeUnit返回参数结构体
    public struct DescribeNodeUnitResponse: TCPaginatedResponse {
        /// 符合查询条件的记录总数
        public let totalCount: Int64

        /// NodeUnit信息数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeGridInfo: [NodeUnitInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case nodeGridInfo = "NodeGridInfo"
            case requestId = "RequestId"
        }

        /// Extract the returned ``NodeUnitInfo`` list from the paginated response.
        public func getItems() -> [NodeUnitInfo] {
            self.nodeGridInfo ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询边缘单元NodeUnit列表
    @inlinable
    public func describeNodeUnit(_ input: DescribeNodeUnitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNodeUnitResponse> {
        self.client.execute(action: "DescribeNodeUnit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元NodeUnit列表
    @inlinable
    public func describeNodeUnit(_ input: DescribeNodeUnitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNodeUnitResponse {
        try await self.client.execute(action: "DescribeNodeUnit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘单元NodeUnit列表
    @inlinable
    public func describeNodeUnit(edgeUnitId: UInt64, nodeGroupName: String, namespace: String? = nil, limit: Int64? = nil, offset: Int64? = nil, nameFilter: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNodeUnitResponse> {
        self.describeNodeUnit(.init(edgeUnitId: edgeUnitId, nodeGroupName: nodeGroupName, namespace: namespace, limit: limit, offset: offset, nameFilter: nameFilter), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元NodeUnit列表
    @inlinable
    public func describeNodeUnit(edgeUnitId: UInt64, nodeGroupName: String, namespace: String? = nil, limit: Int64? = nil, offset: Int64? = nil, nameFilter: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNodeUnitResponse {
        try await self.describeNodeUnit(.init(edgeUnitId: edgeUnitId, nodeGroupName: nodeGroupName, namespace: namespace, limit: limit, offset: offset, nameFilter: nameFilter), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元NodeUnit列表
    @inlinable
    public func describeNodeUnitPaginated(_ input: DescribeNodeUnitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [NodeUnitInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeNodeUnit, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元NodeUnit列表
    @inlinable @discardableResult
    public func describeNodeUnitPaginated(_ input: DescribeNodeUnitRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNodeUnitResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNodeUnit, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元NodeUnit列表
    ///
    /// - Returns: `AsyncSequence`s of ``NodeUnitInfo`` and ``DescribeNodeUnitResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNodeUnitPaginator(_ input: DescribeNodeUnitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNodeUnitRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNodeUnit, logger: logger, on: eventLoop)
    }
}
