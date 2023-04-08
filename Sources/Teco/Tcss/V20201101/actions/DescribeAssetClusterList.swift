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

extension Tcss {
    /// DescribeAssetClusterList请求参数结构体
    public struct DescribeAssetClusterListRequest: TCPaginatedRequest {
        /// 过滤条件。
        /// <li>ClusterID - string  - 是否必填: 否 -集群ID</li>
        /// <li>ClusterName - string  - 是否必填: 否 -集群名称</li>
        /// <li>Status - string  - 是否必填: 否 -集群状态</li>
        public let filters: [RunTimeFilters]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式
        public let order: String?

        /// 排序字段。
        public let by: String?

        public init(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetClusterListResponse) -> DescribeAssetClusterListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetClusterListRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeAssetClusterList返回参数结构体
    public struct DescribeAssetClusterListResponse: TCPaginatedResponse {
        /// 集群列表
        public let list: [AssetClusterListItem]

        /// 总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AssetClusterListItem] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询集群列表
    @inlinable
    public func describeAssetClusterList(_ input: DescribeAssetClusterListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetClusterListResponse> {
        self.client.execute(action: "DescribeAssetClusterList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    @inlinable
    public func describeAssetClusterList(_ input: DescribeAssetClusterListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetClusterListResponse {
        try await self.client.execute(action: "DescribeAssetClusterList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群列表
    @inlinable
    public func describeAssetClusterList(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetClusterListResponse> {
        self.describeAssetClusterList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    @inlinable
    public func describeAssetClusterList(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetClusterListResponse {
        try await self.describeAssetClusterList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    @inlinable
    public func describeAssetClusterListPaginated(_ input: DescribeAssetClusterListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetClusterListItem])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetClusterList, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    @inlinable @discardableResult
    public func describeAssetClusterListPaginated(_ input: DescribeAssetClusterListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetClusterListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetClusterList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    ///
    /// - Returns: `AsyncSequence`s of `AssetClusterListItem` and `DescribeAssetClusterListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetClusterListPaginator(_ input: DescribeAssetClusterListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetClusterListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetClusterList, logger: logger, on: eventLoop)
    }
}
