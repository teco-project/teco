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
    /// RemoveAcRule请求参数结构体
    public struct RemoveAcRuleRequest: TCRequest {
        /// 规则的uuid，可通过查询规则列表获取
        public let ruleUuid: Int64

        public init(ruleUuid: Int64) {
            self.ruleUuid = ruleUuid
        }

        enum CodingKeys: String, CodingKey {
            case ruleUuid = "RuleUuid"
        }
    }

    /// RemoveAcRule返回参数结构体
    public struct RemoveAcRuleResponse: TCResponse {
        /// 删除成功后返回被删除策略的uuid
        public let ruleUuid: Int64

        /// 0代表成功，-1代表失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let returnCode: Int64?

        /// success代表成功，failed代表失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let returnMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleUuid = "RuleUuid"
            case returnCode = "ReturnCode"
            case returnMsg = "ReturnMsg"
            case requestId = "RequestId"
        }
    }

    /// 删除互联网边界规则
    @inlinable
    public func removeAcRule(_ input: RemoveAcRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveAcRuleResponse> {
        self.client.execute(action: "RemoveAcRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除互联网边界规则
    @inlinable
    public func removeAcRule(_ input: RemoveAcRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveAcRuleResponse {
        try await self.client.execute(action: "RemoveAcRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除互联网边界规则
    @inlinable
    public func removeAcRule(ruleUuid: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveAcRuleResponse> {
        self.removeAcRule(.init(ruleUuid: ruleUuid), region: region, logger: logger, on: eventLoop)
    }

    /// 删除互联网边界规则
    @inlinable
    public func removeAcRule(ruleUuid: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveAcRuleResponse {
        try await self.removeAcRule(.init(ruleUuid: ruleUuid), region: region, logger: logger, on: eventLoop)
    }
}
