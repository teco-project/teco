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

extension Gpm {
    /// ModifyRule请求参数结构体
    public struct ModifyRuleRequest: TCRequestModel {
        /// 规则code
        public let ruleCode: String

        /// 规则名称，只能包含数字、字母、. 和 -
        public let ruleName: String

        /// 规则描述，最长1024
        public let ruleDesc: String?

        /// 标签，key-value结构的数组，最多关联50组标签
        public let tags: [StringKV]?

        public init(ruleCode: String, ruleName: String, ruleDesc: String? = nil, tags: [StringKV]? = nil) {
            self.ruleCode = ruleCode
            self.ruleName = ruleName
            self.ruleDesc = ruleDesc
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case ruleCode = "RuleCode"
            case ruleName = "RuleName"
            case ruleDesc = "RuleDesc"
            case tags = "Tags"
        }
    }

    /// ModifyRule返回参数结构体
    public struct ModifyRuleResponse: TCResponseModel {
        /// 规则信息
        public let ruleInfo: RuleInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleInfo = "RuleInfo"
            case requestId = "RequestId"
        }
    }

    /// 修改规则
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 修改规则（描述、标签）
    @inlinable
    public func modifyRule(_ input: ModifyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRuleResponse> {
        self.client.execute(action: "ModifyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改规则
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 修改规则（描述、标签）
    @inlinable
    public func modifyRule(_ input: ModifyRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRuleResponse {
        try await self.client.execute(action: "ModifyRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改规则
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 修改规则（描述、标签）
    @inlinable
    public func modifyRule(ruleCode: String, ruleName: String, ruleDesc: String? = nil, tags: [StringKV]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRuleResponse> {
        self.modifyRule(ModifyRuleRequest(ruleCode: ruleCode, ruleName: ruleName, ruleDesc: ruleDesc, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 修改规则
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 修改规则（描述、标签）
    @inlinable
    public func modifyRule(ruleCode: String, ruleName: String, ruleDesc: String? = nil, tags: [StringKV]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRuleResponse {
        try await self.modifyRule(ModifyRuleRequest(ruleCode: ruleCode, ruleName: ruleName, ruleDesc: ruleDesc, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
