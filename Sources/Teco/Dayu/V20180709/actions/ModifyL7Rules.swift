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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Dayu {
    /// ModifyL7Rules请求参数结构体
    public struct ModifyL7RulesRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 规则
        public let rule: L7RuleEntry

        public init(business: String, id: String, rule: L7RuleEntry) {
            self.business = business
            self.id = id
            self.rule = rule
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case rule = "Rule"
        }
    }

    /// ModifyL7Rules返回参数结构体
    public struct ModifyL7RulesResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 修改L7转发规则
    @inlinable
    public func modifyL7Rules(_ input: ModifyL7RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyL7RulesResponse> {
        self.client.execute(action: "ModifyL7Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改L7转发规则
    @inlinable
    public func modifyL7Rules(_ input: ModifyL7RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyL7RulesResponse {
        try await self.client.execute(action: "ModifyL7Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改L7转发规则
    @inlinable
    public func modifyL7Rules(business: String, id: String, rule: L7RuleEntry, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyL7RulesResponse> {
        self.modifyL7Rules(.init(business: business, id: id, rule: rule), region: region, logger: logger, on: eventLoop)
    }

    /// 修改L7转发规则
    @inlinable
    public func modifyL7Rules(business: String, id: String, rule: L7RuleEntry, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyL7RulesResponse {
        try await self.modifyL7Rules(.init(business: business, id: id, rule: rule), region: region, logger: logger, on: eventLoop)
    }
}
