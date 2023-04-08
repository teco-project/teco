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
    /// DescribeBaselineItemDetectList请求参数结构体
    public struct DescribeBaselineItemDetectListRequest: TCPaginatedRequest {
        /// <li>HostId - string - 是否必填：否 - 主机Id</li>
        /// <li>RuleId - int64 - 是否必填：否 - 规则Id</li>
        /// <li>PolicyId - int64 - 是否必填：否 - 规则Id</li>
        /// <li>ItemName - string - 是否必填：否 - 项名称</li>
        /// <li>DetectStatus - int - 是否必填：否 - 检测状态</li>
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

        /// 可选排序列: [HostCount|FirstTime|LastTime]
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
        public func makeNextRequest(with response: DescribeBaselineItemDetectListResponse) -> DescribeBaselineItemDetectListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBaselineItemDetectListRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeBaselineItemDetectList返回参数结构体
    public struct DescribeBaselineItemDetectListResponse: TCPaginatedResponse {
        /// 总数
        public let total: Int64

        /// 无
        public let list: [BaselineItemDetect]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BaselineItemDetect] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取基线检测项的列表
    @inlinable
    public func describeBaselineItemDetectList(_ input: DescribeBaselineItemDetectListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineItemDetectListResponse> {
        self.client.execute(action: "DescribeBaselineItemDetectList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取基线检测项的列表
    @inlinable
    public func describeBaselineItemDetectList(_ input: DescribeBaselineItemDetectListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineItemDetectListResponse {
        try await self.client.execute(action: "DescribeBaselineItemDetectList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取基线检测项的列表
    @inlinable
    public func describeBaselineItemDetectList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineItemDetectListResponse> {
        self.describeBaselineItemDetectList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线检测项的列表
    @inlinable
    public func describeBaselineItemDetectList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineItemDetectListResponse {
        try await self.describeBaselineItemDetectList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线检测项的列表
    @inlinable
    public func describeBaselineItemDetectListPaginated(_ input: DescribeBaselineItemDetectListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BaselineItemDetect])> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineItemDetectList, logger: logger, on: eventLoop)
    }

    /// 获取基线检测项的列表
    @inlinable @discardableResult
    public func describeBaselineItemDetectListPaginated(_ input: DescribeBaselineItemDetectListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBaselineItemDetectListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineItemDetectList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取基线检测项的列表
    ///
    /// - Returns: `AsyncSequence`s of `BaselineItemDetect` and `DescribeBaselineItemDetectListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBaselineItemDetectListPaginator(_ input: DescribeBaselineItemDetectListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBaselineItemDetectListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBaselineItemDetectList, logger: logger, on: eventLoop)
    }
}
