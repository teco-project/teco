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
    /// DescribeDrInstancePage请求参数结构体
    public struct DescribeDrInstancePageRequest: TCPaginatedRequest {
        /// 项目id
        public let projectId: String

        /// 任务来源 ADHOC || WORKFLOW
        public let taskSource: String

        /// 索引页码
        public let pageIndex: Int64?

        /// 页面大小
        public let pageSize: Int64?

        /// 任务名称
        public let taskName: String?

        /// 提交开始时间 yyyy-MM-dd HH:mm:ss
        public let startTime: String?

        /// 提交结束时间 yyyy-MM-dd HH:mm:ss
        public let endTime: String?

        /// 文件夹id
        public let folderIds: [String]?

        /// 工作流id
        public let workflowIds: [String]?

        /// 只看我的
        public let justMe: Bool?

        /// 任务类型
        public let taskTypes: [String]?

        /// 试运行提交人userId列表
        public let submitUsers: [String]?

        /// 试运行状态
        public let statusList: [String]?

        public init(projectId: String, taskSource: String, pageIndex: Int64? = nil, pageSize: Int64? = nil, taskName: String? = nil, startTime: String? = nil, endTime: String? = nil, folderIds: [String]? = nil, workflowIds: [String]? = nil, justMe: Bool? = nil, taskTypes: [String]? = nil, submitUsers: [String]? = nil, statusList: [String]? = nil) {
            self.projectId = projectId
            self.taskSource = taskSource
            self.pageIndex = pageIndex
            self.pageSize = pageSize
            self.taskName = taskName
            self.startTime = startTime
            self.endTime = endTime
            self.folderIds = folderIds
            self.workflowIds = workflowIds
            self.justMe = justMe
            self.taskTypes = taskTypes
            self.submitUsers = submitUsers
            self.statusList = statusList
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskSource = "TaskSource"
            case pageIndex = "PageIndex"
            case pageSize = "PageSize"
            case taskName = "TaskName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case folderIds = "FolderIds"
            case workflowIds = "WorkflowIds"
            case justMe = "JustMe"
            case taskTypes = "TaskTypes"
            case submitUsers = "SubmitUsers"
            case statusList = "StatusList"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDrInstancePageResponse) -> DescribeDrInstancePageRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDrInstancePageRequest(projectId: self.projectId, taskSource: self.taskSource, pageIndex: (self.pageIndex ?? 0) + 1, pageSize: self.pageSize, taskName: self.taskName, startTime: self.startTime, endTime: self.endTime, folderIds: self.folderIds, workflowIds: self.workflowIds, justMe: self.justMe, taskTypes: self.taskTypes, submitUsers: self.submitUsers, statusList: self.statusList)
        }
    }

    /// DescribeDrInstancePage返回参数结构体
    public struct DescribeDrInstancePageResponse: TCPaginatedResponse {
        /// 结果集
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DrInstanceOpsDtoPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DrInstanceOpsDto] {
            self.data?.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data?.totalCount
        }
    }

    /// 分页查询试运行实例列表
    @inlinable
    public func describeDrInstancePage(_ input: DescribeDrInstancePageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDrInstancePageResponse> {
        self.client.execute(action: "DescribeDrInstancePage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分页查询试运行实例列表
    @inlinable
    public func describeDrInstancePage(_ input: DescribeDrInstancePageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDrInstancePageResponse {
        try await self.client.execute(action: "DescribeDrInstancePage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分页查询试运行实例列表
    @inlinable
    public func describeDrInstancePage(projectId: String, taskSource: String, pageIndex: Int64? = nil, pageSize: Int64? = nil, taskName: String? = nil, startTime: String? = nil, endTime: String? = nil, folderIds: [String]? = nil, workflowIds: [String]? = nil, justMe: Bool? = nil, taskTypes: [String]? = nil, submitUsers: [String]? = nil, statusList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDrInstancePageResponse> {
        self.describeDrInstancePage(.init(projectId: projectId, taskSource: taskSource, pageIndex: pageIndex, pageSize: pageSize, taskName: taskName, startTime: startTime, endTime: endTime, folderIds: folderIds, workflowIds: workflowIds, justMe: justMe, taskTypes: taskTypes, submitUsers: submitUsers, statusList: statusList), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询试运行实例列表
    @inlinable
    public func describeDrInstancePage(projectId: String, taskSource: String, pageIndex: Int64? = nil, pageSize: Int64? = nil, taskName: String? = nil, startTime: String? = nil, endTime: String? = nil, folderIds: [String]? = nil, workflowIds: [String]? = nil, justMe: Bool? = nil, taskTypes: [String]? = nil, submitUsers: [String]? = nil, statusList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDrInstancePageResponse {
        try await self.describeDrInstancePage(.init(projectId: projectId, taskSource: taskSource, pageIndex: pageIndex, pageSize: pageSize, taskName: taskName, startTime: startTime, endTime: endTime, folderIds: folderIds, workflowIds: workflowIds, justMe: justMe, taskTypes: taskTypes, submitUsers: submitUsers, statusList: statusList), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询试运行实例列表
    @inlinable
    public func describeDrInstancePagePaginated(_ input: DescribeDrInstancePageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DrInstanceOpsDto])> {
        self.client.paginate(input: input, region: region, command: self.describeDrInstancePage, logger: logger, on: eventLoop)
    }

    /// 分页查询试运行实例列表
    @inlinable @discardableResult
    public func describeDrInstancePagePaginated(_ input: DescribeDrInstancePageRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDrInstancePageResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDrInstancePage, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 分页查询试运行实例列表
    ///
    /// - Returns: `AsyncSequence`s of `DrInstanceOpsDto` and `DescribeDrInstancePageResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDrInstancePagePaginator(_ input: DescribeDrInstancePageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDrInstancePageRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDrInstancePage, logger: logger, on: eventLoop)
    }
}
