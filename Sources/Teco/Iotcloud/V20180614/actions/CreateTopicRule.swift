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
    /// CreateTopicRule请求参数结构体
    public struct CreateTopicRuleRequest: TCRequestModel {
        /// 规则名称
        public let ruleName: String

        /// 规则内容
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

    /// CreateTopicRule返回参数结构体
    public struct CreateTopicRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建规则
    ///
    /// 本接口（CreateTopicRule）用于创建一个规则
    @inlinable @discardableResult
    public func createTopicRule(_ input: CreateTopicRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTopicRuleResponse> {
        self.client.execute(action: "CreateTopicRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建规则
    ///
    /// 本接口（CreateTopicRule）用于创建一个规则
    @inlinable @discardableResult
    public func createTopicRule(_ input: CreateTopicRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTopicRuleResponse {
        try await self.client.execute(action: "CreateTopicRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建规则
    ///
    /// 本接口（CreateTopicRule）用于创建一个规则
    @inlinable @discardableResult
    public func createTopicRule(ruleName: String, topicRulePayload: TopicRulePayload, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTopicRuleResponse> {
        self.createTopicRule(CreateTopicRuleRequest(ruleName: ruleName, topicRulePayload: topicRulePayload), region: region, logger: logger, on: eventLoop)
    }

    /// 创建规则
    ///
    /// 本接口（CreateTopicRule）用于创建一个规则
    @inlinable @discardableResult
    public func createTopicRule(ruleName: String, topicRulePayload: TopicRulePayload, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTopicRuleResponse {
        try await self.createTopicRule(CreateTopicRuleRequest(ruleName: ruleName, topicRulePayload: topicRulePayload), region: region, logger: logger, on: eventLoop)
    }
}
