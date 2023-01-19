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

extension Cdb {
    /// DeleteAuditRule请求参数结构体
    public struct DeleteAuditRuleRequest: TCRequestModel {
        /// 审计规则 ID。
        public let ruleId: String

        public init(ruleId: String) {
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
        }
    }

    /// DeleteAuditRule返回参数结构体
    public struct DeleteAuditRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除审计规则
    ///
    /// 本接口(DeleteAuditRule)用于删除用户的审计规则。
    @inlinable
    public func deleteAuditRule(_ input: DeleteAuditRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAuditRuleResponse> {
        self.client.execute(action: "DeleteAuditRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除审计规则
    ///
    /// 本接口(DeleteAuditRule)用于删除用户的审计规则。
    @inlinable
    public func deleteAuditRule(_ input: DeleteAuditRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAuditRuleResponse {
        try await self.client.execute(action: "DeleteAuditRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除审计规则
    ///
    /// 本接口(DeleteAuditRule)用于删除用户的审计规则。
    @inlinable
    public func deleteAuditRule(ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAuditRuleResponse> {
        self.deleteAuditRule(DeleteAuditRuleRequest(ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除审计规则
    ///
    /// 本接口(DeleteAuditRule)用于删除用户的审计规则。
    @inlinable
    public func deleteAuditRule(ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAuditRuleResponse {
        try await self.deleteAuditRule(DeleteAuditRuleRequest(ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}
