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
    /// DescribeAssetImageSimpleList请求参数结构体
    public struct DescribeAssetImageSimpleListRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Keywords- String - 是否必填：否 - 镜像名、镜像id 称筛选，</li>
        public let filters: [AssetFilters]?

        /// 排序字段
        public let by: String?

        /// 排序方式 asc,desc
        public let order: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAssetImageSimpleListResponse) -> DescribeAssetImageSimpleListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetImageSimpleListRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, by: self.by, order: self.order)
        }
    }

    /// DescribeAssetImageSimpleList返回参数结构体
    public struct DescribeAssetImageSimpleListResponse: TCPaginatedResponse {
        /// 镜像列表
        public let list: [AssetSimpleImageInfo]

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
        public func getItems() -> [AssetSimpleImageInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询镜像简略信息列表
    ///
    /// 容器安全搜索查询镜像简略信息列表
    @inlinable
    public func describeAssetImageSimpleList(_ input: DescribeAssetImageSimpleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageSimpleListResponse> {
        self.client.execute(action: "DescribeAssetImageSimpleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像简略信息列表
    ///
    /// 容器安全搜索查询镜像简略信息列表
    @inlinable
    public func describeAssetImageSimpleList(_ input: DescribeAssetImageSimpleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageSimpleListResponse {
        try await self.client.execute(action: "DescribeAssetImageSimpleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像简略信息列表
    ///
    /// 容器安全搜索查询镜像简略信息列表
    @inlinable
    public func describeAssetImageSimpleList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageSimpleListResponse> {
        let input = DescribeAssetImageSimpleListRequest(limit: limit, offset: offset, filters: filters, by: by, order: order)
        return self.client.execute(action: "DescribeAssetImageSimpleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像简略信息列表
    ///
    /// 容器安全搜索查询镜像简略信息列表
    @inlinable
    public func describeAssetImageSimpleList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageSimpleListResponse {
        let input = DescribeAssetImageSimpleListRequest(limit: limit, offset: offset, filters: filters, by: by, order: order)
        return try await self.client.execute(action: "DescribeAssetImageSimpleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像简略信息列表
    ///
    /// 容器安全搜索查询镜像简略信息列表
    @inlinable
    public func describeAssetImageSimpleListPaginated(_ input: DescribeAssetImageSimpleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetSimpleImageInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageSimpleList, logger: logger, on: eventLoop)
    }

    /// 查询镜像简略信息列表
    ///
    /// 容器安全搜索查询镜像简略信息列表
    @inlinable @discardableResult
    public func describeAssetImageSimpleListPaginated(_ input: DescribeAssetImageSimpleListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetImageSimpleListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetImageSimpleList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询镜像简略信息列表
    ///
    /// 容器安全搜索查询镜像简略信息列表
    @inlinable
    public func describeAssetImageSimpleListPaginator(_ input: DescribeAssetImageSimpleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeAssetImageSimpleListRequest, DescribeAssetImageSimpleListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeAssetImageSimpleListRequest, DescribeAssetImageSimpleListResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetImageSimpleList, logger: logger, on: eventLoop)
    }
}
