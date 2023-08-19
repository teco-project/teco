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
    /// InstallPlugins请求参数结构体
    public struct InstallPluginsRequest: TCRequest {
        /// 插件信息
        public let plugins: [GrafanaPlugin]

        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        public init(plugins: [GrafanaPlugin], instanceId: String) {
            self.plugins = plugins
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case plugins = "Plugins"
            case instanceId = "InstanceId"
        }
    }

    /// InstallPlugins返回参数结构体
    public struct InstallPluginsResponse: TCResponse {
        /// 已安装插件 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pluginIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pluginIds = "PluginIds"
            case requestId = "RequestId"
        }
    }

    /// 安装 Grafana Plugin
    @inlinable
    public func installPlugins(_ input: InstallPluginsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InstallPluginsResponse> {
        self.client.execute(action: "InstallPlugins", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安装 Grafana Plugin
    @inlinable
    public func installPlugins(_ input: InstallPluginsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InstallPluginsResponse {
        try await self.client.execute(action: "InstallPlugins", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安装 Grafana Plugin
    @inlinable
    public func installPlugins(plugins: [GrafanaPlugin], instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InstallPluginsResponse> {
        self.installPlugins(.init(plugins: plugins, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 安装 Grafana Plugin
    @inlinable
    public func installPlugins(plugins: [GrafanaPlugin], instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InstallPluginsResponse {
        try await self.installPlugins(.init(plugins: plugins, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
