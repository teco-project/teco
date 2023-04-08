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

extension Hasim {
    /// DescribeRules请求参数结构体
    public struct DescribeRulesRequest: TCPaginatedRequest {
        /// 自动化规则ID
        public let ruleID: Int64?

        /// 自动化规则ID
        public let ruleIDs: [Int64]?

        /// 名称
        public let name: String?

        /// 类型
        public let type: Int64?

        /// 是否激活
        public let isActive: Int64?

        /// 翻页大小
        public let limit: Int64?

        /// 翻页偏移
        public let offset: Int64?

        public init(ruleID: Int64? = nil, ruleIDs: [Int64]? = nil, name: String? = nil, type: Int64? = nil, isActive: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.ruleID = ruleID
            self.ruleIDs = ruleIDs
            self.name = name
            self.type = type
            self.isActive = isActive
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case ruleID = "RuleID"
            case ruleIDs = "RuleIDs"
            case name = "Name"
            case type = "Type"
            case isActive = "IsActive"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRulesResponse) -> DescribeRulesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRulesRequest(ruleID: self.ruleID, ruleIDs: self.ruleIDs, name: self.name, type: self.type, isActive: self.isActive, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeRules返回参数结构体
    public struct DescribeRulesResponse: TCPaginatedResponse {
        /// 自动化规则列表集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleInfos?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Rule] {
            self.data?.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data?.total
        }
    }

    /// 查询自动化规则列表
    @inlinable
    public func describeRules(_ input: DescribeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRulesResponse> {
        self.client.execute(action: "DescribeRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询自动化规则列表
    @inlinable
    public func describeRules(_ input: DescribeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesResponse {
        try await self.client.execute(action: "DescribeRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询自动化规则列表
    @inlinable
    public func describeRules(ruleID: Int64? = nil, ruleIDs: [Int64]? = nil, name: String? = nil, type: Int64? = nil, isActive: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRulesResponse> {
        self.describeRules(.init(ruleID: ruleID, ruleIDs: ruleIDs, name: name, type: type, isActive: isActive, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询自动化规则列表
    @inlinable
    public func describeRules(ruleID: Int64? = nil, ruleIDs: [Int64]? = nil, name: String? = nil, type: Int64? = nil, isActive: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesResponse {
        try await self.describeRules(.init(ruleID: ruleID, ruleIDs: ruleIDs, name: name, type: type, isActive: isActive, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询自动化规则列表
    @inlinable
    public func describeRulesPaginated(_ input: DescribeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Rule])> {
        self.client.paginate(input: input, region: region, command: self.describeRules, logger: logger, on: eventLoop)
    }

    /// 查询自动化规则列表
    @inlinable @discardableResult
    public func describeRulesPaginated(_ input: DescribeRulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询自动化规则列表
    ///
    /// - Returns: `AsyncSequence`s of `Rule` and `DescribeRulesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRulesPaginator(_ input: DescribeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRules, logger: logger, on: eventLoop)
    }
}
