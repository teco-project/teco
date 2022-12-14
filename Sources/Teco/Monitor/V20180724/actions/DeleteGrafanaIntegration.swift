//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DeleteGrafanaIntegration请求参数结构体
    public struct DeleteGrafanaIntegrationRequest: TCRequestModel {
        /// 实例 ID
        public let instanceId: String

        /// 集成 ID
        public let integrationId: String

        public init(instanceId: String, integrationId: String) {
            self.instanceId = instanceId
            self.integrationId = integrationId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case integrationId = "IntegrationId"
        }
    }

    /// DeleteGrafanaIntegration返回参数结构体
    public struct DeleteGrafanaIntegrationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除 Grafana 集成配置
    @inlinable
    public func deleteGrafanaIntegration(_ input: DeleteGrafanaIntegrationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteGrafanaIntegrationResponse > {
        self.client.execute(action: "DeleteGrafanaIntegration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除 Grafana 集成配置
    @inlinable
    public func deleteGrafanaIntegration(_ input: DeleteGrafanaIntegrationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGrafanaIntegrationResponse {
        try await self.client.execute(action: "DeleteGrafanaIntegration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除 Grafana 集成配置
    @inlinable
    public func deleteGrafanaIntegration(instanceId: String, integrationId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteGrafanaIntegrationResponse > {
        self.deleteGrafanaIntegration(DeleteGrafanaIntegrationRequest(instanceId: instanceId, integrationId: integrationId), logger: logger, on: eventLoop)
    }

    /// 删除 Grafana 集成配置
    @inlinable
    public func deleteGrafanaIntegration(instanceId: String, integrationId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGrafanaIntegrationResponse {
        try await self.deleteGrafanaIntegration(DeleteGrafanaIntegrationRequest(instanceId: instanceId, integrationId: integrationId), logger: logger, on: eventLoop)
    }
}
