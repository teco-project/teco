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

extension Waf {
    /// ModifyCustomRule请求参数结构体
    public struct ModifyCustomRuleRequest: TCRequest {
        /// 编辑的域名
        public let domain: String

        /// 编辑的规则ID
        public let ruleId: UInt64

        /// 编辑的规则名称
        public let ruleName: String

        /// 执行动作，0：放行、1：阻断、2：人机识别、3：观察、4：重定向
        public let ruleAction: String

        /// 匹配条件数组
        public let strategies: [Strategy]

        /// WAF的版本，clb-waf代表负载均衡WAF、sparta-waf代表SaaS WAF，默认是sparta-waf。
        public let edition: String?

        /// 动作为重定向的时候重定向URL，默认为"/"
        public let redirect: String?

        /// 放行时是否继续执行其它检查逻辑，继续执行地域封禁防护：geoip、继续执行CC策略防护：cc、继续执行WEB应用防护：owasp、继续执行AI引擎防护：ai、继续执行信息防泄漏防护：antileakage。如果多个勾选那么以,串接。
        /// 默认是"geoip,cc,owasp,ai,antileakage"
        public let bypass: String?

        /// 优先级，1~100的整数，数字越小，代表这条规则的执行优先级越高。
        /// 默认是100
        public let sortId: UInt64?

        /// 规则生效截止时间，0：永久生效，其它值为对应时间的时间戳。
        /// 默认是0
        public let expireTime: UInt64?

        public init(domain: String, ruleId: UInt64, ruleName: String, ruleAction: String, strategies: [Strategy], edition: String? = nil, redirect: String? = nil, bypass: String? = nil, sortId: UInt64? = nil, expireTime: UInt64? = nil) {
            self.domain = domain
            self.ruleId = ruleId
            self.ruleName = ruleName
            self.ruleAction = ruleAction
            self.strategies = strategies
            self.edition = edition
            self.redirect = redirect
            self.bypass = bypass
            self.sortId = sortId
            self.expireTime = expireTime
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case ruleId = "RuleId"
            case ruleName = "RuleName"
            case ruleAction = "RuleAction"
            case strategies = "Strategies"
            case edition = "Edition"
            case redirect = "Redirect"
            case bypass = "Bypass"
            case sortId = "SortId"
            case expireTime = "ExpireTime"
        }
    }

    /// ModifyCustomRule返回参数结构体
    public struct ModifyCustomRuleResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑自定义规则
    @inlinable @discardableResult
    public func modifyCustomRule(_ input: ModifyCustomRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomRuleResponse> {
        self.client.execute(action: "ModifyCustomRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑自定义规则
    @inlinable @discardableResult
    public func modifyCustomRule(_ input: ModifyCustomRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomRuleResponse {
        try await self.client.execute(action: "ModifyCustomRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑自定义规则
    @inlinable @discardableResult
    public func modifyCustomRule(domain: String, ruleId: UInt64, ruleName: String, ruleAction: String, strategies: [Strategy], edition: String? = nil, redirect: String? = nil, bypass: String? = nil, sortId: UInt64? = nil, expireTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomRuleResponse> {
        self.modifyCustomRule(.init(domain: domain, ruleId: ruleId, ruleName: ruleName, ruleAction: ruleAction, strategies: strategies, edition: edition, redirect: redirect, bypass: bypass, sortId: sortId, expireTime: expireTime), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑自定义规则
    @inlinable @discardableResult
    public func modifyCustomRule(domain: String, ruleId: UInt64, ruleName: String, ruleAction: String, strategies: [Strategy], edition: String? = nil, redirect: String? = nil, bypass: String? = nil, sortId: UInt64? = nil, expireTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomRuleResponse {
        try await self.modifyCustomRule(.init(domain: domain, ruleId: ruleId, ruleName: ruleName, ruleAction: ruleAction, strategies: strategies, edition: edition, redirect: redirect, bypass: bypass, sortId: sortId, expireTime: expireTime), region: region, logger: logger, on: eventLoop)
    }
}
