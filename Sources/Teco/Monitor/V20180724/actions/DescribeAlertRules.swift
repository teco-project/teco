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
    /// DescribeAlertRules请求参数结构体
    public struct DescribeAlertRulesRequest: TCRequestModel {
        /// Prometheus 实例 ID
        public let instanceId: String

        /// 返回数量，默认为 20，最大值为 100
        public let limit: Int64?

        /// 偏移量，默认为 0
        public let offset: Int64?

        /// 规则 ID
        public let ruleId: String?

        /// 规则状态码，取值如下：
        /// <li>2=RuleEnabled</li>
        /// <li>3=RuleDisabled</li>
        public let ruleState: Int64?

        /// 规则名称
        public let ruleName: String?

        /// 报警策略模板分类
        public let type: String?

        public init(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, ruleId: String? = nil, ruleState: Int64? = nil, ruleName: String? = nil, type: String? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
            self.ruleId = ruleId
            self.ruleState = ruleState
            self.ruleName = ruleName
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
            case ruleId = "RuleId"
            case ruleState = "RuleState"
            case ruleName = "RuleName"
            case type = "Type"
        }
    }

    /// DescribeAlertRules返回参数结构体
    public struct DescribeAlertRulesResponse: TCResponseModel {
        /// 报警规则数量
        public let totalCount: Int64

        /// 报警规则详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alertRuleSet: [PrometheusRuleSet]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case alertRuleSet = "AlertRuleSet"
            case requestId = "RequestId"
        }
    }

    /// 报警规则查询
    ///
    /// Prometheus 报警规则查询接口
    @inlinable
    public func describeAlertRules(_ input: DescribeAlertRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAlertRulesResponse > {
        self.client.execute(action: "DescribeAlertRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 报警规则查询
    ///
    /// Prometheus 报警规则查询接口
    @inlinable
    public func describeAlertRules(_ input: DescribeAlertRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlertRulesResponse {
        try await self.client.execute(action: "DescribeAlertRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 报警规则查询
    ///
    /// Prometheus 报警规则查询接口
    @inlinable
    public func describeAlertRules(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, ruleId: String? = nil, ruleState: Int64? = nil, ruleName: String? = nil, type: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAlertRulesResponse > {
        self.describeAlertRules(DescribeAlertRulesRequest(instanceId: instanceId, limit: limit, offset: offset, ruleId: ruleId, ruleState: ruleState, ruleName: ruleName, type: type), logger: logger, on: eventLoop)
    }

    /// 报警规则查询
    ///
    /// Prometheus 报警规则查询接口
    @inlinable
    public func describeAlertRules(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, ruleId: String? = nil, ruleState: Int64? = nil, ruleName: String? = nil, type: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlertRulesResponse {
        try await self.describeAlertRules(DescribeAlertRulesRequest(instanceId: instanceId, limit: limit, offset: offset, ruleId: ruleId, ruleState: ruleState, ruleName: ruleName, type: type), logger: logger, on: eventLoop)
    }
}
