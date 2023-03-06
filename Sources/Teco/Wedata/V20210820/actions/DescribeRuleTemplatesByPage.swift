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
    /// DescribeRuleTemplatesByPage请求参数结构体
    public struct DescribeRuleTemplatesByPageRequest: TCPaginatedRequest {
        /// 当前页
        public let pageNumber: UInt64

        /// 每页记录数
        public let pageSize: UInt64

        /// 工作空间ID
        public let projectId: String

        /// 通用排序字段
        public let orderFields: [OrderField]?

        /// 通用过滤条件
        public let filters: [Filter]?

        public init(pageNumber: UInt64, pageSize: UInt64, projectId: String, orderFields: [OrderField]? = nil, filters: [Filter]? = nil) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.projectId = projectId
            self.orderFields = orderFields
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case projectId = "ProjectId"
            case orderFields = "OrderFields"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeRuleTemplatesByPageResponse) -> DescribeRuleTemplatesByPageRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRuleTemplatesByPageRequest(pageNumber: self.pageNumber + 1, pageSize: self.pageSize, projectId: self.projectId, orderFields: self.orderFields, filters: self.filters)
        }
    }

    /// DescribeRuleTemplatesByPage返回参数结构体
    public struct DescribeRuleTemplatesByPageResponse: TCPaginatedResponse {
        /// 结果
        public let data: RuleTemplatePage

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RuleTemplate] {
            self.data.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.data.totalCount
        }
    }

    /// 规则模版查询接口
    ///
    /// 过滤条件】 {模版名称Name,支持模糊匹配} {模版类型type，1.系统模版 2.自定义模版} {质量检测维度QualityDims, 1.准确性 2.唯一性 3.完整性 4.一致性 5.及时性 6.有效性} 【排序字段】 { 引用数排序类型CitationOrderType，根据引用数量排序 ASC DESC}
    @inlinable
    public func describeRuleTemplatesByPage(_ input: DescribeRuleTemplatesByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleTemplatesByPageResponse> {
        self.client.execute(action: "DescribeRuleTemplatesByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 规则模版查询接口
    ///
    /// 过滤条件】 {模版名称Name,支持模糊匹配} {模版类型type，1.系统模版 2.自定义模版} {质量检测维度QualityDims, 1.准确性 2.唯一性 3.完整性 4.一致性 5.及时性 6.有效性} 【排序字段】 { 引用数排序类型CitationOrderType，根据引用数量排序 ASC DESC}
    @inlinable
    public func describeRuleTemplatesByPage(_ input: DescribeRuleTemplatesByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleTemplatesByPageResponse {
        try await self.client.execute(action: "DescribeRuleTemplatesByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 规则模版查询接口
    ///
    /// 过滤条件】 {模版名称Name,支持模糊匹配} {模版类型type，1.系统模版 2.自定义模版} {质量检测维度QualityDims, 1.准确性 2.唯一性 3.完整性 4.一致性 5.及时性 6.有效性} 【排序字段】 { 引用数排序类型CitationOrderType，根据引用数量排序 ASC DESC}
    @inlinable
    public func describeRuleTemplatesByPage(pageNumber: UInt64, pageSize: UInt64, projectId: String, orderFields: [OrderField]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleTemplatesByPageResponse> {
        let input = DescribeRuleTemplatesByPageRequest(pageNumber: pageNumber, pageSize: pageSize, projectId: projectId, orderFields: orderFields, filters: filters)
        return self.client.execute(action: "DescribeRuleTemplatesByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 规则模版查询接口
    ///
    /// 过滤条件】 {模版名称Name,支持模糊匹配} {模版类型type，1.系统模版 2.自定义模版} {质量检测维度QualityDims, 1.准确性 2.唯一性 3.完整性 4.一致性 5.及时性 6.有效性} 【排序字段】 { 引用数排序类型CitationOrderType，根据引用数量排序 ASC DESC}
    @inlinable
    public func describeRuleTemplatesByPage(pageNumber: UInt64, pageSize: UInt64, projectId: String, orderFields: [OrderField]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleTemplatesByPageResponse {
        let input = DescribeRuleTemplatesByPageRequest(pageNumber: pageNumber, pageSize: pageSize, projectId: projectId, orderFields: orderFields, filters: filters)
        return try await self.client.execute(action: "DescribeRuleTemplatesByPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 规则模版查询接口
    ///
    /// 过滤条件】 {模版名称Name,支持模糊匹配} {模版类型type，1.系统模版 2.自定义模版} {质量检测维度QualityDims, 1.准确性 2.唯一性 3.完整性 4.一致性 5.及时性 6.有效性} 【排序字段】 { 引用数排序类型CitationOrderType，根据引用数量排序 ASC DESC}
    @inlinable
    public func describeRuleTemplatesByPagePaginated(_ input: DescribeRuleTemplatesByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RuleTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeRuleTemplatesByPage, logger: logger, on: eventLoop)
    }

    /// 规则模版查询接口
    ///
    /// 过滤条件】 {模版名称Name,支持模糊匹配} {模版类型type，1.系统模版 2.自定义模版} {质量检测维度QualityDims, 1.准确性 2.唯一性 3.完整性 4.一致性 5.及时性 6.有效性} 【排序字段】 { 引用数排序类型CitationOrderType，根据引用数量排序 ASC DESC}
    @inlinable @discardableResult
    public func describeRuleTemplatesByPagePaginated(_ input: DescribeRuleTemplatesByPageRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRuleTemplatesByPageResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRuleTemplatesByPage, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 规则模版查询接口
    ///
    /// 过滤条件】 {模版名称Name,支持模糊匹配} {模版类型type，1.系统模版 2.自定义模版} {质量检测维度QualityDims, 1.准确性 2.唯一性 3.完整性 4.一致性 5.及时性 6.有效性} 【排序字段】 { 引用数排序类型CitationOrderType，根据引用数量排序 ASC DESC}
    ///
    /// - Returns: `AsyncSequence`s of `RuleTemplate` and `DescribeRuleTemplatesByPageResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRuleTemplatesByPagePaginator(_ input: DescribeRuleTemplatesByPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRuleTemplatesByPageRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRuleTemplatesByPage, logger: logger, on: eventLoop)
    }
}
