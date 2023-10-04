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

extension Cwp {
    /// DescribeProtectNetList请求参数结构体
    public struct DescribeProtectNetListRequest: TCPaginatedRequest {
        /// 过滤条件。
        /// - Keyword- String - 是否必填：否 - 关键词过滤，
        /// - Uuids - String - 是否必填：否 - 主机id过滤
        public let filters: [Filters]?

        /// 需要返回的数量，最大值为100
        public let limit: UInt64?

        /// 排序步长
        public let offset: UInt64?

        /// 排序方法
        public let order: String?

        /// 排序字段 StartTime，EndTime
        public let by: String?

        public init(filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
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
        public func makeNextRequest(with response: DescribeProtectNetListResponse) -> DescribeProtectNetListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeProtectNetList返回参数结构体
    public struct DescribeProtectNetListResponse: TCPaginatedResponse {
        /// 总条数
        public let totalCount: UInt64

        /// 安全管家数据
        public let list: [ProtectNetInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ProtectNetInfo`` list from the paginated response.
        public func getItems() -> [ProtectNetInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 旗舰重保列表
    ///
    /// 专家服务-旗舰重保列表
    @inlinable
    public func describeProtectNetList(_ input: DescribeProtectNetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProtectNetListResponse> {
        self.client.execute(action: "DescribeProtectNetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 旗舰重保列表
    ///
    /// 专家服务-旗舰重保列表
    @inlinable
    public func describeProtectNetList(_ input: DescribeProtectNetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProtectNetListResponse {
        try await self.client.execute(action: "DescribeProtectNetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 旗舰重保列表
    ///
    /// 专家服务-旗舰重保列表
    @inlinable
    public func describeProtectNetList(filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProtectNetListResponse> {
        self.describeProtectNetList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 旗舰重保列表
    ///
    /// 专家服务-旗舰重保列表
    @inlinable
    public func describeProtectNetList(filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProtectNetListResponse {
        try await self.describeProtectNetList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 旗舰重保列表
    ///
    /// 专家服务-旗舰重保列表
    @inlinable
    public func describeProtectNetListPaginated(_ input: DescribeProtectNetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProtectNetInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeProtectNetList, logger: logger, on: eventLoop)
    }

    /// 旗舰重保列表
    ///
    /// 专家服务-旗舰重保列表
    @inlinable @discardableResult
    public func describeProtectNetListPaginated(_ input: DescribeProtectNetListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProtectNetListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProtectNetList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 旗舰重保列表
    ///
    /// 专家服务-旗舰重保列表
    ///
    /// - Returns: `AsyncSequence`s of ``ProtectNetInfo`` and ``DescribeProtectNetListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProtectNetListPaginator(_ input: DescribeProtectNetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProtectNetListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProtectNetList, logger: logger, on: eventLoop)
    }
}
