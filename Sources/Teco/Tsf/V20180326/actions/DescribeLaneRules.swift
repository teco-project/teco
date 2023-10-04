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

extension Tsf {
    /// DescribeLaneRules请求参数结构体
    public struct DescribeLaneRulesRequest: TCPaginatedRequest {
        /// 每页展示的条数
        public let limit: Int64?

        /// 翻页偏移量
        public let offset: Int64?

        /// 搜索关键词
        public let searchWord: String?

        /// 泳道规则ID（用于精确搜索）
        public let ruleId: String?

        public let ruleIdList: [String]?

        public init(limit: Int64? = nil, offset: Int64? = nil, searchWord: String? = nil, ruleId: String? = nil, ruleIdList: [String]? = nil) {
            self.limit = limit
            self.offset = offset
            self.searchWord = searchWord
            self.ruleId = ruleId
            self.ruleIdList = ruleIdList
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case searchWord = "SearchWord"
            case ruleId = "RuleId"
            case ruleIdList = "RuleIdList"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLaneRulesResponse) -> DescribeLaneRulesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), searchWord: self.searchWord, ruleId: self.ruleId, ruleIdList: self.ruleIdList)
        }
    }

    /// DescribeLaneRules返回参数结构体
    public struct DescribeLaneRulesResponse: TCPaginatedResponse {
        /// 泳道规则列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: LaneRules?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``LaneRule`` list from the paginated response.
        public func getItems() -> [LaneRule] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询泳道规则列表
    @inlinable
    public func describeLaneRules(_ input: DescribeLaneRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLaneRulesResponse> {
        self.client.execute(action: "DescribeLaneRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询泳道规则列表
    @inlinable
    public func describeLaneRules(_ input: DescribeLaneRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLaneRulesResponse {
        try await self.client.execute(action: "DescribeLaneRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询泳道规则列表
    @inlinable
    public func describeLaneRules(limit: Int64? = nil, offset: Int64? = nil, searchWord: String? = nil, ruleId: String? = nil, ruleIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLaneRulesResponse> {
        self.describeLaneRules(.init(limit: limit, offset: offset, searchWord: searchWord, ruleId: ruleId, ruleIdList: ruleIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 查询泳道规则列表
    @inlinable
    public func describeLaneRules(limit: Int64? = nil, offset: Int64? = nil, searchWord: String? = nil, ruleId: String? = nil, ruleIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLaneRulesResponse {
        try await self.describeLaneRules(.init(limit: limit, offset: offset, searchWord: searchWord, ruleId: ruleId, ruleIdList: ruleIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 查询泳道规则列表
    @inlinable
    public func describeLaneRulesPaginated(_ input: DescribeLaneRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [LaneRule])> {
        self.client.paginate(input: input, region: region, command: self.describeLaneRules, logger: logger, on: eventLoop)
    }

    /// 查询泳道规则列表
    @inlinable @discardableResult
    public func describeLaneRulesPaginated(_ input: DescribeLaneRulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLaneRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLaneRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询泳道规则列表
    ///
    /// - Returns: `AsyncSequence`s of ``LaneRule`` and ``DescribeLaneRulesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLaneRulesPaginator(_ input: DescribeLaneRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLaneRulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLaneRules, logger: logger, on: eventLoop)
    }
}
