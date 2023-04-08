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

import TecoCore
import TecoPaginationHelpers

extension Cwp {
    /// DescribeBashRules请求参数结构体
    public struct DescribeBashRulesRequest: TCPaginatedRequest {
        /// 0-系统规则; 1-用户规则
        public let type: UInt64

        /// 返回数量，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Keywords - String - 是否必填：否 - 关键字(规则名称)</li>
        public let filters: [Filter]?

        public init(type: UInt64, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.type = type
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBashRulesResponse) -> DescribeBashRulesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBashRulesRequest(type: self.type, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeBashRules返回参数结构体
    public struct DescribeBashRulesResponse: TCPaginatedResponse {
        /// 列表内容
        public let list: [BashRule]

        /// 总条数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BashRule] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取高危命令规则列表
    @inlinable
    public func describeBashRules(_ input: DescribeBashRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBashRulesResponse> {
        self.client.execute(action: "DescribeBashRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高危命令规则列表
    @inlinable
    public func describeBashRules(_ input: DescribeBashRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBashRulesResponse {
        try await self.client.execute(action: "DescribeBashRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高危命令规则列表
    @inlinable
    public func describeBashRules(type: UInt64, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBashRulesResponse> {
        self.describeBashRules(.init(type: type, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取高危命令规则列表
    @inlinable
    public func describeBashRules(type: UInt64, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBashRulesResponse {
        try await self.describeBashRules(.init(type: type, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取高危命令规则列表
    @inlinable
    public func describeBashRulesPaginated(_ input: DescribeBashRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BashRule])> {
        self.client.paginate(input: input, region: region, command: self.describeBashRules, logger: logger, on: eventLoop)
    }

    /// 获取高危命令规则列表
    @inlinable @discardableResult
    public func describeBashRulesPaginated(_ input: DescribeBashRulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBashRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBashRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取高危命令规则列表
    ///
    /// - Returns: `AsyncSequence`s of `BashRule` and `DescribeBashRulesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBashRulesPaginator(_ input: DescribeBashRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBashRulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBashRules, logger: logger, on: eventLoop)
    }
}
