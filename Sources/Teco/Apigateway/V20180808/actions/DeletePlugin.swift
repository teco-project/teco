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
    /// DeletePlugin请求参数结构体
    public struct DeletePluginRequest: TCRequestModel {
        /// 要删除的API网关插件的ID。
        public let pluginId: String

        public init(pluginId: String) {
            self.pluginId = pluginId
        }

        enum CodingKeys: String, CodingKey {
            case pluginId = "PluginId"
        }
    }

    /// DeletePlugin返回参数结构体
    public struct DeletePluginResponse: TCResponseModel {
        /// 删除操作是否成功。
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除插件
    ///
    /// 删除API网关插件
    @inlinable
    public func deletePlugin(_ input: DeletePluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePluginResponse> {
        self.client.execute(action: "DeletePlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除插件
    ///
    /// 删除API网关插件
    @inlinable
    public func deletePlugin(_ input: DeletePluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePluginResponse {
        try await self.client.execute(action: "DeletePlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除插件
    ///
    /// 删除API网关插件
    @inlinable
    public func deletePlugin(pluginId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePluginResponse> {
        self.deletePlugin(DeletePluginRequest(pluginId: pluginId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除插件
    ///
    /// 删除API网关插件
    @inlinable
    public func deletePlugin(pluginId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePluginResponse {
        try await self.deletePlugin(DeletePluginRequest(pluginId: pluginId), region: region, logger: logger, on: eventLoop)
    }
}
