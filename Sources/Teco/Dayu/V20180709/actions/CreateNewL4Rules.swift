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

extension Dayu {
    /// CreateNewL4Rules请求参数结构体
    public struct CreateNewL4RulesRequest: TCRequest {
        /// 高防产品代号：bgpip
        public let business: String

        /// 添加规则资源列表
        public let idList: [String]

        /// 添加规则IP列表
        public let vipList: [String]

        /// 规则列表
        public let rules: [L4RuleEntry]

        public init(business: String, idList: [String], vipList: [String], rules: [L4RuleEntry]) {
            self.business = business
            self.idList = idList
            self.vipList = vipList
            self.rules = rules
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case idList = "IdList"
            case vipList = "VipList"
            case rules = "Rules"
        }
    }

    /// CreateNewL4Rules返回参数结构体
    public struct CreateNewL4RulesResponse: TCResponse {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 添加四层转发规则
    ///
    /// 添加L4转发规则
    @inlinable
    public func createNewL4Rules(_ input: CreateNewL4RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNewL4RulesResponse> {
        self.client.execute(action: "CreateNewL4Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加四层转发规则
    ///
    /// 添加L4转发规则
    @inlinable
    public func createNewL4Rules(_ input: CreateNewL4RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNewL4RulesResponse {
        try await self.client.execute(action: "CreateNewL4Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加四层转发规则
    ///
    /// 添加L4转发规则
    @inlinable
    public func createNewL4Rules(business: String, idList: [String], vipList: [String], rules: [L4RuleEntry], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNewL4RulesResponse> {
        self.createNewL4Rules(.init(business: business, idList: idList, vipList: vipList, rules: rules), region: region, logger: logger, on: eventLoop)
    }

    /// 添加四层转发规则
    ///
    /// 添加L4转发规则
    @inlinable
    public func createNewL4Rules(business: String, idList: [String], vipList: [String], rules: [L4RuleEntry], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNewL4RulesResponse {
        try await self.createNewL4Rules(.init(business: business, idList: idList, vipList: vipList, rules: rules), region: region, logger: logger, on: eventLoop)
    }
}
