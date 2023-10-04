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

extension Dcdb {
    /// DescribeUserTasks请求参数结构体
    public struct DescribeUserTasksRequest: TCPaginatedRequest {
        /// 任务的状态列表。0-任务启动中；1-任务运行中；2-任务成功；3-任务失败
        public let statuses: [Int64]?

        /// 实例ID列表
        public let instanceIds: [String]?

        /// 任务类型列表，当前支持的任务类型有：0-回档任务；1-创建实例任务；2-扩容任务；3-迁移任务；4-删除实例任务；5-重启任务
        public let flowTypes: [Int64]?

        /// 任务的创建时间
        public let startTime: String?

        /// 任务的结束时间
        public let endTime: String?

        /// 任务ID的数组
        public let uTaskIds: [Int64]?

        /// 每次最多返回多少条任务，取值范围为(0,100]，不传的话默认值为20
        public let limit: Int64?

        /// 返回任务默认是按照创建时间降序排列，从偏移值Offset处开始返回
        public let offset: Int64?

        public init(statuses: [Int64]? = nil, instanceIds: [String]? = nil, flowTypes: [Int64]? = nil, startTime: String? = nil, endTime: String? = nil, uTaskIds: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.statuses = statuses
            self.instanceIds = instanceIds
            self.flowTypes = flowTypes
            self.startTime = startTime
            self.endTime = endTime
            self.uTaskIds = uTaskIds
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case statuses = "Statuses"
            case instanceIds = "InstanceIds"
            case flowTypes = "FlowTypes"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case uTaskIds = "UTaskIds"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUserTasksResponse) -> DescribeUserTasksRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(statuses: self.statuses, instanceIds: self.instanceIds, flowTypes: self.flowTypes, startTime: self.startTime, endTime: self.endTime, uTaskIds: self.uTaskIds, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeUserTasks返回参数结构体
    public struct DescribeUserTasksResponse: TCPaginatedResponse {
        /// 任务总数
        public let totalCount: Int64

        /// 任务列表
        public let flowSet: [UserTaskInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case flowSet = "FlowSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``UserTaskInfo`` list from the paginated response.
        public func getItems() -> [UserTaskInfo] {
            self.flowSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 拉取用户任务列表
    ///
    /// 本接口（DescribeUserTasks）用于拉取用户任务列表
    @inlinable
    public func describeUserTasks(_ input: DescribeUserTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserTasksResponse> {
        self.client.execute(action: "DescribeUserTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取用户任务列表
    ///
    /// 本接口（DescribeUserTasks）用于拉取用户任务列表
    @inlinable
    public func describeUserTasks(_ input: DescribeUserTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserTasksResponse {
        try await self.client.execute(action: "DescribeUserTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取用户任务列表
    ///
    /// 本接口（DescribeUserTasks）用于拉取用户任务列表
    @inlinable
    public func describeUserTasks(statuses: [Int64]? = nil, instanceIds: [String]? = nil, flowTypes: [Int64]? = nil, startTime: String? = nil, endTime: String? = nil, uTaskIds: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserTasksResponse> {
        self.describeUserTasks(.init(statuses: statuses, instanceIds: instanceIds, flowTypes: flowTypes, startTime: startTime, endTime: endTime, uTaskIds: uTaskIds, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取用户任务列表
    ///
    /// 本接口（DescribeUserTasks）用于拉取用户任务列表
    @inlinable
    public func describeUserTasks(statuses: [Int64]? = nil, instanceIds: [String]? = nil, flowTypes: [Int64]? = nil, startTime: String? = nil, endTime: String? = nil, uTaskIds: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserTasksResponse {
        try await self.describeUserTasks(.init(statuses: statuses, instanceIds: instanceIds, flowTypes: flowTypes, startTime: startTime, endTime: endTime, uTaskIds: uTaskIds, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取用户任务列表
    ///
    /// 本接口（DescribeUserTasks）用于拉取用户任务列表
    @inlinable
    public func describeUserTasksPaginated(_ input: DescribeUserTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [UserTaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeUserTasks, logger: logger, on: eventLoop)
    }

    /// 拉取用户任务列表
    ///
    /// 本接口（DescribeUserTasks）用于拉取用户任务列表
    @inlinable @discardableResult
    public func describeUserTasksPaginated(_ input: DescribeUserTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUserTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUserTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取用户任务列表
    ///
    /// 本接口（DescribeUserTasks）用于拉取用户任务列表
    ///
    /// - Returns: `AsyncSequence`s of ``UserTaskInfo`` and ``DescribeUserTasksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUserTasksPaginator(_ input: DescribeUserTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUserTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUserTasks, logger: logger, on: eventLoop)
    }
}
