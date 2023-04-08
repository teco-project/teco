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
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Teo {
    /// DescribePurgeTasks请求参数结构体
    public struct DescribePurgeTasksRequest: TCPaginatedRequest {
        /// 任务ID
        public let jobId: String?

        /// 类型
        public let type: String?

        /// 查询起始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 查询结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// 查询起始偏移量
        public let offset: Int64?

        /// 查询最大返回的结果条数
        public let limit: Int64?

        /// 查询的状态
        /// 允许的值为：processing、success、failed、timeout、invalid
        public let statuses: [String]?

        /// zone id
        public let zoneId: String?

        /// 查询的域名列表
        public let domains: [String]?

        /// 查询内容
        public let target: String?

        public init(jobId: String? = nil, type: String? = nil, startTime: Date? = nil, endTime: Date? = nil, offset: Int64? = nil, limit: Int64? = nil, statuses: [String]? = nil, zoneId: String? = nil, domains: [String]? = nil, target: String? = nil) {
            self.jobId = jobId
            self.type = type
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.offset = offset
            self.limit = limit
            self.statuses = statuses
            self.zoneId = zoneId
            self.domains = domains
            self.target = target
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case type = "Type"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
            case statuses = "Statuses"
            case zoneId = "ZoneId"
            case domains = "Domains"
            case target = "Target"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePurgeTasksResponse) -> DescribePurgeTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePurgeTasksRequest(jobId: self.jobId, type: self.type, startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, statuses: self.statuses, zoneId: self.zoneId, domains: self.domains, target: self.target)
        }
    }

    /// DescribePurgeTasks返回参数结构体
    public struct DescribePurgeTasksResponse: TCPaginatedResponse {
        /// 该查询条件总共条目数
        public let totalCount: UInt64

        /// 任务结果列表
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
    public func describePurgeTasks(jobId: String? = nil, type: String? = nil, startTime: Date? = nil, endTime: Date? = nil, offset: Int64? = nil, limit: Int64? = nil, statuses: [String]? = nil, zoneId: String? = nil, domains: [String]? = nil, target: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePurgeTasksResponse> {
        self.describePurgeTasks(.init(jobId: jobId, type: type, startTime: startTime, endTime: endTime, offset: offset, limit: limit, statuses: statuses, zoneId: zoneId, domains: domains, target: target), region: region, logger: logger, on: eventLoop)
    }

    /// 查询清除缓存历史记录
    @inlinable
    public func describePurgeTasks(jobId: String? = nil, type: String? = nil, startTime: Date? = nil, endTime: Date? = nil, offset: Int64? = nil, limit: Int64? = nil, statuses: [String]? = nil, zoneId: String? = nil, domains: [String]? = nil, target: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePurgeTasksResponse {
        try await self.describePurgeTasks(.init(jobId: jobId, type: type, startTime: startTime, endTime: endTime, offset: offset, limit: limit, statuses: statuses, zoneId: zoneId, domains: domains, target: target), region: region, logger: logger, on: eventLoop)
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
    /// - Returns: `AsyncSequence`s of `Task` and `DescribePurgeTasksResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePurgeTasksPaginator(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePurgeTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePurgeTasks, logger: logger, on: eventLoop)
    }
}
