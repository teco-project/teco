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

extension As {
    /// DescribeScheduledActions请求参数结构体
    public struct DescribeScheduledActionsRequest: TCPaginatedRequest {
        /// 按照一个或者多个定时任务ID查询。实例ID形如：asst-am691zxo。每次请求的实例的上限为100。参数不支持同时指定ScheduledActionIds和Filters。
        public let scheduledActionIds: [String]?

        /// 过滤条件。
        /// <li> scheduled-action-id - String - 是否必填：否 -（过滤条件）按照定时任务ID过滤。</li>
        /// <li> scheduled-action-name - String - 是否必填：否 - （过滤条件） 按照定时任务名称过滤。</li>
        /// <li> auto-scaling-group-id - String - 是否必填：否 - （过滤条件） 按照伸缩组ID过滤。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: UInt64?

        public init(scheduledActionIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.scheduledActionIds = scheduledActionIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case scheduledActionIds = "ScheduledActionIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeScheduledActionsResponse) -> DescribeScheduledActionsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeScheduledActionsRequest(scheduledActionIds: self.scheduledActionIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeScheduledActions返回参数结构体
    public struct DescribeScheduledActionsResponse: TCPaginatedResponse {
        /// 符合条件的定时任务数量。
        public let totalCount: UInt64

        /// 定时任务详细信息列表。
        public let scheduledActionSet: [ScheduledAction]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case scheduledActionSet = "ScheduledActionSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ScheduledAction`` list from the paginated response.
        public func getItems() -> [ScheduledAction] {
            self.scheduledActionSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询定时任务
    ///
    /// 本接口 (DescribeScheduledActions) 用于查询一个或多个定时任务的详细信息。
    ///
    /// * 可以根据定时任务ID、定时任务名称或者伸缩组ID等信息来查询定时任务的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的定时任务。
    @inlinable
    public func describeScheduledActions(_ input: DescribeScheduledActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScheduledActionsResponse> {
        self.client.execute(action: "DescribeScheduledActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询定时任务
    ///
    /// 本接口 (DescribeScheduledActions) 用于查询一个或多个定时任务的详细信息。
    ///
    /// * 可以根据定时任务ID、定时任务名称或者伸缩组ID等信息来查询定时任务的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的定时任务。
    @inlinable
    public func describeScheduledActions(_ input: DescribeScheduledActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScheduledActionsResponse {
        try await self.client.execute(action: "DescribeScheduledActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询定时任务
    ///
    /// 本接口 (DescribeScheduledActions) 用于查询一个或多个定时任务的详细信息。
    ///
    /// * 可以根据定时任务ID、定时任务名称或者伸缩组ID等信息来查询定时任务的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的定时任务。
    @inlinable
    public func describeScheduledActions(scheduledActionIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScheduledActionsResponse> {
        self.describeScheduledActions(.init(scheduledActionIds: scheduledActionIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询定时任务
    ///
    /// 本接口 (DescribeScheduledActions) 用于查询一个或多个定时任务的详细信息。
    ///
    /// * 可以根据定时任务ID、定时任务名称或者伸缩组ID等信息来查询定时任务的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的定时任务。
    @inlinable
    public func describeScheduledActions(scheduledActionIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScheduledActionsResponse {
        try await self.describeScheduledActions(.init(scheduledActionIds: scheduledActionIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询定时任务
    ///
    /// 本接口 (DescribeScheduledActions) 用于查询一个或多个定时任务的详细信息。
    ///
    /// * 可以根据定时任务ID、定时任务名称或者伸缩组ID等信息来查询定时任务的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的定时任务。
    @inlinable
    public func describeScheduledActionsPaginated(_ input: DescribeScheduledActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ScheduledAction])> {
        self.client.paginate(input: input, region: region, command: self.describeScheduledActions, logger: logger, on: eventLoop)
    }

    /// 查询定时任务
    ///
    /// 本接口 (DescribeScheduledActions) 用于查询一个或多个定时任务的详细信息。
    ///
    /// * 可以根据定时任务ID、定时任务名称或者伸缩组ID等信息来查询定时任务的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的定时任务。
    @inlinable @discardableResult
    public func describeScheduledActionsPaginated(_ input: DescribeScheduledActionsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScheduledActionsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeScheduledActions, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询定时任务
    ///
    /// 本接口 (DescribeScheduledActions) 用于查询一个或多个定时任务的详细信息。
    ///
    /// * 可以根据定时任务ID、定时任务名称或者伸缩组ID等信息来查询定时任务的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的定时任务。
    ///
    /// - Returns: `AsyncSequence`s of `ScheduledAction` and `DescribeScheduledActionsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeScheduledActionsPaginator(_ input: DescribeScheduledActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeScheduledActionsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeScheduledActions, logger: logger, on: eventLoop)
    }
}
