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

extension Tsf {
    /// ModifyLaneRule请求参数结构体
    public struct ModifyLaneRuleRequest: TCRequestModel {
        /// 泳道规则ID
        public let ruleId: String

        /// 泳道规则名称
        public let ruleName: String

        /// 泳道规则备注
        public let remark: String

        /// 泳道规则标签列表
        public let ruleTagList: [LaneRuleTag]

        /// 泳道规则标签关系
        public let ruleTagRelationship: String

        /// 泳道ID
        public let laneId: String

        /// 开启状态
        public let enable: Bool

        public init(ruleId: String, ruleName: String, remark: String, ruleTagList: [LaneRuleTag], ruleTagRelationship: String, laneId: String, enable: Bool) {
            self.ruleId = ruleId
            self.ruleName = ruleName
            self.remark = remark
            self.ruleTagList = ruleTagList
            self.ruleTagRelationship = ruleTagRelationship
            self.laneId = laneId
            self.enable = enable
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case ruleName = "RuleName"
            case remark = "Remark"
            case ruleTagList = "RuleTagList"
            case ruleTagRelationship = "RuleTagRelationship"
            case laneId = "LaneId"
            case enable = "Enable"
        }
    }

    /// ModifyLaneRule返回参数结构体
    public struct ModifyLaneRuleResponse: TCResponseModel {
        /// 操作状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 更新泳道规则
    @inlinable
    public func modifyLaneRule(_ input: ModifyLaneRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLaneRuleResponse> {
        self.client.execute(action: "ModifyLaneRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新泳道规则
    @inlinable
    public func modifyLaneRule(_ input: ModifyLaneRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLaneRuleResponse {
        try await self.client.execute(action: "ModifyLaneRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新泳道规则
    @inlinable
    public func modifyLaneRule(ruleId: String, ruleName: String, remark: String, ruleTagList: [LaneRuleTag], ruleTagRelationship: String, laneId: String, enable: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLaneRuleResponse> {
        self.modifyLaneRule(.init(ruleId: ruleId, ruleName: ruleName, remark: remark, ruleTagList: ruleTagList, ruleTagRelationship: ruleTagRelationship, laneId: laneId, enable: enable), region: region, logger: logger, on: eventLoop)
    }

    /// 更新泳道规则
    @inlinable
    public func modifyLaneRule(ruleId: String, ruleName: String, remark: String, ruleTagList: [LaneRuleTag], ruleTagRelationship: String, laneId: String, enable: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLaneRuleResponse {
        try await self.modifyLaneRule(.init(ruleId: ruleId, ruleName: ruleName, remark: remark, ruleTagList: ruleTagList, ruleTagRelationship: ruleTagRelationship, laneId: laneId, enable: enable), region: region, logger: logger, on: eventLoop)
    }
}
