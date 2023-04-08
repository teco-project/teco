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
    /// DescribeBaselineItemInfo请求参数结构体
    public struct DescribeBaselineItemInfoRequest: TCPaginatedRequest {
        /// <li>ItemId - int64 - 是否必填：否 - 项Id</i>
        /// <li>PolicyId - int64 - 是否必填：否 - 项Id</i>
        /// <li>Level - int - 是否必填：否 - 风险等级</li>
        /// <li>ItemName - string - 是否必填：否 - 检测项名字</li>
        /// <li>RuleId - int - 是否必填：否 - 规则Id</li>
        public let filters: [Filter]?

        /// 限制条数,默认10,最大100
        public let limit: Int64?

        /// 偏移量,默认0
        public let offset: Int64?

        /// 排序方式: [ASC:升序|DESC:降序]
        public let order: String?

        /// 可选排序列
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
        public func makeNextRequest(with response: DescribeBaselineItemInfoResponse) -> DescribeBaselineItemInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBaselineItemInfoRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeBaselineItemInfo返回参数结构体
    public struct DescribeBaselineItemInfoResponse: TCPaginatedResponse {
        /// 结果列表
        public let list: [BaselineItemInfo]

        /// 总条目数
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

    /// 获取基线检测项信息
    @inlinable
    public func describeBaselineItemInfo(_ input: DescribeBaselineItemInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineItemInfoResponse> {
        self.client.execute(action: "DescribeBaselineItemInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取基线检测项信息
    @inlinable
    public func describeBaselineItemInfo(_ input: DescribeBaselineItemInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineItemInfoResponse {
        try await self.client.execute(action: "DescribeBaselineItemInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取基线检测项信息
    @inlinable
    public func describeBaselineItemInfo(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineItemInfoResponse> {
        self.describeBaselineItemInfo(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线检测项信息
    @inlinable
    public func describeBaselineItemInfo(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineItemInfoResponse {
        try await self.describeBaselineItemInfo(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线检测项信息
    @inlinable
    public func describeBaselineItemInfoPaginated(_ input: DescribeBaselineItemInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BaselineItemInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineItemInfo, logger: logger, on: eventLoop)
    }

    /// 获取基线检测项信息
    @inlinable @discardableResult
    public func describeBaselineItemInfoPaginated(_ input: DescribeBaselineItemInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBaselineItemInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineItemInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取基线检测项信息
    ///
    /// - Returns: `AsyncSequence`s of `BaselineItemInfo` and `DescribeBaselineItemInfoResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBaselineItemInfoPaginator(_ input: DescribeBaselineItemInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBaselineItemInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBaselineItemInfo, logger: logger, on: eventLoop)
    }
}
