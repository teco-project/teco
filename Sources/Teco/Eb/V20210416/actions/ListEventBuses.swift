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

extension Eb {
    /// ListEventBuses请求参数结构体
    public struct ListEventBusesRequest: TCPaginatedRequest {
        /// 根据哪个字段进行返回结果排序,支持以下字段：AddTime（创建时间）, ModTime（修改时间）
        public let orderBy: String?

        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?

        /// 以升序还是降序的方式返回结果，可选值 ASC（升序） 和 DESC（降序）
        public let order: String?

        /// 过滤条件，详见下表：实例过滤条件表。每次请求的Filters的上限为10，Filter.Values的上限为5。
        public let filters: [Filter]?

        /// 分页偏移量，默认为0。
        public let offset: Int64?

        public init(orderBy: String? = nil, limit: Int64? = nil, order: String? = nil, filters: [Filter]? = nil, offset: Int64? = nil) {
            self.orderBy = orderBy
            self.limit = limit
            self.order = order
            self.filters = filters
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case orderBy = "OrderBy"
            case limit = "Limit"
            case order = "Order"
            case filters = "Filters"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListEventBusesResponse) -> ListEventBusesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListEventBusesRequest(orderBy: self.orderBy, limit: self.limit, order: self.order, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// ListEventBuses返回参数结构体
    public struct ListEventBusesResponse: TCPaginatedResponse {
        /// 事件集信息
        public let eventBuses: [EventBus]

        /// 事件集总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eventBuses = "EventBuses"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``EventBus`` list from the paginated response.
        public func getItems() -> [EventBus] {
            self.eventBuses
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取事件集列表
    @inlinable
    public func listEventBuses(_ input: ListEventBusesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEventBusesResponse> {
        self.client.execute(action: "ListEventBuses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取事件集列表
    @inlinable
    public func listEventBuses(_ input: ListEventBusesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEventBusesResponse {
        try await self.client.execute(action: "ListEventBuses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取事件集列表
    @inlinable
    public func listEventBuses(orderBy: String? = nil, limit: Int64? = nil, order: String? = nil, filters: [Filter]? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEventBusesResponse> {
        self.listEventBuses(.init(orderBy: orderBy, limit: limit, order: order, filters: filters, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取事件集列表
    @inlinable
    public func listEventBuses(orderBy: String? = nil, limit: Int64? = nil, order: String? = nil, filters: [Filter]? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEventBusesResponse {
        try await self.listEventBuses(.init(orderBy: orderBy, limit: limit, order: order, filters: filters, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取事件集列表
    @inlinable
    public func listEventBusesPaginated(_ input: ListEventBusesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [EventBus])> {
        self.client.paginate(input: input, region: region, command: self.listEventBuses, logger: logger, on: eventLoop)
    }

    /// 获取事件集列表
    @inlinable @discardableResult
    public func listEventBusesPaginated(_ input: ListEventBusesRequest, region: TCRegion? = nil, onResponse: @escaping (ListEventBusesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listEventBuses, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取事件集列表
    ///
    /// - Returns: `AsyncSequence`s of `EventBus` and `ListEventBusesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func listEventBusesPaginator(_ input: ListEventBusesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListEventBusesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listEventBuses, logger: logger, on: eventLoop)
    }
}
