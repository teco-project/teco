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
    /// ModifyGrafanaInstance请求参数结构体
    public struct ModifyGrafanaInstanceRequest: TCRequest {
        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        /// Grafana 实例名称，例如：test
        public let instanceName: String

        public init(instanceId: String, instanceName: String) {
            self.instanceId = instanceId
            self.instanceName = instanceName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
        }
    }

    /// ModifyGrafanaInstance返回参数结构体
    public struct ModifyGrafanaInstanceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改 Grafana 实例属性
    @inlinable @discardableResult
    public func modifyGrafanaInstance(_ input: ModifyGrafanaInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGrafanaInstanceResponse> {
        self.client.execute(action: "ModifyGrafanaInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改 Grafana 实例属性
    @inlinable @discardableResult
    public func modifyGrafanaInstance(_ input: ModifyGrafanaInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGrafanaInstanceResponse {
        try await self.client.execute(action: "ModifyGrafanaInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改 Grafana 实例属性
    @inlinable @discardableResult
    public func modifyGrafanaInstance(instanceId: String, instanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGrafanaInstanceResponse> {
        self.modifyGrafanaInstance(.init(instanceId: instanceId, instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改 Grafana 实例属性
    @inlinable @discardableResult
    public func modifyGrafanaInstance(instanceId: String, instanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGrafanaInstanceResponse {
        try await self.modifyGrafanaInstance(.init(instanceId: instanceId, instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }
}
