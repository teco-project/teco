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
    /// DescribeRuleHistoryByPage请求参数结构体
    public struct DescribeRuleHistoryByPageRequest: TCPaginatedRequest {
        /// 项目ID
        public let projectId: String?

        /// 分页序号
        public let pageNumber: UInt64?

        /// 分页大小
        public let pageSize: UInt64?

        /// 过滤条件
        public let filters: [Filter]?

        public init(projectId: String? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil) {
            self.projectId = projectId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeRuleHistoryByPageResponse) -> DescribeRuleHistoryByPageRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRuleHistoryByPageRequest(projectId: self.projectId, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, filters: self.filters)
        }
    }

    /// DescribeRuleHistoryByPage返回参数结构体
    public struct DescribeRuleHistoryByPageResponse: TCPaginatedResponse {
        /// 规则组操作历史列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleHistoryPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RuleHistory] {
            self.data?.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.data?.totalCount
        }
    }

    /// 分页查询规则操作记录接口
    ///
    /// 过滤条件【必要字段】{ruleId}
    @inlinable
    public func describeRuleHistoryByPage(_ input: DescribeRuleHistoryByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleHistoryByPageResponse> {
        self.client.execute(action: "DescribeRuleHistoryByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分页查询规则操作记录接口
    ///
    /// 过滤条件【必要字段】{ruleId}
    @inlinable
    public func describeRuleHistoryByPage(_ input: DescribeRuleHistoryByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleHistoryByPageResponse {
        try await self.client.execute(action: "DescribeRuleHistoryByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分页查询规则操作记录接口
    ///
    /// 过滤条件【必要字段】{ruleId}
    @inlinable
    public func describeRuleHistoryByPage(projectId: String? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleHistoryByPageResponse> {
        let input = DescribeRuleHistoryByPageRequest(projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, filters: filters)
        return self.client.execute(action: "DescribeRuleHistoryByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分页查询规则操作记录接口
    ///
    /// 过滤条件【必要字段】{ruleId}
    @inlinable
    public func describeRuleHistoryByPage(projectId: String? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleHistoryByPageResponse {
        let input = DescribeRuleHistoryByPageRequest(projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, filters: filters)
        return try await self.client.execute(action: "DescribeRuleHistoryByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分页查询规则操作记录接口
    ///
    /// 过滤条件【必要字段】{ruleId}
    @inlinable
    public func describeRuleHistoryByPagePaginated(_ input: DescribeRuleHistoryByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RuleHistory])> {
        self.client.paginate(input: input, region: region, command: self.describeRuleHistoryByPage, logger: logger, on: eventLoop)
    }

    /// 分页查询规则操作记录接口
    ///
    /// 过滤条件【必要字段】{ruleId}
    @inlinable
    public func describeRuleHistoryByPagePaginated(_ input: DescribeRuleHistoryByPageRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRuleHistoryByPageResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRuleHistoryByPage, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 分页查询规则操作记录接口
    ///
    /// 过滤条件【必要字段】{ruleId}
    @inlinable
    public func describeRuleHistoryByPagePaginator(_ input: DescribeRuleHistoryByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeRuleHistoryByPageRequest, DescribeRuleHistoryByPageResponse>.ResultSequence, responses: TCClient.Paginator<DescribeRuleHistoryByPageRequest, DescribeRuleHistoryByPageResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeRuleHistoryByPageRequest, DescribeRuleHistoryByPageResponse>.ResultSequence(input: input, region: region, command: self.describeRuleHistoryByPage, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeRuleHistoryByPageRequest, DescribeRuleHistoryByPageResponse>.ResponseSequence(input: input, region: region, command: self.describeRuleHistoryByPage, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
