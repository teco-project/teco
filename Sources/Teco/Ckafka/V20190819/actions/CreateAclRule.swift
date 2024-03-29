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

extension Ckafka {
    /// CreateAclRule请求参数结构体
    public struct CreateAclRuleRequest: TCRequest {
        /// 实例id信息
        public let instanceId: String

        /// Acl资源类型,目前只支持Topic,枚举值列表：Topic
        public let resourceType: String

        /// 匹配类型，目前支持前缀匹配与预设策略，枚举值列表：PREFIXED/PRESET
        public let patternType: String

        /// 规则名称
        public let ruleName: String

        /// 设置的ACL规则列表
        public let ruleList: [AclRuleInfo]

        /// 表示前缀匹配的前缀的值
        public let pattern: String?

        /// 预设ACL规则是否应用到新增的topic中
        public let isApplied: Int64?

        /// ACL规则的备注
        public let comment: String?

        public init(instanceId: String, resourceType: String, patternType: String, ruleName: String, ruleList: [AclRuleInfo], pattern: String? = nil, isApplied: Int64? = nil, comment: String? = nil) {
            self.instanceId = instanceId
            self.resourceType = resourceType
            self.patternType = patternType
            self.ruleName = ruleName
            self.ruleList = ruleList
            self.pattern = pattern
            self.isApplied = isApplied
            self.comment = comment
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case resourceType = "ResourceType"
            case patternType = "PatternType"
            case ruleName = "RuleName"
            case ruleList = "RuleList"
            case pattern = "Pattern"
            case isApplied = "IsApplied"
            case comment = "Comment"
        }
    }

    /// CreateAclRule返回参数结构体
    public struct CreateAclRuleResponse: TCResponse {
        /// 规则的唯一表示Key
        public let result: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 添加 ACL 规则
    @inlinable
    public func createAclRule(_ input: CreateAclRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAclRuleResponse> {
        self.client.execute(action: "CreateAclRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加 ACL 规则
    @inlinable
    public func createAclRule(_ input: CreateAclRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAclRuleResponse {
        try await self.client.execute(action: "CreateAclRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加 ACL 规则
    @inlinable
    public func createAclRule(instanceId: String, resourceType: String, patternType: String, ruleName: String, ruleList: [AclRuleInfo], pattern: String? = nil, isApplied: Int64? = nil, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAclRuleResponse> {
        self.createAclRule(.init(instanceId: instanceId, resourceType: resourceType, patternType: patternType, ruleName: ruleName, ruleList: ruleList, pattern: pattern, isApplied: isApplied, comment: comment), region: region, logger: logger, on: eventLoop)
    }

    /// 添加 ACL 规则
    @inlinable
    public func createAclRule(instanceId: String, resourceType: String, patternType: String, ruleName: String, ruleList: [AclRuleInfo], pattern: String? = nil, isApplied: Int64? = nil, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAclRuleResponse {
        try await self.createAclRule(.init(instanceId: instanceId, resourceType: resourceType, patternType: patternType, ruleName: ruleName, ruleList: ruleList, pattern: pattern, isApplied: isApplied, comment: comment), region: region, logger: logger, on: eventLoop)
    }
}
