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

extension Yunjing {
    /// DescribeReverseShellRules请求参数结构体
    public struct DescribeReverseShellRulesRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - Keywords - String - 是否必填：否 - 关键字(进程名称)
        public let filters: [Filter]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeReverseShellRulesResponse) -> DescribeReverseShellRulesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeReverseShellRules返回参数结构体
    public struct DescribeReverseShellRulesResponse: TCPaginatedResponse {
        /// 列表内容
        public let list: [ReverseShellRule]

        /// 总条数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ReverseShellRule`` list from the paginated response.
        public func getItems() -> [ReverseShellRule] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取反弹Shell规则列表
    @inlinable
    public func describeReverseShellRules(_ input: DescribeReverseShellRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReverseShellRulesResponse> {
        self.client.execute(action: "DescribeReverseShellRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取反弹Shell规则列表
    @inlinable
    public func describeReverseShellRules(_ input: DescribeReverseShellRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellRulesResponse {
        try await self.client.execute(action: "DescribeReverseShellRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取反弹Shell规则列表
    @inlinable
    public func describeReverseShellRules(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReverseShellRulesResponse> {
        self.describeReverseShellRules(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取反弹Shell规则列表
    @inlinable
    public func describeReverseShellRules(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellRulesResponse {
        try await self.describeReverseShellRules(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取反弹Shell规则列表
    @inlinable
    public func describeReverseShellRulesPaginated(_ input: DescribeReverseShellRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ReverseShellRule])> {
        self.client.paginate(input: input, region: region, command: self.describeReverseShellRules, logger: logger, on: eventLoop)
    }

    /// 获取反弹Shell规则列表
    @inlinable @discardableResult
    public func describeReverseShellRulesPaginated(_ input: DescribeReverseShellRulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeReverseShellRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeReverseShellRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取反弹Shell规则列表
    ///
    /// - Returns: `AsyncSequence`s of ``ReverseShellRule`` and ``DescribeReverseShellRulesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeReverseShellRulesPaginator(_ input: DescribeReverseShellRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeReverseShellRulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeReverseShellRules, logger: logger, on: eventLoop)
    }
}
