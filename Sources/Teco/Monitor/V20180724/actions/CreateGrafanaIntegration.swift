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
    /// CreateGrafanaIntegration请求参数结构体
    public struct CreateGrafanaIntegrationRequest: TCRequestModel {
        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        /// 集成类型，可在实例详情-云产品集成-集成列表查看。例如：tencent-cloud-prometheus
        public let kind: String

        /// 集成配置
        public let content: String

        public init(instanceId: String, kind: String, content: String) {
            self.instanceId = instanceId
            self.kind = kind
            self.content = content
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case kind = "Kind"
            case content = "Content"
        }
    }

    /// CreateGrafanaIntegration返回参数结构体
    public struct CreateGrafanaIntegrationResponse: TCResponseModel {
        /// 集成 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let integrationId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case integrationId = "IntegrationId"
            case requestId = "RequestId"
        }
    }

    /// 创建 Grafana 集成配置
    @inlinable
    public func createGrafanaIntegration(_ input: CreateGrafanaIntegrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGrafanaIntegrationResponse> {
        self.client.execute(action: "CreateGrafanaIntegration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建 Grafana 集成配置
    @inlinable
    public func createGrafanaIntegration(_ input: CreateGrafanaIntegrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGrafanaIntegrationResponse {
        try await self.client.execute(action: "CreateGrafanaIntegration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建 Grafana 集成配置
    @inlinable
    public func createGrafanaIntegration(instanceId: String, kind: String, content: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGrafanaIntegrationResponse> {
        let input = CreateGrafanaIntegrationRequest(instanceId: instanceId, kind: kind, content: content)
        return self.client.execute(action: "CreateGrafanaIntegration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建 Grafana 集成配置
    @inlinable
    public func createGrafanaIntegration(instanceId: String, kind: String, content: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGrafanaIntegrationResponse {
        let input = CreateGrafanaIntegrationRequest(instanceId: instanceId, kind: kind, content: content)
        return try await self.client.execute(action: "CreateGrafanaIntegration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
