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

extension Waf {
    /// DescribeAntiFakeRules请求参数结构体
    public struct DescribeAntiFakeRulesRequest: TCPaginatedRequest {
        /// 域名
        public let domain: String

        /// 偏移
        public let offset: UInt64

        /// 容量
        public let limit: UInt64

        /// 过滤数组,name可以是如下的值： RuleID,ParamName,Url,Action,Method,Source,Status
        public let filters: [FiltersItemNew]?

        /// asc或者desc
        public let order: String?

        /// 目前支持根据ts排序
        public let by: String?

        public init(domain: String, offset: UInt64, limit: UInt64, filters: [FiltersItemNew]? = nil, order: String? = nil, by: String? = nil) {
            self.domain = domain
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAntiFakeRulesResponse) -> DescribeAntiFakeRulesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(domain: self.domain, offset: self.offset + .init(response.getItems().count), limit: self.limit, filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeAntiFakeRules返回参数结构体
    public struct DescribeAntiFakeRulesResponse: TCPaginatedResponse {
        /// 返回值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [CacheUrlItems]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CacheUrlItems`` list from the paginated response.
        public func getItems() -> [CacheUrlItems] {
            self.data ?? []
        }
    }

    /// 获取防篡改信息
    ///
    /// 获取防篡改url
    @inlinable
    public func describeAntiFakeRules(_ input: DescribeAntiFakeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAntiFakeRulesResponse> {
        self.client.execute(action: "DescribeAntiFakeRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取防篡改信息
    ///
    /// 获取防篡改url
    @inlinable
    public func describeAntiFakeRules(_ input: DescribeAntiFakeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAntiFakeRulesResponse {
        try await self.client.execute(action: "DescribeAntiFakeRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取防篡改信息
    ///
    /// 获取防篡改url
    @inlinable
    public func describeAntiFakeRules(domain: String, offset: UInt64, limit: UInt64, filters: [FiltersItemNew]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAntiFakeRulesResponse> {
        self.describeAntiFakeRules(.init(domain: domain, offset: offset, limit: limit, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取防篡改信息
    ///
    /// 获取防篡改url
    @inlinable
    public func describeAntiFakeRules(domain: String, offset: UInt64, limit: UInt64, filters: [FiltersItemNew]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAntiFakeRulesResponse {
        try await self.describeAntiFakeRules(.init(domain: domain, offset: offset, limit: limit, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取防篡改信息
    ///
    /// 获取防篡改url
    @inlinable
    public func describeAntiFakeRulesPaginated(_ input: DescribeAntiFakeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [CacheUrlItems])> {
        self.client.paginate(input: input, region: region, command: self.describeAntiFakeRules, logger: logger, on: eventLoop)
    }

    /// 获取防篡改信息
    ///
    /// 获取防篡改url
    @inlinable @discardableResult
    public func describeAntiFakeRulesPaginated(_ input: DescribeAntiFakeRulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAntiFakeRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAntiFakeRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取防篡改信息
    ///
    /// 获取防篡改url
    ///
    /// - Returns: `AsyncSequence`s of ``CacheUrlItems`` and ``DescribeAntiFakeRulesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAntiFakeRulesPaginator(_ input: DescribeAntiFakeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAntiFakeRulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAntiFakeRules, logger: logger, on: eventLoop)
    }
}
