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
    /// DeleteAuditRuleTemplates请求参数结构体
    public struct DeleteAuditRuleTemplatesRequest: TCRequestModel {
        /// 审计规则模版ID。
        public let ruleTemplateIds: [String]

        public init(ruleTemplateIds: [String]) {
            self.ruleTemplateIds = ruleTemplateIds
        }

        enum CodingKeys: String, CodingKey {
            case ruleTemplateIds = "RuleTemplateIds"
        }
    }

    /// DeleteAuditRuleTemplates返回参数结构体
    public struct DeleteAuditRuleTemplatesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除审计规则模版
    @inlinable @discardableResult
    public func deleteAuditRuleTemplates(_ input: DeleteAuditRuleTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAuditRuleTemplatesResponse> {
        self.client.execute(action: "DeleteAuditRuleTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除审计规则模版
    @inlinable @discardableResult
    public func deleteAuditRuleTemplates(_ input: DeleteAuditRuleTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAuditRuleTemplatesResponse {
        try await self.client.execute(action: "DeleteAuditRuleTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除审计规则模版
    @inlinable @discardableResult
    public func deleteAuditRuleTemplates(ruleTemplateIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAuditRuleTemplatesResponse> {
        self.deleteAuditRuleTemplates(.init(ruleTemplateIds: ruleTemplateIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除审计规则模版
    @inlinable @discardableResult
    public func deleteAuditRuleTemplates(ruleTemplateIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAuditRuleTemplatesResponse {
        try await self.deleteAuditRuleTemplates(.init(ruleTemplateIds: ruleTemplateIds), region: region, logger: logger, on: eventLoop)
    }
}
