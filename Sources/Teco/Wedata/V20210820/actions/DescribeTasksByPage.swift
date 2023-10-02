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

extension Wedata {
    /// DescribeTasksByPage请求参数结构体
    public struct DescribeTasksByPageRequest: TCPaginatedRequest {
        /// 项目Id
        public let projectId: String

        /// 工作流ID
        public let workflowId: String

        /// 页码，默认1
        public let pageNumber: Int64?

        /// 页大小，默认10
        public let pageSize: Int64?

        public init(projectId: String, workflowId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil) {
            self.projectId = projectId
            self.workflowId = workflowId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case workflowId = "WorkflowId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTasksByPageResponse) -> DescribeTasksByPageRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(projectId: self.projectId, workflowId: self.workflowId, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeTasksByPage返回参数结构体
    public struct DescribeTasksByPageResponse: TCPaginatedResponse {
        /// 无1
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: TaskInfoDataPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TaskInfoData`` list from the paginated response.
        public func getItems() -> [TaskInfoData] {
            self.data?.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.data?.totalCount
        }
    }

    /// 根据工作流分页查询任务【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 根据工作流分页查询任务
    @inlinable
    public func describeTasksByPage(_ input: DescribeTasksByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksByPageResponse> {
        self.client.execute(action: "DescribeTasksByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据工作流分页查询任务【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 根据工作流分页查询任务
    @inlinable
    public func describeTasksByPage(_ input: DescribeTasksByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksByPageResponse {
        try await self.client.execute(action: "DescribeTasksByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据工作流分页查询任务【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 根据工作流分页查询任务
    @inlinable
    public func describeTasksByPage(projectId: String, workflowId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksByPageResponse> {
        self.describeTasksByPage(.init(projectId: projectId, workflowId: workflowId, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 根据工作流分页查询任务【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 根据工作流分页查询任务
    @inlinable
    public func describeTasksByPage(projectId: String, workflowId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksByPageResponse {
        try await self.describeTasksByPage(.init(projectId: projectId, workflowId: workflowId, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 根据工作流分页查询任务【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 根据工作流分页查询任务
    @inlinable
    public func describeTasksByPagePaginated(_ input: DescribeTasksByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TaskInfoData])> {
        self.client.paginate(input: input, region: region, command: self.describeTasksByPage, logger: logger, on: eventLoop)
    }

    /// 根据工作流分页查询任务【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 根据工作流分页查询任务
    @inlinable @discardableResult
    public func describeTasksByPagePaginated(_ input: DescribeTasksByPageRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTasksByPageResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTasksByPage, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 根据工作流分页查询任务【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 根据工作流分页查询任务
    ///
    /// - Returns: `AsyncSequence`s of ``TaskInfoData`` and ``DescribeTasksByPageResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTasksByPagePaginator(_ input: DescribeTasksByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTasksByPageRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTasksByPage, logger: logger, on: eventLoop)
    }
}
