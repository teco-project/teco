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

import TecoCore
import TecoPaginationHelpers

extension Scf {
    /// ListTriggers请求参数结构体
    public struct ListTriggersRequest: TCPaginatedRequest {
        /// 函数名称
        public let functionName: String

        /// 命名空间，默认是default
        public let namespace: String?

        /// 数据偏移量，默认值为 0
        public let offset: UInt64?

        /// 返回数据长度，默认值为 20
        public let limit: UInt64?

        /// 根据哪个字段进行返回结果排序,支持以下字段：add_time，mod_time，默认mod_time
        public let orderBy: String?

        /// 以升序还是降序的方式返回结果，可选值 ASC 和 DESC，默认DESC
        public let order: String?

        /// * Qualifier:
        /// 函数版本，别名
        public let filters: [Filter]?

        public init(functionName: String, namespace: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderBy: String? = nil, order: String? = nil, filters: [Filter]? = nil) {
            self.functionName = functionName
            self.namespace = namespace
            self.offset = offset
            self.limit = limit
            self.orderBy = orderBy
            self.order = order
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case namespace = "Namespace"
            case offset = "Offset"
            case limit = "Limit"
            case orderBy = "OrderBy"
            case order = "Order"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListTriggersResponse) -> ListTriggersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListTriggersRequest(functionName: self.functionName, namespace: self.namespace, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderBy: self.orderBy, order: self.order, filters: self.filters)
        }
    }

    /// ListTriggers返回参数结构体
    public struct ListTriggersResponse: TCPaginatedResponse {
        /// 触发器总数
        public let totalCount: UInt64

        /// 触发器列表
        public let triggers: [TriggerInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case triggers = "Triggers"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TriggerInfo] {
            self.triggers
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取函数触发器列表
    @inlinable
    public func listTriggers(_ input: ListTriggersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTriggersResponse> {
        self.client.execute(action: "ListTriggers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取函数触发器列表
    @inlinable
    public func listTriggers(_ input: ListTriggersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTriggersResponse {
        try await self.client.execute(action: "ListTriggers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取函数触发器列表
    @inlinable
    public func listTriggers(functionName: String, namespace: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderBy: String? = nil, order: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTriggersResponse> {
        self.listTriggers(.init(functionName: functionName, namespace: namespace, offset: offset, limit: limit, orderBy: orderBy, order: order, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取函数触发器列表
    @inlinable
    public func listTriggers(functionName: String, namespace: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderBy: String? = nil, order: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTriggersResponse {
        try await self.listTriggers(.init(functionName: functionName, namespace: namespace, offset: offset, limit: limit, orderBy: orderBy, order: order, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取函数触发器列表
    @inlinable
    public func listTriggersPaginated(_ input: ListTriggersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TriggerInfo])> {
        self.client.paginate(input: input, region: region, command: self.listTriggers, logger: logger, on: eventLoop)
    }

    /// 获取函数触发器列表
    @inlinable @discardableResult
    public func listTriggersPaginated(_ input: ListTriggersRequest, region: TCRegion? = nil, onResponse: @escaping (ListTriggersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listTriggers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取函数触发器列表
    ///
    /// - Returns: `AsyncSequence`s of `TriggerInfo` and `ListTriggersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func listTriggersPaginator(_ input: ListTriggersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListTriggersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listTriggers, logger: logger, on: eventLoop)
    }
}
