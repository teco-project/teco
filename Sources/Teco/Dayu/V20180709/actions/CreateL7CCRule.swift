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

extension Dayu {
    /// CreateL7CCRule请求参数结构体
    public struct CreateL7CCRuleRequest: TCRequest {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 操作码，取值[query(表示查询)，add(表示添加)，del(表示删除)]
        public let method: String

        /// 7层转发规则ID，例如：rule-0000001
        public let ruleId: String

        /// 7层CC自定义规则参数，当操作码为query时，可以不用填写；当操作码为add或del时，必须填写，且数组长度只能为1；
        public let ruleConfig: [CCRuleConfig]?

        public init(business: String, id: String, method: String, ruleId: String, ruleConfig: [CCRuleConfig]? = nil) {
            self.business = business
            self.id = id
            self.method = method
            self.ruleId = ruleId
            self.ruleConfig = ruleConfig
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case method = "Method"
            case ruleId = "RuleId"
            case ruleConfig = "RuleConfig"
        }
    }

    /// CreateL7CCRule返回参数结构体
    public struct CreateL7CCRuleResponse: TCResponse {
        /// 7层CC自定义规则参数，当没有开启CC自定义规则时，返回空数组
        public let ruleConfig: [CCRuleConfig]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleConfig = "RuleConfig"
            case requestId = "RequestId"
        }
    }

    /// 创建7层CC自定义规则
    ///
    /// 此接口是7层CC的访问频控自定义规则（IP+Host维度，不支持具体的URI），此接口已弃用，请调用新接口CreateCCFrequencyRules，新接口同时支持IP+Host维度以及具体的URI；
    @inlinable
    public func createL7CCRule(_ input: CreateL7CCRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL7CCRuleResponse> {
        self.client.execute(action: "CreateL7CCRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建7层CC自定义规则
    ///
    /// 此接口是7层CC的访问频控自定义规则（IP+Host维度，不支持具体的URI），此接口已弃用，请调用新接口CreateCCFrequencyRules，新接口同时支持IP+Host维度以及具体的URI；
    @inlinable
    public func createL7CCRule(_ input: CreateL7CCRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL7CCRuleResponse {
        try await self.client.execute(action: "CreateL7CCRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建7层CC自定义规则
    ///
    /// 此接口是7层CC的访问频控自定义规则（IP+Host维度，不支持具体的URI），此接口已弃用，请调用新接口CreateCCFrequencyRules，新接口同时支持IP+Host维度以及具体的URI；
    @inlinable
    public func createL7CCRule(business: String, id: String, method: String, ruleId: String, ruleConfig: [CCRuleConfig]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL7CCRuleResponse> {
        self.createL7CCRule(.init(business: business, id: id, method: method, ruleId: ruleId, ruleConfig: ruleConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 创建7层CC自定义规则
    ///
    /// 此接口是7层CC的访问频控自定义规则（IP+Host维度，不支持具体的URI），此接口已弃用，请调用新接口CreateCCFrequencyRules，新接口同时支持IP+Host维度以及具体的URI；
    @inlinable
    public func createL7CCRule(business: String, id: String, method: String, ruleId: String, ruleConfig: [CCRuleConfig]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL7CCRuleResponse {
        try await self.createL7CCRule(.init(business: business, id: id, method: method, ruleId: ruleId, ruleConfig: ruleConfig), region: region, logger: logger, on: eventLoop)
    }
}
