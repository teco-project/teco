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

extension Hasim {
    /// DeleteRule请求参数结构体
    public struct DeleteRuleRequest: TCRequest {
        /// 自动化规则ID
        public let ruleID: Int64

        public init(ruleID: Int64) {
            self.ruleID = ruleID
        }

        enum CodingKeys: String, CodingKey {
            case ruleID = "RuleID"
        }
    }

    /// DeleteRule返回参数结构体
    public struct DeleteRuleResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除自动化规则
    @inlinable @discardableResult
    public func deleteRule(_ input: DeleteRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleResponse> {
        self.client.execute(action: "DeleteRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除自动化规则
    @inlinable @discardableResult
    public func deleteRule(_ input: DeleteRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuleResponse {
        try await self.client.execute(action: "DeleteRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除自动化规则
    @inlinable @discardableResult
    public func deleteRule(ruleID: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleResponse> {
        self.deleteRule(.init(ruleID: ruleID), region: region, logger: logger, on: eventLoop)
    }

    /// 删除自动化规则
    @inlinable @discardableResult
    public func deleteRule(ruleID: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuleResponse {
        try await self.deleteRule(.init(ruleID: ruleID), region: region, logger: logger, on: eventLoop)
    }
}
