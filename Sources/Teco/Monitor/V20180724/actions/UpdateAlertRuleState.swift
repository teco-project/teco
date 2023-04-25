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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Monitor {
    /// UpdateAlertRuleState请求参数结构体
    public struct UpdateAlertRuleStateRequest: TCRequestModel {
        /// 规则 ID 列表
        public let ruleIds: [String]

        /// Prometheus 实例 ID
        public let instanceId: String

        /// 规则状态码，取值如下：
        /// <li>2=RuleEnabled</li>
        /// <li>3=RuleDisabled</li>
        /// 默认状态码为 2 启用。
        public let ruleState: Int64

        public init(ruleIds: [String], instanceId: String, ruleState: Int64) {
            self.ruleIds = ruleIds
            self.instanceId = instanceId
            self.ruleState = ruleState
        }

        enum CodingKeys: String, CodingKey {
            case ruleIds = "RuleIds"
            case instanceId = "InstanceId"
            case ruleState = "RuleState"
        }
    }

    /// UpdateAlertRuleState返回参数结构体
    public struct UpdateAlertRuleStateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新报警策略状态
    ///
    /// 更新 Prometheus 报警策略状态
    @inlinable @discardableResult
    public func updateAlertRuleState(_ input: UpdateAlertRuleStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAlertRuleStateResponse> {
        self.client.execute(action: "UpdateAlertRuleState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新报警策略状态
    ///
    /// 更新 Prometheus 报警策略状态
    @inlinable @discardableResult
    public func updateAlertRuleState(_ input: UpdateAlertRuleStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAlertRuleStateResponse {
        try await self.client.execute(action: "UpdateAlertRuleState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新报警策略状态
    ///
    /// 更新 Prometheus 报警策略状态
    @inlinable @discardableResult
    public func updateAlertRuleState(ruleIds: [String], instanceId: String, ruleState: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAlertRuleStateResponse> {
        self.updateAlertRuleState(.init(ruleIds: ruleIds, instanceId: instanceId, ruleState: ruleState), region: region, logger: logger, on: eventLoop)
    }

    /// 更新报警策略状态
    ///
    /// 更新 Prometheus 报警策略状态
    @inlinable @discardableResult
    public func updateAlertRuleState(ruleIds: [String], instanceId: String, ruleState: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAlertRuleStateResponse {
        try await self.updateAlertRuleState(.init(ruleIds: ruleIds, instanceId: instanceId, ruleState: ruleState), region: region, logger: logger, on: eventLoop)
    }
}
