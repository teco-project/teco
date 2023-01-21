//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tke {
    /// CreatePrometheusClusterAgent请求参数结构体
    public struct CreatePrometheusClusterAgentRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// agent列表
        public let agents: [PrometheusClusterAgentBasic]

        public init(instanceId: String, agents: [PrometheusClusterAgentBasic]) {
            self.instanceId = instanceId
            self.agents = agents
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case agents = "Agents"
        }
    }

    /// CreatePrometheusClusterAgent返回参数结构体
    public struct CreatePrometheusClusterAgentResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 2.0实例关联集群
    ///
    /// 与云监控融合的2.0实例关联集群
    @inlinable @discardableResult
    public func createPrometheusClusterAgent(_ input: CreatePrometheusClusterAgentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusClusterAgentResponse> {
        self.client.execute(action: "CreatePrometheusClusterAgent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 2.0实例关联集群
    ///
    /// 与云监控融合的2.0实例关联集群
    @inlinable @discardableResult
    public func createPrometheusClusterAgent(_ input: CreatePrometheusClusterAgentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusClusterAgentResponse {
        try await self.client.execute(action: "CreatePrometheusClusterAgent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 2.0实例关联集群
    ///
    /// 与云监控融合的2.0实例关联集群
    @inlinable @discardableResult
    public func createPrometheusClusterAgent(instanceId: String, agents: [PrometheusClusterAgentBasic], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusClusterAgentResponse> {
        self.createPrometheusClusterAgent(CreatePrometheusClusterAgentRequest(instanceId: instanceId, agents: agents), region: region, logger: logger, on: eventLoop)
    }

    /// 2.0实例关联集群
    ///
    /// 与云监控融合的2.0实例关联集群
    @inlinable @discardableResult
    public func createPrometheusClusterAgent(instanceId: String, agents: [PrometheusClusterAgentBasic], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusClusterAgentResponse {
        try await self.createPrometheusClusterAgent(CreatePrometheusClusterAgentRequest(instanceId: instanceId, agents: agents), region: region, logger: logger, on: eventLoop)
    }
}
