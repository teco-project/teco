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
    /// UpsertCCRule请求参数结构体
    public struct UpsertCCRuleRequest: TCRequest {
        /// 域名
        public let domain: String

        /// 名称
        public let name: String

        /// 状态
        public let status: Int64

        /// 高级模式
        public let advance: String

        /// CC检测阈值
        public let limit: String

        /// CC检测周期
        public let interval: String

        /// 检测Url
        public let url: String

        /// 匹配方法
        public let matchFunc: Int64

        /// 动作
        public let actionType: String

        /// 优先级
        public let priority: Int64

        /// 动作有效时间
        public let validTime: Int64

        /// 附加参数
        public let optionsArr: String?

        /// waf版本
        public let edition: String?

        /// 操作类型
        public let type: Int64?

        /// 添加规则的来源事件id
        public let eventId: String?

        /// 规则需要启用的SessionID
        public let sessionApplied: [Int64]?

        /// 规则ID，新增时填0
        public let ruleId: Int64?

        public init(domain: String, name: String, status: Int64, advance: String, limit: String, interval: String, url: String, matchFunc: Int64, actionType: String, priority: Int64, validTime: Int64, optionsArr: String? = nil, edition: String? = nil, type: Int64? = nil, eventId: String? = nil, sessionApplied: [Int64]? = nil, ruleId: Int64? = nil) {
            self.domain = domain
            self.name = name
            self.status = status
            self.advance = advance
            self.limit = limit
            self.interval = interval
            self.url = url
            self.matchFunc = matchFunc
            self.actionType = actionType
            self.priority = priority
            self.validTime = validTime
            self.optionsArr = optionsArr
            self.edition = edition
            self.type = type
            self.eventId = eventId
            self.sessionApplied = sessionApplied
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case name = "Name"
            case status = "Status"
            case advance = "Advance"
            case limit = "Limit"
            case interval = "Interval"
            case url = "Url"
            case matchFunc = "MatchFunc"
            case actionType = "ActionType"
            case priority = "Priority"
            case validTime = "ValidTime"
            case optionsArr = "OptionsArr"
            case edition = "Edition"
            case type = "Type"
            case eventId = "EventId"
            case sessionApplied = "SessionApplied"
            case ruleId = "RuleId"
        }
    }

    /// UpsertCCRule返回参数结构体
    public struct UpsertCCRuleResponse: TCResponse {
        /// 一般为null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 操作的RuleId
        public let ruleId: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case ruleId = "RuleId"
            case requestId = "RequestId"
        }
    }

    /// Waf  CC V2 Upsert接口
    @inlinable
    public func upsertCCRule(_ input: UpsertCCRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpsertCCRuleResponse> {
        self.client.execute(action: "UpsertCCRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Waf  CC V2 Upsert接口
    @inlinable
    public func upsertCCRule(_ input: UpsertCCRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpsertCCRuleResponse {
        try await self.client.execute(action: "UpsertCCRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// Waf  CC V2 Upsert接口
    @inlinable
    public func upsertCCRule(domain: String, name: String, status: Int64, advance: String, limit: String, interval: String, url: String, matchFunc: Int64, actionType: String, priority: Int64, validTime: Int64, optionsArr: String? = nil, edition: String? = nil, type: Int64? = nil, eventId: String? = nil, sessionApplied: [Int64]? = nil, ruleId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpsertCCRuleResponse> {
        self.upsertCCRule(.init(domain: domain, name: name, status: status, advance: advance, limit: limit, interval: interval, url: url, matchFunc: matchFunc, actionType: actionType, priority: priority, validTime: validTime, optionsArr: optionsArr, edition: edition, type: type, eventId: eventId, sessionApplied: sessionApplied, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// Waf  CC V2 Upsert接口
    @inlinable
    public func upsertCCRule(domain: String, name: String, status: Int64, advance: String, limit: String, interval: String, url: String, matchFunc: Int64, actionType: String, priority: Int64, validTime: Int64, optionsArr: String? = nil, edition: String? = nil, type: Int64? = nil, eventId: String? = nil, sessionApplied: [Int64]? = nil, ruleId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpsertCCRuleResponse {
        try await self.upsertCCRule(.init(domain: domain, name: name, status: status, advance: advance, limit: limit, interval: interval, url: url, matchFunc: matchFunc, actionType: actionType, priority: priority, validTime: validTime, optionsArr: optionsArr, edition: edition, type: type, eventId: eventId, sessionApplied: sessionApplied, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}
