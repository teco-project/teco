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

extension Cynosdb {
    /// DescribeAuditRuleTemplates请求参数结构体
    public struct DescribeAuditRuleTemplatesRequest: TCPaginatedRequest {
        /// 规则模版ID。
        public let ruleTemplateIds: [String]?

        /// 规则模版名称
        public let ruleTemplateNames: [String]?

        /// 单次请求返回的数量。默认值20。
        public let limit: UInt64?

        /// 偏移量，默认值为 0。
        public let offset: UInt64?

        public init(ruleTemplateIds: [String]? = nil, ruleTemplateNames: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.ruleTemplateIds = ruleTemplateIds
            self.ruleTemplateNames = ruleTemplateNames
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case ruleTemplateIds = "RuleTemplateIds"
            case ruleTemplateNames = "RuleTemplateNames"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAuditRuleTemplatesResponse) -> DescribeAuditRuleTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAuditRuleTemplatesRequest(ruleTemplateIds: self.ruleTemplateIds, ruleTemplateNames: self.ruleTemplateNames, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeAuditRuleTemplates返回参数结构体
    public struct DescribeAuditRuleTemplatesResponse: TCPaginatedResponse {
        /// 符合查询条件的实例总数。
        public let totalCount: UInt64

        /// 规则模版详细信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [AuditRuleTemplateInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AuditRuleTemplateInfo] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询审计规则模版
    ///
    /// 查询审计规则模版信息
    @inlinable
    public func describeAuditRuleTemplates(_ input: DescribeAuditRuleTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditRuleTemplatesResponse> {
        self.client.execute(action: "DescribeAuditRuleTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询审计规则模版
    ///
    /// 查询审计规则模版信息
    @inlinable
    public func describeAuditRuleTemplates(_ input: DescribeAuditRuleTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditRuleTemplatesResponse {
        try await self.client.execute(action: "DescribeAuditRuleTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询审计规则模版
    ///
    /// 查询审计规则模版信息
    @inlinable
    public func describeAuditRuleTemplates(ruleTemplateIds: [String]? = nil, ruleTemplateNames: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditRuleTemplatesResponse> {
        let input = DescribeAuditRuleTemplatesRequest(ruleTemplateIds: ruleTemplateIds, ruleTemplateNames: ruleTemplateNames, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeAuditRuleTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询审计规则模版
    ///
    /// 查询审计规则模版信息
    @inlinable
    public func describeAuditRuleTemplates(ruleTemplateIds: [String]? = nil, ruleTemplateNames: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditRuleTemplatesResponse {
        let input = DescribeAuditRuleTemplatesRequest(ruleTemplateIds: ruleTemplateIds, ruleTemplateNames: ruleTemplateNames, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeAuditRuleTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询审计规则模版
    ///
    /// 查询审计规则模版信息
    @inlinable
    public func describeAuditRuleTemplatesPaginated(_ input: DescribeAuditRuleTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AuditRuleTemplateInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAuditRuleTemplates, logger: logger, on: eventLoop)
    }

    /// 查询审计规则模版
    ///
    /// 查询审计规则模版信息
    @inlinable @discardableResult
    public func describeAuditRuleTemplatesPaginated(_ input: DescribeAuditRuleTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAuditRuleTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAuditRuleTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询审计规则模版
    ///
    /// 查询审计规则模版信息
    @inlinable
    public func describeAuditRuleTemplatesPaginator(_ input: DescribeAuditRuleTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeAuditRuleTemplatesRequest, DescribeAuditRuleTemplatesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeAuditRuleTemplatesRequest, DescribeAuditRuleTemplatesResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAuditRuleTemplates, logger: logger, on: eventLoop)
    }
}
