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
    /// DescribeCCRule请求参数结构体
    public struct DescribeCCRuleRequest: TCPaginatedRequest {
        /// 域名
        public let domain: String

        /// 页码
        public let offset: UInt64

        /// 页的数目
        public let limit: UInt64

        /// 排序参数
        public let sort: String?

        /// clb-waf 或者 sparta-waf
        public let edition: String?

        /// 过滤条件
        public let name: String?

        public init(domain: String, offset: UInt64, limit: UInt64, sort: String? = nil, edition: String? = nil, name: String? = nil) {
            self.domain = domain
            self.offset = offset
            self.limit = limit
            self.sort = sort
            self.edition = edition
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case offset = "Offset"
            case limit = "Limit"
            case sort = "Sort"
            case edition = "Edition"
            case name = "Name"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCCRuleResponse) -> DescribeCCRuleRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(domain: self.domain, offset: self.offset + .init(response.getItems().count), limit: self.limit, sort: self.sort, edition: self.edition, name: self.name)
        }
    }

    /// DescribeCCRule返回参数结构体
    public struct DescribeCCRuleResponse: TCPaginatedResponse {
        /// 结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: CCRuleData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CCRuleItem`` list from the paginated response.
        public func getItems() -> [CCRuleItem] {
            self.data?.res ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data?.totalCount
        }
    }

    /// Waf  CC V2 Query接口
    @inlinable
    public func describeCCRule(_ input: DescribeCCRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCRuleResponse> {
        self.client.execute(action: "DescribeCCRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Waf  CC V2 Query接口
    @inlinable
    public func describeCCRule(_ input: DescribeCCRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCRuleResponse {
        try await self.client.execute(action: "DescribeCCRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// Waf  CC V2 Query接口
    @inlinable
    public func describeCCRule(domain: String, offset: UInt64, limit: UInt64, sort: String? = nil, edition: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCRuleResponse> {
        self.describeCCRule(.init(domain: domain, offset: offset, limit: limit, sort: sort, edition: edition, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// Waf  CC V2 Query接口
    @inlinable
    public func describeCCRule(domain: String, offset: UInt64, limit: UInt64, sort: String? = nil, edition: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCRuleResponse {
        try await self.describeCCRule(.init(domain: domain, offset: offset, limit: limit, sort: sort, edition: edition, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// Waf  CC V2 Query接口
    @inlinable
    public func describeCCRulePaginated(_ input: DescribeCCRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CCRuleItem])> {
        self.client.paginate(input: input, region: region, command: self.describeCCRule, logger: logger, on: eventLoop)
    }

    /// Waf  CC V2 Query接口
    @inlinable @discardableResult
    public func describeCCRulePaginated(_ input: DescribeCCRuleRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCCRuleResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCCRule, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// Waf  CC V2 Query接口
    ///
    /// - Returns: `AsyncSequence`s of ``CCRuleItem`` and ``DescribeCCRuleResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCCRulePaginator(_ input: DescribeCCRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCCRuleRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCCRule, logger: logger, on: eventLoop)
    }
}
