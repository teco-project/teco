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

extension Teo {
    /// DeleteRules请求参数结构体
    public struct DeleteRulesRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        /// 指定删除的规则 ID 列表。
        public let ruleIds: [String]

        public init(zoneId: String, ruleIds: [String]) {
            self.zoneId = zoneId
            self.ruleIds = ruleIds
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case ruleIds = "RuleIds"
        }
    }

    /// DeleteRules返回参数结构体
    public struct DeleteRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量删除规则引擎规则
    ///
    /// 批量删除规则引擎规则。
    @inlinable
    public func deleteRules(_ input: DeleteRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRulesResponse > {
        self.client.execute(action: "DeleteRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除规则引擎规则
    ///
    /// 批量删除规则引擎规则。
    @inlinable
    public func deleteRules(_ input: DeleteRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRulesResponse {
        try await self.client.execute(action: "DeleteRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除规则引擎规则
    ///
    /// 批量删除规则引擎规则。
    @inlinable
    public func deleteRules(zoneId: String, ruleIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRulesResponse > {
        self.deleteRules(DeleteRulesRequest(zoneId: zoneId, ruleIds: ruleIds), logger: logger, on: eventLoop)
    }

    /// 批量删除规则引擎规则
    ///
    /// 批量删除规则引擎规则。
    @inlinable
    public func deleteRules(zoneId: String, ruleIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRulesResponse {
        try await self.deleteRules(DeleteRulesRequest(zoneId: zoneId, ruleIds: ruleIds), logger: logger, on: eventLoop)
    }
}
