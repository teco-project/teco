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

import TecoCore

extension Monitor {
    /// UpdateGrafanaConfig请求参数结构体
    public struct UpdateGrafanaConfigRequest: TCRequestModel {
        /// 实例 ID
        public let instanceId: String

        /// JSON 编码后的字符串
        public let config: String

        public init(instanceId: String, config: String) {
            self.instanceId = instanceId
            self.config = config
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case config = "Config"
        }
    }

    /// UpdateGrafanaConfig返回参数结构体
    public struct UpdateGrafanaConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新 Grafana 配置
    @inlinable @discardableResult
    public func updateGrafanaConfig(_ input: UpdateGrafanaConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGrafanaConfigResponse> {
        self.client.execute(action: "UpdateGrafanaConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新 Grafana 配置
    @inlinable @discardableResult
    public func updateGrafanaConfig(_ input: UpdateGrafanaConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGrafanaConfigResponse {
        try await self.client.execute(action: "UpdateGrafanaConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新 Grafana 配置
    @inlinable @discardableResult
    public func updateGrafanaConfig(instanceId: String, config: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGrafanaConfigResponse> {
        self.updateGrafanaConfig(.init(instanceId: instanceId, config: config), region: region, logger: logger, on: eventLoop)
    }

    /// 更新 Grafana 配置
    @inlinable @discardableResult
    public func updateGrafanaConfig(instanceId: String, config: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGrafanaConfigResponse {
        try await self.updateGrafanaConfig(.init(instanceId: instanceId, config: config), region: region, logger: logger, on: eventLoop)
    }
}
