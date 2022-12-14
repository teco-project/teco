//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// CreateL7Rules请求参数结构体
    public struct CreateL7RulesRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 规则列表
        public let rules: [L7RuleEntry]

        public init(business: String, id: String, rules: [L7RuleEntry]) {
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

    /// CreateL7Rules返回参数结构体
    public struct CreateL7RulesResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 添加L7转发规则
    ///
    /// 添加7层(网站)转发规则
    @inlinable
    public func createL7Rules(_ input: CreateL7RulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateL7RulesResponse > {
        self.client.execute(action: "CreateL7Rules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加L7转发规则
    ///
    /// 添加7层(网站)转发规则
    @inlinable
    public func createL7Rules(_ input: CreateL7RulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL7RulesResponse {
        try await self.client.execute(action: "CreateL7Rules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加L7转发规则
    ///
    /// 添加7层(网站)转发规则
    @inlinable
    public func createL7Rules(business: String, id: String, rules: [L7RuleEntry], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateL7RulesResponse > {
        self.createL7Rules(CreateL7RulesRequest(business: business, id: id, rules: rules), logger: logger, on: eventLoop)
    }

    /// 添加L7转发规则
    ///
    /// 添加7层(网站)转发规则
    @inlinable
    public func createL7Rules(business: String, id: String, rules: [L7RuleEntry], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL7RulesResponse {
        try await self.createL7Rules(CreateL7RulesRequest(business: business, id: id, rules: rules), logger: logger, on: eventLoop)
    }
}
