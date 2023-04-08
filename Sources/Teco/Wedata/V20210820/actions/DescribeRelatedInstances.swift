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

extension Wedata {
    /// DescribeRelatedInstances请求参数结构体
    public struct DescribeRelatedInstancesRequest: TCPaginatedRequest {
        /// 项目id
        public let projectId: String

        /// 数据时间，格式yyyy-MM-dd HH:mm:ss
        public let curRunDate: String

        /// 任务id
        public let taskId: Int64

        /// 距离当前任务的层级距离，-1表示取父节点，1表示子节点
        public let depth: Int64

        /// 页号，默认为1
        public let pageNumber: Int64?

        /// 页大小，默认为10，最大不超过200
        public let pageSize: Int64?

        public init(projectId: String, curRunDate: String, taskId: Int64, depth: Int64, pageNumber: Int64? = nil, pageSize: Int64? = nil) {
            self.projectId = projectId
            self.curRunDate = curRunDate
            self.taskId = taskId
            self.depth = depth
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case curRunDate = "CurRunDate"
            case taskId = "TaskId"
            case depth = "Depth"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRelatedInstancesResponse) -> DescribeRelatedInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRelatedInstancesRequest(projectId: self.projectId, curRunDate: self.curRunDate, taskId: self.taskId, depth: self.depth, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeRelatedInstances返回参数结构体
    public struct DescribeRelatedInstancesResponse: TCPaginatedResponse {
        /// 无
        public let data: DescribeTaskInstancesData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TaskInstanceInfo] {
            self.data.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data.totalCount
        }
    }

    /// 查询任务实例的关联实例列表
    @inlinable
    public func describeRelatedInstances(_ input: DescribeRelatedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRelatedInstancesResponse> {
        self.client.execute(action: "DescribeRelatedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务实例的关联实例列表
    @inlinable
    public func describeRelatedInstances(_ input: DescribeRelatedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRelatedInstancesResponse {
        try await self.client.execute(action: "DescribeRelatedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务实例的关联实例列表
    @inlinable
    public func describeRelatedInstances(projectId: String, curRunDate: String, taskId: Int64, depth: Int64, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRelatedInstancesResponse> {
        self.describeRelatedInstances(.init(projectId: projectId, curRunDate: curRunDate, taskId: taskId, depth: depth, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务实例的关联实例列表
    @inlinable
    public func describeRelatedInstances(projectId: String, curRunDate: String, taskId: Int64, depth: Int64, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRelatedInstancesResponse {
        try await self.describeRelatedInstances(.init(projectId: projectId, curRunDate: curRunDate, taskId: taskId, depth: depth, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务实例的关联实例列表
    @inlinable
    public func describeRelatedInstancesPaginated(_ input: DescribeRelatedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TaskInstanceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeRelatedInstances, logger: logger, on: eventLoop)
    }

    /// 查询任务实例的关联实例列表
    @inlinable @discardableResult
    public func describeRelatedInstancesPaginated(_ input: DescribeRelatedInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRelatedInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRelatedInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询任务实例的关联实例列表
    ///
    /// - Returns: `AsyncSequence`s of `TaskInstanceInfo` and `DescribeRelatedInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRelatedInstancesPaginator(_ input: DescribeRelatedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRelatedInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRelatedInstances, logger: logger, on: eventLoop)
    }
}
