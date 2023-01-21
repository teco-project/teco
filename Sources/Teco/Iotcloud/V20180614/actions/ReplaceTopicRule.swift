//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Iotcloud {
    /// ReplaceTopicRule请求参数结构体
    public struct ReplaceTopicRuleRequest: TCRequestModel {
        /// 规则名称
        public let ruleName: String

        /// 替换的规则包体
        public let topicRulePayload: TopicRulePayload

        /// 修改类型，0：其他，1：创建行为，2：更新行为，3：删除行为
        public let modifyType: UInt64?

        /// action增删改变更填对应topicRulePayload里面第几个action
        public let actionIndex: UInt64?

        public init(ruleName: String, topicRulePayload: TopicRulePayload, modifyType: UInt64? = nil, actionIndex: UInt64? = nil) {
            self.ruleName = ruleName
            self.topicRulePayload = topicRulePayload
            self.modifyType = modifyType
            self.actionIndex = actionIndex
        }

        enum CodingKeys: String, CodingKey {
            case ruleName = "RuleName"
            case topicRulePayload = "TopicRulePayload"
            case modifyType = "ModifyType"
            case actionIndex = "ActionIndex"
        }
    }

    /// ReplaceTopicRule返回参数结构体
    public struct ReplaceTopicRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 替换规则
    ///
    /// 本接口（ReplaceTopicRule）用于修改替换规则
    @inlinable @discardableResult
    public func replaceTopicRule(_ input: ReplaceTopicRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplaceTopicRuleResponse> {
        self.client.execute(action: "ReplaceTopicRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 替换规则
    ///
    /// 本接口（ReplaceTopicRule）用于修改替换规则
    @inlinable @discardableResult
    public func replaceTopicRule(_ input: ReplaceTopicRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplaceTopicRuleResponse {
        try await self.client.execute(action: "ReplaceTopicRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 替换规则
    ///
    /// 本接口（ReplaceTopicRule）用于修改替换规则
    @inlinable @discardableResult
    public func replaceTopicRule(ruleName: String, topicRulePayload: TopicRulePayload, modifyType: UInt64? = nil, actionIndex: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplaceTopicRuleResponse> {
        self.replaceTopicRule(ReplaceTopicRuleRequest(ruleName: ruleName, topicRulePayload: topicRulePayload, modifyType: modifyType, actionIndex: actionIndex), region: region, logger: logger, on: eventLoop)
    }

    /// 替换规则
    ///
    /// 本接口（ReplaceTopicRule）用于修改替换规则
    @inlinable @discardableResult
    public func replaceTopicRule(ruleName: String, topicRulePayload: TopicRulePayload, modifyType: UInt64? = nil, actionIndex: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplaceTopicRuleResponse {
        try await self.replaceTopicRule(ReplaceTopicRuleRequest(ruleName: ruleName, topicRulePayload: topicRulePayload, modifyType: modifyType, actionIndex: actionIndex), region: region, logger: logger, on: eventLoop)
    }
}
