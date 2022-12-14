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

extension Eb {
    /// CreateRule请求参数结构体
    public struct CreateRuleRequest: TCRequestModel {
        /// 参考：[事件模式](https://cloud.tencent.com/document/product/1359/56084)
        public let eventPattern: String

        /// 事件集ID。
        public let eventBusId: String

        /// 事件集名称，只能包含字母、数字、下划线、连字符，以字母开头，以数字或字母结尾，2~60个字符
        public let ruleName: String

        /// 使能开关。
        public let enable: Bool?

        /// 事件集描述，不限字符类型，200字符描述以内
        public let description: String?

        public init(eventPattern: String, eventBusId: String, ruleName: String, enable: Bool? = nil, description: String? = nil) {
            self.eventPattern = eventPattern
            self.eventBusId = eventBusId
            self.ruleName = ruleName
            self.enable = enable
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case eventPattern = "EventPattern"
            case eventBusId = "EventBusId"
            case ruleName = "RuleName"
            case enable = "Enable"
            case description = "Description"
        }
    }

    /// CreateRule返回参数结构体
    public struct CreateRuleResponse: TCResponseModel {
        /// 事件规则ID
        public let ruleId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case requestId = "RequestId"
        }
    }

    /// 创建事件规则
    @inlinable
    public func createRule(_ input: CreateRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateRuleResponse > {
        self.client.execute(action: "CreateRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建事件规则
    @inlinable
    public func createRule(_ input: CreateRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRuleResponse {
        try await self.client.execute(action: "CreateRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建事件规则
    @inlinable
    public func createRule(eventPattern: String, eventBusId: String, ruleName: String, enable: Bool? = nil, description: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateRuleResponse > {
        self.createRule(CreateRuleRequest(eventPattern: eventPattern, eventBusId: eventBusId, ruleName: ruleName, enable: enable, description: description), logger: logger, on: eventLoop)
    }

    /// 创建事件规则
    @inlinable
    public func createRule(eventPattern: String, eventBusId: String, ruleName: String, enable: Bool? = nil, description: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRuleResponse {
        try await self.createRule(CreateRuleRequest(eventPattern: eventPattern, eventBusId: eventBusId, ruleName: ruleName, enable: enable, description: description), logger: logger, on: eventLoop)
    }
}
