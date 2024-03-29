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

extension Cfw {
    /// DeleteBlockIgnoreRuleList请求参数结构体
    public struct DeleteBlockIgnoreRuleListRequest: TCRequest {
        /// 规则列表
        public let rules: [IocListData]

        /// 规则类型，1封禁，2放通，不支持域名封禁
        public let ruleType: Int64

        public init(rules: [IocListData], ruleType: Int64) {
            self.rules = rules
            self.ruleType = ruleType
        }

        enum CodingKeys: String, CodingKey {
            case rules = "Rules"
            case ruleType = "RuleType"
        }
    }

    /// DeleteBlockIgnoreRuleList返回参数结构体
    public struct DeleteBlockIgnoreRuleListResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量删除入侵防御封禁列表、放通列表规则
    @inlinable @discardableResult
    public func deleteBlockIgnoreRuleList(_ input: DeleteBlockIgnoreRuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBlockIgnoreRuleListResponse> {
        self.client.execute(action: "DeleteBlockIgnoreRuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除入侵防御封禁列表、放通列表规则
    @inlinable @discardableResult
    public func deleteBlockIgnoreRuleList(_ input: DeleteBlockIgnoreRuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBlockIgnoreRuleListResponse {
        try await self.client.execute(action: "DeleteBlockIgnoreRuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除入侵防御封禁列表、放通列表规则
    @inlinable @discardableResult
    public func deleteBlockIgnoreRuleList(rules: [IocListData], ruleType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBlockIgnoreRuleListResponse> {
        self.deleteBlockIgnoreRuleList(.init(rules: rules, ruleType: ruleType), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除入侵防御封禁列表、放通列表规则
    @inlinable @discardableResult
    public func deleteBlockIgnoreRuleList(rules: [IocListData], ruleType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBlockIgnoreRuleListResponse {
        try await self.deleteBlockIgnoreRuleList(.init(rules: rules, ruleType: ruleType), region: region, logger: logger, on: eventLoop)
    }
}
