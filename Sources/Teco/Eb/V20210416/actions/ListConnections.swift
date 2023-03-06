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

import TecoPaginationHelpers

extension Eb {
    /// ListConnections请求参数结构体
    public struct ListConnectionsRequest: TCPaginatedRequest {
        /// 事件集ID
        public let eventBusId: String

        /// 根据哪个字段进行返回结果排序，目前支持如下以下字段：AddTime, ModTime
        public let orderBy: String?

        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?

        /// 以升序还是降序的方式返回结果，可选值 ASC 和 DESC
        public let order: String?

        /// 偏移量，默认为0。
        public let offset: Int64?

        public init(eventBusId: String, orderBy: String? = nil, limit: Int64? = nil, order: String? = nil, offset: Int64? = nil) {
            self.eventBusId = eventBusId
            self.orderBy = orderBy
            self.limit = limit
            self.order = order
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
            case orderBy = "OrderBy"
            case limit = "Limit"
            case order = "Order"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: ListConnectionsResponse) -> ListConnectionsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListConnectionsRequest(eventBusId: self.eventBusId, orderBy: self.orderBy, limit: self.limit, order: self.order, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// ListConnections返回参数结构体
    public struct ListConnectionsResponse: TCPaginatedResponse {
        /// 连接器信息
        public let connections: [Connection]

        /// 连接器总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case connections = "Connections"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Connection] {
            self.connections
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取事件连接器列表
    @inlinable
    public func listConnections(_ input: ListConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConnectionsResponse> {
        self.client.execute(action: "ListConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取事件连接器列表
    @inlinable
    public func listConnections(_ input: ListConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConnectionsResponse {
        try await self.client.execute(action: "ListConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取事件连接器列表
    @inlinable
    public func listConnections(eventBusId: String, orderBy: String? = nil, limit: Int64? = nil, order: String? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConnectionsResponse> {
        let input = ListConnectionsRequest(eventBusId: eventBusId, orderBy: orderBy, limit: limit, order: order, offset: offset)
        return self.client.execute(action: "ListConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取事件连接器列表
    @inlinable
    public func listConnections(eventBusId: String, orderBy: String? = nil, limit: Int64? = nil, order: String? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConnectionsResponse {
        let input = ListConnectionsRequest(eventBusId: eventBusId, orderBy: orderBy, limit: limit, order: order, offset: offset)
        return try await self.client.execute(action: "ListConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取事件连接器列表
    @inlinable
    public func listConnectionsPaginated(_ input: ListConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Connection])> {
        self.client.paginate(input: input, region: region, command: self.listConnections, logger: logger, on: eventLoop)
    }

    /// 获取事件连接器列表
    @inlinable @discardableResult
    public func listConnectionsPaginated(_ input: ListConnectionsRequest, region: TCRegion? = nil, onResponse: @escaping (ListConnectionsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listConnections, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取事件连接器列表
    @inlinable
    public func listConnectionsPaginator(_ input: ListConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<ListConnectionsRequest, ListConnectionsResponse>.ResultSequence, responses: TCClient.Paginator<ListConnectionsRequest, ListConnectionsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listConnections, logger: logger, on: eventLoop)
    }
}
