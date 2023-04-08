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

import TecoCore

extension Iot {
    /// GetRule请求参数结构体
    public struct GetRuleRequest: TCRequestModel {
        /// 规则Id
        public let ruleId: String

        public init(ruleId: String) {
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
        }
    }

    /// GetRule返回参数结构体
    public struct GetRuleResponse: TCResponseModel {
        /// 规则
        public let rule: Rule

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rule = "Rule"
            case requestId = "RequestId"
        }
    }

    /// 获取转发规则信息
    @inlinable
    public func getRule(_ input: GetRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRuleResponse> {
        self.client.execute(action: "GetRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取转发规则信息
    @inlinable
    public func getRule(_ input: GetRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRuleResponse {
        try await self.client.execute(action: "GetRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取转发规则信息
    @inlinable
    public func getRule(ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRuleResponse> {
        self.getRule(.init(ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取转发规则信息
    @inlinable
    public func getRule(ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRuleResponse {
        try await self.getRule(.init(ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}
