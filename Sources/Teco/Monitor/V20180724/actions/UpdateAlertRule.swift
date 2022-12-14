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

extension Monitor {
    /// UpdateAlertRule请求参数结构体
    public struct UpdateAlertRuleRequest: TCRequestModel {
        /// Prometheus 报警规则 ID
        public let ruleId: String

        /// Prometheus 实例 ID
        public let instanceId: String

        /// 规则状态码，取值如下：
        /// <li>1=RuleDeleted</li>
        /// <li>2=RuleEnabled</li>
        /// <li>3=RuleDisabled</li>
        /// 默认状态码为 2 启用。
        public let ruleState: Int64

        /// 报警规则名称
        public let ruleName: String

        /// 报警规则表达式
        public let expr: String

        /// 报警规则持续时间
        public let duration: String

        /// 报警规则接收组列表
        public let receivers: [String]

        /// 报警规则标签列表
        public let labels: [PrometheusRuleKV]?

        /// 报警规则注释列表。
        /// 告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description。
        public let annotations: [PrometheusRuleKV]?

        /// 报警策略模板分类
        public let type: String?

        public init(ruleId: String, instanceId: String, ruleState: Int64, ruleName: String, expr: String, duration: String, receivers: [String], labels: [PrometheusRuleKV]? = nil, annotations: [PrometheusRuleKV]? = nil, type: String? = nil) {
            self.ruleId = ruleId
            self.instanceId = instanceId
            self.ruleState = ruleState
            self.ruleName = ruleName
            self.expr = expr
            self.duration = duration
            self.receivers = receivers
            self.labels = labels
            self.annotations = annotations
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case instanceId = "InstanceId"
            case ruleState = "RuleState"
            case ruleName = "RuleName"
            case expr = "Expr"
            case duration = "Duration"
            case receivers = "Receivers"
            case labels = "Labels"
            case annotations = "Annotations"
            case type = "Type"
        }
    }

    /// UpdateAlertRule返回参数结构体
    public struct UpdateAlertRuleResponse: TCResponseModel {
        /// 规则 ID
        public let ruleId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case requestId = "RequestId"
        }
    }

    /// 更新报警规则
    ///
    /// 更新 Prometheus 的报警规则。
    /// 请注意，**告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description**，，请参考 [Prometheus Rule更多配置请参考](https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/)。
    @inlinable
    public func updateAlertRule(_ input: UpdateAlertRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateAlertRuleResponse > {
        self.client.execute(action: "UpdateAlertRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新报警规则
    ///
    /// 更新 Prometheus 的报警规则。
    /// 请注意，**告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description**，，请参考 [Prometheus Rule更多配置请参考](https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/)。
    @inlinable
    public func updateAlertRule(_ input: UpdateAlertRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAlertRuleResponse {
        try await self.client.execute(action: "UpdateAlertRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新报警规则
    ///
    /// 更新 Prometheus 的报警规则。
    /// 请注意，**告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description**，，请参考 [Prometheus Rule更多配置请参考](https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/)。
    @inlinable
    public func updateAlertRule(ruleId: String, instanceId: String, ruleState: Int64, ruleName: String, expr: String, duration: String, receivers: [String], labels: [PrometheusRuleKV]? = nil, annotations: [PrometheusRuleKV]? = nil, type: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateAlertRuleResponse > {
        self.updateAlertRule(UpdateAlertRuleRequest(ruleId: ruleId, instanceId: instanceId, ruleState: ruleState, ruleName: ruleName, expr: expr, duration: duration, receivers: receivers, labels: labels, annotations: annotations, type: type), logger: logger, on: eventLoop)
    }

    /// 更新报警规则
    ///
    /// 更新 Prometheus 的报警规则。
    /// 请注意，**告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description**，，请参考 [Prometheus Rule更多配置请参考](https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/)。
    @inlinable
    public func updateAlertRule(ruleId: String, instanceId: String, ruleState: Int64, ruleName: String, expr: String, duration: String, receivers: [String], labels: [PrometheusRuleKV]? = nil, annotations: [PrometheusRuleKV]? = nil, type: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAlertRuleResponse {
        try await self.updateAlertRule(UpdateAlertRuleRequest(ruleId: ruleId, instanceId: instanceId, ruleState: ruleState, ruleName: ruleName, expr: expr, duration: duration, receivers: receivers, labels: labels, annotations: annotations, type: type), logger: logger, on: eventLoop)
    }
}
