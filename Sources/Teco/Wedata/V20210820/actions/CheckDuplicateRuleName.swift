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

extension Wedata {
    /// CheckDuplicateRuleName请求参数结构体
    public struct CheckDuplicateRuleNameRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String?

        /// 规则组Id
        public let ruleGroupId: UInt64?

        /// 规则名称
        public let name: String?

        /// 规则Id
        public let ruleId: UInt64?

        public init(projectId: String? = nil, ruleGroupId: UInt64? = nil, name: String? = nil, ruleId: UInt64? = nil) {
            self.projectId = projectId
            self.ruleGroupId = ruleGroupId
            self.name = name
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case ruleGroupId = "RuleGroupId"
            case name = "Name"
            case ruleId = "RuleId"
        }
    }

    /// CheckDuplicateRuleName返回参数结构体
    public struct CheckDuplicateRuleNameResponse: TCResponseModel {
        /// 规则名称是否重复
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 检查规则名称是否重复
    @inlinable
    public func checkDuplicateRuleName(_ input: CheckDuplicateRuleNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckDuplicateRuleNameResponse> {
        self.client.execute(action: "CheckDuplicateRuleName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检查规则名称是否重复
    @inlinable
    public func checkDuplicateRuleName(_ input: CheckDuplicateRuleNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckDuplicateRuleNameResponse {
        try await self.client.execute(action: "CheckDuplicateRuleName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 检查规则名称是否重复
    @inlinable
    public func checkDuplicateRuleName(projectId: String? = nil, ruleGroupId: UInt64? = nil, name: String? = nil, ruleId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckDuplicateRuleNameResponse> {
        self.checkDuplicateRuleName(CheckDuplicateRuleNameRequest(projectId: projectId, ruleGroupId: ruleGroupId, name: name, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// 检查规则名称是否重复
    @inlinable
    public func checkDuplicateRuleName(projectId: String? = nil, ruleGroupId: UInt64? = nil, name: String? = nil, ruleId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckDuplicateRuleNameResponse {
        try await self.checkDuplicateRuleName(CheckDuplicateRuleNameRequest(projectId: projectId, ruleGroupId: ruleGroupId, name: name, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}
