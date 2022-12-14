//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// ModifyPrometheusAlertRule请求参数结构体
    public struct ModifyPrometheusAlertRuleRequest: TCRequestModel {
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

    /// ModifyPrometheusAlertRule返回参数结构体
    public struct ModifyPrometheusAlertRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改告警规则
    ///
    /// 修改告警规则 
    @inlinable
    public func modifyPrometheusAlertRule(_ input: ModifyPrometheusAlertRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyPrometheusAlertRuleResponse > {
        self.client.execute(action: "ModifyPrometheusAlertRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改告警规则
    ///
    /// 修改告警规则 
    @inlinable
    public func modifyPrometheusAlertRule(_ input: ModifyPrometheusAlertRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusAlertRuleResponse {
        try await self.client.execute(action: "ModifyPrometheusAlertRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改告警规则
    ///
    /// 修改告警规则 
    @inlinable
    public func modifyPrometheusAlertRule(instanceId: String, alertRule: PrometheusAlertRuleDetail, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyPrometheusAlertRuleResponse > {
        self.modifyPrometheusAlertRule(ModifyPrometheusAlertRuleRequest(instanceId: instanceId, alertRule: alertRule), logger: logger, on: eventLoop)
    }

    /// 修改告警规则
    ///
    /// 修改告警规则 
    @inlinable
    public func modifyPrometheusAlertRule(instanceId: String, alertRule: PrometheusAlertRuleDetail, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusAlertRuleResponse {
        try await self.modifyPrometheusAlertRule(ModifyPrometheusAlertRuleRequest(instanceId: instanceId, alertRule: alertRule), logger: logger, on: eventLoop)
    }
}
