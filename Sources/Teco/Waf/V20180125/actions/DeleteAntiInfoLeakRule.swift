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

extension Waf {
    /// DeleteAntiInfoLeakRule请求参数结构体
    public struct DeleteAntiInfoLeakRuleRequest: TCRequest {
        /// 域名
        public let domain: String

        /// 规则id
        public let ruleId: UInt64

        public init(domain: String, ruleId: UInt64) {
            self.domain = domain
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case ruleId = "RuleId"
        }
    }

    /// DeleteAntiInfoLeakRule返回参数结构体
    public struct DeleteAntiInfoLeakRuleResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 信息防泄漏删除规则
    @inlinable @discardableResult
    public func deleteAntiInfoLeakRule(_ input: DeleteAntiInfoLeakRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAntiInfoLeakRuleResponse> {
        self.client.execute(action: "DeleteAntiInfoLeakRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 信息防泄漏删除规则
    @inlinable @discardableResult
    public func deleteAntiInfoLeakRule(_ input: DeleteAntiInfoLeakRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAntiInfoLeakRuleResponse {
        try await self.client.execute(action: "DeleteAntiInfoLeakRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 信息防泄漏删除规则
    @inlinable @discardableResult
    public func deleteAntiInfoLeakRule(domain: String, ruleId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAntiInfoLeakRuleResponse> {
        self.deleteAntiInfoLeakRule(.init(domain: domain, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// 信息防泄漏删除规则
    @inlinable @discardableResult
    public func deleteAntiInfoLeakRule(domain: String, ruleId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAntiInfoLeakRuleResponse {
        try await self.deleteAntiInfoLeakRule(.init(domain: domain, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}