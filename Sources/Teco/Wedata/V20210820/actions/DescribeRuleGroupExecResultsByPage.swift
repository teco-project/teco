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

extension Wedata {
    /// DescribeRuleGroupExecResultsByPage请求参数结构体
    public struct DescribeRuleGroupExecResultsByPageRequest: TCPaginatedRequest {
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
        public func getNextPaginatedRequest(with response: DescribeRuleGroupExecResultsByPageResponse) -> DescribeRuleGroupExecResultsByPageRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRuleGroupExecResultsByPageRequest(pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, filters: self.filters, orderFields: self.orderFields, projectId: self.projectId)
        }
    }

    /// DescribeRuleGroupExecResultsByPage返回参数结构体
    public struct DescribeRuleGroupExecResultsByPageResponse: TCPaginatedResponse {
        /// 规则组执行结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleGroupExecResultPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RuleGroupExecResult] {
            self.data?.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.data?.totalCount
        }
    }

    /// 规则组执行结果分页查询接口
    @inlinable
    public func describeRuleGroupExecResultsByPage(_ input: DescribeRuleGroupExecResultsByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleGroupExecResultsByPageResponse> {
        self.client.execute(action: "DescribeRuleGroupExecResultsByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 规则组执行结果分页查询接口
    @inlinable
    public func describeRuleGroupExecResultsByPage(_ input: DescribeRuleGroupExecResultsByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleGroupExecResultsByPageResponse {
        try await self.client.execute(action: "DescribeRuleGroupExecResultsByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 规则组执行结果分页查询接口
    @inlinable
    public func describeRuleGroupExecResultsByPage(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleGroupExecResultsByPageResponse> {
        let input = DescribeRuleGroupExecResultsByPageRequest(pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, projectId: projectId)
        return self.client.execute(action: "DescribeRuleGroupExecResultsByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 规则组执行结果分页查询接口
    @inlinable
    public func describeRuleGroupExecResultsByPage(pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleGroupExecResultsByPageResponse {
        let input = DescribeRuleGroupExecResultsByPageRequest(pageNumber: pageNumber, pageSize: pageSize, filters: filters, orderFields: orderFields, projectId: projectId)
        return try await self.client.execute(action: "DescribeRuleGroupExecResultsByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 规则组执行结果分页查询接口
    @inlinable
    public func describeRuleGroupExecResultsByPagePaginated(_ input: DescribeRuleGroupExecResultsByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RuleGroupExecResult])> {
        self.client.paginate(input: input, region: region, command: self.describeRuleGroupExecResultsByPage, logger: logger, on: eventLoop)
    }

    /// 规则组执行结果分页查询接口
    @inlinable @discardableResult
    public func describeRuleGroupExecResultsByPagePaginated(_ input: DescribeRuleGroupExecResultsByPageRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRuleGroupExecResultsByPageResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRuleGroupExecResultsByPage, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 规则组执行结果分页查询接口
    ///
    /// - Returns: `AsyncSequence`s of `RuleGroupExecResult` and `DescribeRuleGroupExecResultsByPageResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRuleGroupExecResultsByPagePaginator(_ input: DescribeRuleGroupExecResultsByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRuleGroupExecResultsByPageRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRuleGroupExecResultsByPage, logger: logger, on: eventLoop)
    }
}
