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

import TecoPaginationHelpers

extension Msp {
    /// ListMigrationTask请求参数结构体
    public struct ListMigrationTaskRequest: TCPaginatedRequest {
        /// 记录起始数，默认值为0
        public let offset: UInt64?

        /// 记录条数，默认值为10
        public let limit: UInt64?

        /// 项目ID，默认值为空
        public let projectId: UInt64?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, projectId: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case projectId = "ProjectId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListMigrationTaskResponse) -> ListMigrationTaskRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListMigrationTaskRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, projectId: self.projectId)
        }
    }

    /// ListMigrationTask返回参数结构体
    public struct ListMigrationTaskResponse: TCPaginatedResponse {
        /// 记录总条数
        public let totalCount: UInt64

        /// 迁移任务列表
        public let tasks: [Task]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tasks = "Tasks"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Task] {
            self.tasks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取迁移任务列表
    @inlinable
    public func listMigrationTask(_ input: ListMigrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMigrationTaskResponse> {
        self.client.execute(action: "ListMigrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取迁移任务列表
    @inlinable
    public func listMigrationTask(_ input: ListMigrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMigrationTaskResponse {
        try await self.client.execute(action: "ListMigrationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取迁移任务列表
    @inlinable
    public func listMigrationTask(offset: UInt64? = nil, limit: UInt64? = nil, projectId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMigrationTaskResponse> {
        self.listMigrationTask(.init(offset: offset, limit: limit, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取迁移任务列表
    @inlinable
    public func listMigrationTask(offset: UInt64? = nil, limit: UInt64? = nil, projectId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMigrationTaskResponse {
        try await self.listMigrationTask(.init(offset: offset, limit: limit, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取迁移任务列表
    @inlinable
    public func listMigrationTaskPaginated(_ input: ListMigrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Task])> {
        self.client.paginate(input: input, region: region, command: self.listMigrationTask, logger: logger, on: eventLoop)
    }

    /// 获取迁移任务列表
    @inlinable @discardableResult
    public func listMigrationTaskPaginated(_ input: ListMigrationTaskRequest, region: TCRegion? = nil, onResponse: @escaping (ListMigrationTaskResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listMigrationTask, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取迁移任务列表
    ///
    /// - Returns: `AsyncSequence`s of `Task` and `ListMigrationTaskResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func listMigrationTaskPaginator(_ input: ListMigrationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListMigrationTaskRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listMigrationTask, logger: logger, on: eventLoop)
    }
}
