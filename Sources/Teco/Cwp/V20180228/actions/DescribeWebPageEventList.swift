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
    /// DescribeWebPageEventList请求参数结构体
    public struct DescribeWebPageEventListRequest: TCPaginatedRequest {
        /// 过滤条件
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>EventType - String - 是否必填：否 - 事件类型</li>
        /// <li>EventStatus - String - 是否必填：否 - 事件状态</li>
        public let filters: [AssetFilters]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 排序方式：CreateTime 或 RestoreTime，默认为CreateTime
        public let by: String?

        /// 排序方式，0降序，1升序，默认为0
        public let order: UInt64?

        public init(filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, by: String? = nil, order: UInt64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case by = "By"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeWebPageEventListResponse) -> DescribeWebPageEventListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWebPageEventListRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, by: self.by, order: self.order)
        }
    }

    /// DescribeWebPageEventList返回参数结构体
    public struct DescribeWebPageEventListResponse: TCPaginatedResponse {
        /// 防护事件列表信息
        public let list: [ProtectEventLists]

        /// 总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ProtectEventLists] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询篡改事件列表
    @inlinable
    public func describeWebPageEventList(_ input: DescribeWebPageEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebPageEventListResponse> {
        self.client.execute(action: "DescribeWebPageEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询篡改事件列表
    @inlinable
    public func describeWebPageEventList(_ input: DescribeWebPageEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebPageEventListResponse {
        try await self.client.execute(action: "DescribeWebPageEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询篡改事件列表
    @inlinable
    public func describeWebPageEventList(filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, by: String? = nil, order: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebPageEventListResponse> {
        let input = DescribeWebPageEventListRequest(filters: filters, offset: offset, limit: limit, by: by, order: order)
        return self.client.execute(action: "DescribeWebPageEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询篡改事件列表
    @inlinable
    public func describeWebPageEventList(filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, by: String? = nil, order: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebPageEventListResponse {
        let input = DescribeWebPageEventListRequest(filters: filters, offset: offset, limit: limit, by: by, order: order)
        return try await self.client.execute(action: "DescribeWebPageEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询篡改事件列表
    @inlinable
    public func describeWebPageEventListPaginated(_ input: DescribeWebPageEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProtectEventLists])> {
        self.client.paginate(input: input, region: region, command: self.describeWebPageEventList, logger: logger, on: eventLoop)
    }

    /// 查询篡改事件列表
    @inlinable @discardableResult
    public func describeWebPageEventListPaginated(_ input: DescribeWebPageEventListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWebPageEventListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWebPageEventList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询篡改事件列表
    @inlinable
    public func describeWebPageEventListPaginator(_ input: DescribeWebPageEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeWebPageEventListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWebPageEventList, logger: logger, on: eventLoop)
    }
}
