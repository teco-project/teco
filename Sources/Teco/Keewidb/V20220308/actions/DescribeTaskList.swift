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

extension Keewidb {
    /// DescribeTaskList请求参数结构体
    public struct DescribeTaskListRequest: TCPaginatedRequest {
        /// 实例 ID，如：kee-6ubh****。
        public let instanceId: String?

        /// 实例名称。
        public let instanceName: String?

        /// 每页输出的任务列表大小。默认为 20，最多输出100条。
        public let limit: Int64?

        /// Offset：分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
        public let offset: Int64?

        /// 项目ID。
        public let projectIds: [Int64]?

        /// 任务类型。可设置为：FLOW_CREATE、FLOW_SETPWD、FLOW_CLOSE等。
        public let taskTypes: [String]?

        /// 起始时间。
        public let beginTime: String?

        /// 终止时间。
        public let endTime: String?

        /// 任务状态。
        public let taskStatus: [Int64]?

        public init(instanceId: String? = nil, instanceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, projectIds: [Int64]? = nil, taskTypes: [String]? = nil, beginTime: String? = nil, endTime: String? = nil, taskStatus: [Int64]? = nil) {
            self.instanceId = instanceId
            self.instanceName = instanceName
            self.limit = limit
            self.offset = offset
            self.projectIds = projectIds
            self.taskTypes = taskTypes
            self.beginTime = beginTime
            self.endTime = endTime
            self.taskStatus = taskStatus
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case limit = "Limit"
            case offset = "Offset"
            case projectIds = "ProjectIds"
            case taskTypes = "TaskTypes"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case taskStatus = "TaskStatus"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTaskListResponse) -> DescribeTaskListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(instanceId: self.instanceId, instanceName: self.instanceName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), projectIds: self.projectIds, taskTypes: self.taskTypes, beginTime: self.beginTime, endTime: self.endTime, taskStatus: self.taskStatus)
        }
    }

    /// DescribeTaskList返回参数结构体
    public struct DescribeTaskListResponse: TCPaginatedResponse {
        /// 任务总数。
        public let totalCount: Int64

        /// 任务详细信息列表。
        public let tasks: [TaskInfoDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tasks = "Tasks"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TaskInfoDetail`` list from the paginated response.
        public func getItems() -> [TaskInfoDetail] {
            self.tasks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询任务列表信息。
    @inlinable
    public func describeTaskList(_ input: DescribeTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskListResponse> {
        self.client.execute(action: "DescribeTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询任务列表信息。
    @inlinable
    public func describeTaskList(_ input: DescribeTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskListResponse {
        try await self.client.execute(action: "DescribeTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询任务列表信息。
    @inlinable
    public func describeTaskList(instanceId: String? = nil, instanceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, projectIds: [Int64]? = nil, taskTypes: [String]? = nil, beginTime: String? = nil, endTime: String? = nil, taskStatus: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskListResponse> {
        self.describeTaskList(.init(instanceId: instanceId, instanceName: instanceName, limit: limit, offset: offset, projectIds: projectIds, taskTypes: taskTypes, beginTime: beginTime, endTime: endTime, taskStatus: taskStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询任务列表信息。
    @inlinable
    public func describeTaskList(instanceId: String? = nil, instanceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, projectIds: [Int64]? = nil, taskTypes: [String]? = nil, beginTime: String? = nil, endTime: String? = nil, taskStatus: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskListResponse {
        try await self.describeTaskList(.init(instanceId: instanceId, instanceName: instanceName, limit: limit, offset: offset, projectIds: projectIds, taskTypes: taskTypes, beginTime: beginTime, endTime: endTime, taskStatus: taskStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询任务列表信息。
    @inlinable
    public func describeTaskListPaginated(_ input: DescribeTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TaskInfoDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeTaskList, logger: logger, on: eventLoop)
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询任务列表信息。
    @inlinable @discardableResult
    public func describeTaskListPaginated(_ input: DescribeTaskListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTaskListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTaskList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询任务列表信息
    ///
    /// 本接口（DescribeTaskList）用于查询任务列表信息。
    ///
    /// - Returns: `AsyncSequence`s of ``TaskInfoDetail`` and ``DescribeTaskListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTaskListPaginator(_ input: DescribeTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTaskListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTaskList, logger: logger, on: eventLoop)
    }
}
