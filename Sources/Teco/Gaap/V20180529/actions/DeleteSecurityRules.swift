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

extension Gaap {
    /// DeleteSecurityRules请求参数结构体
    public struct DeleteSecurityRulesRequest: TCRequestModel {
        /// 安全策略ID
        public let policyId: String

        /// 访问规则ID列表
        public let ruleIdList: [String]

        public init(policyId: String, ruleIdList: [String]) {
            self.policyId = policyId
            self.ruleIdList = ruleIdList
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case ruleIdList = "RuleIdList"
        }
    }

    /// DeleteSecurityRules返回参数结构体
    public struct DeleteSecurityRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除安全策略规则
    @inlinable @discardableResult
    public func deleteSecurityRules(_ input: DeleteSecurityRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecurityRulesResponse> {
        self.client.execute(action: "DeleteSecurityRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除安全策略规则
    @inlinable @discardableResult
    public func deleteSecurityRules(_ input: DeleteSecurityRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityRulesResponse {
        try await self.client.execute(action: "DeleteSecurityRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除安全策略规则
    @inlinable @discardableResult
    public func deleteSecurityRules(policyId: String, ruleIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecurityRulesResponse> {
        self.deleteSecurityRules(.init(policyId: policyId, ruleIdList: ruleIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 删除安全策略规则
    @inlinable @discardableResult
    public func deleteSecurityRules(policyId: String, ruleIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityRulesResponse {
        try await self.deleteSecurityRules(.init(policyId: policyId, ruleIdList: ruleIdList), region: region, logger: logger, on: eventLoop)
    }
}
