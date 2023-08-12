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
    /// DescribeBaselineItemList请求参数结构体
    public struct DescribeBaselineItemListRequest: TCPaginatedRequest {
        /// <li>PolicyId - int64 - 是否必填：否 - 策略Id</li>
        /// <li>RuleId - int64 - 是否必填：否 - 规则Id</li>
        /// <li>HostId - string - 是否必填：否 - 主机Id</li>
        /// <li>HostName - string - 是否必填：否 - 主机名</li>
        /// <li>HostIp - string - 是否必填：否 - 主机IP</li>
        /// <li>ItemId - String - 是否必填：否 - 检测项Id</li>
        /// <li>ItemName - String - 是否必填：否 - 项名称</li>
        /// <li>DetectStatus - int - 是否必填：否 - 检测状态[0:未通过|3:通过|5:检测中]</li>
        /// <li>Level - int - 是否必填：否 - 风险等级</li>
        /// <li>StartTime - string - 是否必填：否 - 开始时间</li>
        /// <li>EndTime - string - 是否必填：否 - 结束时间</li>
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
        public func makeNextRequest(with response: DescribeBaselineItemListResponse) -> DescribeBaselineItemListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBaselineItemListRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeBaselineItemList返回参数结构体
    public struct DescribeBaselineItemListResponse: TCPaginatedResponse {
        public let list: [BaselineItem]

        /// 总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BaselineItem`` list from the paginated response.
        public func getItems() -> [BaselineItem] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取基线项检测结果列表
    @inlinable
    public func describeBaselineItemList(_ input: DescribeBaselineItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineItemListResponse> {
        self.client.execute(action: "DescribeBaselineItemList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取基线项检测结果列表
    @inlinable
    public func describeBaselineItemList(_ input: DescribeBaselineItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineItemListResponse {
        try await self.client.execute(action: "DescribeBaselineItemList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取基线项检测结果列表
    @inlinable
    public func describeBaselineItemList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineItemListResponse> {
        self.describeBaselineItemList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线项检测结果列表
    @inlinable
    public func describeBaselineItemList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineItemListResponse {
        try await self.describeBaselineItemList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线项检测结果列表
    @inlinable
    public func describeBaselineItemListPaginated(_ input: DescribeBaselineItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BaselineItem])> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineItemList, logger: logger, on: eventLoop)
    }

    /// 获取基线项检测结果列表
    @inlinable @discardableResult
    public func describeBaselineItemListPaginated(_ input: DescribeBaselineItemListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBaselineItemListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineItemList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取基线项检测结果列表
    ///
    /// - Returns: `AsyncSequence`s of `BaselineItem` and `DescribeBaselineItemListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBaselineItemListPaginator(_ input: DescribeBaselineItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBaselineItemListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBaselineItemList, logger: logger, on: eventLoop)
    }
}
