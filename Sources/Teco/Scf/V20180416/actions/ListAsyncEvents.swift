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

extension Scf {
    /// ListAsyncEvents请求参数结构体
    public struct ListAsyncEventsRequest: TCPaginatedRequest {
        /// 函数名称
        public let functionName: String

        /// 命名空间
        public let namespace: String?

        /// 过滤条件，函数版本
        public let qualifier: String?

        /// 过滤条件，调用类型列表
        public let invokeType: [String]?

        /// 过滤条件，事件状态列表
        public let status: [String]?

        /// 过滤条件，开始执行时间左闭右开区间
        public let startTimeInterval: TimeInterval?

        /// 过滤条件，结束执行时间左闭右开区间
        public let endTimeInterval: TimeInterval?

        /// 可选值 ASC 和 DESC，默认 DESC
        public let order: String?

        /// 可选值 StartTime 和 EndTime，默认值 StartTime
        public let orderby: String?

        /// 数据偏移量，默认值为 0
        public let offset: Int64?

        /// 返回数据长度，默认值为 20，最大值 100
        public let limit: Int64?

        /// 过滤条件，事件调用请求id
        public let invokeRequestId: String?

        public init(functionName: String, namespace: String? = nil, qualifier: String? = nil, invokeType: [String]? = nil, status: [String]? = nil, startTimeInterval: TimeInterval? = nil, endTimeInterval: TimeInterval? = nil, order: String? = nil, orderby: String? = nil, offset: Int64? = nil, limit: Int64? = nil, invokeRequestId: String? = nil) {
            self.functionName = functionName
            self.namespace = namespace
            self.qualifier = qualifier
            self.invokeType = invokeType
            self.status = status
            self.startTimeInterval = startTimeInterval
            self.endTimeInterval = endTimeInterval
            self.order = order
            self.orderby = orderby
            self.offset = offset
            self.limit = limit
            self.invokeRequestId = invokeRequestId
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case namespace = "Namespace"
            case qualifier = "Qualifier"
            case invokeType = "InvokeType"
            case status = "Status"
            case startTimeInterval = "StartTimeInterval"
            case endTimeInterval = "EndTimeInterval"
            case order = "Order"
            case orderby = "Orderby"
            case offset = "Offset"
            case limit = "Limit"
            case invokeRequestId = "InvokeRequestId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListAsyncEventsResponse) -> ListAsyncEventsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(functionName: self.functionName, namespace: self.namespace, qualifier: self.qualifier, invokeType: self.invokeType, status: self.status, startTimeInterval: self.startTimeInterval, endTimeInterval: self.endTimeInterval, order: self.order, orderby: self.orderby, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, invokeRequestId: self.invokeRequestId)
        }
    }

    /// ListAsyncEvents返回参数结构体
    public struct ListAsyncEventsResponse: TCPaginatedResponse {
        /// 满足过滤条件的事件总数
        public let totalCount: Int64

        /// 异步事件列表
        public let eventList: [AsyncEvent]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case eventList = "EventList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AsyncEvent`` list from the paginated response.
        public func getItems() -> [AsyncEvent] {
            self.eventList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 拉取函数异步事件列表
    @inlinable
    public func listAsyncEvents(_ input: ListAsyncEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAsyncEventsResponse> {
        self.client.execute(action: "ListAsyncEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取函数异步事件列表
    @inlinable
    public func listAsyncEvents(_ input: ListAsyncEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAsyncEventsResponse {
        try await self.client.execute(action: "ListAsyncEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取函数异步事件列表
    @inlinable
    public func listAsyncEvents(functionName: String, namespace: String? = nil, qualifier: String? = nil, invokeType: [String]? = nil, status: [String]? = nil, startTimeInterval: TimeInterval? = nil, endTimeInterval: TimeInterval? = nil, order: String? = nil, orderby: String? = nil, offset: Int64? = nil, limit: Int64? = nil, invokeRequestId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAsyncEventsResponse> {
        self.listAsyncEvents(.init(functionName: functionName, namespace: namespace, qualifier: qualifier, invokeType: invokeType, status: status, startTimeInterval: startTimeInterval, endTimeInterval: endTimeInterval, order: order, orderby: orderby, offset: offset, limit: limit, invokeRequestId: invokeRequestId), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取函数异步事件列表
    @inlinable
    public func listAsyncEvents(functionName: String, namespace: String? = nil, qualifier: String? = nil, invokeType: [String]? = nil, status: [String]? = nil, startTimeInterval: TimeInterval? = nil, endTimeInterval: TimeInterval? = nil, order: String? = nil, orderby: String? = nil, offset: Int64? = nil, limit: Int64? = nil, invokeRequestId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAsyncEventsResponse {
        try await self.listAsyncEvents(.init(functionName: functionName, namespace: namespace, qualifier: qualifier, invokeType: invokeType, status: status, startTimeInterval: startTimeInterval, endTimeInterval: endTimeInterval, order: order, orderby: orderby, offset: offset, limit: limit, invokeRequestId: invokeRequestId), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取函数异步事件列表
    @inlinable
    public func listAsyncEventsPaginated(_ input: ListAsyncEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AsyncEvent])> {
        self.client.paginate(input: input, region: region, command: self.listAsyncEvents, logger: logger, on: eventLoop)
    }

    /// 拉取函数异步事件列表
    @inlinable @discardableResult
    public func listAsyncEventsPaginated(_ input: ListAsyncEventsRequest, region: TCRegion? = nil, onResponse: @escaping (ListAsyncEventsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listAsyncEvents, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取函数异步事件列表
    ///
    /// - Returns: `AsyncSequence`s of ``AsyncEvent`` and ``ListAsyncEventsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func listAsyncEventsPaginator(_ input: ListAsyncEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListAsyncEventsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listAsyncEvents, logger: logger, on: eventLoop)
    }
}
