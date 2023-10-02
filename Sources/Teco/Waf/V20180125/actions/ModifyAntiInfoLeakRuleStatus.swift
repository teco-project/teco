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
    /// ModifyAntiInfoLeakRuleStatus请求参数结构体
    public struct ModifyAntiInfoLeakRuleStatusRequest: TCRequest {
        /// 域名
        public let domain: String

        /// 规则
        public let ruleId: UInt64

        /// 状态
        public let status: UInt64

        public init(domain: String, ruleId: UInt64, status: UInt64) {
            self.domain = domain
            self.ruleId = ruleId
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case ruleId = "RuleId"
            case status = "Status"
        }
    }

    /// ModifyAntiInfoLeakRuleStatus返回参数结构体
    public struct ModifyAntiInfoLeakRuleStatusResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 信息防泄漏切换规则开关
    @inlinable @discardableResult
    public func modifyAntiInfoLeakRuleStatus(_ input: ModifyAntiInfoLeakRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAntiInfoLeakRuleStatusResponse> {
        self.client.execute(action: "ModifyAntiInfoLeakRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 信息防泄漏切换规则开关
    @inlinable @discardableResult
    public func modifyAntiInfoLeakRuleStatus(_ input: ModifyAntiInfoLeakRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAntiInfoLeakRuleStatusResponse {
        try await self.client.execute(action: "ModifyAntiInfoLeakRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 信息防泄漏切换规则开关
    @inlinable @discardableResult
    public func modifyAntiInfoLeakRuleStatus(domain: String, ruleId: UInt64, status: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAntiInfoLeakRuleStatusResponse> {
        self.modifyAntiInfoLeakRuleStatus(.init(domain: domain, ruleId: ruleId, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 信息防泄漏切换规则开关
    @inlinable @discardableResult
    public func modifyAntiInfoLeakRuleStatus(domain: String, ruleId: UInt64, status: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAntiInfoLeakRuleStatusResponse {
        try await self.modifyAntiInfoLeakRuleStatus(.init(domain: domain, ruleId: ruleId, status: status), region: region, logger: logger, on: eventLoop)
    }
}
