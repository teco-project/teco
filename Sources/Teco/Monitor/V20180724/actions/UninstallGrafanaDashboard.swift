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
    /// UninstallGrafanaDashboard请求参数结构体
    public struct UninstallGrafanaDashboardRequest: TCRequestModel {
        /// 实例 ID
        public let instanceId: String

        /// Prometheus 集成项 Code，删除对应的 Dashboard，Code 如下：
        /// <li>spring_mvc</li>
        /// <li>mysql</li>
        /// <li>go</li>
        /// <li>redis</li>
        /// <li>jvm</li>
        /// <li>pgsql</li>
        /// <li>mongo</li>
        /// <li>kafka</li>
        /// <li>es</li>
        /// <li>flink</li>
        /// <li>blackbox</li>
        /// <li>consule</li>
        /// <li>memcached</li>
        /// <li>zk</li>
        /// <li>tps</li>
        /// <li>istio</li>
        /// <li>etcd</li>
        public let integrationCodes: [String]?

        public init(instanceId: String, integrationCodes: [String]? = nil) {
            self.instanceId = instanceId
            self.integrationCodes = integrationCodes
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case integrationCodes = "IntegrationCodes"
        }
    }

    /// UninstallGrafanaDashboard返回参数结构体
    public struct UninstallGrafanaDashboardResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除 Grafana Dashboard
    @inlinable @discardableResult
    public func uninstallGrafanaDashboard(_ input: UninstallGrafanaDashboardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UninstallGrafanaDashboardResponse> {
        self.client.execute(action: "UninstallGrafanaDashboard", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除 Grafana Dashboard
    @inlinable @discardableResult
    public func uninstallGrafanaDashboard(_ input: UninstallGrafanaDashboardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UninstallGrafanaDashboardResponse {
        try await self.client.execute(action: "UninstallGrafanaDashboard", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除 Grafana Dashboard
    @inlinable @discardableResult
    public func uninstallGrafanaDashboard(instanceId: String, integrationCodes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UninstallGrafanaDashboardResponse> {
        let input = UninstallGrafanaDashboardRequest(instanceId: instanceId, integrationCodes: integrationCodes)
        return self.client.execute(action: "UninstallGrafanaDashboard", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除 Grafana Dashboard
    @inlinable @discardableResult
    public func uninstallGrafanaDashboard(instanceId: String, integrationCodes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UninstallGrafanaDashboardResponse {
        let input = UninstallGrafanaDashboardRequest(instanceId: instanceId, integrationCodes: integrationCodes)
        return try await self.client.execute(action: "UninstallGrafanaDashboard", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
