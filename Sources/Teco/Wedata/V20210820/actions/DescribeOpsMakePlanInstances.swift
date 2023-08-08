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
    /// DescribeOpsMakePlanInstances请求参数结构体
    public struct DescribeOpsMakePlanInstancesRequest: TCPaginatedRequest {
        /// 项目ID
        public let projectId: String

        /// 补录计划ID
        public let planId: String

        /// 补录任务ID
        public let taskId: String

        /// 分页页码，默认值1
        public let pageNumber: Int64?

        /// 分页大小，默认值10
        public let pageSize: Int64?

        public init(projectId: String, planId: String, taskId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil) {
            self.projectId = projectId
            self.planId = planId
            self.taskId = taskId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case planId = "PlanId"
            case taskId = "TaskId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeOpsMakePlanInstancesResponse) -> DescribeOpsMakePlanInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeOpsMakePlanInstancesRequest(projectId: self.projectId, planId: self.planId, taskId: self.taskId, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeOpsMakePlanInstances返回参数结构体
    public struct DescribeOpsMakePlanInstancesResponse: TCPaginatedResponse {
        /// 补录计划实例分页查询结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: MakePlanInstanceOpsDtoCollection?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InstanceOpsDto] {
            self.data?.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data?.totalCount
        }
    }

    /// 查看补录计划任务实例
    ///
    /// 根据补录计划和补录任务获取补录实例列表。
    @inlinable
    public func describeOpsMakePlanInstances(_ input: DescribeOpsMakePlanInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOpsMakePlanInstancesResponse> {
        self.client.execute(action: "DescribeOpsMakePlanInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看补录计划任务实例
    ///
    /// 根据补录计划和补录任务获取补录实例列表。
    @inlinable
    public func describeOpsMakePlanInstances(_ input: DescribeOpsMakePlanInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOpsMakePlanInstancesResponse {
        try await self.client.execute(action: "DescribeOpsMakePlanInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看补录计划任务实例
    ///
    /// 根据补录计划和补录任务获取补录实例列表。
    @inlinable
    public func describeOpsMakePlanInstances(projectId: String, planId: String, taskId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOpsMakePlanInstancesResponse> {
        self.describeOpsMakePlanInstances(.init(projectId: projectId, planId: planId, taskId: taskId, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查看补录计划任务实例
    ///
    /// 根据补录计划和补录任务获取补录实例列表。
    @inlinable
    public func describeOpsMakePlanInstances(projectId: String, planId: String, taskId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOpsMakePlanInstancesResponse {
        try await self.describeOpsMakePlanInstances(.init(projectId: projectId, planId: planId, taskId: taskId, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查看补录计划任务实例
    ///
    /// 根据补录计划和补录任务获取补录实例列表。
    @inlinable
    public func describeOpsMakePlanInstancesPaginated(_ input: DescribeOpsMakePlanInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceOpsDto])> {
        self.client.paginate(input: input, region: region, command: self.describeOpsMakePlanInstances, logger: logger, on: eventLoop)
    }

    /// 查看补录计划任务实例
    ///
    /// 根据补录计划和补录任务获取补录实例列表。
    @inlinable @discardableResult
    public func describeOpsMakePlanInstancesPaginated(_ input: DescribeOpsMakePlanInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeOpsMakePlanInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeOpsMakePlanInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看补录计划任务实例
    ///
    /// 根据补录计划和补录任务获取补录实例列表。
    ///
    /// - Returns: `AsyncSequence`s of `InstanceOpsDto` and `DescribeOpsMakePlanInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeOpsMakePlanInstancesPaginator(_ input: DescribeOpsMakePlanInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeOpsMakePlanInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeOpsMakePlanInstances, logger: logger, on: eventLoop)
    }
}
