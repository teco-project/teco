//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Monitor {
    /// 删除已安装的插件
    ///
    /// 删除已安装的插件
    @inlinable
    public func uninstallGrafanaPlugins(_ input: UninstallGrafanaPluginsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UninstallGrafanaPluginsResponse > {
        self.client.execute(action: "UninstallGrafanaPlugins", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除已安装的插件
    ///
    /// 删除已安装的插件
    @inlinable
    public func uninstallGrafanaPlugins(_ input: UninstallGrafanaPluginsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UninstallGrafanaPluginsResponse {
        try await self.client.execute(action: "UninstallGrafanaPlugins", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UninstallGrafanaPlugins请求参数结构体
    public struct UninstallGrafanaPluginsRequest: TCRequestModel {
        /// 插件 ID 数组，例如"PluginIds": [ "grafana-clock-panel" ]，可通过 DescribePluginOverviews 获取 PluginId
        public let pluginIds: [String]
        
        /// Grafana 实例 ID，例如：grafana-abcdefg
        public let instanceId: String
        
        public init (pluginIds: [String], instanceId: String) {
            self.pluginIds = pluginIds
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case pluginIds = "PluginIds"
            case instanceId = "InstanceId"
        }
    }
    
    /// UninstallGrafanaPlugins返回参数结构体
    public struct UninstallGrafanaPluginsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}