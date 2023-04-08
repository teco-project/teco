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

import TecoCore

extension Iotcloud {
    /// ReplaceTopicRule请求参数结构体
    public struct ReplaceTopicRuleRequest: TCRequestModel {
        /// 规则名称
        public let ruleName: String

        /// 替换的规则包体
        public let topicRulePayload: TopicRulePayload

        public init(ruleName: String, topicRulePayload: TopicRulePayload) {
            self.ruleName = ruleName
            self.topicRulePayload = topicRulePayload
        }

        enum CodingKeys: String, CodingKey {
            case ruleName = "RuleName"
            case topicRulePayload = "TopicRulePayload"
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
    public func replaceTopicRule(ruleName: String, topicRulePayload: TopicRulePayload, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplaceTopicRuleResponse> {
        self.replaceTopicRule(.init(ruleName: ruleName, topicRulePayload: topicRulePayload), region: region, logger: logger, on: eventLoop)
    }

    /// 替换规则
    ///
    /// 本接口（ReplaceTopicRule）用于修改替换规则
    @inlinable @discardableResult
    public func replaceTopicRule(ruleName: String, topicRulePayload: TopicRulePayload, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplaceTopicRuleResponse {
        try await self.replaceTopicRule(.init(ruleName: ruleName, topicRulePayload: topicRulePayload), region: region, logger: logger, on: eventLoop)
    }
}
