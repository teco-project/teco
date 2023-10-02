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

extension Tcss {
    /// DescribeAffectedNodeList请求参数结构体
    public struct DescribeAffectedNodeListRequest: TCPaginatedRequest {
        /// 唯一的检测项的ID
        public let checkItemId: Int64

        /// 偏移量
        public let offset: UInt64?

        /// 每次查询的最大记录数量
        public let limit: UInt64?

        /// Name - String
        /// Name 可取值：ClusterName, ClusterId,InstanceId,PrivateIpAddresses
        public let filters: [ComplianceFilters]?

        /// 排序字段
        public let by: String?

        /// 排序方式 asc,desc
        public let order: String?

        public init(checkItemId: Int64, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil) {
            self.checkItemId = checkItemId
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case checkItemId = "CheckItemId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAffectedNodeListResponse) -> DescribeAffectedNodeListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(checkItemId: self.checkItemId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, by: self.by, order: self.order)
        }
    }

    /// DescribeAffectedNodeList返回参数结构体
    public struct DescribeAffectedNodeListResponse: TCPaginatedResponse {
        /// 受影响的节点总数
        public let totalCount: UInt64

        /// 受影响的节点列表
        public let affectedNodeList: [AffectedNodeItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case affectedNodeList = "AffectedNodeList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AffectedNodeItem`` list from the paginated response.
        public func getItems() -> [AffectedNodeItem] {
            self.affectedNodeList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询节点类型的影响范围
    ///
    /// 查询节点类型的影响范围，返回节点列表
    @inlinable
    public func describeAffectedNodeList(_ input: DescribeAffectedNodeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAffectedNodeListResponse> {
        self.client.execute(action: "DescribeAffectedNodeList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询节点类型的影响范围
    ///
    /// 查询节点类型的影响范围，返回节点列表
    @inlinable
    public func describeAffectedNodeList(_ input: DescribeAffectedNodeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAffectedNodeListResponse {
        try await self.client.execute(action: "DescribeAffectedNodeList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询节点类型的影响范围
    ///
    /// 查询节点类型的影响范围，返回节点列表
    @inlinable
    public func describeAffectedNodeList(checkItemId: Int64, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAffectedNodeListResponse> {
        self.describeAffectedNodeList(.init(checkItemId: checkItemId, offset: offset, limit: limit, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询节点类型的影响范围
    ///
    /// 查询节点类型的影响范围，返回节点列表
    @inlinable
    public func describeAffectedNodeList(checkItemId: Int64, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAffectedNodeListResponse {
        try await self.describeAffectedNodeList(.init(checkItemId: checkItemId, offset: offset, limit: limit, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询节点类型的影响范围
    ///
    /// 查询节点类型的影响范围，返回节点列表
    @inlinable
    public func describeAffectedNodeListPaginated(_ input: DescribeAffectedNodeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AffectedNodeItem])> {
        self.client.paginate(input: input, region: region, command: self.describeAffectedNodeList, logger: logger, on: eventLoop)
    }

    /// 查询节点类型的影响范围
    ///
    /// 查询节点类型的影响范围，返回节点列表
    @inlinable @discardableResult
    public func describeAffectedNodeListPaginated(_ input: DescribeAffectedNodeListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAffectedNodeListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAffectedNodeList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询节点类型的影响范围
    ///
    /// 查询节点类型的影响范围，返回节点列表
    ///
    /// - Returns: `AsyncSequence`s of ``AffectedNodeItem`` and ``DescribeAffectedNodeListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAffectedNodeListPaginator(_ input: DescribeAffectedNodeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAffectedNodeListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAffectedNodeList, logger: logger, on: eventLoop)
    }
}
