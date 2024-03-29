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

extension Iotcloud {
    /// DescribeTasks请求参数结构体
    public struct DescribeTasksRequest: TCPaginatedRequest {
        /// 偏移量，从0开始
        public let offset: UInt64

        /// 分页的大小，数值范围 1-250
        public let limit: UInt64

        public init(offset: UInt64, limit: UInt64) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTasksResponse) -> DescribeTasksRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeTasks返回参数结构体
    public struct DescribeTasksResponse: TCPaginatedResponse {
        /// 用户一个月内创建的任务总数
        public let totalCount: UInt64

        /// 此页任务对象的数组，按创建时间排序
        public let tasks: [TaskInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tasks = "Tasks"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TaskInfo`` list from the paginated response.
        public func getItems() -> [TaskInfo] {
            self.tasks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取任务列表
    ///
    /// 本接口（DescribeTasks）用于查询已创建的任务列表，任务保留一个月
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取任务列表
    ///
    /// 本接口（DescribeTasks）用于查询已创建的任务列表，任务保留一个月
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取任务列表
    ///
    /// 本接口（DescribeTasks）用于查询已创建的任务列表，任务保留一个月
    @inlinable
    public func describeTasks(offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.describeTasks(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取任务列表
    ///
    /// 本接口（DescribeTasks）用于查询已创建的任务列表，任务保留一个月
    @inlinable
    public func describeTasks(offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.describeTasks(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取任务列表
    ///
    /// 本接口（DescribeTasks）用于查询已创建的任务列表，任务保留一个月
    @inlinable
    public func describeTasksPaginated(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTasks, logger: logger, on: eventLoop)
    }

    /// 获取任务列表
    ///
    /// 本接口（DescribeTasks）用于查询已创建的任务列表，任务保留一个月
    @inlinable @discardableResult
    public func describeTasksPaginated(_ input: DescribeTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取任务列表
    ///
    /// 本接口（DescribeTasks）用于查询已创建的任务列表，任务保留一个月
    ///
    /// - Returns: `AsyncSequence`s of ``TaskInfo`` and ``DescribeTasksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTasksPaginator(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTasks, logger: logger, on: eventLoop)
    }
}
