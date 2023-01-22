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

extension Cynosdb {
    /// ModifyAuditRuleTemplates请求参数结构体
    public struct ModifyAuditRuleTemplatesRequest: TCRequestModel {
        /// 审计规则模版ID。
        public let ruleTemplateIds: [String]

        /// 修改后的审计规则。
        public let ruleFilters: [RuleFilters]?

        /// 修改后的规则模版名称。
        public let ruleTemplateName: String?

        /// 修改后的规则模版描述。
        public let description: String?

        public init(ruleTemplateIds: [String], ruleFilters: [RuleFilters]? = nil, ruleTemplateName: String? = nil, description: String? = nil) {
            self.ruleTemplateIds = ruleTemplateIds
            self.ruleFilters = ruleFilters
            self.ruleTemplateName = ruleTemplateName
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case ruleTemplateIds = "RuleTemplateIds"
            case ruleFilters = "RuleFilters"
            case ruleTemplateName = "RuleTemplateName"
            case description = "Description"
        }
    }

    /// ModifyAuditRuleTemplates返回参数结构体
    public struct ModifyAuditRuleTemplatesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改审计规则模版
    @inlinable @discardableResult
    public func modifyAuditRuleTemplates(_ input: ModifyAuditRuleTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAuditRuleTemplatesResponse> {
        self.client.execute(action: "ModifyAuditRuleTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改审计规则模版
    @inlinable @discardableResult
    public func modifyAuditRuleTemplates(_ input: ModifyAuditRuleTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAuditRuleTemplatesResponse {
        try await self.client.execute(action: "ModifyAuditRuleTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改审计规则模版
    @inlinable @discardableResult
    public func modifyAuditRuleTemplates(ruleTemplateIds: [String], ruleFilters: [RuleFilters]? = nil, ruleTemplateName: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAuditRuleTemplatesResponse> {
        self.modifyAuditRuleTemplates(ModifyAuditRuleTemplatesRequest(ruleTemplateIds: ruleTemplateIds, ruleFilters: ruleFilters, ruleTemplateName: ruleTemplateName, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 修改审计规则模版
    @inlinable @discardableResult
    public func modifyAuditRuleTemplates(ruleTemplateIds: [String], ruleFilters: [RuleFilters]? = nil, ruleTemplateName: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAuditRuleTemplatesResponse {
        try await self.modifyAuditRuleTemplates(ModifyAuditRuleTemplatesRequest(ruleTemplateIds: ruleTemplateIds, ruleFilters: ruleFilters, ruleTemplateName: ruleTemplateName, description: description), region: region, logger: logger, on: eventLoop)
    }
}
