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

extension Tke {
    /// DescribePrometheusAlertRule请求参数结构体
    public struct DescribePrometheusAlertRuleRequest: TCPaginatedRequest {
        /// 实例id
        public let instanceId: String

        /// 分页
        public let offset: UInt64?

        /// 分页
        public let limit: UInt64?

        /// 过滤
        /// 支持ID，Name
        public let filters: [Filter]?

        public init(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePrometheusAlertRuleResponse) -> DescribePrometheusAlertRuleRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribePrometheusAlertRule返回参数结构体
    public struct DescribePrometheusAlertRuleResponse: TCPaginatedResponse {
        /// 告警详情
        public let alertRules: [PrometheusAlertRuleDetail]

        /// 总数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alertRules = "AlertRules"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PrometheusAlertRuleDetail`` list from the paginated response.
        public func getItems() -> [PrometheusAlertRuleDetail] {
            self.alertRules
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取告警规则列表
    @inlinable
    public func describePrometheusAlertRule(_ input: DescribePrometheusAlertRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusAlertRuleResponse> {
        self.client.execute(action: "DescribePrometheusAlertRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取告警规则列表
    @inlinable
    public func describePrometheusAlertRule(_ input: DescribePrometheusAlertRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusAlertRuleResponse {
        try await self.client.execute(action: "DescribePrometheusAlertRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取告警规则列表
    @inlinable
    public func describePrometheusAlertRule(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusAlertRuleResponse> {
        self.describePrometheusAlertRule(.init(instanceId: instanceId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取告警规则列表
    @inlinable
    public func describePrometheusAlertRule(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusAlertRuleResponse {
        try await self.describePrometheusAlertRule(.init(instanceId: instanceId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取告警规则列表
    @inlinable
    public func describePrometheusAlertRulePaginated(_ input: DescribePrometheusAlertRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PrometheusAlertRuleDetail])> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusAlertRule, logger: logger, on: eventLoop)
    }

    /// 获取告警规则列表
    @inlinable @discardableResult
    public func describePrometheusAlertRulePaginated(_ input: DescribePrometheusAlertRuleRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrometheusAlertRuleResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusAlertRule, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取告警规则列表
    ///
    /// - Returns: `AsyncSequence`s of ``PrometheusAlertRuleDetail`` and ``DescribePrometheusAlertRuleResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePrometheusAlertRulePaginator(_ input: DescribePrometheusAlertRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePrometheusAlertRuleRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrometheusAlertRule, logger: logger, on: eventLoop)
    }
}
