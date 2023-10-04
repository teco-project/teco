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

extension Iecp {
    /// DescribeMessageRouteList请求参数结构体
    public struct DescribeMessageRouteListRequest: TCPaginatedRequest {
        public let limit: Int64

        public let offset: Int64

        public let filter: String?

        public let startTime: String?

        public let endTime: String?

        public let order: String?

        public init(limit: Int64, offset: Int64, filter: String? = nil, startTime: String? = nil, endTime: String? = nil, order: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filter = filter
            self.startTime = startTime
            self.endTime = endTime
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filter = "Filter"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMessageRouteListResponse) -> DescribeMessageRouteListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: self.offset + .init(response.getItems().count), filter: self.filter, startTime: self.startTime, endTime: self.endTime, order: self.order)
        }
    }

    /// DescribeMessageRouteList返回参数结构体
    public struct DescribeMessageRouteListResponse: TCPaginatedResponse {
        public let routeList: [RouteInfo]

        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case routeList = "RouteList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RouteInfo`` list from the paginated response.
        public func getItems() -> [RouteInfo] {
            self.routeList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取消息路由列表
    @inlinable
    public func describeMessageRouteList(_ input: DescribeMessageRouteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMessageRouteListResponse> {
        self.client.execute(action: "DescribeMessageRouteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取消息路由列表
    @inlinable
    public func describeMessageRouteList(_ input: DescribeMessageRouteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMessageRouteListResponse {
        try await self.client.execute(action: "DescribeMessageRouteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取消息路由列表
    @inlinable
    public func describeMessageRouteList(limit: Int64, offset: Int64, filter: String? = nil, startTime: String? = nil, endTime: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMessageRouteListResponse> {
        self.describeMessageRouteList(.init(limit: limit, offset: offset, filter: filter, startTime: startTime, endTime: endTime, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 获取消息路由列表
    @inlinable
    public func describeMessageRouteList(limit: Int64, offset: Int64, filter: String? = nil, startTime: String? = nil, endTime: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMessageRouteListResponse {
        try await self.describeMessageRouteList(.init(limit: limit, offset: offset, filter: filter, startTime: startTime, endTime: endTime, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 获取消息路由列表
    @inlinable
    public func describeMessageRouteListPaginated(_ input: DescribeMessageRouteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RouteInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeMessageRouteList, logger: logger, on: eventLoop)
    }

    /// 获取消息路由列表
    @inlinable @discardableResult
    public func describeMessageRouteListPaginated(_ input: DescribeMessageRouteListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMessageRouteListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMessageRouteList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取消息路由列表
    ///
    /// - Returns: `AsyncSequence`s of ``RouteInfo`` and ``DescribeMessageRouteListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMessageRouteListPaginator(_ input: DescribeMessageRouteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMessageRouteListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMessageRouteList, logger: logger, on: eventLoop)
    }
}
