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
    /// BindPrometheusManagedGrafana请求参数结构体
    public struct BindPrometheusManagedGrafanaRequest: TCRequestModel {
        /// Prometheus 实例 ID
        public let instanceId: String

        /// Grafana 可视化服务实例 ID
        public let grafanaId: String

        public init(instanceId: String, grafanaId: String) {
            self.instanceId = instanceId
            self.grafanaId = grafanaId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case grafanaId = "GrafanaId"
        }
    }

    /// BindPrometheusManagedGrafana返回参数结构体
    public struct BindPrometheusManagedGrafanaResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定 Grafana 可视化服务实例
    @inlinable @discardableResult
    public func bindPrometheusManagedGrafana(_ input: BindPrometheusManagedGrafanaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindPrometheusManagedGrafanaResponse> {
        self.client.execute(action: "BindPrometheusManagedGrafana", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定 Grafana 可视化服务实例
    @inlinable @discardableResult
    public func bindPrometheusManagedGrafana(_ input: BindPrometheusManagedGrafanaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindPrometheusManagedGrafanaResponse {
        try await self.client.execute(action: "BindPrometheusManagedGrafana", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定 Grafana 可视化服务实例
    @inlinable @discardableResult
    public func bindPrometheusManagedGrafana(instanceId: String, grafanaId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindPrometheusManagedGrafanaResponse> {
        self.bindPrometheusManagedGrafana(BindPrometheusManagedGrafanaRequest(instanceId: instanceId, grafanaId: grafanaId), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定 Grafana 可视化服务实例
    @inlinable @discardableResult
    public func bindPrometheusManagedGrafana(instanceId: String, grafanaId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindPrometheusManagedGrafanaResponse {
        try await self.bindPrometheusManagedGrafana(BindPrometheusManagedGrafanaRequest(instanceId: instanceId, grafanaId: grafanaId), region: region, logger: logger, on: eventLoop)
    }
}
