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

extension Chdfs {
    /// DeleteAccessRules请求参数结构体
    public struct DeleteAccessRulesRequest: TCRequestModel {
        /// 多个权限规则ID，上限为10
        public let accessRuleIds: [UInt64]

        public init(accessRuleIds: [UInt64]) {
            self.accessRuleIds = accessRuleIds
        }

        enum CodingKeys: String, CodingKey {
            case accessRuleIds = "AccessRuleIds"
        }
    }

    /// DeleteAccessRules返回参数结构体
    public struct DeleteAccessRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量删除权限规则
    ///
    /// 批量删除权限规则。
    @inlinable @discardableResult
    public func deleteAccessRules(_ input: DeleteAccessRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccessRulesResponse> {
        self.client.execute(action: "DeleteAccessRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除权限规则
    ///
    /// 批量删除权限规则。
    @inlinable @discardableResult
    public func deleteAccessRules(_ input: DeleteAccessRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccessRulesResponse {
        try await self.client.execute(action: "DeleteAccessRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除权限规则
    ///
    /// 批量删除权限规则。
    @inlinable @discardableResult
    public func deleteAccessRules(accessRuleIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccessRulesResponse> {
        self.deleteAccessRules(DeleteAccessRulesRequest(accessRuleIds: accessRuleIds), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除权限规则
    ///
    /// 批量删除权限规则。
    @inlinable @discardableResult
    public func deleteAccessRules(accessRuleIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccessRulesResponse {
        try await self.deleteAccessRules(DeleteAccessRulesRequest(accessRuleIds: accessRuleIds), region: region, logger: logger, on: eventLoop)
    }
}
