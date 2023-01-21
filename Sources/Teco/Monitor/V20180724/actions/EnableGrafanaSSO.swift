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

extension Monitor {
    /// EnableGrafanaSSO请求参数结构体
    public struct EnableGrafanaSSORequest: TCRequestModel {
        /// 是否开启 SSO，true为开启，false 为不开启
        public let enableSSO: Bool

        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        public init(enableSSO: Bool, instanceId: String) {
            self.enableSSO = enableSSO
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case enableSSO = "EnableSSO"
            case instanceId = "InstanceId"
        }
    }

    /// EnableGrafanaSSO返回参数结构体
    public struct EnableGrafanaSSOResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置 Grafana 单点登录
    ///
    /// 设置 Grafana 单点登录，使用腾讯云账号
    @inlinable @discardableResult
    public func enableGrafanaSSO(_ input: EnableGrafanaSSORequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableGrafanaSSOResponse> {
        self.client.execute(action: "EnableGrafanaSSO", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置 Grafana 单点登录
    ///
    /// 设置 Grafana 单点登录，使用腾讯云账号
    @inlinable @discardableResult
    public func enableGrafanaSSO(_ input: EnableGrafanaSSORequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableGrafanaSSOResponse {
        try await self.client.execute(action: "EnableGrafanaSSO", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置 Grafana 单点登录
    ///
    /// 设置 Grafana 单点登录，使用腾讯云账号
    @inlinable @discardableResult
    public func enableGrafanaSSO(enableSSO: Bool, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableGrafanaSSOResponse> {
        self.enableGrafanaSSO(EnableGrafanaSSORequest(enableSSO: enableSSO, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 设置 Grafana 单点登录
    ///
    /// 设置 Grafana 单点登录，使用腾讯云账号
    @inlinable @discardableResult
    public func enableGrafanaSSO(enableSSO: Bool, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableGrafanaSSOResponse {
        try await self.enableGrafanaSSO(EnableGrafanaSSORequest(enableSSO: enableSSO, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
