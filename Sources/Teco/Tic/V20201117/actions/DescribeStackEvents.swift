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

extension Tic {
    /// DescribeStackEvents请求参数结构体
    public struct DescribeStackEventsRequest: TCPaginatedRequest {
        /// 按照⼀个或者多个事件ID查询
        public let eventIds: [String]?

        /// - **VersionId**
        ///
        /// 按照【**版本ID**】过滤，VersionId形如 `ver-kg8hn58h`
        /// 类型：string
        ///
        /// - **StackId**
        ///
        /// 按照【**资源栈ID**】过滤，StackId形如 `stk-hz5vn3te`
        /// 类型：string
        ///
        /// - **Type**
        ///
        /// 按照【**事件类型**】过滤，Type 形如 plan, apply, destroy
        /// 类型：string
        ///
        /// - **Status**
        ///
        /// 按照【**事件状态**】过滤，Status形如 queueing, running, success, failed
        /// 类型：string
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节
        public let limit: Int64?

        public init(eventIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.eventIds = eventIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case eventIds = "EventIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeStackEventsResponse) -> DescribeStackEventsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(eventIds: self.eventIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeStackEvents返回参数结构体
    public struct DescribeStackEventsResponse: TCPaginatedResponse {
        /// 符合条件的事件数量
        public let totalCount: Int64

        /// 事件详细信息列表
        public let events: [EventInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case events = "Events"
            case requestId = "RequestId"
        }

        /// Extract the returned ``EventInfo`` list from the paginated response.
        public func getItems() -> [EventInfo] {
            self.events
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询事件列表
    ///
    /// 本接口（DescribeStackEvents）用于查看一个或多个事件详细信息。
    ///
    /// - 可以根据事件ID过滤感兴趣的事件
    /// - 也可以根据版本ID，资源栈ID，事件类型，事件状态过滤事件，过滤信息详细请见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的事件
    @inlinable
    public func describeStackEvents(_ input: DescribeStackEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStackEventsResponse> {
        self.client.execute(action: "DescribeStackEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询事件列表
    ///
    /// 本接口（DescribeStackEvents）用于查看一个或多个事件详细信息。
    ///
    /// - 可以根据事件ID过滤感兴趣的事件
    /// - 也可以根据版本ID，资源栈ID，事件类型，事件状态过滤事件，过滤信息详细请见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的事件
    @inlinable
    public func describeStackEvents(_ input: DescribeStackEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStackEventsResponse {
        try await self.client.execute(action: "DescribeStackEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询事件列表
    ///
    /// 本接口（DescribeStackEvents）用于查看一个或多个事件详细信息。
    ///
    /// - 可以根据事件ID过滤感兴趣的事件
    /// - 也可以根据版本ID，资源栈ID，事件类型，事件状态过滤事件，过滤信息详细请见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的事件
    @inlinable
    public func describeStackEvents(eventIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStackEventsResponse> {
        self.describeStackEvents(.init(eventIds: eventIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询事件列表
    ///
    /// 本接口（DescribeStackEvents）用于查看一个或多个事件详细信息。
    ///
    /// - 可以根据事件ID过滤感兴趣的事件
    /// - 也可以根据版本ID，资源栈ID，事件类型，事件状态过滤事件，过滤信息详细请见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的事件
    @inlinable
    public func describeStackEvents(eventIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStackEventsResponse {
        try await self.describeStackEvents(.init(eventIds: eventIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询事件列表
    ///
    /// 本接口（DescribeStackEvents）用于查看一个或多个事件详细信息。
    ///
    /// - 可以根据事件ID过滤感兴趣的事件
    /// - 也可以根据版本ID，资源栈ID，事件类型，事件状态过滤事件，过滤信息详细请见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的事件
    @inlinable
    public func describeStackEventsPaginated(_ input: DescribeStackEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [EventInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeStackEvents, logger: logger, on: eventLoop)
    }

    /// 查询事件列表
    ///
    /// 本接口（DescribeStackEvents）用于查看一个或多个事件详细信息。
    ///
    /// - 可以根据事件ID过滤感兴趣的事件
    /// - 也可以根据版本ID，资源栈ID，事件类型，事件状态过滤事件，过滤信息详细请见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的事件
    @inlinable @discardableResult
    public func describeStackEventsPaginated(_ input: DescribeStackEventsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeStackEventsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeStackEvents, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询事件列表
    ///
    /// 本接口（DescribeStackEvents）用于查看一个或多个事件详细信息。
    ///
    /// - 可以根据事件ID过滤感兴趣的事件
    /// - 也可以根据版本ID，资源栈ID，事件类型，事件状态过滤事件，过滤信息详细请见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的事件
    ///
    /// - Returns: `AsyncSequence`s of ``EventInfo`` and ``DescribeStackEventsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeStackEventsPaginator(_ input: DescribeStackEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeStackEventsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeStackEvents, logger: logger, on: eventLoop)
    }
}
