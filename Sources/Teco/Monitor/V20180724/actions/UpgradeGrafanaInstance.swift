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
    /// UpgradeGrafanaInstance请求参数结构体
    public struct UpgradeGrafanaInstanceRequest: TCRequestModel {
        /// Grafana 实例 ID，例如：grafana-12345678
        public let instanceId: String

        /// 版本别名，例如：v7.4.2
        public let alias: String

        public init(instanceId: String, alias: String) {
            self.instanceId = instanceId
            self.alias = alias
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case alias = "Alias"
        }
    }

    /// UpgradeGrafanaInstance返回参数结构体
    public struct UpgradeGrafanaInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 升级 Grafana 实例
    @inlinable @discardableResult
    public func upgradeGrafanaInstance(_ input: UpgradeGrafanaInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeGrafanaInstanceResponse> {
        self.client.execute(action: "UpgradeGrafanaInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 升级 Grafana 实例
    @inlinable @discardableResult
    public func upgradeGrafanaInstance(_ input: UpgradeGrafanaInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeGrafanaInstanceResponse {
        try await self.client.execute(action: "UpgradeGrafanaInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 升级 Grafana 实例
    @inlinable @discardableResult
    public func upgradeGrafanaInstance(instanceId: String, alias: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeGrafanaInstanceResponse> {
        self.upgradeGrafanaInstance(.init(instanceId: instanceId, alias: alias), region: region, logger: logger, on: eventLoop)
    }

    /// 升级 Grafana 实例
    @inlinable @discardableResult
    public func upgradeGrafanaInstance(instanceId: String, alias: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeGrafanaInstanceResponse {
        try await self.upgradeGrafanaInstance(.init(instanceId: instanceId, alias: alias), region: region, logger: logger, on: eventLoop)
    }
}
