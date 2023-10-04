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

extension Cdb {
    /// DescribeAuditRules请求参数结构体
    public struct DescribeAuditRulesRequest: TCPaginatedRequest {
        /// 审计规则 ID。
        public let ruleId: String?

        /// 审计规则名称。支持按审计规则名称进行模糊匹配查询。
        public let ruleName: String?

        /// 分页大小参数。默认值为 20，最小值为 1，最大值为 100。
        public let limit: Int64?

        /// 分页偏移量。默认值为0。
        public let offset: Int64?

        public init(ruleId: String? = nil, ruleName: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.ruleId = ruleId
            self.ruleName = ruleName
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case ruleName = "RuleName"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAuditRulesResponse) -> DescribeAuditRulesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(ruleId: self.ruleId, ruleName: self.ruleName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeAuditRules返回参数结构体
    public struct DescribeAuditRulesResponse: TCPaginatedResponse {
        /// 符合条件的审计规则个数。
        public let totalCount: Int64

        /// 审计规则详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [AuditRule]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AuditRule`` list from the paginated response.
        public func getItems() -> [AuditRule] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询审计规则
    ///
    /// 本接口(DescribeAuditRules)用于查询用户在当前地域的审计规则。
    @inlinable
    public func describeAuditRules(_ input: DescribeAuditRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditRulesResponse> {
        self.client.execute(action: "DescribeAuditRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询审计规则
    ///
    /// 本接口(DescribeAuditRules)用于查询用户在当前地域的审计规则。
    @inlinable
    public func describeAuditRules(_ input: DescribeAuditRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditRulesResponse {
        try await self.client.execute(action: "DescribeAuditRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询审计规则
    ///
    /// 本接口(DescribeAuditRules)用于查询用户在当前地域的审计规则。
    @inlinable
    public func describeAuditRules(ruleId: String? = nil, ruleName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditRulesResponse> {
        self.describeAuditRules(.init(ruleId: ruleId, ruleName: ruleName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询审计规则
    ///
    /// 本接口(DescribeAuditRules)用于查询用户在当前地域的审计规则。
    @inlinable
    public func describeAuditRules(ruleId: String? = nil, ruleName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditRulesResponse {
        try await self.describeAuditRules(.init(ruleId: ruleId, ruleName: ruleName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询审计规则
    ///
    /// 本接口(DescribeAuditRules)用于查询用户在当前地域的审计规则。
    @inlinable
    public func describeAuditRulesPaginated(_ input: DescribeAuditRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AuditRule])> {
        self.client.paginate(input: input, region: region, command: self.describeAuditRules, logger: logger, on: eventLoop)
    }

    /// 查询审计规则
    ///
    /// 本接口(DescribeAuditRules)用于查询用户在当前地域的审计规则。
    @inlinable @discardableResult
    public func describeAuditRulesPaginated(_ input: DescribeAuditRulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAuditRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAuditRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询审计规则
    ///
    /// 本接口(DescribeAuditRules)用于查询用户在当前地域的审计规则。
    ///
    /// - Returns: `AsyncSequence`s of ``AuditRule`` and ``DescribeAuditRulesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAuditRulesPaginator(_ input: DescribeAuditRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAuditRulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAuditRules, logger: logger, on: eventLoop)
    }
}
