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

extension Msp {
    /// ListMigrationProject请求参数结构体
    public struct ListMigrationProjectRequest: TCPaginatedRequest {
        /// 记录起始数，默认值为0
        public let offset: UInt64?

        /// 返回条数，默认值为500
        public let limit: UInt64?

        public init(offset: UInt64? = nil, limit: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListMigrationProjectResponse) -> ListMigrationProjectRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// ListMigrationProject返回参数结构体
    public struct ListMigrationProjectResponse: TCPaginatedResponse {
        /// 项目列表
        public let projects: [Project]

        /// 项目总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projects = "Projects"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Project`` list from the paginated response.
        public func getItems() -> [Project] {
            self.projects
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取迁移项目名称列表
    @inlinable
    public func listMigrationProject(_ input: ListMigrationProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMigrationProjectResponse> {
        self.client.execute(action: "ListMigrationProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取迁移项目名称列表
    @inlinable
    public func listMigrationProject(_ input: ListMigrationProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMigrationProjectResponse {
        try await self.client.execute(action: "ListMigrationProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取迁移项目名称列表
    @inlinable
    public func listMigrationProject(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMigrationProjectResponse> {
        self.listMigrationProject(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取迁移项目名称列表
    @inlinable
    public func listMigrationProject(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMigrationProjectResponse {
        try await self.listMigrationProject(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取迁移项目名称列表
    @inlinable
    public func listMigrationProjectPaginated(_ input: ListMigrationProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Project])> {
        self.client.paginate(input: input, region: region, command: self.listMigrationProject, logger: logger, on: eventLoop)
    }

    /// 获取迁移项目名称列表
    @inlinable @discardableResult
    public func listMigrationProjectPaginated(_ input: ListMigrationProjectRequest, region: TCRegion? = nil, onResponse: @escaping (ListMigrationProjectResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listMigrationProject, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取迁移项目名称列表
    ///
    /// - Returns: `AsyncSequence`s of ``Project`` and ``ListMigrationProjectResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func listMigrationProjectPaginator(_ input: ListMigrationProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListMigrationProjectRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listMigrationProject, logger: logger, on: eventLoop)
    }
}
