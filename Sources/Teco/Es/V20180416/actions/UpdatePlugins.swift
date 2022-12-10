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

extension Es {
    /// 变更插件列表
    ///
    /// 变更插件列表
    @inlinable
    public func updatePlugins(_ input: UpdatePluginsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdatePluginsResponse > {
        self.client.execute(action: "UpdatePlugins", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 变更插件列表
    ///
    /// 变更插件列表
    @inlinable
    public func updatePlugins(_ input: UpdatePluginsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePluginsResponse {
        try await self.client.execute(action: "UpdatePlugins", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdatePlugins请求参数结构体
    public struct UpdatePluginsRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 需要安装的插件名列表
        public let installPluginList: [String]?
        
        /// 需要卸载的插件名列表
        public let removePluginList: [String]?
        
        /// 是否强制重启，默认值false
        public let forceRestart: Bool?
        
        /// 是否重新安装，默认值false
        public let forceUpdate: Bool?
        
        /// 0：系统插件
        public let pluginType: UInt64?
        
        public init (instanceId: String, installPluginList: [String]?, removePluginList: [String]?, forceRestart: Bool?, forceUpdate: Bool?, pluginType: UInt64?) {
            self.instanceId = instanceId
            self.installPluginList = installPluginList
            self.removePluginList = removePluginList
            self.forceRestart = forceRestart
            self.forceUpdate = forceUpdate
            self.pluginType = pluginType
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case installPluginList = "InstallPluginList"
            case removePluginList = "RemovePluginList"
            case forceRestart = "ForceRestart"
            case forceUpdate = "ForceUpdate"
            case pluginType = "PluginType"
        }
    }
    
    /// UpdatePlugins返回参数结构体
    public struct UpdatePluginsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}