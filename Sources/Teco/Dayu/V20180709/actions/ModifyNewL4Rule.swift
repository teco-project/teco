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

extension Dayu {
    /// ModifyNewL4Rule请求参数结构体
    public struct ModifyNewL4RuleRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP）
        public let business: String

        /// 资源ID
        public let id: String

        /// 转发规则
        public let rule: L4RuleEntry

        public init(business: String, id: String, rule: L4RuleEntry) {
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

    /// ModifyNewL4Rule返回参数结构体
    public struct ModifyNewL4RuleResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 修改4层转发规则
    @inlinable
    public func modifyNewL4Rule(_ input: ModifyNewL4RuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNewL4RuleResponse> {
        self.client.execute(action: "ModifyNewL4Rule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改4层转发规则
    @inlinable
    public func modifyNewL4Rule(_ input: ModifyNewL4RuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNewL4RuleResponse {
        try await self.client.execute(action: "ModifyNewL4Rule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改4层转发规则
    @inlinable
    public func modifyNewL4Rule(business: String, id: String, rule: L4RuleEntry, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNewL4RuleResponse> {
        self.modifyNewL4Rule(.init(business: business, id: id, rule: rule), region: region, logger: logger, on: eventLoop)
    }

    /// 修改4层转发规则
    @inlinable
    public func modifyNewL4Rule(business: String, id: String, rule: L4RuleEntry, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNewL4RuleResponse {
        try await self.modifyNewL4Rule(.init(business: business, id: id, rule: rule), region: region, logger: logger, on: eventLoop)
    }
}
