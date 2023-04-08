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

extension Tcss {
    /// DescribeReverseShellEvents请求参数结构体
    public struct DescribeReverseShellEventsRequest: TCPaginatedRequest {
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
        public func makeNextRequest(with response: DescribeReverseShellEventsResponse) -> DescribeReverseShellEventsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeReverseShellEventsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeReverseShellEvents返回参数结构体
    public struct DescribeReverseShellEventsResponse: TCPaginatedResponse {
        /// 事件总数量
        public let totalCount: UInt64

        /// 反弹shell数组
        public let eventSet: [ReverseShellEventInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case eventSet = "EventSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ReverseShellEventInfo] {
            self.eventSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 运行时反弹shell列表
    ///
    /// 查询运行时反弹shell事件列表信息
    @inlinable
    public func describeReverseShellEvents(_ input: DescribeReverseShellEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReverseShellEventsResponse> {
        self.client.execute(action: "DescribeReverseShellEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时反弹shell列表
    ///
    /// 查询运行时反弹shell事件列表信息
    @inlinable
    public func describeReverseShellEvents(_ input: DescribeReverseShellEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellEventsResponse {
        try await self.client.execute(action: "DescribeReverseShellEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时反弹shell列表
    ///
    /// 查询运行时反弹shell事件列表信息
    @inlinable
    public func describeReverseShellEvents(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReverseShellEventsResponse> {
        self.describeReverseShellEvents(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时反弹shell列表
    ///
    /// 查询运行时反弹shell事件列表信息
    @inlinable
    public func describeReverseShellEvents(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellEventsResponse {
        try await self.describeReverseShellEvents(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时反弹shell列表
    ///
    /// 查询运行时反弹shell事件列表信息
    @inlinable
    public func describeReverseShellEventsPaginated(_ input: DescribeReverseShellEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ReverseShellEventInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeReverseShellEvents, logger: logger, on: eventLoop)
    }

    /// 运行时反弹shell列表
    ///
    /// 查询运行时反弹shell事件列表信息
    @inlinable @discardableResult
    public func describeReverseShellEventsPaginated(_ input: DescribeReverseShellEventsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeReverseShellEventsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeReverseShellEvents, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 运行时反弹shell列表
    ///
    /// 查询运行时反弹shell事件列表信息
    ///
    /// - Returns: `AsyncSequence`s of `ReverseShellEventInfo` and `DescribeReverseShellEventsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeReverseShellEventsPaginator(_ input: DescribeReverseShellEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeReverseShellEventsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeReverseShellEvents, logger: logger, on: eventLoop)
    }
}
