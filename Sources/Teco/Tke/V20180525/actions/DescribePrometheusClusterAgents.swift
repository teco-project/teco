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
    /// DescribePrometheusClusterAgents请求参数结构体
    public struct DescribePrometheusClusterAgentsRequest: TCPaginatedRequest {
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
        public func getNextPaginatedRequest(with response: DescribePrometheusClusterAgentsResponse) -> DescribePrometheusClusterAgentsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePrometheusClusterAgentsRequest(instanceId: self.instanceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePrometheusClusterAgents返回参数结构体
    public struct DescribePrometheusClusterAgentsResponse: TCPaginatedResponse {
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

    /// 获取TMP实例关联集群列表
    @inlinable
    public func describePrometheusClusterAgents(_ input: DescribePrometheusClusterAgentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusClusterAgentsResponse> {
        self.client.execute(action: "DescribePrometheusClusterAgents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取TMP实例关联集群列表
    @inlinable
    public func describePrometheusClusterAgents(_ input: DescribePrometheusClusterAgentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusClusterAgentsResponse {
        try await self.client.execute(action: "DescribePrometheusClusterAgents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取TMP实例关联集群列表
    @inlinable
    public func describePrometheusClusterAgents(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusClusterAgentsResponse> {
        let input = DescribePrometheusClusterAgentsRequest(instanceId: instanceId, offset: offset, limit: limit)
        return self.client.execute(action: "DescribePrometheusClusterAgents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取TMP实例关联集群列表
    @inlinable
    public func describePrometheusClusterAgents(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusClusterAgentsResponse {
        let input = DescribePrometheusClusterAgentsRequest(instanceId: instanceId, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribePrometheusClusterAgents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取TMP实例关联集群列表
    @inlinable
    public func describePrometheusClusterAgentsPaginated(_ input: DescribePrometheusClusterAgentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PrometheusAgentOverview])> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusClusterAgents, logger: logger, on: eventLoop)
    }

    /// 获取TMP实例关联集群列表
    @inlinable
    public func describePrometheusClusterAgentsPaginated(_ input: DescribePrometheusClusterAgentsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrometheusClusterAgentsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusClusterAgents, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取TMP实例关联集群列表
    @inlinable
    public func describePrometheusClusterAgentsPaginator(_ input: DescribePrometheusClusterAgentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribePrometheusClusterAgentsRequest, DescribePrometheusClusterAgentsResponse>.ResultSequence, responses: TCClient.Paginator<DescribePrometheusClusterAgentsRequest, DescribePrometheusClusterAgentsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribePrometheusClusterAgentsRequest, DescribePrometheusClusterAgentsResponse>.ResultSequence(input: input, region: region, command: self.describePrometheusClusterAgents, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribePrometheusClusterAgentsRequest, DescribePrometheusClusterAgentsResponse>.ResponseSequence(input: input, region: region, command: self.describePrometheusClusterAgents, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
