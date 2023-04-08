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
import TecoPaginationHelpers

extension Cwp {
    /// DescribeBaselineItemIgnoreList请求参数结构体
    public struct DescribeBaselineItemIgnoreListRequest: TCPaginatedRequest {
        /// 忽略规则ID
        public let ruleID: Int64

        /// 限制条数,默认10,最大100
        public let limit: Int64?

        /// 请求偏移默认0
        public let offset: Int64?

        /// <li>CatgoryId - int64 - 是否必填：否 - 规则Id</li>
        public let filters: [Filter]?

        /// 排序方式 [ASC:升序|DESC:降序]
        public let order: String?

        /// 可选排序列 [ID]
        public let by: String?

        public init(ruleID: Int64, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, order: String? = nil, by: String? = nil) {
            self.ruleID = ruleID
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case ruleID = "RuleID"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBaselineItemIgnoreListResponse) -> DescribeBaselineItemIgnoreListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBaselineItemIgnoreListRequest(ruleID: self.ruleID, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeBaselineItemIgnoreList返回参数结构体
    public struct DescribeBaselineItemIgnoreListResponse: TCPaginatedResponse {
        /// 无
        public let list: [BaselineItemInfo]

        /// 总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BaselineItemInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取忽略规则项列表
    @inlinable
    public func describeBaselineItemIgnoreList(_ input: DescribeBaselineItemIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineItemIgnoreListResponse> {
        self.client.execute(action: "DescribeBaselineItemIgnoreList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取忽略规则项列表
    @inlinable
    public func describeBaselineItemIgnoreList(_ input: DescribeBaselineItemIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineItemIgnoreListResponse {
        try await self.client.execute(action: "DescribeBaselineItemIgnoreList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取忽略规则项列表
    @inlinable
    public func describeBaselineItemIgnoreList(ruleID: Int64, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineItemIgnoreListResponse> {
        self.describeBaselineItemIgnoreList(.init(ruleID: ruleID, limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取忽略规则项列表
    @inlinable
    public func describeBaselineItemIgnoreList(ruleID: Int64, limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineItemIgnoreListResponse {
        try await self.describeBaselineItemIgnoreList(.init(ruleID: ruleID, limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取忽略规则项列表
    @inlinable
    public func describeBaselineItemIgnoreListPaginated(_ input: DescribeBaselineItemIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BaselineItemInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineItemIgnoreList, logger: logger, on: eventLoop)
    }

    /// 获取忽略规则项列表
    @inlinable @discardableResult
    public func describeBaselineItemIgnoreListPaginated(_ input: DescribeBaselineItemIgnoreListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBaselineItemIgnoreListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineItemIgnoreList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取忽略规则项列表
    ///
    /// - Returns: `AsyncSequence`s of `BaselineItemInfo` and `DescribeBaselineItemIgnoreListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBaselineItemIgnoreListPaginator(_ input: DescribeBaselineItemIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBaselineItemIgnoreListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBaselineItemIgnoreList, logger: logger, on: eventLoop)
    }
}
