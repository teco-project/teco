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

extension Cwp {
    /// DescribePrivilegeRules请求参数结构体
    public struct DescribePrivilegeRulesRequest: TCPaginatedRequest {
        /// 返回数量，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Keywords - String - 是否必填：否 - 关键字(进程名称)</li>
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
        public func getNextPaginatedRequest(with response: DescribePrivilegeRulesResponse) -> DescribePrivilegeRulesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePrivilegeRulesRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribePrivilegeRules返回参数结构体
    public struct DescribePrivilegeRulesResponse: TCPaginatedResponse {
        /// 列表内容
        public let list: [PrivilegeRule]

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
        public func getItems() -> [PrivilegeRule] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取本地提权规则列表
    @inlinable
    public func describePrivilegeRules(_ input: DescribePrivilegeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivilegeRulesResponse> {
        self.client.execute(action: "DescribePrivilegeRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取本地提权规则列表
    @inlinable
    public func describePrivilegeRules(_ input: DescribePrivilegeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivilegeRulesResponse {
        try await self.client.execute(action: "DescribePrivilegeRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取本地提权规则列表
    @inlinable
    public func describePrivilegeRules(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivilegeRulesResponse> {
        let input = DescribePrivilegeRulesRequest(limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribePrivilegeRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取本地提权规则列表
    @inlinable
    public func describePrivilegeRules(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivilegeRulesResponse {
        let input = DescribePrivilegeRulesRequest(limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribePrivilegeRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取本地提权规则列表
    @inlinable
    public func describePrivilegeRulesPaginated(_ input: DescribePrivilegeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PrivilegeRule])> {
        self.client.paginate(input: input, region: region, command: self.describePrivilegeRules, logger: logger, on: eventLoop)
    }

    /// 获取本地提权规则列表
    @inlinable
    public func describePrivilegeRulesPaginated(_ input: DescribePrivilegeRulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrivilegeRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrivilegeRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取本地提权规则列表
    @inlinable
    public func describePrivilegeRulesPaginator(_ input: DescribePrivilegeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribePrivilegeRulesRequest, DescribePrivilegeRulesResponse>.ResultSequence, responses: TCClient.Paginator<DescribePrivilegeRulesRequest, DescribePrivilegeRulesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribePrivilegeRulesRequest, DescribePrivilegeRulesResponse>.ResultSequence(input: input, region: region, command: self.describePrivilegeRules, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribePrivilegeRulesRequest, DescribePrivilegeRulesResponse>.ResponseSequence(input: input, region: region, command: self.describePrivilegeRules, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
