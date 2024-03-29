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

extension Iot {
    /// UpdateRule请求参数结构体
    public struct UpdateRuleRequest: TCRequest {
        /// 规则Id
        public let ruleId: String

        /// 名称
        public let name: String?

        /// 描述
        public let description: String?

        /// 查询
        public let query: RuleQuery?

        /// 转发动作列表
        public let actions: [Action]?

        /// 数据类型（0：文本，1：二进制）
        public let dataType: UInt64?

        public init(ruleId: String, name: String? = nil, description: String? = nil, query: RuleQuery? = nil, actions: [Action]? = nil, dataType: UInt64? = nil) {
            self.ruleId = ruleId
            self.name = name
            self.description = description
            self.query = query
            self.actions = actions
            self.dataType = dataType
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case name = "Name"
            case description = "Description"
            case query = "Query"
            case actions = "Actions"
            case dataType = "DataType"
        }
    }

    /// UpdateRule返回参数结构体
    public struct UpdateRuleResponse: TCResponse {
        /// 规则
        public let rule: Rule

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rule = "Rule"
            case requestId = "RequestId"
        }
    }

    /// 更新规则
    @inlinable
    public func updateRule(_ input: UpdateRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRuleResponse> {
        self.client.execute(action: "UpdateRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新规则
    @inlinable
    public func updateRule(_ input: UpdateRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRuleResponse {
        try await self.client.execute(action: "UpdateRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新规则
    @inlinable
    public func updateRule(ruleId: String, name: String? = nil, description: String? = nil, query: RuleQuery? = nil, actions: [Action]? = nil, dataType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRuleResponse> {
        self.updateRule(.init(ruleId: ruleId, name: name, description: description, query: query, actions: actions, dataType: dataType), region: region, logger: logger, on: eventLoop)
    }

    /// 更新规则
    @inlinable
    public func updateRule(ruleId: String, name: String? = nil, description: String? = nil, query: RuleQuery? = nil, actions: [Action]? = nil, dataType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRuleResponse {
        try await self.updateRule(.init(ruleId: ruleId, name: name, description: description, query: query, actions: actions, dataType: dataType), region: region, logger: logger, on: eventLoop)
    }
}
