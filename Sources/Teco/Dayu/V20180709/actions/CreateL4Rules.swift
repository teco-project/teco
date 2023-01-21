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

extension Dayu {
    /// CreateL4Rules请求参数结构体
    public struct CreateL4RulesRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 规则列表
        public let rules: [L4RuleEntry]

        public init(business: String, id: String, rules: [L4RuleEntry]) {
            self.business = business
            self.id = id
            self.rules = rules
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case rules = "Rules"
        }
    }

    /// CreateL4Rules返回参数结构体
    public struct CreateL4RulesResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 添加L4转发规则
    @inlinable
    public func createL4Rules(_ input: CreateL4RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL4RulesResponse> {
        self.client.execute(action: "CreateL4Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加L4转发规则
    @inlinable
    public func createL4Rules(_ input: CreateL4RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL4RulesResponse {
        try await self.client.execute(action: "CreateL4Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加L4转发规则
    @inlinable
    public func createL4Rules(business: String, id: String, rules: [L4RuleEntry], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL4RulesResponse> {
        self.createL4Rules(CreateL4RulesRequest(business: business, id: id, rules: rules), region: region, logger: logger, on: eventLoop)
    }

    /// 添加L4转发规则
    @inlinable
    public func createL4Rules(business: String, id: String, rules: [L4RuleEntry], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL4RulesResponse {
        try await self.createL4Rules(CreateL4RulesRequest(business: business, id: id, rules: rules), region: region, logger: logger, on: eventLoop)
    }
}
