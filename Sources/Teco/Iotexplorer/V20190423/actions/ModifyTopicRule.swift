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

extension Iotexplorer {
    /// ModifyTopicRule请求参数结构体
    public struct ModifyTopicRuleRequest: TCRequest {
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

    /// ModifyTopicRule返回参数结构体
    public struct ModifyTopicRuleResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改规则
    @inlinable @discardableResult
    public func modifyTopicRule(_ input: ModifyTopicRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTopicRuleResponse> {
        self.client.execute(action: "ModifyTopicRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改规则
    @inlinable @discardableResult
    public func modifyTopicRule(_ input: ModifyTopicRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTopicRuleResponse {
        try await self.client.execute(action: "ModifyTopicRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改规则
    @inlinable @discardableResult
    public func modifyTopicRule(ruleName: String, topicRulePayload: TopicRulePayload, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTopicRuleResponse> {
        self.modifyTopicRule(.init(ruleName: ruleName, topicRulePayload: topicRulePayload), region: region, logger: logger, on: eventLoop)
    }

    /// 修改规则
    @inlinable @discardableResult
    public func modifyTopicRule(ruleName: String, topicRulePayload: TopicRulePayload, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTopicRuleResponse {
        try await self.modifyTopicRule(.init(ruleName: ruleName, topicRulePayload: topicRulePayload), region: region, logger: logger, on: eventLoop)
    }
}
