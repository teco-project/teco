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

extension Eb {
    /// DeleteRule请求参数结构体
    public struct DeleteRuleRequest: TCRequestModel {
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

    /// DeleteRule返回参数结构体
    public struct DeleteRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除事件规则
    @inlinable @discardableResult
    public func deleteRule(_ input: DeleteRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleResponse> {
        self.client.execute(action: "DeleteRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除事件规则
    @inlinable @discardableResult
    public func deleteRule(_ input: DeleteRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuleResponse {
        try await self.client.execute(action: "DeleteRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除事件规则
    @inlinable @discardableResult
    public func deleteRule(eventBusId: String, ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleResponse> {
        self.deleteRule(.init(eventBusId: eventBusId, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除事件规则
    @inlinable @discardableResult
    public func deleteRule(eventBusId: String, ruleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuleResponse {
        try await self.deleteRule(.init(eventBusId: eventBusId, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}
