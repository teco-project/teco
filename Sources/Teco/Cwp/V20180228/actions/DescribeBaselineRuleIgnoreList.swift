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
    /// DescribeBaselineRuleIgnoreList请求参数结构体
    public struct DescribeBaselineRuleIgnoreListRequest: TCPaginatedRequest {
        /// - RuleName - String - 是否必填：否 - 规则名称
        /// - ItemId- int - 是否必填：否 - 检测项Id
        public let filters: [Filter]?

        /// 限制条数,默认10,最大100
        public let limit: Int64?

        /// 偏移量,默认0
        public let offset: Int64?

        /// 排序方式: [ASC:升序|DESC:降序]
        public let order: String?

        /// 可选排序列: [HostCount]
        public let by: String?

        public init(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, by: String? = nil) {
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
        public func makeNextRequest(with response: DescribeBaselineRuleIgnoreListResponse) -> DescribeBaselineRuleIgnoreListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeBaselineRuleIgnoreList返回参数结构体
    public struct DescribeBaselineRuleIgnoreListResponse: TCPaginatedResponse {
        /// 总数
        public let total: Int64

        /// 列表
        public let list: [BaselineRule]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BaselineRule`` list from the paginated response.
        public func getItems() -> [BaselineRule] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取基线忽略规则列表
    @inlinable
    public func describeBaselineRuleIgnoreList(_ input: DescribeBaselineRuleIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineRuleIgnoreListResponse> {
        self.client.execute(action: "DescribeBaselineRuleIgnoreList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取基线忽略规则列表
    @inlinable
    public func describeBaselineRuleIgnoreList(_ input: DescribeBaselineRuleIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineRuleIgnoreListResponse {
        try await self.client.execute(action: "DescribeBaselineRuleIgnoreList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取基线忽略规则列表
    @inlinable
    public func describeBaselineRuleIgnoreList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineRuleIgnoreListResponse> {
        self.describeBaselineRuleIgnoreList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线忽略规则列表
    @inlinable
    public func describeBaselineRuleIgnoreList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineRuleIgnoreListResponse {
        try await self.describeBaselineRuleIgnoreList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线忽略规则列表
    @inlinable
    public func describeBaselineRuleIgnoreListPaginated(_ input: DescribeBaselineRuleIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BaselineRule])> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineRuleIgnoreList, logger: logger, on: eventLoop)
    }

    /// 获取基线忽略规则列表
    @inlinable @discardableResult
    public func describeBaselineRuleIgnoreListPaginated(_ input: DescribeBaselineRuleIgnoreListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBaselineRuleIgnoreListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineRuleIgnoreList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取基线忽略规则列表
    ///
    /// - Returns: `AsyncSequence`s of ``BaselineRule`` and ``DescribeBaselineRuleIgnoreListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBaselineRuleIgnoreListPaginator(_ input: DescribeBaselineRuleIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBaselineRuleIgnoreListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBaselineRuleIgnoreList, logger: logger, on: eventLoop)
    }
}
