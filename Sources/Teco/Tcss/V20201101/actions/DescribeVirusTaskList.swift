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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Tcss {
    /// DescribeVirusTaskList请求参数结构体
    public struct DescribeVirusTaskListRequest: TCPaginatedRequest {
        /// 任务id
        public let taskId: String

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>ContainerName - String - 是否必填：否 - 容器名称</li>
        /// <li>ContainerId - String - 是否必填：否 - 容器id</li>
        /// <li>Hostname - String - 是否必填：否 - 主机名称</li>
        /// <li>HostIp- String - 是否必填：否 - 主机IP</li>
        /// <li>ImageId- String - 是否必填：否 - 镜像ID</li>
        /// <li>ImageName- String - 是否必填：否 - 镜像名称</li>
        /// <li>Status- String - 是否必填：否 - 状态</li>
        public let filters: [RunTimeFilters]?

        /// 排序字段
        public let by: String?

        /// 排序方式
        public let order: String?

        public init(taskId: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, by: String? = nil, order: String? = nil) {
            self.taskId = taskId
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVirusTaskListResponse) -> DescribeVirusTaskListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVirusTaskListRequest(taskId: self.taskId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, by: self.by, order: self.order)
        }
    }

    /// DescribeVirusTaskList返回参数结构体
    public struct DescribeVirusTaskListResponse: TCPaginatedResponse {
        /// 文件查杀列表
        public let list: [VirusTaskInfo]

        /// 总数量(容器任务数量)
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VirusTaskInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 运行时查询文件查杀任务列表
    @inlinable
    public func describeVirusTaskList(_ input: DescribeVirusTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirusTaskListResponse> {
        self.client.execute(action: "DescribeVirusTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时查询文件查杀任务列表
    @inlinable
    public func describeVirusTaskList(_ input: DescribeVirusTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusTaskListResponse {
        try await self.client.execute(action: "DescribeVirusTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时查询文件查杀任务列表
    @inlinable
    public func describeVirusTaskList(taskId: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirusTaskListResponse> {
        self.describeVirusTaskList(.init(taskId: taskId, limit: limit, offset: offset, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时查询文件查杀任务列表
    @inlinable
    public func describeVirusTaskList(taskId: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusTaskListResponse {
        try await self.describeVirusTaskList(.init(taskId: taskId, limit: limit, offset: offset, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时查询文件查杀任务列表
    @inlinable
    public func describeVirusTaskListPaginated(_ input: DescribeVirusTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [VirusTaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeVirusTaskList, logger: logger, on: eventLoop)
    }

    /// 运行时查询文件查杀任务列表
    @inlinable @discardableResult
    public func describeVirusTaskListPaginated(_ input: DescribeVirusTaskListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVirusTaskListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVirusTaskList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 运行时查询文件查杀任务列表
    ///
    /// - Returns: `AsyncSequence`s of `VirusTaskInfo` and `DescribeVirusTaskListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVirusTaskListPaginator(_ input: DescribeVirusTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVirusTaskListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVirusTaskList, logger: logger, on: eventLoop)
    }
}
