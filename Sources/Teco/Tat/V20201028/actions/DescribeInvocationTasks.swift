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

extension Tat {
    /// DescribeInvocationTasks请求参数结构体
    public struct DescribeInvocationTasksRequest: TCPaginatedRequest {
        /// 执行任务ID列表，每次请求的上限为100。参数不支持同时指定 `InvocationTaskIds` 和 `Filters`。
        public let invocationTaskIds: [String]?

        /// 过滤条件。<br> <li> invocation-id - String - 是否必填：否 -（过滤条件）按照执行活动ID过滤。<br> <li> invocation-task-id - String - 是否必填：否 -（过滤条件）按照执行任务ID过滤。<br> <li> instance-id - String - 是否必填：否 -（过滤条件）按照实例ID过滤。 <br> <li> command-id - String - 是否必填：否 -（过滤条件）按照命令ID过滤。 <br>每次请求的 `Filters` 的上限为10， `Filter.Values` 的上限为5。参数不支持同时指定 `InvocationTaskIds` 和 `Filters` 。
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: UInt64?

        /// 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: UInt64?

        /// 是否隐藏输出，取值范围：<br><li>True：隐藏输出 <br><li>False：不隐藏 <br>默认为 True。
        public let hideOutput: Bool?

        public init(invocationTaskIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, hideOutput: Bool? = nil) {
            self.invocationTaskIds = invocationTaskIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.hideOutput = hideOutput
        }

        enum CodingKeys: String, CodingKey {
            case invocationTaskIds = "InvocationTaskIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case hideOutput = "HideOutput"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeInvocationTasksResponse) -> DescribeInvocationTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInvocationTasksRequest(invocationTaskIds: self.invocationTaskIds, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), hideOutput: self.hideOutput)
        }
    }

    /// DescribeInvocationTasks返回参数结构体
    public struct DescribeInvocationTasksResponse: TCPaginatedResponse {
        /// 符合条件的执行任务总数。
        public let totalCount: UInt64

        /// 执行任务列表。
        public let invocationTaskSet: [InvocationTask]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case invocationTaskSet = "InvocationTaskSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InvocationTask] {
            self.invocationTaskSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询执行任务
    ///
    /// 此接口用于查询执行任务详情。
    @inlinable
    public func describeInvocationTasks(_ input: DescribeInvocationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInvocationTasksResponse> {
        self.client.execute(action: "DescribeInvocationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询执行任务
    ///
    /// 此接口用于查询执行任务详情。
    @inlinable
    public func describeInvocationTasks(_ input: DescribeInvocationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvocationTasksResponse {
        try await self.client.execute(action: "DescribeInvocationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询执行任务
    ///
    /// 此接口用于查询执行任务详情。
    @inlinable
    public func describeInvocationTasks(invocationTaskIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, hideOutput: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInvocationTasksResponse> {
        let input = DescribeInvocationTasksRequest(invocationTaskIds: invocationTaskIds, filters: filters, limit: limit, offset: offset, hideOutput: hideOutput)
        return self.client.execute(action: "DescribeInvocationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询执行任务
    ///
    /// 此接口用于查询执行任务详情。
    @inlinable
    public func describeInvocationTasks(invocationTaskIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, hideOutput: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvocationTasksResponse {
        let input = DescribeInvocationTasksRequest(invocationTaskIds: invocationTaskIds, filters: filters, limit: limit, offset: offset, hideOutput: hideOutput)
        return try await self.client.execute(action: "DescribeInvocationTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询执行任务
    ///
    /// 此接口用于查询执行任务详情。
    @inlinable
    public func describeInvocationTasksPaginated(_ input: DescribeInvocationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [InvocationTask])> {
        self.client.paginate(input: input, region: region, command: self.describeInvocationTasks, logger: logger, on: eventLoop)
    }

    /// 查询执行任务
    ///
    /// 此接口用于查询执行任务详情。
    @inlinable @discardableResult
    public func describeInvocationTasksPaginated(_ input: DescribeInvocationTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInvocationTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInvocationTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询执行任务
    ///
    /// 此接口用于查询执行任务详情。
    @inlinable
    public func describeInvocationTasksPaginator(_ input: DescribeInvocationTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeInvocationTasksRequest, DescribeInvocationTasksResponse>.ResultSequence, responses: TCClient.Paginator<DescribeInvocationTasksRequest, DescribeInvocationTasksResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInvocationTasks, logger: logger, on: eventLoop)
    }
}
