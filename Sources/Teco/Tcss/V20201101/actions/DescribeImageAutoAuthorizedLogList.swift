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

extension Tcss {
    /// DescribeImageAutoAuthorizedLogList请求参数结构体
    public struct DescribeImageAutoAuthorizedLogListRequest: TCPaginatedRequest {
        /// 自动授权任务Id
        public let taskId: Int64

        /// Status授权结果，SUCCESS:成功，REACH_LIMIT:达到授权上限，LICENSE_INSUFFICIENT:授权数不足
        public let filters: [AssetFilters]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 排序字段：AuthorizedTime
        public let by: String?

        /// 排序方式，asc，desc
        public let order: String?

        public init(taskId: Int64, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, by: String? = nil, order: String? = nil) {
            self.taskId = taskId
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case by = "By"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeImageAutoAuthorizedLogListResponse) -> DescribeImageAutoAuthorizedLogListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(taskId: self.taskId, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), by: self.by, order: self.order)
        }
    }

    /// DescribeImageAutoAuthorizedLogList返回参数结构体
    public struct DescribeImageAutoAuthorizedLogListResponse: TCPaginatedResponse {
        /// 总数量
        public let totalCount: UInt64

        /// 自动授权结果镜像列表
        public let list: [AutoAuthorizedImageInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AutoAuthorizedImageInfo`` list from the paginated response.
        public func getItems() -> [AutoAuthorizedImageInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询镜像自动授权结果列表
    @inlinable
    public func describeImageAutoAuthorizedLogList(_ input: DescribeImageAutoAuthorizedLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageAutoAuthorizedLogListResponse> {
        self.client.execute(action: "DescribeImageAutoAuthorizedLogList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像自动授权结果列表
    @inlinable
    public func describeImageAutoAuthorizedLogList(_ input: DescribeImageAutoAuthorizedLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageAutoAuthorizedLogListResponse {
        try await self.client.execute(action: "DescribeImageAutoAuthorizedLogList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像自动授权结果列表
    @inlinable
    public func describeImageAutoAuthorizedLogList(taskId: Int64, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageAutoAuthorizedLogListResponse> {
        self.describeImageAutoAuthorizedLogList(.init(taskId: taskId, filters: filters, limit: limit, offset: offset, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像自动授权结果列表
    @inlinable
    public func describeImageAutoAuthorizedLogList(taskId: Int64, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageAutoAuthorizedLogListResponse {
        try await self.describeImageAutoAuthorizedLogList(.init(taskId: taskId, filters: filters, limit: limit, offset: offset, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像自动授权结果列表
    @inlinable
    public func describeImageAutoAuthorizedLogListPaginated(_ input: DescribeImageAutoAuthorizedLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AutoAuthorizedImageInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeImageAutoAuthorizedLogList, logger: logger, on: eventLoop)
    }

    /// 查询镜像自动授权结果列表
    @inlinable @discardableResult
    public func describeImageAutoAuthorizedLogListPaginated(_ input: DescribeImageAutoAuthorizedLogListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeImageAutoAuthorizedLogListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeImageAutoAuthorizedLogList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询镜像自动授权结果列表
    ///
    /// - Returns: `AsyncSequence`s of ``AutoAuthorizedImageInfo`` and ``DescribeImageAutoAuthorizedLogListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeImageAutoAuthorizedLogListPaginator(_ input: DescribeImageAutoAuthorizedLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeImageAutoAuthorizedLogListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeImageAutoAuthorizedLogList, logger: logger, on: eventLoop)
    }
}
