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

extension Tke {
    /// CreatePrometheusAlertRule请求参数结构体
    public struct CreatePrometheusAlertRuleRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        /// 告警配置
        public let alertRule: PrometheusAlertRuleDetail

        public init(instanceId: String, alertRule: PrometheusAlertRuleDetail) {
            self.instanceId = instanceId
            self.alertRule = alertRule
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case alertRule = "AlertRule"
        }
    }

    /// CreatePrometheusAlertRule返回参数结构体
    public struct CreatePrometheusAlertRuleResponse: TCResponseModel {
        /// 告警id
        public let id: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case requestId = "RequestId"
        }
    }

    /// 创建告警规则
    @inlinable
    public func createPrometheusAlertRule(_ input: CreatePrometheusAlertRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusAlertRuleResponse> {
        self.client.execute(action: "CreatePrometheusAlertRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建告警规则
    @inlinable
    public func createPrometheusAlertRule(_ input: CreatePrometheusAlertRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusAlertRuleResponse {
        try await self.client.execute(action: "CreatePrometheusAlertRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建告警规则
    @inlinable
    public func createPrometheusAlertRule(instanceId: String, alertRule: PrometheusAlertRuleDetail, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusAlertRuleResponse> {
        self.createPrometheusAlertRule(.init(instanceId: instanceId, alertRule: alertRule), region: region, logger: logger, on: eventLoop)
    }

    /// 创建告警规则
    @inlinable
    public func createPrometheusAlertRule(instanceId: String, alertRule: PrometheusAlertRuleDetail, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusAlertRuleResponse {
        try await self.createPrometheusAlertRule(.init(instanceId: instanceId, alertRule: alertRule), region: region, logger: logger, on: eventLoop)
    }
}
