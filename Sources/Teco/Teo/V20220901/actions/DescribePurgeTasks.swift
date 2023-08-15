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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Teo {
    /// DescribePurgeTasks请求参数结构体
    public struct DescribePurgeTasksRequest: TCPaginatedRequest {
        /// 字段已废弃，请使用Filters中的zone-id。
        public let zoneId: String?

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

        /// 分页查询偏移量，默认为0。
        public let offset: Int64?

        /// 分页查限制数目，默认值：20，最大值：1000。
        public let limit: Int64?

        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        /// - zone-id
        ///   按照【**站点 ID**】进行过滤。zone-id形如：zone-xxx，暂不支持多值
        ///   类型：String
        ///   必选：否
        ///   模糊查询：不支持
        /// - job-id
        ///   按照【**任务ID**】进行过滤。job-id形如：1379afjk91u32h，暂不支持多值。
        ///   类型：String
        ///   必选：否
        ///   模糊查询：不支持
        /// - target
        ///   按照【**目标资源信息**】进行过滤，target形如：http://www.qq.com/1.txt或者tag1，暂不支持多值
        ///   类型：String
        ///   必选：否
        ///   模糊查询：不支持
        /// - domains
        ///   按照【**域名**】进行过滤，domains形如：www.qq.com
        ///   类型：String
        ///   必选：否
        ///   模糊查询：不支持。
        /// - statuses
        ///   按照【**任务状态**】进行过滤
        ///   必选：否
        ///   模糊查询：不支持。
        ///   可选项：
        ///   processing：处理中
        ///   success：成功
        ///   failed：失败
        ///   timeout：超时
        /// - type
        ///   按照【**清除缓存类型**】进行过滤，暂不支持多值。
        ///   类型：String
        ///   必选：否
        ///   模糊查询：不支持
        ///   可选项：
        ///   purge_url：URL
        ///   purge_prefix：前缀
        ///   purge_all：全部缓存内容
        ///   purge_host：Hostname
        ///   purge_cache_tag：CacheTag
        public let filters: [AdvancedFilter]?

        public init(zoneId: String? = nil, startTime: Date? = nil, endTime: Date? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [AdvancedFilter]? = nil) {
            self.zoneId = zoneId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePurgeTasksResponse) -> DescribePurgeTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePurgeTasksRequest(zoneId: self.zoneId, startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribePurgeTasks返回参数结构体
    public struct DescribePurgeTasksResponse: TCPaginatedResponse {
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

        /// Extract the returned ``Task`` list from the paginated response.
        public func getItems() -> [Task] {
            self.tasks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询清除缓存历史记录
    @inlinable
    public func describePurgeTasks(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePurgeTasksResponse> {
        self.client.execute(action: "DescribePurgeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询清除缓存历史记录
    @inlinable
    public func describePurgeTasks(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePurgeTasksResponse {
        try await self.client.execute(action: "DescribePurgeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询清除缓存历史记录
    @inlinable
    public func describePurgeTasks(zoneId: String? = nil, startTime: Date? = nil, endTime: Date? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [AdvancedFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePurgeTasksResponse> {
        self.describePurgeTasks(.init(zoneId: zoneId, startTime: startTime, endTime: endTime, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询清除缓存历史记录
    @inlinable
    public func describePurgeTasks(zoneId: String? = nil, startTime: Date? = nil, endTime: Date? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [AdvancedFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePurgeTasksResponse {
        try await self.describePurgeTasks(.init(zoneId: zoneId, startTime: startTime, endTime: endTime, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询清除缓存历史记录
    @inlinable
    public func describePurgeTasksPaginated(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Task])> {
        self.client.paginate(input: input, region: region, command: self.describePurgeTasks, logger: logger, on: eventLoop)
    }

    /// 查询清除缓存历史记录
    @inlinable @discardableResult
    public func describePurgeTasksPaginated(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePurgeTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePurgeTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询清除缓存历史记录
    ///
    /// - Returns: `AsyncSequence`s of ``Task`` and ``DescribePurgeTasksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePurgeTasksPaginator(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePurgeTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePurgeTasks, logger: logger, on: eventLoop)
    }
}
