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

extension Cdb {
    /// CreateAuditRule请求参数结构体
    public struct CreateAuditRuleRequest: TCRequest {
        /// 审计规则名称。
        public let ruleName: String

        /// 审计规则描述。
        public let description: String?

        /// 审计规则过滤条件。若设置了过滤条件，则不会开启全审计。
        public let ruleFilters: [AuditFilter]?

        /// 是否开启全审计。支持值包括：false – 不开启全审计，true – 开启全审计。用户未设置审计规则过滤条件时，默认开启全审计。
        public let auditAll: Bool?

        public init(ruleName: String, description: String? = nil, ruleFilters: [AuditFilter]? = nil, auditAll: Bool? = nil) {
            self.ruleName = ruleName
            self.description = description
            self.ruleFilters = ruleFilters
            self.auditAll = auditAll
        }

        enum CodingKeys: String, CodingKey {
            case ruleName = "RuleName"
            case description = "Description"
            case ruleFilters = "RuleFilters"
            case auditAll = "AuditAll"
        }
    }

    /// CreateAuditRule返回参数结构体
    public struct CreateAuditRuleResponse: TCResponse {
        /// 审计规则 ID。
        public let ruleId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case requestId = "RequestId"
        }
    }

    /// 创建审计规则
    ///
    /// 本接口(CreateAuditRule)用于创建用户在当前地域的审计规则。
    @inlinable
    public func createAuditRule(_ input: CreateAuditRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAuditRuleResponse> {
        self.client.execute(action: "CreateAuditRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建审计规则
    ///
    /// 本接口(CreateAuditRule)用于创建用户在当前地域的审计规则。
    @inlinable
    public func createAuditRule(_ input: CreateAuditRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAuditRuleResponse {
        try await self.client.execute(action: "CreateAuditRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建审计规则
    ///
    /// 本接口(CreateAuditRule)用于创建用户在当前地域的审计规则。
    @inlinable
    public func createAuditRule(ruleName: String, description: String? = nil, ruleFilters: [AuditFilter]? = nil, auditAll: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAuditRuleResponse> {
        self.createAuditRule(.init(ruleName: ruleName, description: description, ruleFilters: ruleFilters, auditAll: auditAll), region: region, logger: logger, on: eventLoop)
    }

    /// 创建审计规则
    ///
    /// 本接口(CreateAuditRule)用于创建用户在当前地域的审计规则。
    @inlinable
    public func createAuditRule(ruleName: String, description: String? = nil, ruleFilters: [AuditFilter]? = nil, auditAll: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAuditRuleResponse {
        try await self.createAuditRule(.init(ruleName: ruleName, description: description, ruleFilters: ruleFilters, auditAll: auditAll), region: region, logger: logger, on: eventLoop)
    }
}
