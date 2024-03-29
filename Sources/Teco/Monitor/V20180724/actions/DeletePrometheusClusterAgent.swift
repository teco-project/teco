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

extension Monitor {
    /// DeletePrometheusClusterAgent请求参数结构体
    public struct DeletePrometheusClusterAgentRequest: TCRequest {
        /// agent列表
        public let agents: [PrometheusAgentInfo]

        /// 实例id
        public let instanceId: String

        public init(agents: [PrometheusAgentInfo], instanceId: String) {
            self.agents = agents
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case agents = "Agents"
            case instanceId = "InstanceId"
        }
    }

    /// DeletePrometheusClusterAgent返回参数结构体
    public struct DeletePrometheusClusterAgentResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解除TMP实例的集群关联
    @inlinable @discardableResult
    public func deletePrometheusClusterAgent(_ input: DeletePrometheusClusterAgentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrometheusClusterAgentResponse> {
        self.client.execute(action: "DeletePrometheusClusterAgent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解除TMP实例的集群关联
    @inlinable @discardableResult
    public func deletePrometheusClusterAgent(_ input: DeletePrometheusClusterAgentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrometheusClusterAgentResponse {
        try await self.client.execute(action: "DeletePrometheusClusterAgent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解除TMP实例的集群关联
    @inlinable @discardableResult
    public func deletePrometheusClusterAgent(agents: [PrometheusAgentInfo], instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrometheusClusterAgentResponse> {
        self.deletePrometheusClusterAgent(.init(agents: agents, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 解除TMP实例的集群关联
    @inlinable @discardableResult
    public func deletePrometheusClusterAgent(agents: [PrometheusAgentInfo], instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrometheusClusterAgentResponse {
        try await self.deletePrometheusClusterAgent(.init(agents: agents, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
