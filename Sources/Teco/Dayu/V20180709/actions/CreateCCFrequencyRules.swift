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
    /// CreateCCFrequencyRules请求参数结构体
    public struct CreateCCFrequencyRulesRequest: TCRequest {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 7层转发规则ID（通过获取7层转发规则接口可以获取规则ID）
        public let ruleId: String

        /// 匹配规则，取值["include"(前缀匹配)，"equal"(完全匹配)]
        public let mode: String

        /// 统计周期，单位秒，取值[10, 30, 60]
        public let period: UInt64

        /// 访问次数，取值[1-10000]
        public let reqNumber: UInt64

        /// 执行动作，取值["alg"（人机识别）, "drop"（拦截）]
        public let act: String

        /// 执行时间，单位秒，取值[1-900]
        public let exeDuration: UInt64

        /// URI字符串，必须以/开头，例如/abc/a.php，长度不超过31；当URI=/时，匹配模式只能选择前缀匹配；
        public let uri: String?

        /// User-Agent字符串，长度不超过80
        public let userAgent: String?

        /// Cookie字符串，长度不超过40
        public let cookie: String?

        public init(business: String, id: String, ruleId: String, mode: String, period: UInt64, reqNumber: UInt64, act: String, exeDuration: UInt64, uri: String? = nil, userAgent: String? = nil, cookie: String? = nil) {
            self.business = business
            self.id = id
            self.ruleId = ruleId
            self.mode = mode
            self.period = period
            self.reqNumber = reqNumber
            self.act = act
            self.exeDuration = exeDuration
            self.uri = uri
            self.userAgent = userAgent
            self.cookie = cookie
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case ruleId = "RuleId"
            case mode = "Mode"
            case period = "Period"
            case reqNumber = "ReqNumber"
            case act = "Act"
            case exeDuration = "ExeDuration"
            case uri = "Uri"
            case userAgent = "UserAgent"
            case cookie = "Cookie"
        }
    }

    /// CreateCCFrequencyRules返回参数结构体
    public struct CreateCCFrequencyRulesResponse: TCResponse {
        /// CC防护的访问频率控制规则ID
        public let ccFrequencyRuleId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ccFrequencyRuleId = "CCFrequencyRuleId"
            case requestId = "RequestId"
        }
    }

    /// 添加CC防护的访问频率控制规则
    @inlinable
    public func createCCFrequencyRules(_ input: CreateCCFrequencyRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCCFrequencyRulesResponse> {
        self.client.execute(action: "CreateCCFrequencyRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加CC防护的访问频率控制规则
    @inlinable
    public func createCCFrequencyRules(_ input: CreateCCFrequencyRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCCFrequencyRulesResponse {
        try await self.client.execute(action: "CreateCCFrequencyRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加CC防护的访问频率控制规则
    @inlinable
    public func createCCFrequencyRules(business: String, id: String, ruleId: String, mode: String, period: UInt64, reqNumber: UInt64, act: String, exeDuration: UInt64, uri: String? = nil, userAgent: String? = nil, cookie: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCCFrequencyRulesResponse> {
        self.createCCFrequencyRules(.init(business: business, id: id, ruleId: ruleId, mode: mode, period: period, reqNumber: reqNumber, act: act, exeDuration: exeDuration, uri: uri, userAgent: userAgent, cookie: cookie), region: region, logger: logger, on: eventLoop)
    }

    /// 添加CC防护的访问频率控制规则
    @inlinable
    public func createCCFrequencyRules(business: String, id: String, ruleId: String, mode: String, period: UInt64, reqNumber: UInt64, act: String, exeDuration: UInt64, uri: String? = nil, userAgent: String? = nil, cookie: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCCFrequencyRulesResponse {
        try await self.createCCFrequencyRules(.init(business: business, id: id, ruleId: ruleId, mode: mode, period: period, reqNumber: reqNumber, act: act, exeDuration: exeDuration, uri: uri, userAgent: userAgent, cookie: cookie), region: region, logger: logger, on: eventLoop)
    }
}
