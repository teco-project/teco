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

extension Bm {
    /// DescribeUserCmdTasks请求参数结构体
    public struct DescribeUserCmdTasksRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64

        /// 数量限制
        public let limit: UInt64

        /// 排序字段，支持： RunBeginTime,RunEndTime,InstanceCount,SuccessCount,FailureCount
        public let orderField: String?

        /// 排序方式，取值: 1倒序，0顺序；默认倒序
        public let order: UInt64?

        public init(offset: UInt64, limit: UInt64, orderField: String? = nil, order: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUserCmdTasksResponse) -> DescribeUserCmdTasksRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: self.offset + .init(response.getItems().count), limit: self.limit, orderField: self.orderField, order: self.order)
        }
    }

    /// DescribeUserCmdTasks返回参数结构体
    public struct DescribeUserCmdTasksResponse: TCPaginatedResponse {
        /// 脚本任务信息数量
        public let totalCount: UInt64

        /// 脚本任务信息列表
        public let userCmdTasks: [UserCmdTask]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case userCmdTasks = "UserCmdTasks"
            case requestId = "RequestId"
        }

        /// Extract the returned ``UserCmdTask`` list from the paginated response.
        public func getItems() -> [UserCmdTask] {
            self.userCmdTasks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取自定义脚本任务列表
    @inlinable
    public func describeUserCmdTasks(_ input: DescribeUserCmdTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserCmdTasksResponse> {
        self.client.execute(action: "DescribeUserCmdTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取自定义脚本任务列表
    @inlinable
    public func describeUserCmdTasks(_ input: DescribeUserCmdTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserCmdTasksResponse {
        try await self.client.execute(action: "DescribeUserCmdTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取自定义脚本任务列表
    @inlinable
    public func describeUserCmdTasks(offset: UInt64, limit: UInt64, orderField: String? = nil, order: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserCmdTasksResponse> {
        self.describeUserCmdTasks(.init(offset: offset, limit: limit, orderField: orderField, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 获取自定义脚本任务列表
    @inlinable
    public func describeUserCmdTasks(offset: UInt64, limit: UInt64, orderField: String? = nil, order: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserCmdTasksResponse {
        try await self.describeUserCmdTasks(.init(offset: offset, limit: limit, orderField: orderField, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 获取自定义脚本任务列表
    @inlinable
    public func describeUserCmdTasksPaginated(_ input: DescribeUserCmdTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [UserCmdTask])> {
        self.client.paginate(input: input, region: region, command: self.describeUserCmdTasks, logger: logger, on: eventLoop)
    }

    /// 获取自定义脚本任务列表
    @inlinable @discardableResult
    public func describeUserCmdTasksPaginated(_ input: DescribeUserCmdTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUserCmdTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUserCmdTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取自定义脚本任务列表
    ///
    /// - Returns: `AsyncSequence`s of ``UserCmdTask`` and ``DescribeUserCmdTasksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUserCmdTasksPaginator(_ input: DescribeUserCmdTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUserCmdTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUserCmdTasks, logger: logger, on: eventLoop)
    }
}
