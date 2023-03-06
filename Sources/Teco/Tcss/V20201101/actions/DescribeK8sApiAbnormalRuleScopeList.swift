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

extension Tcss {
    /// DescribeK8sApiAbnormalRuleScopeList请求参数结构体
    public struct DescribeK8sApiAbnormalRuleScopeListRequest: TCPaginatedRequest {
        /// 规则ID
        public let ruleID: String

        /// 偏移量
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 过滤条件。
        /// <li>Action - string -是否必填: 否 - 执行动作</li>
        /// <li>RiskLevel - string  - 是否必填: 否 -威胁等级筛选</li>
        public let filters: [RunTimeFilters]?

        public init(ruleID: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [RunTimeFilters]? = nil) {
            self.ruleID = ruleID
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case ruleID = "RuleID"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeK8sApiAbnormalRuleScopeListResponse) -> DescribeK8sApiAbnormalRuleScopeListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeK8sApiAbnormalRuleScopeListRequest(ruleID: self.ruleID, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeK8sApiAbnormalRuleScopeList返回参数结构体
    public struct DescribeK8sApiAbnormalRuleScopeListResponse: TCPaginatedResponse {
        /// 总数
        public let totalCount: UInt64

        /// 列表
        public let list: [K8sApiAbnormalRuleScopeInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [K8sApiAbnormalRuleScopeInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询k8sapi 异常规则中范围列表
    @inlinable
    public func describeK8sApiAbnormalRuleScopeList(_ input: DescribeK8sApiAbnormalRuleScopeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeK8sApiAbnormalRuleScopeListResponse> {
        self.client.execute(action: "DescribeK8sApiAbnormalRuleScopeList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询k8sapi 异常规则中范围列表
    @inlinable
    public func describeK8sApiAbnormalRuleScopeList(_ input: DescribeK8sApiAbnormalRuleScopeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeK8sApiAbnormalRuleScopeListResponse {
        try await self.client.execute(action: "DescribeK8sApiAbnormalRuleScopeList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询k8sapi 异常规则中范围列表
    @inlinable
    public func describeK8sApiAbnormalRuleScopeList(ruleID: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [RunTimeFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeK8sApiAbnormalRuleScopeListResponse> {
        let input = DescribeK8sApiAbnormalRuleScopeListRequest(ruleID: ruleID, offset: offset, limit: limit, filters: filters)
        return self.client.execute(action: "DescribeK8sApiAbnormalRuleScopeList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询k8sapi 异常规则中范围列表
    @inlinable
    public func describeK8sApiAbnormalRuleScopeList(ruleID: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [RunTimeFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeK8sApiAbnormalRuleScopeListResponse {
        let input = DescribeK8sApiAbnormalRuleScopeListRequest(ruleID: ruleID, offset: offset, limit: limit, filters: filters)
        return try await self.client.execute(action: "DescribeK8sApiAbnormalRuleScopeList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询k8sapi 异常规则中范围列表
    @inlinable
    public func describeK8sApiAbnormalRuleScopeListPaginated(_ input: DescribeK8sApiAbnormalRuleScopeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [K8sApiAbnormalRuleScopeInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeK8sApiAbnormalRuleScopeList, logger: logger, on: eventLoop)
    }

    /// 查询k8sapi 异常规则中范围列表
    @inlinable @discardableResult
    public func describeK8sApiAbnormalRuleScopeListPaginated(_ input: DescribeK8sApiAbnormalRuleScopeListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeK8sApiAbnormalRuleScopeListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeK8sApiAbnormalRuleScopeList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询k8sapi 异常规则中范围列表
    ///
    /// - Returns: `AsyncSequence`s of `K8sApiAbnormalRuleScopeInfo` and `DescribeK8sApiAbnormalRuleScopeListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeK8sApiAbnormalRuleScopeListPaginator(_ input: DescribeK8sApiAbnormalRuleScopeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeK8sApiAbnormalRuleScopeListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeK8sApiAbnormalRuleScopeList, logger: logger, on: eventLoop)
    }
}
