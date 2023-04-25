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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cfw {
    /// ModifySecurityGroupItemRuleStatus请求参数结构体
    public struct ModifySecurityGroupItemRuleStatusRequest: TCRequestModel {
        /// 方向，0：出站，1：入站，默认1
        public let direction: UInt64

        /// 是否开关开启，0：未开启，1：开启
        public let status: UInt64

        /// 更改的企业安全组规则的执行顺序
        public let ruleSequence: UInt64

        public init(direction: UInt64, status: UInt64, ruleSequence: UInt64) {
            self.direction = direction
            self.status = status
            self.ruleSequence = ruleSequence
        }

        enum CodingKeys: String, CodingKey {
            case direction = "Direction"
            case status = "Status"
            case ruleSequence = "RuleSequence"
        }
    }

    /// ModifySecurityGroupItemRuleStatus返回参数结构体
    public struct ModifySecurityGroupItemRuleStatusResponse: TCResponseModel {
        /// 状态值，0：修改成功，非0：修改失败
        public let status: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 启用停用单条企业安全组规则
    @inlinable
    public func modifySecurityGroupItemRuleStatus(_ input: ModifySecurityGroupItemRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityGroupItemRuleStatusResponse> {
        self.client.execute(action: "ModifySecurityGroupItemRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用停用单条企业安全组规则
    @inlinable
    public func modifySecurityGroupItemRuleStatus(_ input: ModifySecurityGroupItemRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityGroupItemRuleStatusResponse {
        try await self.client.execute(action: "ModifySecurityGroupItemRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用停用单条企业安全组规则
    @inlinable
    public func modifySecurityGroupItemRuleStatus(direction: UInt64, status: UInt64, ruleSequence: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityGroupItemRuleStatusResponse> {
        self.modifySecurityGroupItemRuleStatus(.init(direction: direction, status: status, ruleSequence: ruleSequence), region: region, logger: logger, on: eventLoop)
    }

    /// 启用停用单条企业安全组规则
    @inlinable
    public func modifySecurityGroupItemRuleStatus(direction: UInt64, status: UInt64, ruleSequence: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityGroupItemRuleStatusResponse {
        try await self.modifySecurityGroupItemRuleStatus(.init(direction: direction, status: status, ruleSequence: ruleSequence), region: region, logger: logger, on: eventLoop)
    }
}
