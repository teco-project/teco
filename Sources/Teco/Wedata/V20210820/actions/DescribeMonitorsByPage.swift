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

import TecoCore
import TecoPaginationHelpers

extension Wedata {
    /// DescribeMonitorsByPage请求参数结构体
    public struct DescribeMonitorsByPageRequest: TCPaginatedRequest {
        /// 项目Id
        public let projectId: String?

        /// 分页大小
        public let pageSize: UInt64?

        /// 过滤条件
        public let filters: [Filter]?

        /// 排序条件
        public let orderFields: [OrderField]?

        /// 分页序号
        public let pageNumber: UInt64?

        public init(projectId: String? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, pageNumber: UInt64? = nil) {
            self.projectId = projectId
            self.pageSize = pageSize
            self.filters = filters
            self.orderFields = orderFields
            self.pageNumber = pageNumber
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pageSize = "PageSize"
            case filters = "Filters"
            case orderFields = "OrderFields"
            case pageNumber = "PageNumber"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMonitorsByPageResponse) -> DescribeMonitorsByPageRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMonitorsByPageRequest(projectId: self.projectId, pageSize: self.pageSize, filters: self.filters, orderFields: self.orderFields, pageNumber: (self.pageNumber ?? 0) + 1)
        }
    }

    /// DescribeMonitorsByPage返回参数结构体
    public struct DescribeMonitorsByPageResponse: TCPaginatedResponse {
        /// 分页查询结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleGroupMonitorPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RuleGroupMonitor] {
            self.data?.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.data?.totalCount
        }
    }

    /// 分页查询质量监控组
    @inlinable
    public func describeMonitorsByPage(_ input: DescribeMonitorsByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMonitorsByPageResponse> {
        self.client.execute(action: "DescribeMonitorsByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分页查询质量监控组
    @inlinable
    public func describeMonitorsByPage(_ input: DescribeMonitorsByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMonitorsByPageResponse {
        try await self.client.execute(action: "DescribeMonitorsByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分页查询质量监控组
    @inlinable
    public func describeMonitorsByPage(projectId: String? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, pageNumber: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMonitorsByPageResponse> {
        self.describeMonitorsByPage(.init(projectId: projectId, pageSize: pageSize, filters: filters, orderFields: orderFields, pageNumber: pageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询质量监控组
    @inlinable
    public func describeMonitorsByPage(projectId: String? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, pageNumber: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMonitorsByPageResponse {
        try await self.describeMonitorsByPage(.init(projectId: projectId, pageSize: pageSize, filters: filters, orderFields: orderFields, pageNumber: pageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询质量监控组
    @inlinable
    public func describeMonitorsByPagePaginated(_ input: DescribeMonitorsByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RuleGroupMonitor])> {
        self.client.paginate(input: input, region: region, command: self.describeMonitorsByPage, logger: logger, on: eventLoop)
    }

    /// 分页查询质量监控组
    @inlinable @discardableResult
    public func describeMonitorsByPagePaginated(_ input: DescribeMonitorsByPageRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMonitorsByPageResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMonitorsByPage, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 分页查询质量监控组
    ///
    /// - Returns: `AsyncSequence`s of `RuleGroupMonitor` and `DescribeMonitorsByPageResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMonitorsByPagePaginator(_ input: DescribeMonitorsByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMonitorsByPageRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMonitorsByPage, logger: logger, on: eventLoop)
    }
}
