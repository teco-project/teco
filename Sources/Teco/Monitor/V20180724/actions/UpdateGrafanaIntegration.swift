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
    /// UpdateGrafanaIntegration请求参数结构体
    public struct UpdateGrafanaIntegrationRequest: TCRequest {
        /// 集成 ID，可在实例详情-云产品集成-集成列表查看。例如：integration-abcd1234
        public let integrationId: String

        /// Grafana 实例 ID，例如：grafana-12345678
        public let instanceId: String

        /// 集成类型，可在实例详情-云产品集成-集成列表查看。例如：tencent-cloud-prometheus
        public let kind: String

        /// 集成内容
        public let content: String

        public init(integrationId: String, instanceId: String, kind: String, content: String) {
            self.integrationId = integrationId
            self.instanceId = instanceId
            self.kind = kind
            self.content = content
        }

        enum CodingKeys: String, CodingKey {
            case integrationId = "IntegrationId"
            case instanceId = "InstanceId"
            case kind = "Kind"
            case content = "Content"
        }
    }

    /// UpdateGrafanaIntegration返回参数结构体
    public struct UpdateGrafanaIntegrationResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新 Grafana 集成配置
    @inlinable @discardableResult
    public func updateGrafanaIntegration(_ input: UpdateGrafanaIntegrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGrafanaIntegrationResponse> {
        self.client.execute(action: "UpdateGrafanaIntegration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新 Grafana 集成配置
    @inlinable @discardableResult
    public func updateGrafanaIntegration(_ input: UpdateGrafanaIntegrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGrafanaIntegrationResponse {
        try await self.client.execute(action: "UpdateGrafanaIntegration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新 Grafana 集成配置
    @inlinable @discardableResult
    public func updateGrafanaIntegration(integrationId: String, instanceId: String, kind: String, content: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGrafanaIntegrationResponse> {
        self.updateGrafanaIntegration(.init(integrationId: integrationId, instanceId: instanceId, kind: kind, content: content), region: region, logger: logger, on: eventLoop)
    }

    /// 更新 Grafana 集成配置
    @inlinable @discardableResult
    public func updateGrafanaIntegration(integrationId: String, instanceId: String, kind: String, content: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGrafanaIntegrationResponse {
        try await self.updateGrafanaIntegration(.init(integrationId: integrationId, instanceId: instanceId, kind: kind, content: content), region: region, logger: logger, on: eventLoop)
    }
}
