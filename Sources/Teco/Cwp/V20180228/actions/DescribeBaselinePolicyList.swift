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

import TecoCore
import TecoPaginationHelpers

extension Cwp {
    /// DescribeBaselinePolicyList请求参数结构体
    public struct DescribeBaselinePolicyListRequest: TCPaginatedRequest {
        /// <li>PolicyName - String - 是否必填：否 - 策略名称</li>
        public let filters: [Filter]?

        /// 限制条数,默认10,最大100
        public let limit: Int64?

        /// 偏移量,默认0
        public let offset: Int64?

        /// 排序方式: [ASC:升序|DESC:降序]
        public let order: String?

        /// 可选排序列: [RuleCount|ItemCount|HostCount]
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
        public func makeNextRequest(with response: DescribeBaselinePolicyListResponse) -> DescribeBaselinePolicyListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBaselinePolicyListRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeBaselinePolicyList返回参数结构体
    public struct DescribeBaselinePolicyListResponse: TCPaginatedResponse {
        /// 无
        public let list: [BaselinePolicy]

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
        public func getItems() -> [BaselinePolicy] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取基线策略列表
    @inlinable
    public func describeBaselinePolicyList(_ input: DescribeBaselinePolicyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselinePolicyListResponse> {
        self.client.execute(action: "DescribeBaselinePolicyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取基线策略列表
    @inlinable
    public func describeBaselinePolicyList(_ input: DescribeBaselinePolicyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselinePolicyListResponse {
        try await self.client.execute(action: "DescribeBaselinePolicyList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取基线策略列表
    @inlinable
    public func describeBaselinePolicyList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselinePolicyListResponse> {
        self.describeBaselinePolicyList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线策略列表
    @inlinable
    public func describeBaselinePolicyList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselinePolicyListResponse {
        try await self.describeBaselinePolicyList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线策略列表
    @inlinable
    public func describeBaselinePolicyListPaginated(_ input: DescribeBaselinePolicyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BaselinePolicy])> {
        self.client.paginate(input: input, region: region, command: self.describeBaselinePolicyList, logger: logger, on: eventLoop)
    }

    /// 获取基线策略列表
    @inlinable @discardableResult
    public func describeBaselinePolicyListPaginated(_ input: DescribeBaselinePolicyListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBaselinePolicyListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBaselinePolicyList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取基线策略列表
    ///
    /// - Returns: `AsyncSequence`s of `BaselinePolicy` and `DescribeBaselinePolicyListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBaselinePolicyListPaginator(_ input: DescribeBaselinePolicyListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBaselinePolicyListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBaselinePolicyList, logger: logger, on: eventLoop)
    }
}
