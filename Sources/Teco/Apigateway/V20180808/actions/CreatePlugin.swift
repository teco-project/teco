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

extension Apigateway {
    /// CreatePlugin请求参数结构体
    public struct CreatePluginRequest: TCRequestModel {
        /// 用户自定义的插件名称。最长50个字符，最短2个字符，支持 a-z,A-Z,0-9,_, 必须字母开头，字母或者数字结尾。
        public let pluginName: String

        /// 插件类型。目前支持IPControl, TrafficControl, Cors, CustomReq, CustomAuth，Routing，TrafficControlByParameter, CircuitBreaker, ProxyCache。
        public let pluginType: String

        /// 插件定义语句，支持json。
        public let pluginData: String

        /// 插件描述，限定200字以内。
        public let description: String?

        /// 标签
        public let tags: [Tag]?

        public init(pluginName: String, pluginType: String, pluginData: String, description: String? = nil, tags: [Tag]? = nil) {
            self.pluginName = pluginName
            self.pluginType = pluginType
            self.pluginData = pluginData
            self.description = description
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case pluginName = "PluginName"
            case pluginType = "PluginType"
            case pluginData = "PluginData"
            case description = "Description"
            case tags = "Tags"
        }
    }

    /// CreatePlugin返回参数结构体
    public struct CreatePluginResponse: TCResponseModel {
        /// 新建的插件详情。
        public let result: Plugin

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建插件
    ///
    /// 创建API网关插件。
    @inlinable
    public func createPlugin(_ input: CreatePluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePluginResponse> {
        self.client.execute(action: "CreatePlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建插件
    ///
    /// 创建API网关插件。
    @inlinable
    public func createPlugin(_ input: CreatePluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePluginResponse {
        try await self.client.execute(action: "CreatePlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建插件
    ///
    /// 创建API网关插件。
    @inlinable
    public func createPlugin(pluginName: String, pluginType: String, pluginData: String, description: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePluginResponse> {
        self.createPlugin(.init(pluginName: pluginName, pluginType: pluginType, pluginData: pluginData, description: description, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建插件
    ///
    /// 创建API网关插件。
    @inlinable
    public func createPlugin(pluginName: String, pluginType: String, pluginData: String, description: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePluginResponse {
        try await self.createPlugin(.init(pluginName: pluginName, pluginType: pluginType, pluginData: pluginData, description: description, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
