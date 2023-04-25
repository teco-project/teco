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
    /// RemoveNatAcRule请求参数结构体
    public struct RemoveNatAcRuleRequest: TCRequestModel {
        /// 规则的uuid列表，可通过查询规则列表获取，注意：如果传入的是[-1]将删除所有规则
        public let ruleUuid: [Int64]

        /// 规则方向：1，入站；0，出站
        public let direction: UInt64?

        public init(ruleUuid: [Int64], direction: UInt64? = nil) {
            self.ruleUuid = ruleUuid
            self.direction = direction
        }

        enum CodingKeys: String, CodingKey {
            case ruleUuid = "RuleUuid"
            case direction = "Direction"
        }
    }

    /// RemoveNatAcRule返回参数结构体
    public struct RemoveNatAcRuleResponse: TCResponseModel {
        /// 删除成功后返回被删除策略的uuid列表
        public let ruleUuid: [Int64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleUuid = "RuleUuid"
            case requestId = "RequestId"
        }
    }

    /// 删除NAT访问控制规则
    @inlinable
    public func removeNatAcRule(_ input: RemoveNatAcRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveNatAcRuleResponse> {
        self.client.execute(action: "RemoveNatAcRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除NAT访问控制规则
    @inlinable
    public func removeNatAcRule(_ input: RemoveNatAcRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveNatAcRuleResponse {
        try await self.client.execute(action: "RemoveNatAcRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除NAT访问控制规则
    @inlinable
    public func removeNatAcRule(ruleUuid: [Int64], direction: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveNatAcRuleResponse> {
        self.removeNatAcRule(.init(ruleUuid: ruleUuid, direction: direction), region: region, logger: logger, on: eventLoop)
    }

    /// 删除NAT访问控制规则
    @inlinable
    public func removeNatAcRule(ruleUuid: [Int64], direction: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveNatAcRuleResponse {
        try await self.removeNatAcRule(.init(ruleUuid: ruleUuid, direction: direction), region: region, logger: logger, on: eventLoop)
    }
}
