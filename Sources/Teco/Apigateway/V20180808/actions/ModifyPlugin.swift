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

extension Apigateway {
    /// ModifyPlugin请求参数结构体
    public struct ModifyPluginRequest: TCRequestModel {
        /// 要修改的插件ID。
        public let pluginId: String

        /// 要修改的API网关插件名称。最长50个字符，支持 a-z,A-Z,0-9,_, 必须字母开头，字母或者数字结尾。
        public let pluginName: String?

        /// 要修改的插件描述，限定200字以内。
        public let description: String?

        /// 要修改的插件定义语句，支持json。
        public let pluginData: String?

        public init(pluginId: String, pluginName: String? = nil, description: String? = nil, pluginData: String? = nil) {
            self.pluginId = pluginId
            self.pluginName = pluginName
            self.description = description
            self.pluginData = pluginData
        }

        enum CodingKeys: String, CodingKey {
            case pluginId = "PluginId"
            case pluginName = "PluginName"
            case description = "Description"
            case pluginData = "PluginData"
        }
    }

    /// ModifyPlugin返回参数结构体
    public struct ModifyPluginResponse: TCResponseModel {
        /// 修改操作是否成功。
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 修改插件
    ///
    /// 修改API网关插件。
    @inlinable
    public func modifyPlugin(_ input: ModifyPluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPluginResponse> {
        self.client.execute(action: "ModifyPlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改插件
    ///
    /// 修改API网关插件。
    @inlinable
    public func modifyPlugin(_ input: ModifyPluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPluginResponse {
        try await self.client.execute(action: "ModifyPlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改插件
    ///
    /// 修改API网关插件。
    @inlinable
    public func modifyPlugin(pluginId: String, pluginName: String? = nil, description: String? = nil, pluginData: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPluginResponse> {
        self.modifyPlugin(.init(pluginId: pluginId, pluginName: pluginName, description: description, pluginData: pluginData), region: region, logger: logger, on: eventLoop)
    }

    /// 修改插件
    ///
    /// 修改API网关插件。
    @inlinable
    public func modifyPlugin(pluginId: String, pluginName: String? = nil, description: String? = nil, pluginData: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPluginResponse {
        try await self.modifyPlugin(.init(pluginId: pluginId, pluginName: pluginName, description: description, pluginData: pluginData), region: region, logger: logger, on: eventLoop)
    }
}
