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
    /// AddAclRule请求参数结构体
    public struct AddAclRuleRequest: TCRequest {
        /// 需要添加的访问控制规则列表
        public let rules: [CreateRuleItem]

        /// 添加规则的来源，一般不需要使用，值insert_rule 表示插入指定位置的规则；值batch_import 表示批量导入规则；为空时表示添加规则
        public let from: String?

        public init(rules: [CreateRuleItem], from: String? = nil) {
            self.rules = rules
            self.from = from
        }

        enum CodingKeys: String, CodingKey {
            case rules = "Rules"
            case from = "From"
        }
    }

    /// AddAclRule返回参数结构体
    public struct AddAclRuleResponse: TCResponse {
        /// 创建成功后返回新策略ID列表
        public let ruleUuid: [Int64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleUuid = "RuleUuid"
            case requestId = "RequestId"
        }
    }

    /// 添加互联网边界访问控制规则
    @inlinable
    public func addAclRule(_ input: AddAclRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddAclRuleResponse> {
        self.client.execute(action: "AddAclRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加互联网边界访问控制规则
    @inlinable
    public func addAclRule(_ input: AddAclRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddAclRuleResponse {
        try await self.client.execute(action: "AddAclRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加互联网边界访问控制规则
    @inlinable
    public func addAclRule(rules: [CreateRuleItem], from: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddAclRuleResponse> {
        self.addAclRule(.init(rules: rules, from: from), region: region, logger: logger, on: eventLoop)
    }

    /// 添加互联网边界访问控制规则
    @inlinable
    public func addAclRule(rules: [CreateRuleItem], from: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddAclRuleResponse {
        try await self.addAclRule(.init(rules: rules, from: from), region: region, logger: logger, on: eventLoop)
    }
}
