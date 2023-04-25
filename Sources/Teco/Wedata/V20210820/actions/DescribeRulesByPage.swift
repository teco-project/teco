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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Wedata {
    /// DescribeRulesByPage请求参数结构体
    public struct DescribeRulesByPageRequest: TCPaginatedRequest {
        /// 分页序号
        public let pageNumber: UInt64?

        /// 分页大小
        public let pageSize: UInt64?

        /// 过滤条件
        public let filters: [Filter]?

        /// 排序字段
        public let orderFields: [OrderField]?

        /// 项目ID
        public let projectId: String?

        public init(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, projectId: String? = nil) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
            self.orderFields = orderFields
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
            case orderFields = "OrderFields"
            case projectId = "ProjectId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRulesByPageResponse) -> DescribeRulesByPageRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRulesByPageRequest(pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, filters: self.filters, orderFields: self.orderFields, projectId: self.projectId)
        }
    }

    /// DescribeRulesByPage返回参数结构体
    public struct DescribeRulesByPageResponse: TCPaginatedResponse {
        /// 规则质量列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RulePage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Rule] {
            self.data?.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.data?.totalCount
        }
    }

    /// 分页查询质量规则
    @inlinable
    public func describeRulesByPage(_ input: DescribeRulesByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRulesByPageResponse> {
        self.client.execute(action: "DescribeRulesByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分页查询质量规则
    @inlinable
    public func describeRulesByPage(_ input: DescribeRulesByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesByPageResponse {
        try await self.client.execute(action: "DescribeRulesByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分页查询质量规则
    @inlinable
    public func describeRulesByPage(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRulesByPageResponse> {
        self.describeRulesByPage(.init(pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询质量规则
    @inlinable
    public func describeRulesByPage(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesByPageResponse {
        try await self.describeRulesByPage(.init(pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询质量规则
    @inlinable
    public func describeRulesByPagePaginated(_ input: DescribeRulesByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Rule])> {
        self.client.paginate(input: input, region: region, command: self.describeRulesByPage, logger: logger, on: eventLoop)
    }

    /// 分页查询质量规则
    @inlinable @discardableResult
    public func describeRulesByPagePaginated(_ input: DescribeRulesByPageRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRulesByPageResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRulesByPage, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 分页查询质量规则
    ///
    /// - Returns: `AsyncSequence`s of `Rule` and `DescribeRulesByPageResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRulesByPagePaginator(_ input: DescribeRulesByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRulesByPageRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRulesByPage, logger: logger, on: eventLoop)
    }
}
