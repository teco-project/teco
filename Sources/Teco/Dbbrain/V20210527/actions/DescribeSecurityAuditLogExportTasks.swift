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

extension Dbbrain {
    /// DescribeSecurityAuditLogExportTasks请求参数结构体
    public struct DescribeSecurityAuditLogExportTasksRequest: TCPaginatedRequest {
        /// 安全审计组Id。
        public let secAuditGroupId: String

        /// 服务产品类型，支持值："mysql" - 云数据库 MySQL。
        public let product: String

        /// 日志导出任务Id列表。
        public let asyncRequestIds: [UInt64]?

        /// 偏移量，默认0。
        public let offset: UInt64?

        /// 返回数量，默认20，最大值为100。
        public let limit: UInt64?

        public init(secAuditGroupId: String, product: String, asyncRequestIds: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.secAuditGroupId = secAuditGroupId
            self.product = product
            self.asyncRequestIds = asyncRequestIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case secAuditGroupId = "SecAuditGroupId"
            case product = "Product"
            case asyncRequestIds = "AsyncRequestIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSecurityAuditLogExportTasksResponse) -> DescribeSecurityAuditLogExportTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSecurityAuditLogExportTasksRequest(secAuditGroupId: self.secAuditGroupId, product: self.product, asyncRequestIds: self.asyncRequestIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeSecurityAuditLogExportTasks返回参数结构体
    public struct DescribeSecurityAuditLogExportTasksResponse: TCPaginatedResponse {
        /// 安全审计日志导出任务列表。
        public let tasks: [SecLogExportTaskInfo]

        /// 安全审计日志导出任务总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tasks = "Tasks"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SecLogExportTaskInfo`` list from the paginated response.
        public func getItems() -> [SecLogExportTaskInfo] {
            self.tasks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询安全审计日志导出任务列表
    ///
    /// 查询安全审计日志导出任务列表。
    @inlinable
    public func describeSecurityAuditLogExportTasks(_ input: DescribeSecurityAuditLogExportTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityAuditLogExportTasksResponse> {
        self.client.execute(action: "DescribeSecurityAuditLogExportTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询安全审计日志导出任务列表
    ///
    /// 查询安全审计日志导出任务列表。
    @inlinable
    public func describeSecurityAuditLogExportTasks(_ input: DescribeSecurityAuditLogExportTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityAuditLogExportTasksResponse {
        try await self.client.execute(action: "DescribeSecurityAuditLogExportTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询安全审计日志导出任务列表
    ///
    /// 查询安全审计日志导出任务列表。
    @inlinable
    public func describeSecurityAuditLogExportTasks(secAuditGroupId: String, product: String, asyncRequestIds: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityAuditLogExportTasksResponse> {
        self.describeSecurityAuditLogExportTasks(.init(secAuditGroupId: secAuditGroupId, product: product, asyncRequestIds: asyncRequestIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询安全审计日志导出任务列表
    ///
    /// 查询安全审计日志导出任务列表。
    @inlinable
    public func describeSecurityAuditLogExportTasks(secAuditGroupId: String, product: String, asyncRequestIds: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityAuditLogExportTasksResponse {
        try await self.describeSecurityAuditLogExportTasks(.init(secAuditGroupId: secAuditGroupId, product: product, asyncRequestIds: asyncRequestIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询安全审计日志导出任务列表
    ///
    /// 查询安全审计日志导出任务列表。
    @inlinable
    public func describeSecurityAuditLogExportTasksPaginated(_ input: DescribeSecurityAuditLogExportTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SecLogExportTaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeSecurityAuditLogExportTasks, logger: logger, on: eventLoop)
    }

    /// 查询安全审计日志导出任务列表
    ///
    /// 查询安全审计日志导出任务列表。
    @inlinable @discardableResult
    public func describeSecurityAuditLogExportTasksPaginated(_ input: DescribeSecurityAuditLogExportTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSecurityAuditLogExportTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSecurityAuditLogExportTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询安全审计日志导出任务列表
    ///
    /// 查询安全审计日志导出任务列表。
    ///
    /// - Returns: `AsyncSequence`s of `SecLogExportTaskInfo` and `DescribeSecurityAuditLogExportTasksResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSecurityAuditLogExportTasksPaginator(_ input: DescribeSecurityAuditLogExportTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSecurityAuditLogExportTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSecurityAuditLogExportTasks, logger: logger, on: eventLoop)
    }
}
