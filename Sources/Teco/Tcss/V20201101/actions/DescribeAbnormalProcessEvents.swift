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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Tcss {
    /// DescribeAbnormalProcessEvents请求参数结构体
    public struct DescribeAbnormalProcessEventsRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        public let filters: [RunTimeFilters]?

        /// 升序降序,asc desc
        public let order: String?

        /// 排序字段
        public let by: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAbnormalProcessEventsResponse) -> DescribeAbnormalProcessEventsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAbnormalProcessEventsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeAbnormalProcessEvents返回参数结构体
    public struct DescribeAbnormalProcessEventsResponse: TCPaginatedResponse {
        /// 事件总数量
        public let totalCount: UInt64

        /// 异常进程数组
        public let eventSet: [AbnormalProcessEventInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case eventSet = "EventSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AbnormalProcessEventInfo] {
            self.eventSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 运行时异常进程列表
    ///
    /// 查询运行时异常进程事件列表信息
    @inlinable
    public func describeAbnormalProcessEvents(_ input: DescribeAbnormalProcessEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAbnormalProcessEventsResponse> {
        self.client.execute(action: "DescribeAbnormalProcessEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时异常进程列表
    ///
    /// 查询运行时异常进程事件列表信息
    @inlinable
    public func describeAbnormalProcessEvents(_ input: DescribeAbnormalProcessEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAbnormalProcessEventsResponse {
        try await self.client.execute(action: "DescribeAbnormalProcessEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时异常进程列表
    ///
    /// 查询运行时异常进程事件列表信息
    @inlinable
    public func describeAbnormalProcessEvents(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAbnormalProcessEventsResponse> {
        self.describeAbnormalProcessEvents(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时异常进程列表
    ///
    /// 查询运行时异常进程事件列表信息
    @inlinable
    public func describeAbnormalProcessEvents(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAbnormalProcessEventsResponse {
        try await self.describeAbnormalProcessEvents(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时异常进程列表
    ///
    /// 查询运行时异常进程事件列表信息
    @inlinable
    public func describeAbnormalProcessEventsPaginated(_ input: DescribeAbnormalProcessEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AbnormalProcessEventInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAbnormalProcessEvents, logger: logger, on: eventLoop)
    }

    /// 运行时异常进程列表
    ///
    /// 查询运行时异常进程事件列表信息
    @inlinable @discardableResult
    public func describeAbnormalProcessEventsPaginated(_ input: DescribeAbnormalProcessEventsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAbnormalProcessEventsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAbnormalProcessEvents, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 运行时异常进程列表
    ///
    /// 查询运行时异常进程事件列表信息
    ///
    /// - Returns: `AsyncSequence`s of `AbnormalProcessEventInfo` and `DescribeAbnormalProcessEventsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAbnormalProcessEventsPaginator(_ input: DescribeAbnormalProcessEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAbnormalProcessEventsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAbnormalProcessEvents, logger: logger, on: eventLoop)
    }
}
