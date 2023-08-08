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
    /// CreateLaneRule请求参数结构体
    public struct CreateLaneRuleRequest: TCRequestModel {
        /// 泳道规则名称
        public let ruleName: String

        /// 泳道规则备注
        public let remark: String

        /// 泳道规则标签列表
        public let ruleTagList: [LaneRuleTag]

        /// 泳道规则标签关系
        public let ruleTagRelationship: String

        /// 泳道Id
        public let laneId: String

        public let programIdList: [String]?

        public init(ruleName: String, remark: String, ruleTagList: [LaneRuleTag], ruleTagRelationship: String, laneId: String, programIdList: [String]? = nil) {
            self.ruleName = ruleName
            self.remark = remark
            self.ruleTagList = ruleTagList
            self.ruleTagRelationship = ruleTagRelationship
            self.laneId = laneId
            self.programIdList = programIdList
        }

        enum CodingKeys: String, CodingKey {
            case ruleName = "RuleName"
            case remark = "Remark"
            case ruleTagList = "RuleTagList"
            case ruleTagRelationship = "RuleTagRelationship"
            case laneId = "LaneId"
            case programIdList = "ProgramIdList"
        }
    }

    /// CreateLaneRule返回参数结构体
    public struct CreateLaneRuleResponse: TCResponseModel {
        /// 泳道规则Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建泳道规则
    @inlinable
    public func createLaneRule(_ input: CreateLaneRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLaneRuleResponse> {
        self.client.execute(action: "CreateLaneRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建泳道规则
    @inlinable
    public func createLaneRule(_ input: CreateLaneRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLaneRuleResponse {
        try await self.client.execute(action: "CreateLaneRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建泳道规则
    @inlinable
    public func createLaneRule(ruleName: String, remark: String, ruleTagList: [LaneRuleTag], ruleTagRelationship: String, laneId: String, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLaneRuleResponse> {
        self.createLaneRule(.init(ruleName: ruleName, remark: remark, ruleTagList: ruleTagList, ruleTagRelationship: ruleTagRelationship, laneId: laneId, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 创建泳道规则
    @inlinable
    public func createLaneRule(ruleName: String, remark: String, ruleTagList: [LaneRuleTag], ruleTagRelationship: String, laneId: String, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLaneRuleResponse {
        try await self.createLaneRule(.init(ruleName: ruleName, remark: remark, ruleTagList: ruleTagList, ruleTagRelationship: ruleTagRelationship, laneId: laneId, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }
}
