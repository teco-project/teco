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
    /// DetachPlugin请求参数结构体
    public struct DetachPluginRequest: TCRequestModel {
        /// 要解绑的API网关插件ID。
        public let pluginId: String

        /// 要操作的服务ID。
        public let serviceId: String

        /// 要操作API的环境。
        public let environmentName: String

        /// 要解绑的API ID。
        public let apiId: String

        public init(pluginId: String, serviceId: String, environmentName: String, apiId: String) {
            self.pluginId = pluginId
            self.serviceId = serviceId
            self.environmentName = environmentName
            self.apiId = apiId
        }

        enum CodingKeys: String, CodingKey {
            case pluginId = "PluginId"
            case serviceId = "ServiceId"
            case environmentName = "EnvironmentName"
            case apiId = "ApiId"
        }
    }

    /// DetachPlugin返回参数结构体
    public struct DetachPluginResponse: TCResponseModel {
        /// 解绑操作是否成功。
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 插件解绑API
    ///
    /// 解除插件与API绑定
    @inlinable
    public func detachPlugin(_ input: DetachPluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachPluginResponse> {
        self.client.execute(action: "DetachPlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 插件解绑API
    ///
    /// 解除插件与API绑定
    @inlinable
    public func detachPlugin(_ input: DetachPluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachPluginResponse {
        try await self.client.execute(action: "DetachPlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 插件解绑API
    ///
    /// 解除插件与API绑定
    @inlinable
    public func detachPlugin(pluginId: String, serviceId: String, environmentName: String, apiId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachPluginResponse> {
        self.detachPlugin(DetachPluginRequest(pluginId: pluginId, serviceId: serviceId, environmentName: environmentName, apiId: apiId), region: region, logger: logger, on: eventLoop)
    }

    /// 插件解绑API
    ///
    /// 解除插件与API绑定
    @inlinable
    public func detachPlugin(pluginId: String, serviceId: String, environmentName: String, apiId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachPluginResponse {
        try await self.detachPlugin(DetachPluginRequest(pluginId: pluginId, serviceId: serviceId, environmentName: environmentName, apiId: apiId), region: region, logger: logger, on: eventLoop)
    }
}
