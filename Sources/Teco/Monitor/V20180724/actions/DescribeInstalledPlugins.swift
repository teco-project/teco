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
    /// DescribeInstalledPlugins请求参数结构体
    public struct DescribeInstalledPluginsRequest: TCRequestModel {
        /// Grafana 实例 ID，例如：grafana-kleu3gt0
        public let instanceId: String

        /// 按插件 ID 过滤，例如：grafana-piechart-panel，可通过接口 DescribeInstalledPlugins 查看已安装的插件 ID
        public let pluginId: String?

        public init(instanceId: String, pluginId: String? = nil) {
            self.instanceId = instanceId
            self.pluginId = pluginId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case pluginId = "PluginId"
        }
    }

    /// DescribeInstalledPlugins返回参数结构体
    public struct DescribeInstalledPluginsResponse: TCResponseModel {
        /// 插件列表
        public let pluginSet: [GrafanaPlugin]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pluginSet = "PluginSet"
            case requestId = "RequestId"
        }
    }

    /// 列出实例已安装的插件
    @inlinable
    public func describeInstalledPlugins(_ input: DescribeInstalledPluginsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstalledPluginsResponse> {
        self.client.execute(action: "DescribeInstalledPlugins", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出实例已安装的插件
    @inlinable
    public func describeInstalledPlugins(_ input: DescribeInstalledPluginsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstalledPluginsResponse {
        try await self.client.execute(action: "DescribeInstalledPlugins", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出实例已安装的插件
    @inlinable
    public func describeInstalledPlugins(instanceId: String, pluginId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstalledPluginsResponse> {
        self.describeInstalledPlugins(DescribeInstalledPluginsRequest(instanceId: instanceId, pluginId: pluginId), region: region, logger: logger, on: eventLoop)
    }

    /// 列出实例已安装的插件
    @inlinable
    public func describeInstalledPlugins(instanceId: String, pluginId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstalledPluginsResponse {
        try await self.describeInstalledPlugins(DescribeInstalledPluginsRequest(instanceId: instanceId, pluginId: pluginId), region: region, logger: logger, on: eventLoop)
    }
}
