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

extension Teo {
    /// CreateRule请求参数结构体
    public struct CreateRuleRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        /// 规则名称，名称字符串长度 1～255。
        public let ruleName: String

        /// 规则状态，取值有：
        /// <li> enable: 启用； </li>
        /// <li> disable: 未启用。</li>
        public let status: String

        /// 规则内容。
        public let rules: [Rule]

        /// 规则标签。
        public let tags: [String]?

        public init(zoneId: String, ruleName: String, status: String, rules: [Rule], tags: [String]? = nil) {
            self.zoneId = zoneId
            self.ruleName = ruleName
            self.status = status
            self.rules = rules
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case ruleName = "RuleName"
            case status = "Status"
            case rules = "Rules"
            case tags = "Tags"
        }
    }

    /// CreateRule返回参数结构体
    public struct CreateRuleResponse: TCResponseModel {
        /// 规则 ID。
        public let ruleId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case requestId = "RequestId"
        }
    }

    /// 创建规则引擎规则
    ///
    /// 规则引擎创建规则。
    @inlinable
    public func createRule(_ input: CreateRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRuleResponse> {
        self.client.execute(action: "CreateRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建规则引擎规则
    ///
    /// 规则引擎创建规则。
    @inlinable
    public func createRule(_ input: CreateRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRuleResponse {
        try await self.client.execute(action: "CreateRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建规则引擎规则
    ///
    /// 规则引擎创建规则。
    @inlinable
    public func createRule(zoneId: String, ruleName: String, status: String, rules: [Rule], tags: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRuleResponse> {
        self.createRule(CreateRuleRequest(zoneId: zoneId, ruleName: ruleName, status: status, rules: rules, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建规则引擎规则
    ///
    /// 规则引擎创建规则。
    @inlinable
    public func createRule(zoneId: String, ruleName: String, status: String, rules: [Rule], tags: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRuleResponse {
        try await self.createRule(CreateRuleRequest(zoneId: zoneId, ruleName: ruleName, status: status, rules: rules, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
