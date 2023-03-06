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

@_exported import struct Foundation.Date
import TecoDateHelpers
import TecoPaginationHelpers

extension Teo {
    /// DescribePrefetchTasks请求参数结构体
    public struct DescribePrefetchTasksRequest: TCPaginatedRequest {
        /// 查询起始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 查询结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// 分页查询偏移量，默认为 0。
        public let offset: Int64?

        /// 分页查询限制数目，默认值：20，上限：1000。
        public let limit: Int64?

        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        /// <li>zone-id<br>   按照【<strong>站点 ID</strong>】进行过滤。zone-id形如：zone-1379afjk91u32h，暂不支持多值。<br>   类型：String<br>   必选：否。<br>   模糊查询：不支持。</li><li>job-id<br>   按照【<strong>任务ID</strong>】进行过滤。job-id形如：1379afjk91u32h，暂不支持多值。<br>   类型：String<br>   必选：否。<br>   模糊查询：不支持。</li><li>target<br>   按照【<strong>目标资源信息</strong>】进行过滤。target形如：http://www.qq.com/1.txt，暂不支持多值。<br>   类型：String<br>   必选：否。<br>   模糊查询：不支持。</li><li>domains<br>   按照【<strong>域名</strong>】进行过滤。domains形如：www.qq.com。<br>   类型：String<br>   必选：否。<br>   模糊查询：不支持。</li><li>statuses<br>   按照【<strong>任务状态</strong>】进行过滤。<br>   必选：否<br>   模糊查询：不支持。<br>   可选项：<br>   processing：处理中<br>   success：成功<br>   failed：失败<br>   timeout：超时</li>
        public let filters: [AdvancedFilter]?

        public init(startTime: Date? = nil, endTime: Date? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [AdvancedFilter]? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePrefetchTasksResponse) -> DescribePrefetchTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePrefetchTasksRequest(startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribePrefetchTasks返回参数结构体
    public struct DescribePrefetchTasksResponse: TCPaginatedResponse {
        /// 该查询条件总共条目数。
        public let totalCount: UInt64

        /// 任务结果列表。
        public let tasks: [Task]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tasks = "Tasks"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Task] {
            self.tasks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询预热任务状态
    @inlinable
    public func describePrefetchTasks(_ input: DescribePrefetchTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrefetchTasksResponse> {
        self.client.execute(action: "DescribePrefetchTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询预热任务状态
    @inlinable
    public func describePrefetchTasks(_ input: DescribePrefetchTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrefetchTasksResponse {
        try await self.client.execute(action: "DescribePrefetchTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询预热任务状态
    @inlinable
    public func describePrefetchTasks(startTime: Date? = nil, endTime: Date? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [AdvancedFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrefetchTasksResponse> {
        let input = DescribePrefetchTasksRequest(startTime: startTime, endTime: endTime, offset: offset, limit: limit, filters: filters)
        return self.client.execute(action: "DescribePrefetchTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询预热任务状态
    @inlinable
    public func describePrefetchTasks(startTime: Date? = nil, endTime: Date? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [AdvancedFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrefetchTasksResponse {
        let input = DescribePrefetchTasksRequest(startTime: startTime, endTime: endTime, offset: offset, limit: limit, filters: filters)
        return try await self.client.execute(action: "DescribePrefetchTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询预热任务状态
    @inlinable
    public func describePrefetchTasksPaginated(_ input: DescribePrefetchTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Task])> {
        self.client.paginate(input: input, region: region, command: self.describePrefetchTasks, logger: logger, on: eventLoop)
    }

    /// 查询预热任务状态
    @inlinable @discardableResult
    public func describePrefetchTasksPaginated(_ input: DescribePrefetchTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrefetchTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrefetchTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询预热任务状态
    @inlinable
    public func describePrefetchTasksPaginator(_ input: DescribePrefetchTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePrefetchTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrefetchTasks, logger: logger, on: eventLoop)
    }
}
