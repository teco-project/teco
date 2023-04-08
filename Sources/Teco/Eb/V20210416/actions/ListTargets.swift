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

extension Eb {
    /// ListTargets请求参数结构体
    public struct ListTargetsRequest: TCPaginatedRequest {
        /// 事件集ID
        public let eventBusId: String

        /// 根据哪个字段进行返回结果排序,支持以下字段：AddTime（创建时间）, ModTime（修改时间）
        public let orderBy: String?

        /// 事件规则ID
        public let ruleId: String?

        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?

        /// 分页偏移量，默认为0。
        public let offset: Int64?

        /// 以升序还是降序的方式返回结果，可选值 ASC（升序） 和 DESC（降序）
        public let order: String?

        public init(eventBusId: String, orderBy: String? = nil, ruleId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil) {
            self.eventBusId = eventBusId
            self.orderBy = orderBy
            self.ruleId = ruleId
            self.limit = limit
            self.offset = offset
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
            case orderBy = "OrderBy"
            case ruleId = "RuleId"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListTargetsResponse) -> ListTargetsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListTargetsRequest(eventBusId: self.eventBusId, orderBy: self.orderBy, ruleId: self.ruleId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order)
        }
    }

    /// ListTargets返回参数结构体
    public struct ListTargetsResponse: TCPaginatedResponse {
        /// 目标总数
        public let totalCount: Int64

        /// 目标信息
        public let targets: [Target]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case targets = "Targets"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Target] {
            self.targets
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取事件目标列表
    @inlinable
    public func listTargets(_ input: ListTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTargetsResponse> {
        self.client.execute(action: "ListTargets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取事件目标列表
    @inlinable
    public func listTargets(_ input: ListTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTargetsResponse {
        try await self.client.execute(action: "ListTargets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取事件目标列表
    @inlinable
    public func listTargets(eventBusId: String, orderBy: String? = nil, ruleId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTargetsResponse> {
        self.listTargets(.init(eventBusId: eventBusId, orderBy: orderBy, ruleId: ruleId, limit: limit, offset: offset, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 获取事件目标列表
    @inlinable
    public func listTargets(eventBusId: String, orderBy: String? = nil, ruleId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTargetsResponse {
        try await self.listTargets(.init(eventBusId: eventBusId, orderBy: orderBy, ruleId: ruleId, limit: limit, offset: offset, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 获取事件目标列表
    @inlinable
    public func listTargetsPaginated(_ input: ListTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Target])> {
        self.client.paginate(input: input, region: region, command: self.listTargets, logger: logger, on: eventLoop)
    }

    /// 获取事件目标列表
    @inlinable @discardableResult
    public func listTargetsPaginated(_ input: ListTargetsRequest, region: TCRegion? = nil, onResponse: @escaping (ListTargetsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listTargets, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取事件目标列表
    ///
    /// - Returns: `AsyncSequence`s of `Target` and `ListTargetsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func listTargetsPaginator(_ input: ListTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListTargetsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listTargets, logger: logger, on: eventLoop)
    }
}
