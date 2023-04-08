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

extension Hasim {
    /// ModifyRuleStatus请求参数结构体
    public struct ModifyRuleStatusRequest: TCRequestModel {
        /// 自动化规则ID
        public let ruleID: UInt64

        /// 是否激活
        public let isActive: Bool?

        public init(ruleID: UInt64, isActive: Bool? = nil) {
            self.ruleID = ruleID
            self.isActive = isActive
        }

        enum CodingKeys: String, CodingKey {
            case ruleID = "RuleID"
            case isActive = "IsActive"
        }
    }

    /// ModifyRuleStatus返回参数结构体
    public struct ModifyRuleStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑自动化规则状态
    @inlinable @discardableResult
    public func modifyRuleStatus(_ input: ModifyRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRuleStatusResponse> {
        self.client.execute(action: "ModifyRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑自动化规则状态
    @inlinable @discardableResult
    public func modifyRuleStatus(_ input: ModifyRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRuleStatusResponse {
        try await self.client.execute(action: "ModifyRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑自动化规则状态
    @inlinable @discardableResult
    public func modifyRuleStatus(ruleID: UInt64, isActive: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRuleStatusResponse> {
        self.modifyRuleStatus(.init(ruleID: ruleID, isActive: isActive), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑自动化规则状态
    @inlinable @discardableResult
    public func modifyRuleStatus(ruleID: UInt64, isActive: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRuleStatusResponse {
        try await self.modifyRuleStatus(.init(ruleID: ruleID, isActive: isActive), region: region, logger: logger, on: eventLoop)
    }
}
