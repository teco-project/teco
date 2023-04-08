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

extension Lighthouse {
    /// DescribeFirewallRules请求参数结构体
    public struct DescribeFirewallRulesRequest: TCPaginatedRequest {
        /// 实例 ID。
        public let instanceId: String

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        public init(instanceId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeFirewallRulesResponse) -> DescribeFirewallRulesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeFirewallRulesRequest(instanceId: self.instanceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeFirewallRules返回参数结构体
    public struct DescribeFirewallRulesResponse: TCPaginatedResponse {
        /// 符合条件的防火墙规则数量。
        public let totalCount: Int64

        /// 防火墙规则详细信息列表。
        public let firewallRuleSet: [FirewallRuleInfo]

        /// 防火墙版本号。
        public let firewallVersion: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case firewallRuleSet = "FirewallRuleSet"
            case firewallVersion = "FirewallVersion"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [FirewallRuleInfo] {
            self.firewallRuleSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询防火墙规则
    ///
    /// 本接口（DescribeFirewallRules）用于查询实例的防火墙规则。
    @inlinable
    public func describeFirewallRules(_ input: DescribeFirewallRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirewallRulesResponse> {
        self.client.execute(action: "DescribeFirewallRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询防火墙规则
    ///
    /// 本接口（DescribeFirewallRules）用于查询实例的防火墙规则。
    @inlinable
    public func describeFirewallRules(_ input: DescribeFirewallRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirewallRulesResponse {
        try await self.client.execute(action: "DescribeFirewallRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询防火墙规则
    ///
    /// 本接口（DescribeFirewallRules）用于查询实例的防火墙规则。
    @inlinable
    public func describeFirewallRules(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirewallRulesResponse> {
        self.describeFirewallRules(.init(instanceId: instanceId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询防火墙规则
    ///
    /// 本接口（DescribeFirewallRules）用于查询实例的防火墙规则。
    @inlinable
    public func describeFirewallRules(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirewallRulesResponse {
        try await self.describeFirewallRules(.init(instanceId: instanceId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询防火墙规则
    ///
    /// 本接口（DescribeFirewallRules）用于查询实例的防火墙规则。
    @inlinable
    public func describeFirewallRulesPaginated(_ input: DescribeFirewallRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [FirewallRuleInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeFirewallRules, logger: logger, on: eventLoop)
    }

    /// 查询防火墙规则
    ///
    /// 本接口（DescribeFirewallRules）用于查询实例的防火墙规则。
    @inlinable @discardableResult
    public func describeFirewallRulesPaginated(_ input: DescribeFirewallRulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeFirewallRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeFirewallRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询防火墙规则
    ///
    /// 本接口（DescribeFirewallRules）用于查询实例的防火墙规则。
    ///
    /// - Returns: `AsyncSequence`s of `FirewallRuleInfo` and `DescribeFirewallRulesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeFirewallRulesPaginator(_ input: DescribeFirewallRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeFirewallRulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeFirewallRules, logger: logger, on: eventLoop)
    }
}
