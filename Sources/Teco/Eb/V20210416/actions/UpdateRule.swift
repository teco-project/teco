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

extension Eb {
    /// UpdateRule请求参数结构体
    public struct UpdateRuleRequest: TCRequestModel {
        /// 事件规则ID
        public let ruleId: String

        /// 事件集ID
        public let eventBusId: String

        /// 使能开关。
        public let enable: Bool?

        /// 规则描述，不限字符类型，200字符描述以内。
        public let description: String?

        /// 参考：[事件模式](https://cloud.tencent.com/document/product/1359/56084)
        public let eventPattern: String?

        /// 事件规则名称，只能包含字母、数字、下划线、连字符，以字母开头，以数字或字母结尾，2~60个字符
        public let ruleName: String?

        public init(ruleId: String, eventBusId: String, enable: Bool? = nil, description: String? = nil, eventPattern: String? = nil, ruleName: String? = nil) {
            self.ruleId = ruleId
            self.eventBusId = eventBusId
            self.enable = enable
            self.description = description
            self.eventPattern = eventPattern
            self.ruleName = ruleName
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case eventBusId = "EventBusId"
            case enable = "Enable"
            case description = "Description"
            case eventPattern = "EventPattern"
            case ruleName = "RuleName"
        }
    }

    /// UpdateRule返回参数结构体
    public struct UpdateRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新事件规则
    @inlinable @discardableResult
    public func updateRule(_ input: UpdateRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRuleResponse> {
        self.client.execute(action: "UpdateRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新事件规则
    @inlinable @discardableResult
    public func updateRule(_ input: UpdateRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRuleResponse {
        try await self.client.execute(action: "UpdateRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新事件规则
    @inlinable @discardableResult
    public func updateRule(ruleId: String, eventBusId: String, enable: Bool? = nil, description: String? = nil, eventPattern: String? = nil, ruleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRuleResponse> {
        let input = UpdateRuleRequest(ruleId: ruleId, eventBusId: eventBusId, enable: enable, description: description, eventPattern: eventPattern, ruleName: ruleName)
        return self.client.execute(action: "UpdateRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新事件规则
    @inlinable @discardableResult
    public func updateRule(ruleId: String, eventBusId: String, enable: Bool? = nil, description: String? = nil, eventPattern: String? = nil, ruleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRuleResponse {
        let input = UpdateRuleRequest(ruleId: ruleId, eventBusId: eventBusId, enable: enable, description: description, eventPattern: eventPattern, ruleName: ruleName)
        return try await self.client.execute(action: "UpdateRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
