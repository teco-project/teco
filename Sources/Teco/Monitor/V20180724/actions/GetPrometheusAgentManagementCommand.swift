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

extension Monitor {
    /// GetPrometheusAgentManagementCommand请求参数结构体
    public struct GetPrometheusAgentManagementCommandRequest: TCRequestModel {
        /// Prometheus 实例 ID
        public let instanceId: String

        /// Prometheus Agent ID
        public let agentId: String

        public init(instanceId: String, agentId: String) {
            self.instanceId = instanceId
            self.agentId = agentId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case agentId = "AgentId"
        }
    }

    /// GetPrometheusAgentManagementCommand返回参数结构体
    public struct GetPrometheusAgentManagementCommandResponse: TCResponseModel {
        /// Agent 管理命令
        public let command: ManagementCommand

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case command = "Command"
            case requestId = "RequestId"
        }
    }

    /// 获取 Prometheus Agent 管理相关的命令行
    @inlinable
    public func getPrometheusAgentManagementCommand(_ input: GetPrometheusAgentManagementCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPrometheusAgentManagementCommandResponse> {
        self.client.execute(action: "GetPrometheusAgentManagementCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取 Prometheus Agent 管理相关的命令行
    @inlinable
    public func getPrometheusAgentManagementCommand(_ input: GetPrometheusAgentManagementCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPrometheusAgentManagementCommandResponse {
        try await self.client.execute(action: "GetPrometheusAgentManagementCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取 Prometheus Agent 管理相关的命令行
    @inlinable
    public func getPrometheusAgentManagementCommand(instanceId: String, agentId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPrometheusAgentManagementCommandResponse> {
        self.getPrometheusAgentManagementCommand(GetPrometheusAgentManagementCommandRequest(instanceId: instanceId, agentId: agentId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取 Prometheus Agent 管理相关的命令行
    @inlinable
    public func getPrometheusAgentManagementCommand(instanceId: String, agentId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPrometheusAgentManagementCommandResponse {
        try await self.getPrometheusAgentManagementCommand(GetPrometheusAgentManagementCommandRequest(instanceId: instanceId, agentId: agentId), region: region, logger: logger, on: eventLoop)
    }
}
