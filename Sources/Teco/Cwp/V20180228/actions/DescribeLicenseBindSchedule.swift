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

extension Cwp {
    /// DescribeLicenseBindSchedule请求参数结构体
    public struct DescribeLicenseBindScheduleRequest: TCPaginatedRequest {
        /// 任务ID
        public let taskId: UInt64

        /// 限制条数,默认10.
        public let limit: UInt64?

        /// 偏移量,默认0
        public let offset: UInt64?

        /// 过滤参数
        /// Status 绑定进度状态 0 进行中 1 已完成 2 失败
        public let filters: [Filter]?

        public init(taskId: UInt64, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.taskId = taskId
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeLicenseBindScheduleResponse) -> DescribeLicenseBindScheduleRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLicenseBindScheduleRequest(taskId: self.taskId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeLicenseBindSchedule返回参数结构体
    public struct DescribeLicenseBindScheduleResponse: TCPaginatedResponse {
        /// 进度
        public let schedule: UInt64

        /// 绑定任务详情
        public let list: [LicenseBindTaskDetail]

        /// 总条数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case schedule = "Schedule"
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LicenseBindTaskDetail] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询授权绑定进度
    ///
    /// 查询授权绑定任务的进度
    @inlinable
    public func describeLicenseBindSchedule(_ input: DescribeLicenseBindScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLicenseBindScheduleResponse> {
        self.client.execute(action: "DescribeLicenseBindSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询授权绑定进度
    ///
    /// 查询授权绑定任务的进度
    @inlinable
    public func describeLicenseBindSchedule(_ input: DescribeLicenseBindScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLicenseBindScheduleResponse {
        try await self.client.execute(action: "DescribeLicenseBindSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询授权绑定进度
    ///
    /// 查询授权绑定任务的进度
    @inlinable
    public func describeLicenseBindSchedule(taskId: UInt64, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLicenseBindScheduleResponse> {
        let input = DescribeLicenseBindScheduleRequest(taskId: taskId, limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeLicenseBindSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询授权绑定进度
    ///
    /// 查询授权绑定任务的进度
    @inlinable
    public func describeLicenseBindSchedule(taskId: UInt64, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLicenseBindScheduleResponse {
        let input = DescribeLicenseBindScheduleRequest(taskId: taskId, limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeLicenseBindSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询授权绑定进度
    ///
    /// 查询授权绑定任务的进度
    @inlinable
    public func describeLicenseBindSchedulePaginated(_ input: DescribeLicenseBindScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [LicenseBindTaskDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeLicenseBindSchedule, logger: logger, on: eventLoop)
    }

    /// 查询授权绑定进度
    ///
    /// 查询授权绑定任务的进度
    @inlinable @discardableResult
    public func describeLicenseBindSchedulePaginated(_ input: DescribeLicenseBindScheduleRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLicenseBindScheduleResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLicenseBindSchedule, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询授权绑定进度
    ///
    /// 查询授权绑定任务的进度
    ///
    /// - Returns: `AsyncSequence`s of `LicenseBindTaskDetail` and `DescribeLicenseBindScheduleResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLicenseBindSchedulePaginator(_ input: DescribeLicenseBindScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLicenseBindScheduleRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLicenseBindSchedule, logger: logger, on: eventLoop)
    }
}
