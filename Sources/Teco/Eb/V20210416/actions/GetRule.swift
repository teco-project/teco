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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Eb {
    /// GetRule请求参数结构体
    public struct GetRuleRequest: TCRequestModel {
        /// 事件集ID
        public let eventBusId: String

        /// 事件规则ID
        public let ruleId: String

        public init(eventBusId: String, ruleId: String) {
            self.eventBusId = eventBusId
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
            case ruleId = "RuleId"
        }
    }

    /// GetRule返回参数结构体
    public struct GetRuleResponse: TCResponseModel {
        /// 事件集id
        public let eventBusId: String

        /// 事件规则id
        public let ruleId: String

        /// 事件规则名称
        public let ruleName: String

        /// 事件规则状态
        public let status: String

        /// 使能开关
        public let enable: Bool

        /// 事件规则描述
        public let description: String

        /// 事件模式
        public let eventPattern: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var addTime: Date

        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var modTime: Date

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
            case ruleId = "RuleId"
            case ruleName = "RuleName"
            case status = "Status"
            case enable = "Enable"
            case description = "Description"
            case eventPattern = "EventPattern"
            case addTime = "AddTime"
            case modTime = "ModTime"
            case requestId = "RequestId"
        }
    }

    /// 获取事件规则详情
    @inlinable
    public func getRule(_ input: GetRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRuleResponse> {
        self.client.execute(action: "GetRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取事件规则详情
    @inlinable
    public func getRule(_ input: GetRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRuleResponse {
        try await self.client.execute(action: "GetRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取事件规则详情
    @inlinable
    public func getRule(eventBusId: String, ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRuleResponse> {
        self.getRule(.init(eventBusId: eventBusId, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取事件规则详情
    @inlinable
    public func getRule(eventBusId: String, ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRuleResponse {
        try await self.getRule(.init(eventBusId: eventBusId, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}
