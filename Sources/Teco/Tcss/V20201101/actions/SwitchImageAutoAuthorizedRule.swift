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

extension Tcss {
    /// SwitchImageAutoAuthorizedRule请求参数结构体
    public struct SwitchImageAutoAuthorizedRuleRequest: TCRequest {
        /// 规则是否生效，0:不生效，1:已生效
        public let isEnabled: Int64

        /// 规则id
        public let ruleId: Int64

        public init(isEnabled: Int64, ruleId: Int64) {
            self.isEnabled = isEnabled
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case isEnabled = "IsEnabled"
            case ruleId = "RuleId"
        }
    }

    /// SwitchImageAutoAuthorizedRule返回参数结构体
    public struct SwitchImageAutoAuthorizedRuleResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑本地镜像自动授权开关
    @inlinable @discardableResult
    public func switchImageAutoAuthorizedRule(_ input: SwitchImageAutoAuthorizedRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchImageAutoAuthorizedRuleResponse> {
        self.client.execute(action: "SwitchImageAutoAuthorizedRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑本地镜像自动授权开关
    @inlinable @discardableResult
    public func switchImageAutoAuthorizedRule(_ input: SwitchImageAutoAuthorizedRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchImageAutoAuthorizedRuleResponse {
        try await self.client.execute(action: "SwitchImageAutoAuthorizedRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑本地镜像自动授权开关
    @inlinable @discardableResult
    public func switchImageAutoAuthorizedRule(isEnabled: Int64, ruleId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchImageAutoAuthorizedRuleResponse> {
        self.switchImageAutoAuthorizedRule(.init(isEnabled: isEnabled, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑本地镜像自动授权开关
    @inlinable @discardableResult
    public func switchImageAutoAuthorizedRule(isEnabled: Int64, ruleId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchImageAutoAuthorizedRuleResponse {
        try await self.switchImageAutoAuthorizedRule(.init(isEnabled: isEnabled, ruleId: ruleId), region: region, logger: logger, on: eventLoop)
    }
}
