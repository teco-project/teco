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

extension Cfw {
    /// ModifyAclRule请求参数结构体
    public struct ModifyAclRuleRequest: TCRequest {
        /// 需要编辑的规则数组
        public let rules: [CreateRuleItem]

        public init(rules: [CreateRuleItem]) {
            self.rules = rules
        }

        enum CodingKeys: String, CodingKey {
            case rules = "Rules"
        }
    }

    /// ModifyAclRule返回参数结构体
    public struct ModifyAclRuleResponse: TCResponse {
        /// 编辑成功后返回新策略ID列表
        public let ruleUuid: [Int64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleUuid = "RuleUuid"
            case requestId = "RequestId"
        }
    }

    /// 修改互联网边界访问控制规则
    @inlinable
    public func modifyAclRule(_ input: ModifyAclRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAclRuleResponse> {
        self.client.execute(action: "ModifyAclRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改互联网边界访问控制规则
    @inlinable
    public func modifyAclRule(_ input: ModifyAclRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAclRuleResponse {
        try await self.client.execute(action: "ModifyAclRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改互联网边界访问控制规则
    @inlinable
    public func modifyAclRule(rules: [CreateRuleItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAclRuleResponse> {
        self.modifyAclRule(.init(rules: rules), region: region, logger: logger, on: eventLoop)
    }

    /// 修改互联网边界访问控制规则
    @inlinable
    public func modifyAclRule(rules: [CreateRuleItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAclRuleResponse {
        try await self.modifyAclRule(.init(rules: rules), region: region, logger: logger, on: eventLoop)
    }
}