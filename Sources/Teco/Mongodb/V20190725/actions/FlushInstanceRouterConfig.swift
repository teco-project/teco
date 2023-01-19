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

extension Mongodb {
    /// FlushInstanceRouterConfig请求参数结构体
    public struct FlushInstanceRouterConfigRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// FlushInstanceRouterConfig返回参数结构体
    public struct FlushInstanceRouterConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 刷新路由配置
    ///
    /// 在所有mongos上执行FlushRouterConfig命令
    @inlinable
    public func flushInstanceRouterConfig(_ input: FlushInstanceRouterConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FlushInstanceRouterConfigResponse> {
        self.client.execute(action: "FlushInstanceRouterConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 刷新路由配置
    ///
    /// 在所有mongos上执行FlushRouterConfig命令
    @inlinable
    public func flushInstanceRouterConfig(_ input: FlushInstanceRouterConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FlushInstanceRouterConfigResponse {
        try await self.client.execute(action: "FlushInstanceRouterConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 刷新路由配置
    ///
    /// 在所有mongos上执行FlushRouterConfig命令
    @inlinable
    public func flushInstanceRouterConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FlushInstanceRouterConfigResponse> {
        self.flushInstanceRouterConfig(FlushInstanceRouterConfigRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 刷新路由配置
    ///
    /// 在所有mongos上执行FlushRouterConfig命令
    @inlinable
    public func flushInstanceRouterConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FlushInstanceRouterConfigResponse {
        try await self.flushInstanceRouterConfig(FlushInstanceRouterConfigRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
