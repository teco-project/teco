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

extension Tke {
    /// CreatePrometheusAlertPolicy请求参数结构体
    public struct CreatePrometheusAlertPolicyRequest: TCRequest {
        /// 实例id
        public let instanceId: String

        /// 告警配置
        public let alertRule: PrometheusAlertPolicyItem

        public init(instanceId: String, alertRule: PrometheusAlertPolicyItem) {
            self.instanceId = instanceId
            self.alertRule = alertRule
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case alertRule = "AlertRule"
        }
    }

    /// CreatePrometheusAlertPolicy返回参数结构体
    public struct CreatePrometheusAlertPolicyResponse: TCResponse {
        /// 告警id
        public let id: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case requestId = "RequestId"
        }
    }

    /// 创建告警策略
    @inlinable
    public func createPrometheusAlertPolicy(_ input: CreatePrometheusAlertPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusAlertPolicyResponse> {
        self.client.execute(action: "CreatePrometheusAlertPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建告警策略
    @inlinable
    public func createPrometheusAlertPolicy(_ input: CreatePrometheusAlertPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusAlertPolicyResponse {
        try await self.client.execute(action: "CreatePrometheusAlertPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建告警策略
    @inlinable
    public func createPrometheusAlertPolicy(instanceId: String, alertRule: PrometheusAlertPolicyItem, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusAlertPolicyResponse> {
        self.createPrometheusAlertPolicy(.init(instanceId: instanceId, alertRule: alertRule), region: region, logger: logger, on: eventLoop)
    }

    /// 创建告警策略
    @inlinable
    public func createPrometheusAlertPolicy(instanceId: String, alertRule: PrometheusAlertPolicyItem, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusAlertPolicyResponse {
        try await self.createPrometheusAlertPolicy(.init(instanceId: instanceId, alertRule: alertRule), region: region, logger: logger, on: eventLoop)
    }
}
