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
    /// DescribeBaselineDownloadList请求参数结构体
    public struct DescribeBaselineDownloadListRequest: TCPaginatedRequest {
        /// <li>Status - int - 是否必填：否 - 0:导出中 1:已完成</li>
        /// <li>StartTime - string - 是否必填：否 - 开始时间</li>
        /// <li>EndTime - string - 是否必填：否 - 结束时间</li>
        /// <li>TaskName - string - 是否必填：否 - 任务名称</li>
        public let filters: [Filter]?

        /// 限制条数,默认10,最大100
        public let limit: Int64?

        /// 偏移量,默认0
        public let offset: Int64?

        /// 排序方式: [ASC:升序|DESC:降序]
        public let order: String?

        /// 可选排序列: [StartTime|EndTime]
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
        public func makeNextRequest(with response: DescribeBaselineDownloadListResponse) -> DescribeBaselineDownloadListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBaselineDownloadListRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeBaselineDownloadList返回参数结构体
    public struct DescribeBaselineDownloadListResponse: TCPaginatedResponse {
        /// 无
        public let list: [BaselineDownload]

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
        public func getItems() -> [BaselineDownload] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取基线下载列表
    @inlinable
    public func describeBaselineDownloadList(_ input: DescribeBaselineDownloadListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineDownloadListResponse> {
        self.client.execute(action: "DescribeBaselineDownloadList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取基线下载列表
    @inlinable
    public func describeBaselineDownloadList(_ input: DescribeBaselineDownloadListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineDownloadListResponse {
        try await self.client.execute(action: "DescribeBaselineDownloadList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取基线下载列表
    @inlinable
    public func describeBaselineDownloadList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineDownloadListResponse> {
        self.describeBaselineDownloadList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线下载列表
    @inlinable
    public func describeBaselineDownloadList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineDownloadListResponse {
        try await self.describeBaselineDownloadList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线下载列表
    @inlinable
    public func describeBaselineDownloadListPaginated(_ input: DescribeBaselineDownloadListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BaselineDownload])> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineDownloadList, logger: logger, on: eventLoop)
    }

    /// 获取基线下载列表
    @inlinable @discardableResult
    public func describeBaselineDownloadListPaginated(_ input: DescribeBaselineDownloadListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBaselineDownloadListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBaselineDownloadList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取基线下载列表
    ///
    /// - Returns: `AsyncSequence`s of `BaselineDownload` and `DescribeBaselineDownloadListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBaselineDownloadListPaginator(_ input: DescribeBaselineDownloadListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBaselineDownloadListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBaselineDownloadList, logger: logger, on: eventLoop)
    }
}
