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
    /// DescribeRuleTablesByPage请求参数结构体
    public struct DescribeRuleTablesByPageRequest: TCPaginatedRequest {
        /// 项目Id
        public let projectId: String?

        /// 分页序号
        public let pageSize: UInt64?

        /// 分页大小
        public let pageNumber: UInt64?

        /// 过滤条件
        public let filters: [Filter]?

        /// 排序条件
        public let orderFields: [OrderField]?

        public init(projectId: String? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil) {
            self.projectId = projectId
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.filters = filters
            self.orderFields = orderFields
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case filters = "Filters"
            case orderFields = "OrderFields"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRuleTablesByPageResponse) -> DescribeRuleTablesByPageRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(projectId: self.projectId, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1, filters: self.filters, orderFields: self.orderFields)
        }
    }

    /// DescribeRuleTablesByPage返回参数结构体
    public struct DescribeRuleTablesByPageResponse: TCPaginatedResponse {
        /// 表列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleGroupPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RuleGroup`` list from the paginated response.
        public func getItems() -> [RuleGroup] {
            self.data?.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.data?.totalCount
        }
    }

    /// 获取表列表
    @inlinable
    public func describeRuleTablesByPage(_ input: DescribeRuleTablesByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleTablesByPageResponse> {
        self.client.execute(action: "DescribeRuleTablesByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取表列表
    @inlinable
    public func describeRuleTablesByPage(_ input: DescribeRuleTablesByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleTablesByPageResponse {
        try await self.client.execute(action: "DescribeRuleTablesByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取表列表
    @inlinable
    public func describeRuleTablesByPage(projectId: String? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleTablesByPageResponse> {
        self.describeRuleTablesByPage(.init(projectId: projectId, pageSize: pageSize, pageNumber: pageNumber, filters: filters, orderFields: orderFields), region: region, logger: logger, on: eventLoop)
    }

    /// 获取表列表
    @inlinable
    public func describeRuleTablesByPage(projectId: String? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, filters: [Filter]? = nil, orderFields: [OrderField]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleTablesByPageResponse {
        try await self.describeRuleTablesByPage(.init(projectId: projectId, pageSize: pageSize, pageNumber: pageNumber, filters: filters, orderFields: orderFields), region: region, logger: logger, on: eventLoop)
    }

    /// 获取表列表
    @inlinable
    public func describeRuleTablesByPagePaginated(_ input: DescribeRuleTablesByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RuleGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeRuleTablesByPage, logger: logger, on: eventLoop)
    }

    /// 获取表列表
    @inlinable @discardableResult
    public func describeRuleTablesByPagePaginated(_ input: DescribeRuleTablesByPageRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRuleTablesByPageResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRuleTablesByPage, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取表列表
    ///
    /// - Returns: `AsyncSequence`s of ``RuleGroup`` and ``DescribeRuleTablesByPageResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRuleTablesByPagePaginator(_ input: DescribeRuleTablesByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRuleTablesByPageRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRuleTablesByPage, logger: logger, on: eventLoop)
    }
}
