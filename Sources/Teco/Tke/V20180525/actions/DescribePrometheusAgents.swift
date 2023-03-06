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

extension Tke {
    /// DescribePrometheusAgents请求参数结构体
    public struct DescribePrometheusAgentsRequest: TCPaginatedRequest {
        /// 实例id
        public let instanceId: String

        /// 用于分页
        public let offset: UInt64?

        /// 用于分页
        public let limit: UInt64?

        public init(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
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
        public func getNextPaginatedRequest(with response: DescribePrometheusAgentsResponse) -> DescribePrometheusAgentsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePrometheusAgentsRequest(instanceId: self.instanceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePrometheusAgents返回参数结构体
    public struct DescribePrometheusAgentsResponse: TCPaginatedResponse {
        /// 被关联集群信息
        public let agents: [PrometheusAgentOverview]

        /// 被关联集群总量
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case agents = "Agents"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PrometheusAgentOverview] {
            self.agents
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取被关联集群列表
    @inlinable
    public func describePrometheusAgents(_ input: DescribePrometheusAgentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusAgentsResponse> {
        self.client.execute(action: "DescribePrometheusAgents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取被关联集群列表
    @inlinable
    public func describePrometheusAgents(_ input: DescribePrometheusAgentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusAgentsResponse {
        try await self.client.execute(action: "DescribePrometheusAgents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取被关联集群列表
    @inlinable
    public func describePrometheusAgents(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusAgentsResponse> {
        let input = DescribePrometheusAgentsRequest(instanceId: instanceId, offset: offset, limit: limit)
        return self.client.execute(action: "DescribePrometheusAgents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取被关联集群列表
    @inlinable
    public func describePrometheusAgents(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusAgentsResponse {
        let input = DescribePrometheusAgentsRequest(instanceId: instanceId, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribePrometheusAgents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取被关联集群列表
    @inlinable
    public func describePrometheusAgentsPaginated(_ input: DescribePrometheusAgentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PrometheusAgentOverview])> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusAgents, logger: logger, on: eventLoop)
    }

    /// 获取被关联集群列表
    @inlinable @discardableResult
    public func describePrometheusAgentsPaginated(_ input: DescribePrometheusAgentsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrometheusAgentsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusAgents, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取被关联集群列表
    ///
    /// - Returns: `AsyncSequence`s of `PrometheusAgentOverview` and `DescribePrometheusAgentsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePrometheusAgentsPaginator(_ input: DescribePrometheusAgentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePrometheusAgentsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrometheusAgents, logger: logger, on: eventLoop)
    }
}
