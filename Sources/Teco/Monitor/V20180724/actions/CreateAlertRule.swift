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
    /// CreateAlertRule请求参数结构体
    public struct CreateAlertRuleRequest: TCRequestModel {
        /// Prometheus 实例 ID，例如：prom-abcd1234
        public let instanceId: String

        /// 规则名称
        public let ruleName: String

        /// 规则表达式，可参考[告警规则说明](https://cloud.tencent.com/document/product/1416/56008)
        public let expr: String

        /// 告警通知模板 ID 列表
        public let receivers: [String]

        /// 规则状态码，取值如下：
        /// - 2=RuleEnabled
        /// - 3=RuleDisabled
        public let ruleState: Int64?

        /// 规则报警持续时间
        public let duration: String?

        /// 标签列表
        public let labels: [PrometheusRuleKV]?

        /// 注释列表。
        ///
        /// 告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description。
        public let annotations: [PrometheusRuleKV]?

        /// 报警策略模板分类
        public let type: String?

        public init(instanceId: String, ruleName: String, expr: String, receivers: [String], ruleState: Int64? = nil, duration: String? = nil, labels: [PrometheusRuleKV]? = nil, annotations: [PrometheusRuleKV]? = nil, type: String? = nil) {
            self.instanceId = instanceId
            self.ruleName = ruleName
            self.expr = expr
            self.receivers = receivers
            self.ruleState = ruleState
            self.duration = duration
            self.labels = labels
            self.annotations = annotations
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ruleName = "RuleName"
            case expr = "Expr"
            case receivers = "Receivers"
            case ruleState = "RuleState"
            case duration = "Duration"
            case labels = "Labels"
            case annotations = "Annotations"
            case type = "Type"
        }
    }

    /// CreateAlertRule返回参数结构体
    public struct CreateAlertRuleResponse: TCResponseModel {
        /// 规则 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ruleId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case requestId = "RequestId"
        }
    }

    /// 创建告警规则
    ///
    /// 创建 Prometheus 告警规则。
    ///
    /// 请注意，**告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description**，，请参考 [Prometheus Rule更多配置请参考](https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/)。
    @inlinable
    public func createAlertRule(_ input: CreateAlertRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAlertRuleResponse> {
        self.client.execute(action: "CreateAlertRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建告警规则
    ///
    /// 创建 Prometheus 告警规则。
    ///
    /// 请注意，**告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description**，，请参考 [Prometheus Rule更多配置请参考](https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/)。
    @inlinable
    public func createAlertRule(_ input: CreateAlertRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlertRuleResponse {
        try await self.client.execute(action: "CreateAlertRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建告警规则
    ///
    /// 创建 Prometheus 告警规则。
    ///
    /// 请注意，**告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description**，，请参考 [Prometheus Rule更多配置请参考](https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/)。
    @inlinable
    public func createAlertRule(instanceId: String, ruleName: String, expr: String, receivers: [String], ruleState: Int64? = nil, duration: String? = nil, labels: [PrometheusRuleKV]? = nil, annotations: [PrometheusRuleKV]? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAlertRuleResponse> {
        self.createAlertRule(.init(instanceId: instanceId, ruleName: ruleName, expr: expr, receivers: receivers, ruleState: ruleState, duration: duration, labels: labels, annotations: annotations, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 创建告警规则
    ///
    /// 创建 Prometheus 告警规则。
    ///
    /// 请注意，**告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description**，，请参考 [Prometheus Rule更多配置请参考](https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/)。
    @inlinable
    public func createAlertRule(instanceId: String, ruleName: String, expr: String, receivers: [String], ruleState: Int64? = nil, duration: String? = nil, labels: [PrometheusRuleKV]? = nil, annotations: [PrometheusRuleKV]? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlertRuleResponse {
        try await self.createAlertRule(.init(instanceId: instanceId, ruleName: ruleName, expr: expr, receivers: receivers, ruleState: ruleState, duration: duration, labels: labels, annotations: annotations, type: type), region: region, logger: logger, on: eventLoop)
    }
}
