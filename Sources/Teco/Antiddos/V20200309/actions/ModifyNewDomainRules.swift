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

extension Antiddos {
    /// ModifyNewDomainRules请求参数结构体
    public struct ModifyNewDomainRulesRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP）
        public let business: String

        /// 资源ID
        public let id: String

        /// 域名转发规则
        public let rule: NewL7RuleEntry

        public init(business: String, id: String, rule: NewL7RuleEntry) {
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

    /// ModifyNewDomainRules返回参数结构体
    public struct ModifyNewDomainRulesResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 修改7层转发规则
    @inlinable
    public func modifyNewDomainRules(_ input: ModifyNewDomainRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNewDomainRulesResponse> {
        self.client.execute(action: "ModifyNewDomainRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改7层转发规则
    @inlinable
    public func modifyNewDomainRules(_ input: ModifyNewDomainRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNewDomainRulesResponse {
        try await self.client.execute(action: "ModifyNewDomainRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改7层转发规则
    @inlinable
    public func modifyNewDomainRules(business: String, id: String, rule: NewL7RuleEntry, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNewDomainRulesResponse> {
        self.modifyNewDomainRules(ModifyNewDomainRulesRequest(business: business, id: id, rule: rule), region: region, logger: logger, on: eventLoop)
    }

    /// 修改7层转发规则
    @inlinable
    public func modifyNewDomainRules(business: String, id: String, rule: NewL7RuleEntry, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNewDomainRulesResponse {
        try await self.modifyNewDomainRules(ModifyNewDomainRulesRequest(business: business, id: id, rule: rule), region: region, logger: logger, on: eventLoop)
    }
}
