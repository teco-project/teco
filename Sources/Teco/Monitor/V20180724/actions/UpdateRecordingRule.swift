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
    /// UpdateRecordingRule请求参数结构体
    public struct UpdateRecordingRuleRequest: TCRequest {
        /// 聚合规则名称
        public let name: String

        /// 聚合规则组内容，格式为 yaml，通过 base64 进行编码。
        public let group: String

        /// Prometheus 实例 ID
        public let instanceId: String

        /// Prometheus 聚合规则 ID
        public let ruleId: String

        /// 规则状态码，取值如下：
        /// - 1=RuleDeleted
        /// - 2=RuleEnabled
        /// - 3=RuleDisabled
        ///
        /// 默认状态码为 2 启用。
        public let ruleState: Int64?

        public init(name: String, group: String, instanceId: String, ruleId: String, ruleState: Int64? = nil) {
            self.name = name
            self.group = group
            self.instanceId = instanceId
            self.ruleId = ruleId
            self.ruleState = ruleState
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case group = "Group"
            case instanceId = "InstanceId"
            case ruleId = "RuleId"
            case ruleState = "RuleState"
        }
    }

    /// UpdateRecordingRule返回参数结构体
    public struct UpdateRecordingRuleResponse: TCResponse {
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

    /// 更新预聚合规则
    ///
    /// 更新 Prometheus 的预聚合规则
    @inlinable
    public func updateRecordingRule(_ input: UpdateRecordingRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRecordingRuleResponse> {
        self.client.execute(action: "UpdateRecordingRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新预聚合规则
    ///
    /// 更新 Prometheus 的预聚合规则
    @inlinable
    public func updateRecordingRule(_ input: UpdateRecordingRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRecordingRuleResponse {
        try await self.client.execute(action: "UpdateRecordingRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新预聚合规则
    ///
    /// 更新 Prometheus 的预聚合规则
    @inlinable
    public func updateRecordingRule(name: String, group: String, instanceId: String, ruleId: String, ruleState: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRecordingRuleResponse> {
        self.updateRecordingRule(.init(name: name, group: group, instanceId: instanceId, ruleId: ruleId, ruleState: ruleState), region: region, logger: logger, on: eventLoop)
    }

    /// 更新预聚合规则
    ///
    /// 更新 Prometheus 的预聚合规则
    @inlinable
    public func updateRecordingRule(name: String, group: String, instanceId: String, ruleId: String, ruleState: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRecordingRuleResponse {
        try await self.updateRecordingRule(.init(name: name, group: group, instanceId: instanceId, ruleId: ruleId, ruleState: ruleState), region: region, logger: logger, on: eventLoop)
    }
}
