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
import TecoPaginationHelpers

extension Tke {
    /// DescribePrometheusAlertPolicy请求参数结构体
    public struct DescribePrometheusAlertPolicyRequest: TCPaginatedRequest {
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
        public func makeNextRequest(with response: DescribePrometheusAlertPolicyResponse) -> DescribePrometheusAlertPolicyRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePrometheusAlertPolicyRequest(instanceId: self.instanceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribePrometheusAlertPolicy返回参数结构体
    public struct DescribePrometheusAlertPolicyResponse: TCPaginatedResponse {
        /// 告警详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alertRules: [PrometheusAlertPolicyItem]?

        /// 总数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alertRules = "AlertRules"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PrometheusAlertPolicyItem`` list from the paginated response.
        public func getItems() -> [PrometheusAlertPolicyItem] {
            self.alertRules ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取2.0实例告警策略列表
    @inlinable
    public func describePrometheusAlertPolicy(_ input: DescribePrometheusAlertPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusAlertPolicyResponse> {
        self.client.execute(action: "DescribePrometheusAlertPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取2.0实例告警策略列表
    @inlinable
    public func describePrometheusAlertPolicy(_ input: DescribePrometheusAlertPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusAlertPolicyResponse {
        try await self.client.execute(action: "DescribePrometheusAlertPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取2.0实例告警策略列表
    @inlinable
    public func describePrometheusAlertPolicy(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusAlertPolicyResponse> {
        self.describePrometheusAlertPolicy(.init(instanceId: instanceId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取2.0实例告警策略列表
    @inlinable
    public func describePrometheusAlertPolicy(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusAlertPolicyResponse {
        try await self.describePrometheusAlertPolicy(.init(instanceId: instanceId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取2.0实例告警策略列表
    @inlinable
    public func describePrometheusAlertPolicyPaginated(_ input: DescribePrometheusAlertPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PrometheusAlertPolicyItem])> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusAlertPolicy, logger: logger, on: eventLoop)
    }

    /// 获取2.0实例告警策略列表
    @inlinable @discardableResult
    public func describePrometheusAlertPolicyPaginated(_ input: DescribePrometheusAlertPolicyRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrometheusAlertPolicyResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusAlertPolicy, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取2.0实例告警策略列表
    ///
    /// - Returns: `AsyncSequence`s of ``PrometheusAlertPolicyItem`` and ``DescribePrometheusAlertPolicyResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePrometheusAlertPolicyPaginator(_ input: DescribePrometheusAlertPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePrometheusAlertPolicyRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrometheusAlertPolicy, logger: logger, on: eventLoop)
    }
}
