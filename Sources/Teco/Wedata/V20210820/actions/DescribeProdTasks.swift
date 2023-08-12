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
    /// DescribeProdTasks请求参数结构体
    public struct DescribeProdTasksRequest: TCPaginatedRequest {
        /// 项目ID
        public let projectId: String?

        /// 页面大小
        public let pageSize: UInt64?

        /// 分页序号
        public let pageNumber: UInt64?

        /// 过滤条件
        public let filters: [Filter]?

        public init(projectId: String? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, filters: [Filter]? = nil) {
            self.projectId = projectId
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProdTasksResponse) -> DescribeProdTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProdTasksRequest(projectId: self.projectId, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1, filters: self.filters)
        }
    }

    /// DescribeProdTasks返回参数结构体
    public struct DescribeProdTasksResponse: TCPaginatedResponse {
        /// 生产调度任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [ProdSchedulerTask]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ProdSchedulerTask`` list from the paginated response.
        public func getItems() -> [ProdSchedulerTask] {
            self.data ?? []
        }
    }

    /// 获取生产调度任务列表
    ///
    /// 数据质量获取生产调度任务列表
    @inlinable
    public func describeProdTasks(_ input: DescribeProdTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProdTasksResponse> {
        self.client.execute(action: "DescribeProdTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取生产调度任务列表
    ///
    /// 数据质量获取生产调度任务列表
    @inlinable
    public func describeProdTasks(_ input: DescribeProdTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProdTasksResponse {
        try await self.client.execute(action: "DescribeProdTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取生产调度任务列表
    ///
    /// 数据质量获取生产调度任务列表
    @inlinable
    public func describeProdTasks(projectId: String? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProdTasksResponse> {
        self.describeProdTasks(.init(projectId: projectId, pageSize: pageSize, pageNumber: pageNumber, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取生产调度任务列表
    ///
    /// 数据质量获取生产调度任务列表
    @inlinable
    public func describeProdTasks(projectId: String? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProdTasksResponse {
        try await self.describeProdTasks(.init(projectId: projectId, pageSize: pageSize, pageNumber: pageNumber, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取生产调度任务列表
    ///
    /// 数据质量获取生产调度任务列表
    @inlinable
    public func describeProdTasksPaginated(_ input: DescribeProdTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ProdSchedulerTask])> {
        self.client.paginate(input: input, region: region, command: self.describeProdTasks, logger: logger, on: eventLoop)
    }

    /// 获取生产调度任务列表
    ///
    /// 数据质量获取生产调度任务列表
    @inlinable @discardableResult
    public func describeProdTasksPaginated(_ input: DescribeProdTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProdTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProdTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取生产调度任务列表
    ///
    /// 数据质量获取生产调度任务列表
    ///
    /// - Returns: `AsyncSequence`s of `ProdSchedulerTask` and `DescribeProdTasksResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProdTasksPaginator(_ input: DescribeProdTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProdTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProdTasks, logger: logger, on: eventLoop)
    }
}
