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

extension Cwp {
    /// DescribeProtectDirList请求参数结构体
    public struct DescribeProtectDirListRequest: TCPaginatedRequest {
        /// 分页条数 最大100条
        public let limit: UInt64

        /// 偏移量
        public let offset: UInt64

        /// DirName 网站名称
        /// DirPath 网站防护目录地址
        public let filters: [AssetFilters]?

        /// asc：升序/desc：降序
        public let order: String?

        /// 排序字段
        public let by: String?

        public init(limit: UInt64, offset: UInt64, filters: [AssetFilters]? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeProtectDirListResponse) -> DescribeProtectDirListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProtectDirListRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeProtectDirList返回参数结构体
    public struct DescribeProtectDirListResponse: TCPaginatedResponse {
        /// 总数
        public let totalCount: UInt64

        /// 防护目录列表信息
        public let list: [ProtectDirInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ProtectDirInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 防护目录列表
    ///
    /// 网页防篡改防护目录列表
    @inlinable
    public func describeProtectDirList(_ input: DescribeProtectDirListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProtectDirListResponse> {
        self.client.execute(action: "DescribeProtectDirList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 防护目录列表
    ///
    /// 网页防篡改防护目录列表
    @inlinable
    public func describeProtectDirList(_ input: DescribeProtectDirListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProtectDirListResponse {
        try await self.client.execute(action: "DescribeProtectDirList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 防护目录列表
    ///
    /// 网页防篡改防护目录列表
    @inlinable
    public func describeProtectDirList(limit: UInt64, offset: UInt64, filters: [AssetFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProtectDirListResponse> {
        let input = DescribeProtectDirListRequest(limit: limit, offset: offset, filters: filters, order: order, by: by)
        return self.client.execute(action: "DescribeProtectDirList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 防护目录列表
    ///
    /// 网页防篡改防护目录列表
    @inlinable
    public func describeProtectDirList(limit: UInt64, offset: UInt64, filters: [AssetFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProtectDirListResponse {
        let input = DescribeProtectDirListRequest(limit: limit, offset: offset, filters: filters, order: order, by: by)
        return try await self.client.execute(action: "DescribeProtectDirList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 防护目录列表
    ///
    /// 网页防篡改防护目录列表
    @inlinable
    public func describeProtectDirListPaginated(_ input: DescribeProtectDirListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProtectDirInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeProtectDirList, logger: logger, on: eventLoop)
    }

    /// 防护目录列表
    ///
    /// 网页防篡改防护目录列表
    @inlinable @discardableResult
    public func describeProtectDirListPaginated(_ input: DescribeProtectDirListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProtectDirListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProtectDirList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 防护目录列表
    ///
    /// 网页防篡改防护目录列表
    ///
    /// - Returns: `AsyncSequence`s of `ProtectDirInfo` and `DescribeProtectDirListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProtectDirListPaginator(_ input: DescribeProtectDirListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProtectDirListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProtectDirList, logger: logger, on: eventLoop)
    }
}
