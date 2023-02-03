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

extension Waf {
    /// AddCustomRule请求参数结构体
    public struct AddCustomRuleRequest: TCRequestModel {
        /// 规则名称
        public let name: String

        /// 优先级
        public let sortId: String

        /// 过期时间
        public let expireTime: String

        /// 策略详情
        public let strategies: [Strategy]

        /// 需要添加策略的域名
        public let domain: String

        /// 动作类型，1代表阻断，2代表人机识别，3代表观察，4代表重定向
        public let actionType: String

        /// 如果动作是重定向，则表示重定向的地址；其他情况可以为空
        public let redirect: String?

        /// WAF实例类型，sparta-waf表示SAAS型WAF，clb-waf表示负载均衡型WAF
        public let edition: String?

        /// 放行的详情
        public let bypass: String?

        /// 添加规则的来源，默认为空
        public let eventId: String?

        public init(name: String, sortId: String, expireTime: String, strategies: [Strategy], domain: String, actionType: String, redirect: String? = nil, edition: String? = nil, bypass: String? = nil, eventId: String? = nil) {
            self.name = name
            self.sortId = sortId
            self.expireTime = expireTime
            self.strategies = strategies
            self.domain = domain
            self.actionType = actionType
            self.redirect = redirect
            self.edition = edition
            self.bypass = bypass
            self.eventId = eventId
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case sortId = "SortId"
            case expireTime = "ExpireTime"
            case strategies = "Strategies"
            case domain = "Domain"
            case actionType = "ActionType"
            case redirect = "Redirect"
            case edition = "Edition"
            case bypass = "Bypass"
            case eventId = "EventId"
        }
    }

    /// AddCustomRule返回参数结构体
    public struct AddCustomRuleResponse: TCResponseModel {
        /// 操作的状态码，如果所有的资源操作成功则返回的是成功的状态码，如果有资源操作失败则需要解析Message的内容来查看哪个资源失败
        public let success: ResponseCode

        /// 添加成功的规则ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ruleId: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case ruleId = "RuleId"
            case requestId = "RequestId"
        }
    }

    /// 增加访问控制（自定义策略）
    @inlinable
    public func addCustomRule(_ input: AddCustomRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddCustomRuleResponse> {
        self.client.execute(action: "AddCustomRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增加访问控制（自定义策略）
    @inlinable
    public func addCustomRule(_ input: AddCustomRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddCustomRuleResponse {
        try await self.client.execute(action: "AddCustomRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 增加访问控制（自定义策略）
    @inlinable
    public func addCustomRule(name: String, sortId: String, expireTime: String, strategies: [Strategy], domain: String, actionType: String, redirect: String? = nil, edition: String? = nil, bypass: String? = nil, eventId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddCustomRuleResponse> {
        let input = AddCustomRuleRequest(name: name, sortId: sortId, expireTime: expireTime, strategies: strategies, domain: domain, actionType: actionType, redirect: redirect, edition: edition, bypass: bypass, eventId: eventId)
        return self.client.execute(action: "AddCustomRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增加访问控制（自定义策略）
    @inlinable
    public func addCustomRule(name: String, sortId: String, expireTime: String, strategies: [Strategy], domain: String, actionType: String, redirect: String? = nil, edition: String? = nil, bypass: String? = nil, eventId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddCustomRuleResponse {
        let input = AddCustomRuleRequest(name: name, sortId: sortId, expireTime: expireTime, strategies: strategies, domain: domain, actionType: actionType, redirect: redirect, edition: edition, bypass: bypass, eventId: eventId)
        return try await self.client.execute(action: "AddCustomRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
