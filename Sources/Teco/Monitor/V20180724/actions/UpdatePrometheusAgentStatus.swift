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

extension Monitor {
    /// UpdatePrometheusAgentStatus请求参数结构体
    public struct UpdatePrometheusAgentStatusRequest: TCRequestModel {
        /// Prometheus 实例 ID，例如：prom-abcd1234
        public let instanceId: String

        /// Agent ID 列表，例如：agent-abcd1234，可在控制台 Agent 管理中获取
        public let agentIds: [String]

        /// 要更新的状态
        /// <li> 1= 开启 </li>
        /// <li> 2= 关闭 </li>
        public let status: Int64

        public init(instanceId: String, agentIds: [String], status: Int64) {
            self.instanceId = instanceId
            self.agentIds = agentIds
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case agentIds = "AgentIds"
            case status = "Status"
        }
    }

    /// UpdatePrometheusAgentStatus返回参数结构体
    public struct UpdatePrometheusAgentStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新 Prometheus CVM Agent 状态
    @inlinable @discardableResult
    public func updatePrometheusAgentStatus(_ input: UpdatePrometheusAgentStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePrometheusAgentStatusResponse> {
        self.client.execute(action: "UpdatePrometheusAgentStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新 Prometheus CVM Agent 状态
    @inlinable @discardableResult
    public func updatePrometheusAgentStatus(_ input: UpdatePrometheusAgentStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePrometheusAgentStatusResponse {
        try await self.client.execute(action: "UpdatePrometheusAgentStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新 Prometheus CVM Agent 状态
    @inlinable @discardableResult
    public func updatePrometheusAgentStatus(instanceId: String, agentIds: [String], status: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePrometheusAgentStatusResponse> {
        self.updatePrometheusAgentStatus(UpdatePrometheusAgentStatusRequest(instanceId: instanceId, agentIds: agentIds, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 更新 Prometheus CVM Agent 状态
    @inlinable @discardableResult
    public func updatePrometheusAgentStatus(instanceId: String, agentIds: [String], status: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePrometheusAgentStatusResponse {
        try await self.updatePrometheusAgentStatus(UpdatePrometheusAgentStatusRequest(instanceId: instanceId, agentIds: agentIds, status: status), region: region, logger: logger, on: eventLoop)
    }
}
