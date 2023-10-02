//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// ListTasks请求参数结构体
    public struct ListTasksRequest: TCPaginatedRequest {
        /// 页码，默认为1
        public let pageNumber: Int64?

        /// 每页数量，默认为10
        public let pageSize: Int64?

        /// 默认不根据该字段进行筛选，否则根据设备操作类型进行筛选，对应任务的Action字段，批量任务操作类型以Batch开头。目前值有：BatchDeleteUserDevice，BatchDisableDevice，BatchEnableDevice，DeleteUserDevice，DisableDevice，EnableDevice
        public let operation: String?

        /// 默认不根据该字段进行筛选，否则根据任务状态进行筛选。状态码：1-NEW，2-RUNNING，3-COMPLETED，4-FAILED
        public let status: Int64?

        public init(pageNumber: Int64? = nil, pageSize: Int64? = nil, operation: String? = nil, status: Int64? = nil) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.operation = operation
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case operation = "Operation"
            case status = "Status"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListTasksResponse) -> ListTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, operation: self.operation, status: self.status)
        }
    }

    /// ListTasks返回参数结构体
    public struct ListTasksResponse: TCPaginatedResponse {
        /// 返回数据
        public let data: ListTasksData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TaskData`` list from the paginated response.
        public func getItems() -> [TaskData] {
            self.data.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data.totalCount
        }
    }

    /// 查询任务列表
    ///
    /// 用于查询批量任务和简单任务列表
    @inlinable
    public func listTasks(_ input: ListTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTasksResponse> {
        self.client.execute(action: "ListTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 用于查询批量任务和简单任务列表
    @inlinable
    public func listTasks(_ input: ListTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTasksResponse {
        try await self.client.execute(action: "ListTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务列表
    ///
    /// 用于查询批量任务和简单任务列表
    @inlinable
    public func listTasks(pageNumber: Int64? = nil, pageSize: Int64? = nil, operation: String? = nil, status: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTasksResponse> {
        self.listTasks(.init(pageNumber: pageNumber, pageSize: pageSize, operation: operation, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 用于查询批量任务和简单任务列表
    @inlinable
    public func listTasks(pageNumber: Int64? = nil, pageSize: Int64? = nil, operation: String? = nil, status: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTasksResponse {
        try await self.listTasks(.init(pageNumber: pageNumber, pageSize: pageSize, operation: operation, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 用于查询批量任务和简单任务列表
    @inlinable
    public func listTasksPaginated(_ input: ListTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TaskData])> {
        self.client.paginate(input: input, region: region, command: self.listTasks, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 用于查询批量任务和简单任务列表
    @inlinable @discardableResult
    public func listTasksPaginated(_ input: ListTasksRequest, region: TCRegion? = nil, onResponse: @escaping (ListTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询任务列表
    ///
    /// 用于查询批量任务和简单任务列表
    ///
    /// - Returns: `AsyncSequence`s of ``TaskData`` and ``ListTasksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func listTasksPaginator(_ input: ListTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listTasks, logger: logger, on: eventLoop)
    }
}