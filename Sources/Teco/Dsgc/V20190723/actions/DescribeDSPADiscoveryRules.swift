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

extension Dsgc {
    /// DescribeDSPADiscoveryRules请求参数结构体
    public struct DescribeDSPADiscoveryRulesRequest: TCPaginatedRequest {
        /// DSPA实例ID
        public let dspaId: String

        /// 偏移量
        public let offset: Int64?

        /// 返回上限，默认值10， 最大值10000。
        public let limit: Int64?

        /// 规则ID
        public let ruleId: Int64?

        /// 规则名称
        public let name: String?

        /// 是否需要过滤别名
        public let filterRuleSource: Bool?

        public init(dspaId: String, offset: Int64? = nil, limit: Int64? = nil, ruleId: Int64? = nil, name: String? = nil, filterRuleSource: Bool? = nil) {
            self.dspaId = dspaId
            self.offset = offset
            self.limit = limit
            self.ruleId = ruleId
            self.name = name
            self.filterRuleSource = filterRuleSource
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case offset = "Offset"
            case limit = "Limit"
            case ruleId = "RuleId"
            case name = "Name"
            case filterRuleSource = "FilterRuleSource"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDSPADiscoveryRulesResponse) -> DescribeDSPADiscoveryRulesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(dspaId: self.dspaId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, ruleId: self.ruleId, name: self.name, filterRuleSource: self.filterRuleSource)
        }
    }

    /// DescribeDSPADiscoveryRules返回参数结构体
    public struct DescribeDSPADiscoveryRulesResponse: TCPaginatedResponse {
        /// 规则ID
        public let totalCount: Int64

        /// 规则集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [DspaDiscoveryRuleDetail]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DspaDiscoveryRuleDetail`` list from the paginated response.
        public func getItems() -> [DspaDiscoveryRuleDetail] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取分类分级规则信息列表
    ///
    /// 获取分类分级规则列表
    @inlinable
    public func describeDSPADiscoveryRules(_ input: DescribeDSPADiscoveryRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPADiscoveryRulesResponse> {
        self.client.execute(action: "DescribeDSPADiscoveryRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取分类分级规则信息列表
    ///
    /// 获取分类分级规则列表
    @inlinable
    public func describeDSPADiscoveryRules(_ input: DescribeDSPADiscoveryRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPADiscoveryRulesResponse {
        try await self.client.execute(action: "DescribeDSPADiscoveryRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取分类分级规则信息列表
    ///
    /// 获取分类分级规则列表
    @inlinable
    public func describeDSPADiscoveryRules(dspaId: String, offset: Int64? = nil, limit: Int64? = nil, ruleId: Int64? = nil, name: String? = nil, filterRuleSource: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPADiscoveryRulesResponse> {
        self.describeDSPADiscoveryRules(.init(dspaId: dspaId, offset: offset, limit: limit, ruleId: ruleId, name: name, filterRuleSource: filterRuleSource), region: region, logger: logger, on: eventLoop)
    }

    /// 获取分类分级规则信息列表
    ///
    /// 获取分类分级规则列表
    @inlinable
    public func describeDSPADiscoveryRules(dspaId: String, offset: Int64? = nil, limit: Int64? = nil, ruleId: Int64? = nil, name: String? = nil, filterRuleSource: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPADiscoveryRulesResponse {
        try await self.describeDSPADiscoveryRules(.init(dspaId: dspaId, offset: offset, limit: limit, ruleId: ruleId, name: name, filterRuleSource: filterRuleSource), region: region, logger: logger, on: eventLoop)
    }

    /// 获取分类分级规则信息列表
    ///
    /// 获取分类分级规则列表
    @inlinable
    public func describeDSPADiscoveryRulesPaginated(_ input: DescribeDSPADiscoveryRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DspaDiscoveryRuleDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeDSPADiscoveryRules, logger: logger, on: eventLoop)
    }

    /// 获取分类分级规则信息列表
    ///
    /// 获取分类分级规则列表
    @inlinable @discardableResult
    public func describeDSPADiscoveryRulesPaginated(_ input: DescribeDSPADiscoveryRulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDSPADiscoveryRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDSPADiscoveryRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取分类分级规则信息列表
    ///
    /// 获取分类分级规则列表
    ///
    /// - Returns: `AsyncSequence`s of ``DspaDiscoveryRuleDetail`` and ``DescribeDSPADiscoveryRulesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDSPADiscoveryRulesPaginator(_ input: DescribeDSPADiscoveryRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDSPADiscoveryRulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDSPADiscoveryRules, logger: logger, on: eventLoop)
    }
}
